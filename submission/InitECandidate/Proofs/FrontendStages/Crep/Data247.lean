import InitECandidate.Proofs.FrontendStages.Crep.Translate231
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody247_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody247_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4, 5], none)) "mpt_nibble_key"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody247_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8], none)) "trie_walk"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64]),
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody247_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody247_4 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody247_3

def crepBody247_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody247_6 : CrepProg (BitVec 64) :=
.seq crepBody247_4 crepBody247_5

def crepBody247_7 : CrepProg (BitVec 64) :=
.seq crepBody247_2 crepBody247_6

def crepBody247_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody247_7

def crepBody247_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody247_8

def crepBody247_10 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody247_9

def crepBody247_11 : CrepProg (BitVec 64) :=
.seq crepBody247_1 crepBody247_10

def crepBody247_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody247_11

def crepBody247_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody247_12

def crepBody247_14 : CrepProg (BitVec 64) :=
.seq crepBody247_0 crepBody247_13

def crepBody247_15 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody247_14

def data247 : CrepProg (BitVec 64) := crepBody247_15
def output247 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 112#8, 116#8, 95#8, 103#8, 101#8, 116#8], [0, 1, 2], crepProgToHOL data247)
end InitECandidate.Proofs.FrontendStages.Crep
