import InitECandidate.Proofs.FrontendStages.Crep.Translate635
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody651_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "bls_fp_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def data651 : CrepProg (BitVec 64) := crepBody651_0
def output651 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 115#8, 113#8, 114#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data651)
end InitECandidate.Proofs.FrontendStages.Crep
