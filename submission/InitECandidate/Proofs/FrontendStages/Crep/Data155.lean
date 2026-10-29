import InitECandidate.Proofs.FrontendStages.Crep.Translate139
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody155_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "modinv_bin"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 13822214165235122497#64, Flapjack.CrepExp.const 13451932020343611451#64,
    Flapjack.CrepExp.const 18446744073709551614#64, Flapjack.CrepExp.const 18446744073709551615#64]

def data155 : CrepProg (BitVec 64) := crepBody155_0
def output155 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 110#8, 95#8, 105#8, 110#8, 118#8], [0, 1, 2, 3], crepProgToHOL data155)
end InitECandidate.Proofs.FrontendStages.Crep
