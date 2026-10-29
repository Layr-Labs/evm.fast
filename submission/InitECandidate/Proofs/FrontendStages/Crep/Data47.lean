import InitECandidate.Proofs.FrontendStages.Crep.Translate31
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody47_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.xor
      [Flapjack.CrepExp.var 0,
        Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.xor
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.xor
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]],
    Flapjack.CrepExp.op Flapjack.BinOp.xor
      [Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 1#64]]]

def data47 : CrepProg (BitVec 64) := crepBody47_0
def output47 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 110#8, 111#8, 116#8], [0, 1, 2, 3], crepProgToHOL data47)
end InitECandidate.Proofs.FrontendStages.Crep
