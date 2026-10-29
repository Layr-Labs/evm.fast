import InitECandidate.Proofs.FrontendStages.Crep.Translate712
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody728_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "heap_mark" []

def crepBody728_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc" [Flapjack.CrepExp.const 576#64]

def crepBody728_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "memzero" [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 576#64]

def crepBody728_3 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody728_2

def crepBody728_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_copy"
  [Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody728_5 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody728_4

def crepBody728_6 : CrepProg (BitVec 64) :=
.seq crepBody728_3 crepBody728_5

def crepBody728_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_scale"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody728_8 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody728_7

def crepBody728_9 : CrepProg (BitVec 64) :=
.seq crepBody728_6 crepBody728_8

def crepBody728_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_scale"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody728_11 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody728_10

def crepBody728_12 : CrepProg (BitVec 64) :=
.seq crepBody728_9 crepBody728_11

def crepBody728_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp12_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 15]

def crepBody728_14 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody728_13

def crepBody728_15 : CrepProg (BitVec 64) :=
.seq crepBody728_12 crepBody728_14

def crepBody728_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "heap_release" [Flapjack.CrepExp.var 14]

def crepBody728_17 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody728_16

def crepBody728_18 : CrepProg (BitVec 64) :=
.seq crepBody728_15 crepBody728_17

def crepBody728_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody728_20 : CrepProg (BitVec 64) :=
.seq crepBody728_18 crepBody728_19

def crepBody728_21 : CrepProg (BitVec 64) :=
.seq crepBody728_1 crepBody728_20

def crepBody728_22 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody728_21

def crepBody728_23 : CrepProg (BitVec 64) :=
.seq crepBody728_0 crepBody728_22

def crepBody728_24 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody728_23

def data728 : CrepProg (BitVec 64) := crepBody728_24
def output728 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 97#8, 105#8, 114#8, 95#8, 101#8, 108#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13], crepProgToHOL data728)
end InitECandidate.Proofs.FrontendStages.Crep
