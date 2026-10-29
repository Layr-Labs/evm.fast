import InitECandidate.Proofs.FrontendStages.Crep.Translate45
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody61_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.load (Flapjack.CrepExp.var 0),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64]))
          (Flapjack.CrepExp.const 32#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64]))
          (Flapjack.CrepExp.const 32#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]))
          (Flapjack.CrepExp.const 32#64)],
    Flapjack.CrepExp.op Flapjack.BinOp.or
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64]),
        Flapjack.CrepExp.shift Flapjack.Shift.lsl
          (Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 56#64]))
          (Flapjack.CrepExp.const 32#64)]]

def data61 : CrepProg (BitVec 64) := crepBody61_0
def output61 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 105#8, 103#8, 105#8, 116#8, 115#8, 95#8, 116#8, 111#8, 95#8, 117#8, 50#8, 53#8, 54#8], [0], crepProgToHOL data61)
end InitECandidate.Proofs.FrontendStages.Crep
