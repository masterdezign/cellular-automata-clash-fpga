module Cellular where

import Clash.Prelude

import FPGA.CellularArray2

{-# ANN topEntity
  (Synthesize
    { t_name   = "Cellular"
    , t_inputs = [ PortName "CLOCK"
                 , PortName "RST"
                 ]
    , t_output = PortName "current_state"
    }) #-}
topEntity
  :: Clock  System Source
  -> Reset  System Asynchronous
  -> Signal System (BitVector 16)
topEntity = exposeClockReset r
  where ca = cArray3 d16 (Rule (110 :: BitVector 8)) 1 r

        -- Divide the clock to the "human" scale, order of Hz
        cnt = register 0 (cnt + 1) :: Signal System (Unsigned 24)
        r = regEn 0 (cnt .==. 0) ca
