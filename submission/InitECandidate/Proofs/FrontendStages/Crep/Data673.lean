import InitECandidate.Proofs.FrontendStages.Crep.Translate657
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody673_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fp2_add" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 1]

def data673 : CrepProg (BitVec 64) := crepBody673_0
def output673 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 50#8, 95#8, 100#8, 98#8, 108#8], [0, 1], crepProgToHOL data673)
end InitECandidate.Proofs.FrontendStages.Crep
