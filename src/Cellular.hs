module Cellular where

import CLaSH.Prelude

import FPGA.CellularArray

{-# ANN topEntity
  (defTop
    { t_name     = "Cellular"
      , t_inputs   = []
      , t_outputs  = ["current_state"]
    }) #-}
topEntity :: Signal () -> Signal (BitVector 16)
topEntity _ = r
  where ca = cArray3 d16 (Rule 110) 1 r

        -- Divide the clock to the "human" scale, order of Hz
        cnt = register 0 (cnt + 1) :: Signal (Unsigned 24)
        r = regEn 0 (cnt .==. 0) ca
