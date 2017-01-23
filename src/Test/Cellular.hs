module TestFPGA.CellularArray where

import CLaSH.Prelude
import FPGA.CellularArray

topEntity :: Signal () -> Signal (BitVector 10)
topEntity _ = r
  where ca = cArray3 d10 (Rule 110) 1 r

        cnt = register 0 (cnt + 1) :: Signal (Unsigned 2)
        r = regEn 0 (cnt .==. 0) ca

expectedOutput = outputVerifier $(v [
                                   0b0000000000 :: BitVector 10
                                 , 0b0000000001
                                 , 0b0000000001
                                 , 0b0000000001
                                 , 0b0000000001
                                 , 0b0000000011
                                 , 0b0000000011
                                 , 0b0000000011
                                 , 0b0000000011
                                 , 0b0000000111
                                 , 0b0000000111
                                 , 0b0000000111
                                 , 0b0000000111
                                 , 0b0000001101
                                 , 0b0000001101
                                 , 0b0000001101
                                 , 0b0000001101
                                 ] )


runTest = sampleN 17 $ expectedOutput $ topEntity $ stimuliGenerator $ replicate d11 ()
