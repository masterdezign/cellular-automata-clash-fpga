{-# LANGUAGE ImplicitParams #-}
module Cellular where

import Clash.Prelude

import FPGA.CellularArray2

{-# ANN topEntity
  (defTop
    { t_name   = "Cellular"
    , t_inputs = []
    , t_output = PortName "current_state"
    }) #-}
topEntity
  :: SystemClockReset
  => Signal System (BitVector 16)
topEntity = r
  where ca = cArray3 d16 (Rule (0b110 :: BitVector 3)) 1 r

        -- Divide the clock to the "human" scale, order of Hz
        cnt = register 0 (cnt + 1) :: Signal System (Unsigned 24)
        r = regEn 0 (cnt .==. 0) ca
