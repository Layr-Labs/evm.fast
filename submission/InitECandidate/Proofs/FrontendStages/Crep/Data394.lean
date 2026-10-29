import InitECandidate.Proofs.FrontendStages.Crep.Translate378
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody394_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2, 3], none)) "htab_keys" [Flapjack.CrepExp.var 0]

def crepBody394_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "sort_elems"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 2#64,
    Flapjack.CrepExp.var 1]

def crepBody394_2 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody394_1

def crepBody394_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody394_4 : CrepProg (BitVec 64) :=
.seq crepBody394_2 crepBody394_3

def crepBody394_5 : CrepProg (BitVec 64) :=
.seq crepBody394_0 crepBody394_4

def crepBody394_6 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody394_5

def crepBody394_7 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody394_6

def data394 : CrepProg (BitVec 64) := crepBody394_7
def output394 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 111#8, 114#8, 116#8, 101#8, 100#8, 95#8, 107#8, 101#8, 121#8, 115#8, 51#8, 50#8], [0, 1], crepProgToHOL data394)
end InitECandidate.Proofs.FrontendStages.Crep
