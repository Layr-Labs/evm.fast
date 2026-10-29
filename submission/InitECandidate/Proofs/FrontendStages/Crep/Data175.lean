import InitECandidate.Proofs.FrontendStages.Crep.Translate159
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody175_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody175_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5], none)) "pack_bytes" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody175_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "htr_plist_chunks"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody175_3 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody175_2

def crepBody175_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody175_5 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody175_4

def crepBody175_6 : CrepProg (BitVec 64) :=
.seq crepBody175_3 crepBody175_5

def crepBody175_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody175_8 : CrepProg (BitVec 64) :=
.seq crepBody175_6 crepBody175_7

def crepBody175_9 : CrepProg (BitVec 64) :=
.seq crepBody175_1 crepBody175_8

def crepBody175_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody175_9

def crepBody175_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody175_10

def crepBody175_12 : CrepProg (BitVec 64) :=
.seq crepBody175_0 crepBody175_11

def crepBody175_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody175_12

def data175 : CrepProg (BitVec 64) := crepBody175_13
def output175 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 112#8, 98#8, 121#8, 116#8, 101#8, 115#8], [0, 1, 2], crepProgToHOL data175)
end InitECandidate.Proofs.FrontendStages.Crep
