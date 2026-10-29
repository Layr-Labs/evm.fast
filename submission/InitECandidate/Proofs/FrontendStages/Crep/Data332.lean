import InitECandidate.Proofs.FrontendStages.Crep.Translate316
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody332_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "htab_set"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
          Flapjack.CrepExp.const 72#64]),
    Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 1#64]

def crepBody332_1 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody332_0

def crepBody332_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody332_3 : CrepProg (BitVec 64) :=
.seq crepBody332_1 crepBody332_2

def data332 : CrepProg (BitVec 64) := crepBody332_3
def output332 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [114#8, 101#8, 99#8, 111#8, 114#8, 100#8, 95#8, 112#8, 114#8, 101#8, 95#8, 115#8, 116#8, 97#8, 116#8, 101#8, 95#8,
    114#8, 101#8, 97#8, 100#8], [0], crepProgToHOL data332)
end InitECandidate.Proofs.FrontendStages.Crep
