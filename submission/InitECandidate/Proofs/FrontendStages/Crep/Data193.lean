import InitECandidate.Proofs.FrontendStages.Crep.Translate177
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody193_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody193_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 32#64]]

def crepBody193_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_u64_at" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody193_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody193_2

def crepBody193_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]]

def crepBody193_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody193_4

def crepBody193_6 : CrepProg (BitVec 64) :=
.seq crepBody193_3 crepBody193_5

def crepBody193_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
    Flapjack.CrepExp.const 20#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]]

def crepBody193_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody193_7

def crepBody193_9 : CrepProg (BitVec 64) :=
.seq crepBody193_6 crepBody193_8

def crepBody193_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_u64_at"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 36#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64]]

def crepBody193_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody193_10

def crepBody193_12 : CrepProg (BitVec 64) :=
.seq crepBody193_9 crepBody193_11

def crepBody193_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "merkleize"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.var 1]

def crepBody193_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody193_13

def crepBody193_15 : CrepProg (BitVec 64) :=
.seq crepBody193_12 crepBody193_14

def crepBody193_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody193_17 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody193_16

def crepBody193_18 : CrepProg (BitVec 64) :=
.seq crepBody193_15 crepBody193_17

def crepBody193_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody193_20 : CrepProg (BitVec 64) :=
.seq crepBody193_18 crepBody193_19

def crepBody193_21 : CrepProg (BitVec 64) :=
.seq crepBody193_1 crepBody193_20

def crepBody193_22 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody193_21

def crepBody193_23 : CrepProg (BitVec 64) :=
.seq crepBody193_0 crepBody193_22

def crepBody193_24 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody193_23

def data193 : CrepProg (BitVec 64) := crepBody193_24
def output193 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [104#8, 116#8, 114#8, 95#8, 119#8, 105#8, 116#8, 104#8, 100#8, 114#8, 97#8, 119#8, 97#8, 108#8], [0, 1], crepProgToHOL data193)
end InitECandidate.Proofs.FrontendStages.Crep
