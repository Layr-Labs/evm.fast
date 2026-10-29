import InitECandidate.Proofs.FrontendStages.Crep.Translate275
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody291_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 264#64])]

def data291 : CrepProg (BitVec 64) := crepBody291_0
def output291 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 120#8, 95#8, 98#8, 108#8, 111#8, 98#8, 95#8, 99#8, 111#8, 117#8, 110#8, 116#8], [0], crepProgToHOL data291)
end InitECandidate.Proofs.FrontendStages.Crep
