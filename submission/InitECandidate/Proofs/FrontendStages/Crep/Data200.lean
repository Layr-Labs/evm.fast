import InitECandidate.Proofs.FrontendStages.Crep.Translate184
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody200_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody200_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 32#64]]

def crepBody200_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.var 3]

def crepBody200_3 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody200_2

def crepBody200_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htr_bytes_vector"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 20#64],
    Flapjack.CrepExp.const 48#64,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]]

def crepBody200_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody200_4

def crepBody200_6 : CrepProg (BitVec 64) :=
.seq crepBody200_3 crepBody200_5

def crepBody200_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "merkleize"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 1]

def crepBody200_8 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody200_7

def crepBody200_9 : CrepProg (BitVec 64) :=
.seq crepBody200_6 crepBody200_8

def crepBody200_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody200_11 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody200_10

def crepBody200_12 : CrepProg (BitVec 64) :=
.seq crepBody200_9 crepBody200_11

def crepBody200_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody200_14 : CrepProg (BitVec 64) :=
.seq crepBody200_12 crepBody200_13

def crepBody200_15 : CrepProg (BitVec 64) :=
.seq crepBody200_1 crepBody200_14

def crepBody200_16 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody200_15

def crepBody200_17 : CrepProg (BitVec 64) :=
.seq crepBody200_0 crepBody200_16

def crepBody200_18 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody200_17

def data200 : CrepProg (BitVec 64) := crepBody200_18
def output200 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [104#8, 116#8, 114#8, 95#8, 98#8, 101#8, 120#8, 105#8, 116#8], [0, 1], crepProgToHOL data200)
end InitECandidate.Proofs.FrontendStages.Crep
