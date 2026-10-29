import InitECandidate.Proofs.FrontendStages.Crep.Translate152
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody168_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody168_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody168_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "keccak256"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 3]

def crepBody168_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody168_2

def crepBody168_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memcpy"
  [Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 12#64],
    Flapjack.CrepExp.const 20#64]

def crepBody168_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody168_4

def crepBody168_6 : CrepProg (BitVec 64) :=
.seq crepBody168_3 crepBody168_5

def crepBody168_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody168_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody168_7

def crepBody168_9 : CrepProg (BitVec 64) :=
.seq crepBody168_6 crepBody168_8

def crepBody168_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody168_11 : CrepProg (BitVec 64) :=
.seq crepBody168_9 crepBody168_10

def crepBody168_12 : CrepProg (BitVec 64) :=
.seq crepBody168_1 crepBody168_11

def crepBody168_13 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody168_12

def crepBody168_14 : CrepProg (BitVec 64) :=
.seq crepBody168_0 crepBody168_13

def crepBody168_15 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody168_14

def data168 : CrepProg (BitVec 64) := crepBody168_15
def output168 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 101#8, 99#8, 112#8, 50#8, 53#8, 54#8, 107#8, 49#8, 95#8, 97#8, 100#8, 100#8, 114#8, 101#8, 115#8, 115#8, 95#8,
    111#8, 102#8, 95#8, 112#8, 111#8, 105#8, 110#8, 116#8], [0, 1], crepProgToHOL data168)
end InitECandidate.Proofs.FrontendStages.Crep
