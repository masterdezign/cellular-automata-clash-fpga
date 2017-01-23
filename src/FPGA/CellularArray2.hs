-- Implements array of cellular automata
module FPGA.CellularArray2 where

import CLaSH.Prelude
import CLaSH.Prelude.Explicit

newtype Rule a = Rule { getRule :: a }

cArray3T size (Rule rule) prev newInput = (next, prev)
  where
        next = v2bv $ map ((rule !) . (slice d2 d0)) inputs
        newInput' = rotateL newInput 2
        inputs = iterate size (flip rotateL 1) newInput'

cArray3' clk size rule state0 = mealy' clk (cArray3T size rule) state0

cArray3
  :: (KnownNat n, BitPack a, Bits a,
      BitSize a ~ (3 + i)) =>
     SNat n
     -> Rule (BitVector 8)
     -> BitVector n
     -> Signal a
     -> Signal (BitVector n)
cArray3 = cArray3' sclock
