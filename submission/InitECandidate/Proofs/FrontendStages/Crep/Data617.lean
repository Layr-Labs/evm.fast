import InitECandidate.Proofs.FrontendStages.Crep.Translate601
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody617_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "fe_is_zero"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
          [Flapjack.CrepExp.const 2#64,
            Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]]]]

def data617 : CrepProg (BitVec 64) := crepBody617_0
def output617 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 105#8, 115#8, 95#8, 105#8, 110#8, 102#8], [0, 1], crepProgToHOL data617)
end InitECandidate.Proofs.FrontendStages.Crep
