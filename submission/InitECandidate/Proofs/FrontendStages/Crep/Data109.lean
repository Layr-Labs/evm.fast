import InitECandidate.Proofs.FrontendStages.Crep.Translate93
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody109_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 4)

def crepBody109_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody109_2 : CrepProg (BitVec 64) :=
.seq crepBody109_0 crepBody109_1

def crepBody109_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody109_2

def crepBody109_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3])
  (Flapjack.CrepExp.var 1)

def crepBody109_5 : CrepProg (BitVec 64) :=
.seq crepBody109_3 crepBody109_4

def crepBody109_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.var 4)

def crepBody109_7 : CrepProg (BitVec 64) :=
.seq crepBody109_6 crepBody109_1

def crepBody109_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 8#64)) crepBody109_7

def crepBody109_9 : CrepProg (BitVec 64) :=
.seq crepBody109_5 crepBody109_8

def crepBody109_10 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 3)) crepBody109_9

def crepBody109_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody109_12 : CrepProg (BitVec 64) :=
.seq crepBody109_10 crepBody109_11

def crepBody109_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.var 2) crepBody109_12

def data109 : CrepProg (BitVec 64) := crepBody109_13
def output109 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [114#8, 108#8, 112#8, 95#8, 112#8, 117#8, 116#8, 95#8, 98#8, 101#8], [0, 1, 2], crepProgToHOL data109)
end InitECandidate.Proofs.FrontendStages.Crep
