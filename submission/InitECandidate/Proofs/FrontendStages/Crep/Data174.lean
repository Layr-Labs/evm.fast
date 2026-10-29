import InitECandidate.Proofs.FrontendStages.Crep.Translate158
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody174_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "merkleize_progressive"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody174_1 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody174_0

def crepBody174_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "mix_in_length"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody174_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody174_2

def crepBody174_4 : CrepProg (BitVec 64) :=
.seq crepBody174_1 crepBody174_3

def crepBody174_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody174_6 : CrepProg (BitVec 64) :=
.seq crepBody174_4 crepBody174_5

def data174 : CrepProg (BitVec 64) := crepBody174_6
def output174 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 114#8, 95#8, 112#8, 108#8, 105#8, 115#8, 116#8, 95#8, 99#8, 104#8, 117#8, 110#8, 107#8, 115#8], [0, 1, 2, 3], crepProgToHOL data174)
end InitECandidate.Proofs.FrontendStages.Crep
