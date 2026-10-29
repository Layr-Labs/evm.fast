import InitECandidate.Proofs.FrontendStages.Crep.Translate57
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody73_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 2)

def crepBody73_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody73_2 : CrepProg (BitVec 64) :=
.seq crepBody73_0 crepBody73_1

def crepBody73_3 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64]) crepBody73_2

def crepBody73_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 2)

def crepBody73_5 : CrepProg (BitVec 64) :=
.seq crepBody73_4 crepBody73_1

def crepBody73_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64)) crepBody73_5

def crepBody73_7 : CrepProg (BitVec 64) :=
.seq crepBody73_3 crepBody73_6

def crepBody73_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64))
  (Flapjack.CrepExp.const 0#64)) crepBody73_7 crepBody73_1

def crepBody73_9 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 16#64]) crepBody73_2

def crepBody73_10 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64)) crepBody73_5

def crepBody73_11 : CrepProg (BitVec 64) :=
.seq crepBody73_9 crepBody73_10

def crepBody73_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 16#64))
  (Flapjack.CrepExp.const 0#64)) crepBody73_11 crepBody73_1

def crepBody73_13 : CrepProg (BitVec 64) :=
.seq crepBody73_8 crepBody73_12

def crepBody73_14 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 8#64]) crepBody73_2

def crepBody73_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 8#64)) crepBody73_5

def crepBody73_16 : CrepProg (BitVec 64) :=
.seq crepBody73_14 crepBody73_15

def crepBody73_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 8#64))
  (Flapjack.CrepExp.const 0#64)) crepBody73_16 crepBody73_1

def crepBody73_18 : CrepProg (BitVec 64) :=
.seq crepBody73_13 crepBody73_17

def crepBody73_19 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 4#64]) crepBody73_2

def crepBody73_20 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 4#64)) crepBody73_5

def crepBody73_21 : CrepProg (BitVec 64) :=
.seq crepBody73_19 crepBody73_20

def crepBody73_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 4#64))
  (Flapjack.CrepExp.const 0#64)) crepBody73_21 crepBody73_1

def crepBody73_23 : CrepProg (BitVec 64) :=
.seq crepBody73_18 crepBody73_22

def crepBody73_24 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 2#64]) crepBody73_2

def crepBody73_25 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 2#64)) crepBody73_5

def crepBody73_26 : CrepProg (BitVec 64) :=
.seq crepBody73_24 crepBody73_25

def crepBody73_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 2#64))
  (Flapjack.CrepExp.const 0#64)) crepBody73_26 crepBody73_1

def crepBody73_28 : CrepProg (BitVec 64) :=
.seq crepBody73_23 crepBody73_27

def crepBody73_29 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 1#64]) crepBody73_2

def crepBody73_30 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 1#64)) crepBody73_5

def crepBody73_31 : CrepProg (BitVec 64) :=
.seq crepBody73_29 crepBody73_30

def crepBody73_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 1#64))
  (Flapjack.CrepExp.const 0#64)) crepBody73_31 crepBody73_1

def crepBody73_33 : CrepProg (BitVec 64) :=
.seq crepBody73_28 crepBody73_32

def crepBody73_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 0]]

def crepBody73_35 : CrepProg (BitVec 64) :=
.seq crepBody73_33 crepBody73_34

def crepBody73_36 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody73_35

def data73 : CrepProg (BitVec 64) := crepBody73_36
def output73 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 105#8, 116#8, 95#8, 108#8, 101#8, 110#8, 103#8, 116#8, 104#8, 54#8, 52#8], [0], crepProgToHOL data73)
end InitECandidate.Proofs.FrontendStages.Crep
