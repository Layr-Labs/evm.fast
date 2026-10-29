import InitECandidate.Proofs.FrontendStages.Crep.Translate33
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody49_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4],
    Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5],
    Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 6],
    Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7]]

def data49 : CrepProg (BitVec 64) := crepBody49_0
def output49 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 111#8, 114#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data49)
end InitECandidate.Proofs.FrontendStages.Crep
