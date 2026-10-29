import InitECandidate.Proofs.FrontendStages.Crep.Translate597
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody613_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "memeq"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]]

def data613 : CrepProg (BitVec 64) := crepBody613_0
def output613 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 101#8, 113#8], [0, 1, 2], crepProgToHOL data613)
end InitECandidate.Proofs.FrontendStages.Crep
