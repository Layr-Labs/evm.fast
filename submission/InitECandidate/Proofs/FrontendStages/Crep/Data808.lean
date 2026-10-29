import InitECandidate.Proofs.FrontendStages.Crep.Translate792
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody808_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody808_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody808_2 : CrepProg (BitVec 64) :=
.seq crepBody808_0 crepBody808_1

def crepBody808_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 70#64])

def crepBody808_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 1) crepBody808_3

def crepBody808_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody808_6 : CrepProg (BitVec 64) :=
.seq crepBody808_5 crepBody808_1

def crepBody808_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 3#64) crepBody808_6

def crepBody808_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 9#64

def crepBody808_9 : CrepProg (BitVec 64) :=
.seq crepBody808_7 crepBody808_8

def crepBody808_10 : CrepProg (BitVec 64) :=
.seq crepBody808_4 crepBody808_9

def crepBody808_11 : CrepProg (BitVec 64) :=
.seq crepBody808_2 crepBody808_10

def crepBody808_12 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((1#64), crepBody808_11))) ("attempt_l2") ([Flapjack.CrepExp.var 0])

def crepBody808_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody808_12

def crepBody808_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody808_15 : CrepProg (BitVec 64) :=
.seq crepBody808_13 crepBody808_14

def crepBody808_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody808_15

def data808 : CrepProg (BitVec 64) := crepBody808_16
def output808 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 51#8], [0], crepProgToHOL data808)
end InitECandidate.Proofs.FrontendStages.Crep
