import InitECandidate.Proofs.FrontendStages.Crep.Translate796
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody812_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody812_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody812_2 : CrepProg (BitVec 64) :=
.seq crepBody812_0 crepBody812_1

def crepBody812_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 70#64])

def crepBody812_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 1) crepBody812_3

def crepBody812_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody812_6 : CrepProg (BitVec 64) :=
.seq crepBody812_5 crepBody812_1

def crepBody812_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 7#64) crepBody812_6

def crepBody812_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 9#64

def crepBody812_9 : CrepProg (BitVec 64) :=
.seq crepBody812_7 crepBody812_8

def crepBody812_10 : CrepProg (BitVec 64) :=
.seq crepBody812_4 crepBody812_9

def crepBody812_11 : CrepProg (BitVec 64) :=
.seq crepBody812_2 crepBody812_10

def crepBody812_12 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((8#64), crepBody812_11))) ("attempt_l6") ([Flapjack.CrepExp.var 0])

def crepBody812_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody812_12

def crepBody812_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody812_15 : CrepProg (BitVec 64) :=
.seq crepBody812_13 crepBody812_14

def crepBody812_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody812_15

def data812 : CrepProg (BitVec 64) := crepBody812_16
def output812 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 55#8], [0], crepProgToHOL data812)
end InitECandidate.Proofs.FrontendStages.Crep
