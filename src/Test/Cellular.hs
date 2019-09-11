module Test.Cellular where

import Clash.Prelude
import Clash.Explicit.Testbench

import FPGA.CellularArray2

topEntity
  :: Clock System
     -> Reset System -> Enable System -> Signal System (BitVector 10)
topEntity clk rst en = withClockResetEnable @System clk rst en r
  where ca = cArray3 d10 (Rule (110 :: BitVector 8)) 1 r

        cnt = register 0 (cnt + 1) :: Signal System (Unsigned 2)
        r = regEn 0 (cnt .==. 0) ca

-- > sampleN 18 testBench
testBench :: Signal System Bool
testBench = done
  where
    expectedOutput = outputVerifier clk rst expected
    done         = expectedOutput (topEntity clk rst enableGen)
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
