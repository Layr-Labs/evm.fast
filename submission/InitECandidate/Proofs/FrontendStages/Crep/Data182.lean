import InitECandidate.Proofs.FrontendStages.Crep.Translate166
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody182_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.load 1
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.const 1073741840#64,
      Flapjack.CrepExp.op Flapjack.BinOp.and
        [Flapjack.CrepExp.var 0,
          Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 8#64]]])

def crepBody182_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 1)
          (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
            [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 7#64],
              Flapjack.CrepExp.const 8#64]),
        Flapjack.CrepExp.const 255#64]]

def crepBody182_2 : CrepProg (BitVec 64) :=
.seq crepBody182_0 crepBody182_1

def crepBody182_3 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody182_2

def data182 : CrepProg (BitVec 64) := crepBody182_3
def output182 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 111#8, 115#8, 116#8, 95#8, 105#8, 110#8, 112#8, 117#8, 116#8, 95#8, 98#8, 121#8, 116#8, 101#8], [0], crepProgToHOL data182)
end InitECandidate.Proofs.FrontendStages.Crep
