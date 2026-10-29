import InitECandidate.Proofs.FrontendStages.Crep.Translate65
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody81_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody81_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody81_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 32#64)) crepBody81_0 crepBody81_1

def crepBody81_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "u256_limb"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 6#64)]

def crepBody81_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.and
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 6)
          (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 63#64]),
        Flapjack.CrepExp.const 255#64]]

def crepBody81_5 : CrepProg (BitVec 64) :=
.seq crepBody81_3 crepBody81_4

def crepBody81_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody81_5

def crepBody81_7 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 31#64, Flapjack.CrepExp.var 0],
    Flapjack.CrepExp.const 8#64]) crepBody81_6

def crepBody81_8 : CrepProg (BitVec 64) :=
.seq crepBody81_2 crepBody81_7

def data81 : CrepProg (BitVec 64) := crepBody81_8
def output81 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 98#8, 121#8, 116#8, 101#8], [0, 1, 2, 3, 4], crepProgToHOL data81)
end InitECandidate.Proofs.FrontendStages.Crep
