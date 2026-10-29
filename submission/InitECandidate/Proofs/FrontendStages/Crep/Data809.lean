import InitECandidate.Proofs.FrontendStages.Crep.Translate793
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody809_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody809_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody809_2 : CrepProg (BitVec 64) :=
.seq crepBody809_0 crepBody809_1

def crepBody809_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 70#64])

def crepBody809_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 1) crepBody809_3

def crepBody809_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody809_6 : CrepProg (BitVec 64) :=
.seq crepBody809_5 crepBody809_1

def crepBody809_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 4#64) crepBody809_6

def crepBody809_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 9#64

def crepBody809_9 : CrepProg (BitVec 64) :=
.seq crepBody809_7 crepBody809_8

def crepBody809_10 : CrepProg (BitVec 64) :=
.seq crepBody809_4 crepBody809_9

def crepBody809_11 : CrepProg (BitVec 64) :=
.seq crepBody809_2 crepBody809_10

def crepBody809_12 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((5#64), crepBody809_11))) ("attempt_l3") ([Flapjack.CrepExp.var 0])

def crepBody809_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody809_12

def crepBody809_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody809_15 : CrepProg (BitVec 64) :=
.seq crepBody809_13 crepBody809_14

def crepBody809_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody809_15

def data809 : CrepProg (BitVec 64) := crepBody809_16
def output809 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 52#8], [0], crepProgToHOL data809)
end InitECandidate.Proofs.FrontendStages.Crep
