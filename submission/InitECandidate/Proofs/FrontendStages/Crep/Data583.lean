import InitECandidate.Proofs.FrontendStages.Crep.Translate567
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody583_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "modinv_bin"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 18446744073709551615#64, Flapjack.CrepExp.const 4294967295#64, Flapjack.CrepExp.const 0#64,
    Flapjack.CrepExp.const 18446744069414584321#64]

def data583 : CrepProg (BitVec 64) := crepBody583_0
def output583 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 50#8, 53#8, 54#8, 95#8, 102#8, 112#8, 95#8, 105#8, 110#8, 118#8], [0, 1, 2, 3], crepProgToHOL data583)
end InitECandidate.Proofs.FrontendStages.Crep
