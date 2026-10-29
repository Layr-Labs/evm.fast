import InitECandidate.Proofs.FrontendStages.Crep.Translate317
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody333_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "heap_mark" []

def crepBody333_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody333_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "keccak256"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.var 2]

def crepBody333_3 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody333_2

def crepBody333_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3, 4, 5], none)) "trie_lookup"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 2]

def crepBody333_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "heap_release" [Flapjack.CrepExp.var 1]

def crepBody333_6 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody333_5

def crepBody333_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody333_8 : CrepProg (BitVec 64) :=
.seq crepBody333_6 crepBody333_7

def crepBody333_9 : CrepProg (BitVec 64) :=
.seq crepBody333_4 crepBody333_8

def crepBody333_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody333_9

def crepBody333_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody333_10

def crepBody333_12 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody333_11

def crepBody333_13 : CrepProg (BitVec 64) :=
.seq crepBody333_3 crepBody333_12

def crepBody333_14 : CrepProg (BitVec 64) :=
.seq crepBody333_1 crepBody333_13

def crepBody333_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody333_14

def crepBody333_16 : CrepProg (BitVec 64) :=
.seq crepBody333_0 crepBody333_15

def crepBody333_17 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody333_16

def data333 : CrepProg (BitVec 64) := crepBody333_17
def output333 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [119#8, 115#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 108#8, 101#8, 97#8, 102#8], [0], crepProgToHOL data333)
end InitECandidate.Proofs.FrontendStages.Crep
