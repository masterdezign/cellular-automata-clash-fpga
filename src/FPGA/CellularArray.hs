-- Implements array of cellular automata
module FPGA.CellularArray where

import CLaSH.Prelude
import CLaSH.Prelude.Explicit

newtype Rule a = Rule { getRule :: a }

cArrayT
  :: (KnownNat m, KnownNat (m + n),
      KnownNat (BitSize a), BitPack a) =>
     SNat m
     -> SNat (m + n)
     -> Rule a
     -> BitVector (m + n)
     -> BitVector (m + n)
     -> (BitVector (m + n), BitVector (m + n))
cArrayT neighbors size (Rule rule) prev newInput = (next, prev)
  where
        next = v2bv $ map (rule !) inputs
        -- pos0 = <9,8,7,6,5,4,3,2,1,0> (size = 10)
        pos0 = reverse $ iterate size (+1) 0
        inputs = map (\ix -> v2bv $ map (newInput !) ix) inputPos
        -- inputPos = <<0,9,8>,<9,8,7>,<8,7,6>,<7,6,5>,<6,5,4>,<5,4,3>,<4,3,2>,<3,2,1>,<2,1,0>,<1,0,9>>
        --   (neighbors = d3)
        inputPos = reverse $ flip rotateLeft (natVal neighbors `div` 2) $ map (\i -> take neighbors $ rotateLeft pos0 i) pos0

-- An array of 1D cellular automata that evolves depending on three cells
-- (left neighbor, itself, and right neighbor)
cArray3'
  :: KnownNat (3 + n) =>
     SClock clk
     -> SNat (3 + n)
     -> Rule (BitVector 8)
     -> BitVector (3 + n)
     -> Signal' clk (BitVector (3 + n))
     -> Signal' clk (BitVector (3 + n))
cArray3' clk size rule state0 = mealy' clk (cArrayT d3 size rule) state0

cArray3
  :: KnownNat (3 + n) =>
     SNat (3 + n)
     -> Rule (BitVector 8)
     -> BitVector (3 + n)
     -> Signal (BitVector (3 + n))
     -> Signal (BitVector (3 + n))
cArray3 = cArray3' sclock
