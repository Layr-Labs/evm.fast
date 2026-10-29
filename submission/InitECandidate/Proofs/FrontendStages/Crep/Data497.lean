import InitECandidate.Proofs.FrontendStages.Crep.Translate481
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody497_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "copy_from_buffer"
  [Flapjack.CrepExp.const 3#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])]

def crepBody497_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody497_0

def crepBody497_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody497_3 : CrepProg (BitVec 64) :=
.seq crepBody497_1 crepBody497_2

def crepBody497_4 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody497_3

def data497 : CrepProg (BitVec 64) := crepBody497_4
def output497 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [111#8, 112#8, 95#8, 99#8, 97#8, 108#8, 108#8, 100#8, 97#8, 116#8, 97#8, 99#8, 111#8, 112#8, 121#8], [], crepProgToHOL data497)
end InitECandidate.Proofs.FrontendStages.Crep
