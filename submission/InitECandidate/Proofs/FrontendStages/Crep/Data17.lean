import InitECandidate.Proofs.FrontendStages.Crep.Translate1
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody17_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.loadByte (Flapjack.CrepExp.var 0),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]))
          (Flapjack.CrepExp.const 8#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 2#64]))
          (Flapjack.CrepExp.const 16#64),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.loadByte
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 3#64]))
          (Flapjack.CrepExp.const 24#64)]]

def data17 : CrepProg (BitVec 64) := crepBody17_0
def output17 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [108#8, 100#8, 95#8, 108#8, 101#8, 51#8, 50#8], [0], crepProgToHOL data17)
end InitECandidate.Proofs.FrontendStages.Crep
