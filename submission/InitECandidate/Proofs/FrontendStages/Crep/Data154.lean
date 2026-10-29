import InitECandidate.Proofs.FrontendStages.Crep.Translate138
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody154_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fn_pow"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 13822214165235122495#64, Flapjack.CrepExp.const 13451932020343611451#64,
    Flapjack.CrepExp.const 18446744073709551614#64, Flapjack.CrepExp.const 18446744073709551615#64]

def data154 : CrepProg (BitVec 64) := crepBody154_0
def output154 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [102#8, 110#8, 95#8, 105#8, 110#8, 118#8, 95#8, 102#8, 101#8, 114#8, 109#8, 97#8, 116#8], [0, 1, 2, 3], crepProgToHOL data154)
end InitECandidate.Proofs.FrontendStages.Crep
