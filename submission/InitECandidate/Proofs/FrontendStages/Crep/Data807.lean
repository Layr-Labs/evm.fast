import InitECandidate.Proofs.FrontendStages.Crep.Translate791
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody807_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 1 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody807_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody807_2 : CrepProg (BitVec 64) :=
.seq crepBody807_0 crepBody807_1

def crepBody807_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.store8 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2688614400#64, Flapjack.CrepExp.const 70#64])

def crepBody807_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.var 1) crepBody807_3

def crepBody807_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 2)

def crepBody807_6 : CrepProg (BitVec 64) :=
.seq crepBody807_5 crepBody807_1

def crepBody807_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 2#64) crepBody807_6

def crepBody807_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 9#64

def crepBody807_9 : CrepProg (BitVec 64) :=
.seq crepBody807_7 crepBody807_8

def crepBody807_10 : CrepProg (BitVec 64) :=
.seq crepBody807_4 crepBody807_9

def crepBody807_11 : CrepProg (BitVec 64) :=
.seq crepBody807_2 crepBody807_10

def crepBody807_12 : CrepProg (BitVec 64) :=
.call (some (([2]), some ((3#64), crepBody807_11))) ("attempt_l1") ([Flapjack.CrepExp.var 0])

def crepBody807_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody807_12

def crepBody807_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody807_15 : CrepProg (BitVec 64) :=
.seq crepBody807_13 crepBody807_14

def crepBody807_16 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody807_15

def data807 : CrepProg (BitVec 64) := crepBody807_16
def output807 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [97#8, 116#8, 116#8, 101#8, 109#8, 112#8, 116#8, 95#8, 108#8, 50#8], [0], crepProgToHOL data807)
end InitECandidate.Proofs.FrontendStages.Crep
