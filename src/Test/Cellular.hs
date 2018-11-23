module Test.Cellular where

import Clash.Prelude
import Clash.Explicit.Testbench

import FPGA.CellularArray2

topEntity
  :: Clock  System Source
  -> Reset  System Asynchronous
  -> Signal System (BitVector 10)
topEntity = exposeClockReset r
  where ca = cArray3 d10 (Rule (110 :: BitVector 8)) 1 r

        cnt = register 0 (cnt + 1) :: Signal System (Unsigned 2)
        r = regEn 0 (cnt .==. 0) ca

testBench :: Signal System Bool
testBench = done
  where
    expectedOutput = outputVerifier clk rst expected
    done         = expectedOutput (topEntity clk rst)
    clk = tbSystemClockGen (not <$> done)
    rst = systemResetGen

expected :: Vec 17 (BitVector 10)
expected = (  0b0000000000
           :> 0b0000000001
           :> 0b0000000001
           :> 0b0000000001
           :> 0b0000000001
           :> 0b0000000011
           :> 0b0000000011
           :> 0b0000000011
           :> 0b0000000011
           :> 0b0000000111
           :> 0b0000000111
           :> 0b0000000111
           :> 0b0000000111
           :> 0b0000001101
           :> 0b0000001101
           :> 0b0000001101
           :> 0b0000001101
           :> Nil
           )
