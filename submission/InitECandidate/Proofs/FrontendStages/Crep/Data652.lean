import InitECandidate.Proofs.FrontendStages.Crep.Translate636
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody652_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "bls_fp_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 17644856173732828998#64,
    Flapjack.CrepExp.const 754043588434789617#64, Flapjack.CrepExp.const 10224657059481499349#64,
    Flapjack.CrepExp.const 7488229067341005760#64, Flapjack.CrepExp.const 11130996698012816685#64,
    Flapjack.CrepExp.const 1267921511277847466#64]

def data652 : CrepProg (BitVec 64) := crepBody652_0
def output652 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [98#8, 108#8, 115#8, 95#8, 102#8, 112#8, 95#8, 116#8, 111#8, 95#8, 109#8, 111#8, 110#8, 116#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data652)
end InitECandidate.Proofs.FrontendStages.Crep
