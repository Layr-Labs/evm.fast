import InitECandidate.Proofs.FrontendStages.Crep.Translate794
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody810_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody810_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody810_2 : CrepProg (BitVec 64) :=
.seq crepBody810_0 crepBody810_1

def crepBody810_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 70#64])

def crepBody810_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 1) crepBody810_3

def crepBody810_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody810_6 : CrepProg (BitVec 64) :=
.seq crepBody810_5 crepBody810_1

def crepBody810_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 5#64) crepBody810_6

def crepBody810_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 9#64

def crepBody810_9 : CrepProg (BitVec 64) :=
.seq crepBody810_7 crepBody810_8

def crepBody810_10 : CrepProg (BitVec 64) :=
.seq crepBody810_4 crepBody810_9

def crepBody810_11 : CrepProg (BitVec 64) :=
.seq crepBody810_2 crepBody810_10

def crepBody810_12 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((7#64), crepBody810_11))) ("attempt_l4") ([Flapjack.CrepExp.var 0])

def crepBody810_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody810_12

def crepBody810_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody810_15 : CrepProg (BitVec 64) :=
.seq crepBody810_13 crepBody810_14

def crepBody810_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody810_15

def data810 : CrepProg (BitVec 64) := crepBody810_16
def output810 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 53#8], [0], crepProgToHOL data810)
end InitECandidate.Proofs.FrontendStages.Crep
