import InitECandidate.Proofs.FrontendStages.Crep.Translate227
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody243_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "key_to_nibbles"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 144#64])]

def crepBody243_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody243_0

def crepBody243_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call none "trie_walk"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 144#64]),
    Flapjack.CrepExp.const 64#64]

def crepBody243_3 : CrepProg (BitVec 64) :=
.seq crepBody243_1 crepBody243_2

def data243 : CrepProg (BitVec 64) := crepBody243_3
def output243 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [116#8, 114#8, 105#8, 101#8, 95#8, 108#8, 111#8, 111#8, 107#8, 117#8, 112#8], [0, 1], crepProgToHOL data243)
end InitECandidate.Proofs.FrontendStages.Crep
