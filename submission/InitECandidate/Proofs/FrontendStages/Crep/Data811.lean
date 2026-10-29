import InitECandidate.Proofs.FrontendStages.Crep.Translate795
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody811_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody811_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody811_2 : CrepProg (BitVec 64) :=
.seq crepBody811_0 crepBody811_1

def crepBody811_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 70#64])

def crepBody811_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 1) crepBody811_3

def crepBody811_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody811_6 : CrepProg (BitVec 64) :=
.seq crepBody811_5 crepBody811_1

def crepBody811_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 6#64) crepBody811_6

def crepBody811_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 9#64

def crepBody811_9 : CrepProg (BitVec 64) :=
.seq crepBody811_7 crepBody811_8

def crepBody811_10 : CrepProg (BitVec 64) :=
.seq crepBody811_4 crepBody811_9

def crepBody811_11 : CrepProg (BitVec 64) :=
.seq crepBody811_2 crepBody811_10

def crepBody811_12 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((6#64), crepBody811_11))) ("attempt_l5") ([Flapjack.CrepExp.var 0])

def crepBody811_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody811_12

def crepBody811_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody811_15 : CrepProg (BitVec 64) :=
.seq crepBody811_13 crepBody811_14

def crepBody811_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody811_15

def data811 : CrepProg (BitVec 64) := crepBody811_16
def output811 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 54#8], [0], crepProgToHOL data811)
end InitECandidate.Proofs.FrontendStages.Crep
