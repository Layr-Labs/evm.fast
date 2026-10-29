import InitECandidate.Proofs.FrontendStages.Crep.Translate19
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody35_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def data35 : CrepProg (BitVec 64) := crepBody35_0
def output35 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [117#8, 50#8, 53#8, 54#8, 95#8, 102#8, 114#8, 111#8, 109#8, 95#8, 119#8, 111#8, 114#8, 100#8], [0], crepProgToHOL data35)
end InitECandidate.Proofs.FrontendStages.Crep
