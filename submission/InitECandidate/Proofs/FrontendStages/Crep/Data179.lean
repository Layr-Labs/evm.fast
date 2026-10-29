import InitECandidate.Proofs.FrontendStages.Crep.Translate163
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody179_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody179_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6], none)) "pack_bytes" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody179_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "merkleize"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody179_3 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody179_2

def crepBody179_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody179_5 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody179_4

def crepBody179_6 : CrepProg (BitVec 64) :=
.seq crepBody179_3 crepBody179_5

def crepBody179_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "mix_in_length"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody179_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody179_7

def crepBody179_9 : CrepProg (BitVec 64) :=
.seq crepBody179_6 crepBody179_8

def crepBody179_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody179_11 : CrepProg (BitVec 64) :=
.seq crepBody179_9 crepBody179_10

def crepBody179_12 : CrepProg (BitVec 64) :=
.seq crepBody179_1 crepBody179_11

def crepBody179_13 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody179_12

def crepBody179_14 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody179_13

def crepBody179_15 : CrepProg (BitVec 64) :=
.seq crepBody179_0 crepBody179_14

def crepBody179_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody179_15

def data179 : CrepProg (BitVec 64) := crepBody179_16
def output179 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 114#8, 95#8, 98#8, 121#8, 116#8, 101#8, 115#8, 95#8, 108#8, 105#8, 115#8, 116#8], [0, 1, 2, 3], crepProgToHOL data179)
end InitECandidate.Proofs.FrontendStages.Crep
