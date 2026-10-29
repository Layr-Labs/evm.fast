import InitECandidate.Proofs.FrontendStages.Crep.Translate723
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody739_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody739_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 3#64]]

def crepBody739_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 4#64]]

def crepBody739_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_copy" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 7]

def crepBody739_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_3

def crepBody739_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_sqr"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 7]

def crepBody739_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_5

def crepBody739_7 : CrepProg (BitVec 64) :=
.seq crepBody739_4 crepBody739_6

def crepBody739_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 7]

def crepBody739_9 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_8

def crepBody739_10 : CrepProg (BitVec 64) :=
.seq crepBody739_7 crepBody739_9

def crepBody739_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "iso_horner_fp2"
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 5600#64],
    Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3]

def crepBody739_12 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_11

def crepBody739_13 : CrepProg (BitVec 64) :=
.seq crepBody739_10 crepBody739_12

def crepBody739_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "iso_horner_fp2"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 5984#64],
    Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3]

def crepBody739_15 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_14

def crepBody739_16 : CrepProg (BitVec 64) :=
.seq crepBody739_13 crepBody739_15

def crepBody739_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "iso_horner_fp2"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 6368#64],
    Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3]

def crepBody739_18 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_17

def crepBody739_19 : CrepProg (BitVec 64) :=
.seq crepBody739_16 crepBody739_18

def crepBody739_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "iso_horner_fp2"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 6752#64],
    Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 3]

def crepBody739_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_20

def crepBody739_22 : CrepProg (BitVec 64) :=
.seq crepBody739_19 crepBody739_21

def crepBody739_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.var 6]

def crepBody739_24 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_23

def crepBody739_25 : CrepProg (BitVec 64) :=
.seq crepBody739_22 crepBody739_24

def crepBody739_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64],
    Flapjack.CrepExp.var 7]

def crepBody739_27 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_26

def crepBody739_28 : CrepProg (BitVec 64) :=
.seq crepBody739_25 crepBody739_27

def crepBody739_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_mul"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64]]

def crepBody739_30 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_29

def crepBody739_31 : CrepProg (BitVec 64) :=
.seq crepBody739_28 crepBody739_30

def crepBody739_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 192#64]]

def crepBody739_33 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_32

def crepBody739_34 : CrepProg (BitVec 64) :=
.seq crepBody739_31 crepBody739_33

def crepBody739_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 288#64]]

def crepBody739_36 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_35

def crepBody739_37 : CrepProg (BitVec 64) :=
.seq crepBody739_34 crepBody739_36

def crepBody739_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "g2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 3]

def crepBody739_39 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_38

def crepBody739_40 : CrepProg (BitVec 64) :=
.seq crepBody739_37 crepBody739_39

def crepBody739_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody739_42 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody739_41

def crepBody739_43 : CrepProg (BitVec 64) :=
.seq crepBody739_40 crepBody739_42

def crepBody739_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody739_45 : CrepProg (BitVec 64) :=
.seq crepBody739_43 crepBody739_44

def crepBody739_46 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]) crepBody739_45

def crepBody739_47 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]) crepBody739_46

def crepBody739_48 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 1) crepBody739_47

def crepBody739_49 : CrepProg (BitVec 64) :=
.seq crepBody739_2 crepBody739_48

def crepBody739_50 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody739_49

def crepBody739_51 : CrepProg (BitVec 64) :=
.seq crepBody739_1 crepBody739_50

def crepBody739_52 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody739_51

def crepBody739_53 : CrepProg (BitVec 64) :=
.seq crepBody739_0 crepBody739_52

def crepBody739_54 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody739_53

def data739 : CrepProg (BitVec 64) := crepBody739_54
def output739 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [105#8, 115#8, 111#8, 95#8, 109#8, 97#8, 112#8, 95#8, 103#8, 50#8], [0, 1], crepProgToHOL data739)
end InitECandidate.Proofs.FrontendStages.Crep
