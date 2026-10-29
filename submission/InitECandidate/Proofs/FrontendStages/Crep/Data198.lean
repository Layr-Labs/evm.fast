import InitECandidate.Proofs.FrontendStages.Crep.Translate182
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody198_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody198_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 32#64]]

def crepBody198_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.var 3]

def crepBody198_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody198_2

def crepBody198_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64],
    Flapjack.CrepExp.const 48#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]]

def crepBody198_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody198_4

def crepBody198_6 : CrepProg (BitVec 64) :=
.seq crepBody198_3 crepBody198_5

def crepBody198_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 68#64],
    Flapjack.CrepExp.const 48#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]]

def crepBody198_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody198_7

def crepBody198_9 : CrepProg (BitVec 64) :=
.seq crepBody198_6 crepBody198_8

def crepBody198_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "merkleize"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 1]

def crepBody198_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody198_10

def crepBody198_12 : CrepProg (BitVec 64) :=
.seq crepBody198_9 crepBody198_11

def crepBody198_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody198_14 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody198_13

def crepBody198_15 : CrepProg (BitVec 64) :=
.seq crepBody198_12 crepBody198_14

def crepBody198_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody198_17 : CrepProg (BitVec 64) :=
.seq crepBody198_15 crepBody198_16

def crepBody198_18 : CrepProg (BitVec 64) :=
.seq crepBody198_1 crepBody198_17

def crepBody198_19 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody198_18

def crepBody198_20 : CrepProg (BitVec 64) :=
.seq crepBody198_0 crepBody198_19

def crepBody198_21 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody198_20

def data198 : CrepProg (BitVec 64) := crepBody198_21
def output198 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 99#8, 111#8, 110#8, 115#8], [0, 1], crepProgToHOL data198)
end InitECandidate.Proofs.FrontendStages.Crep
