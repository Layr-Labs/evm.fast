import InitECandidate.Proofs.FrontendStages.Crep.Translate596
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody612_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "is_zero_bytes"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]]

def data612 : CrepProg (BitVec 64) := crepBody612_0
def output612 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 101#8, 95#8, 105#8, 115#8, 95#8, 122#8, 101#8, 114#8, 111#8], [0, 1], crepProgToHOL data612)
end InitECandidate.Proofs.FrontendStages.Crep
