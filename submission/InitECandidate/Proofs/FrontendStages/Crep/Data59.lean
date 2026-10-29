import InitECandidate.Proofs.FrontendStages.Crep.Translate43
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody59_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 6)

def crepBody59_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody59_2 : CrepProg (BitVec 64) :=
.seq crepBody59_0 crepBody59_1

def crepBody59_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1#64]) crepBody59_2

def crepBody59_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 6)

def crepBody59_5 : CrepProg (BitVec 64) :=
.seq crepBody59_4 crepBody59_1

def crepBody59_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 5),
        Flapjack.CrepExp.const 1#64]]) crepBody59_5

def crepBody59_7 : CrepProg (BitVec 64) :=
.seq crepBody59_3 crepBody59_6

def crepBody59_8 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 2]) crepBody59_5

def crepBody59_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 6)

def crepBody59_10 : CrepProg (BitVec 64) :=
.seq crepBody59_9 crepBody59_1

def crepBody59_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 5)]) crepBody59_10

def crepBody59_12 : CrepProg (BitVec 64) :=
.seq crepBody59_8 crepBody59_11

def crepBody59_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 2)) crepBody59_12 crepBody59_1

def crepBody59_14 : CrepProg (BitVec 64) :=
.seq crepBody59_7 crepBody59_13

def crepBody59_15 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 5)) crepBody59_14

def crepBody59_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody59_17 : CrepProg (BitVec 64) :=
.seq crepBody59_15 crepBody59_16

def crepBody59_18 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 32#64) crepBody59_17

def crepBody59_19 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 0) crepBody59_18

def crepBody59_20 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody59_19

def data59 : CrepProg (BitVec 64) := crepBody59_20
def output59 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [100#8, 105#8, 118#8, 54#8, 52#8, 98#8, 121#8, 51#8, 50#8], [0, 1, 2], crepProgToHOL data59)
end InitECandidate.Proofs.FrontendStages.Crep
