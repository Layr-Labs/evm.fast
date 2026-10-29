import InitECandidate.Proofs.FrontendStages.Crep.Translate178
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody194_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "merkleize"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody194_1 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody194_0

def crepBody194_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "mix_in_length"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3]

def crepBody194_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody194_2

def crepBody194_4 : CrepProg (BitVec 64) :=
.seq crepBody194_1 crepBody194_3

def crepBody194_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody194_6 : CrepProg (BitVec 64) :=
.seq crepBody194_4 crepBody194_5

def data194 : CrepProg (BitVec 64) := crepBody194_6
def output194 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 114#8, 95#8, 108#8, 105#8, 115#8, 116#8, 95#8, 114#8, 111#8, 111#8, 116#8, 115#8], [0, 1, 2, 3], crepProgToHOL data194)
end InitECandidate.Proofs.FrontendStages.Crep
