module Test.Cellular where

import Clash.Prelude
import FPGA.CellularArray2

topEntity
  :: SystemClockReset
  => Signal System () -> Signal System (BitVector 10)
topEntity _ = r
  where ca = cArray3 d10 (Rule (0b110 :: BitVector 3)) 1 r

        cnt = register 0 (cnt + 1) :: Signal System (Unsigned 2)
        r = regEn 0 (cnt .==. 0) ca

testBench :: Signal System Bool
testBench = done'
  where
    testInput    = stimuliGenerator (replicate d11 ())
    expectOutput = outputVerifier expected
    done         = expectOutput (topEntity testInput)
    done'        = withClockReset (tbSystemClockGen (not <$> done')) systemResetGen done

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
