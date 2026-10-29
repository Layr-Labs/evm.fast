import InitECandidate.Proofs.FrontendStages.Crep.Translate678
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody694_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "heap_mark" []

def crepBody694_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 288#64, Flapjack.CrepExp.const 5#64]]

def crepBody694_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_mul"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody694_3 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_2

def crepBody694_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_mul"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 288#64]]

def crepBody694_5 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_4

def crepBody694_6 : CrepProg (BitVec 64) :=
.seq crepBody694_3 crepBody694_5

def crepBody694_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_add"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 288#64]]

def crepBody694_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_7

def crepBody694_9 : CrepProg (BitVec 64) :=
.seq crepBody694_6 crepBody694_8

def crepBody694_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 288#64]]

def crepBody694_11 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_10

def crepBody694_12 : CrepProg (BitVec 64) :=
.seq crepBody694_9 crepBody694_11

def crepBody694_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody694_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_13

def crepBody694_15 : CrepProg (BitVec 64) :=
.seq crepBody694_12 crepBody694_14

def crepBody694_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_sub"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5]

def crepBody694_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_16

def crepBody694_18 : CrepProg (BitVec 64) :=
.seq crepBody694_15 crepBody694_17

def crepBody694_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_sub"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 6]

def crepBody694_20 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_19

def crepBody694_21 : CrepProg (BitVec 64) :=
.seq crepBody694_18 crepBody694_20

def crepBody694_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_mul_v" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6]

def crepBody694_23 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_22

def crepBody694_24 : CrepProg (BitVec 64) :=
.seq crepBody694_21 crepBody694_23

def crepBody694_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp6_add"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody694_26 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_25

def crepBody694_27 : CrepProg (BitVec 64) :=
.seq crepBody694_24 crepBody694_26

def crepBody694_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 3]

def crepBody694_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody694_28

def crepBody694_30 : CrepProg (BitVec 64) :=
.seq crepBody694_27 crepBody694_29

def crepBody694_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody694_32 : CrepProg (BitVec 64) :=
.seq crepBody694_30 crepBody694_31

def crepBody694_33 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1152#64]) crepBody694_32

def crepBody694_34 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 864#64]) crepBody694_33

def crepBody694_35 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 576#64]) crepBody694_34

def crepBody694_36 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64]) crepBody694_35

def crepBody694_37 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 4) crepBody694_36

def crepBody694_38 : CrepProg (BitVec 64) :=
.seq crepBody694_1 crepBody694_37

def crepBody694_39 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody694_38

def crepBody694_40 : CrepProg (BitVec 64) :=
.seq crepBody694_0 crepBody694_39

def crepBody694_41 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody694_40

def data694 : CrepProg (BitVec 64) := crepBody694_41
def output694 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 49#8, 50#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2], crepProgToHOL data694)
end InitECandidate.Proofs.FrontendStages.Crep
