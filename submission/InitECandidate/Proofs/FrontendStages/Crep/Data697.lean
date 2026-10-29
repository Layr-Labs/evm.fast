import InitECandidate.Proofs.FrontendStages.Crep.Translate681
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody697_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody697_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 288#64, Flapjack.CrepExp.const 3#64]]

def crepBody697_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 1]

def crepBody697_3 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_2

def crepBody697_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_mul"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 288#64]]

def crepBody697_5 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_4

def crepBody697_6 : CrepProg (BitVec 64) :=
.seq crepBody697_3 crepBody697_5

def crepBody697_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_mul_v" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5]

def crepBody697_8 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_7

def crepBody697_9 : CrepProg (BitVec 64) :=
.seq crepBody697_6 crepBody697_8

def crepBody697_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_sub"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody697_11 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_10

def crepBody697_12 : CrepProg (BitVec 64) :=
.seq crepBody697_9 crepBody697_11

def crepBody697_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_inv" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6]

def crepBody697_14 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_13

def crepBody697_15 : CrepProg (BitVec 64) :=
.seq crepBody697_12 crepBody697_14

def crepBody697_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 6]

def crepBody697_17 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_16

def crepBody697_18 : CrepProg (BitVec 64) :=
.seq crepBody697_15 crepBody697_17

def crepBody697_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.var 6]

def crepBody697_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_19

def crepBody697_21 : CrepProg (BitVec 64) :=
.seq crepBody697_18 crepBody697_20

def crepBody697_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "fp6_neg"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64]]

def crepBody697_23 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_22

def crepBody697_24 : CrepProg (BitVec 64) :=
.seq crepBody697_21 crepBody697_23

def crepBody697_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody697_26 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody697_25

def crepBody697_27 : CrepProg (BitVec 64) :=
.seq crepBody697_24 crepBody697_26

def crepBody697_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody697_29 : CrepProg (BitVec 64) :=
.seq crepBody697_27 crepBody697_28

def crepBody697_30 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 576#64]) crepBody697_29

def crepBody697_31 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 288#64]) crepBody697_30

def crepBody697_32 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 3) crepBody697_31

def crepBody697_33 : CrepProg (BitVec 64) :=
.seq crepBody697_1 crepBody697_32

def crepBody697_34 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody697_33

def crepBody697_35 : CrepProg (BitVec 64) :=
.seq crepBody697_0 crepBody697_34

def crepBody697_36 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody697_35

def data697 : CrepProg (BitVec 64) := crepBody697_36
def output697 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 105#8, 110#8, 118#8], [0, 1], crepProgToHOL data697)
end InitECandidate.Proofs.FrontendStages.Crep
