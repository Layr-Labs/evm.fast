import InitECandidate.Proofs.FrontendStages.Crep.Translate699
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody715_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fp2_is_zero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]]

def data715 : CrepProg (BitVec 64) := crepBody715_0
def output715 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 105#8, 115#8, 95#8, 105#8, 110#8, 102#8], [0], crepProgToHOL data715)
end InitECandidate.Proofs.FrontendStages.Crep
