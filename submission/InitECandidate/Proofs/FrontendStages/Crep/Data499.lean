import InitECandidate.Proofs.FrontendStages.Crep.Translate483
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody499_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "copy_from_buffer"
  [Flapjack.CrepExp.const 3#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
          Flapjack.CrepExp.const 56#64])]

def crepBody499_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody499_0

def crepBody499_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody499_3 : CrepProg (BitVec 64) :=
.seq crepBody499_1 crepBody499_2

def data499 : CrepProg (BitVec 64) := crepBody499_3
def output499 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [111#8, 112#8, 95#8, 99#8, 111#8, 100#8, 101#8, 99#8, 111#8, 112#8, 121#8], [], crepProgToHOL data499)
end InitECandidate.Proofs.FrontendStages.Crep
