import InitECandidate.Proofs.FrontendStages.Crep.Translate519
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody535_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody535_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody535_2 : CrepProg (BitVec 64) :=
.seq crepBody535_0 crepBody535_1

def crepBody535_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "frame_exception" [Flapjack.CrepExp.var 1]

def crepBody535_4 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody535_3

def crepBody535_5 : CrepProg (BitVec 64) :=
.seq crepBody535_2 crepBody535_4

def crepBody535_6 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((8#64), crepBody535_5))) ("frame_prologue") ([])

def crepBody535_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody535_8 : CrepProg (BitVec 64) :=
.seq crepBody535_7 crepBody535_1

def crepBody535_9 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 1#64) crepBody535_8

def crepBody535_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 288#64]),
    Flapjack.CrepExp.const 32#64]) crepBody535_9

def crepBody535_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 0#64)) crepBody535_10 crepBody535_1

def crepBody535_12 : CrepProg (BitVec 64) :=
.seq crepBody535_6 crepBody535_11

def crepBody535_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody535_14 : CrepProg (BitVec 64) :=
.seq crepBody535_12 crepBody535_13

def crepBody535_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody535_14

def crepBody535_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody535_15

def data535 : CrepProg (BitVec 64) := crepBody535_16
def output535 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 115#8, 116#8, 97#8, 114#8, 116#8], [], crepProgToHOL data535)
end InitECandidate.Proofs.FrontendStages.Crep
