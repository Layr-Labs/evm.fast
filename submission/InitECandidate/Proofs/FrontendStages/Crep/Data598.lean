import InitECandidate.Proofs.FrontendStages.Crep.Translate582
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody598_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fq_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 17522657719365597833#64, Flapjack.CrepExp.const 13107472804851548667#64,
    Flapjack.CrepExp.const 5164255478447964150#64, Flapjack.CrepExp.const 493319470278259999#64]

def data598 : CrepProg (BitVec 64) := crepBody598_0
def output598 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 113#8, 95#8, 116#8, 111#8, 95#8, 109#8, 111#8, 110#8, 116#8], [0, 1, 2, 3], crepProgToHOL data598)
end InitECandidate.Proofs.FrontendStages.Crep
