import InitECandidate.Proofs.FrontendStages.Crep.Translate583
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody599_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fq_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def data599 : CrepProg (BitVec 64) := crepBody599_0
def output599 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 113#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 109#8, 111#8, 110#8, 116#8], [0, 1, 2, 3], crepProgToHOL data599)
end InitECandidate.Proofs.FrontendStages.Crep
