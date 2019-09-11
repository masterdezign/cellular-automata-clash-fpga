module FPGA.CellularArray2
  (
  Rule (..)
  , cArray3
  ) where

import Clash.Prelude

newtype Rule a = Rule { getRule :: a }

cArray3T
  :: (BitSize p ~ (3 + i), Bits p, KnownNat n, KnownNat (BitSize a),
      BitPack a, BitPack p) =>
     SNat n -> Rule a -> b -> p -> (BitVector n, b)
cArray3T size (Rule rule) prev newInput = (next, prev)
  where
        next = v2bv $ map ((rule !) . (slice d2 d0)) inputs
        newInput' = rotateL newInput 2
        inputs = iterate size (flip rotateL 1) newInput'

cArray3
  :: (HiddenClockResetEnable dom, BitPack p, BitPack a,
     KnownNat (BitSize a), KnownNat n, Bits p,
     BitSize p ~ (3 + i))
  => SNat n
  -> Rule a
  -> BitVector n
  -> Signal dom p
  -> Signal dom (BitVector n)
cArray3 size rule state0 = mealy (cArray3T size rule) state0
