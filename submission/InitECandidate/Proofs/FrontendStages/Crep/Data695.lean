import InitECandidate.Proofs.FrontendStages.Crep.Translate679
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody695_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fp12_mul" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 1]

def data695 : CrepProg (BitVec 64) := crepBody695_0
def output695 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 115#8, 113#8, 114#8], [0, 1], crepProgToHOL data695)
end InitECandidate.Proofs.FrontendStages.Crep
