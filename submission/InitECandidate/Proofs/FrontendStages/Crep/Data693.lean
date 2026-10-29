import InitECandidate.Proofs.FrontendStages.Crep.Translate677
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody693_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "heap_mark" []

def crepBody693_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 576#64]

def crepBody693_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "fp12_set_one" [Flapjack.CrepExp.var 2]

def crepBody693_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody693_2

def crepBody693_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "memeq"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 576#64]

def crepBody693_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 1]

def crepBody693_6 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody693_5

def crepBody693_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody693_8 : CrepProg (BitVec 64) :=
.seq crepBody693_6 crepBody693_7

def crepBody693_9 : CrepProg (BitVec 64) :=
.seq crepBody693_4 crepBody693_8

def crepBody693_10 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody693_9

def crepBody693_11 : CrepProg (BitVec 64) :=
.seq crepBody693_3 crepBody693_10

def crepBody693_12 : CrepProg (BitVec 64) :=
.seq crepBody693_1 crepBody693_11

def crepBody693_13 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody693_12

def crepBody693_14 : CrepProg (BitVec 64) :=
.seq crepBody693_0 crepBody693_13

def crepBody693_15 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody693_14

def data693 : CrepProg (BitVec 64) := crepBody693_15
def output693 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 105#8, 115#8, 95#8, 111#8, 110#8, 101#8], [0], crepProgToHOL data693)
end InitECandidate.Proofs.FrontendStages.Crep
