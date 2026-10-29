import InitECandidate.Proofs.FrontendStages.Crep.Translate674
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody690_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody690_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 6#64]]

def crepBody690_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_sqr" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 1]

def crepBody690_3 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_2

def crepBody690_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody690_5 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_4

def crepBody690_6 : CrepProg (BitVec 64) :=
.seq crepBody690_3 crepBody690_5

def crepBody690_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul_xi" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7]

def crepBody690_8 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_7

def crepBody690_9 : CrepProg (BitVec 64) :=
.seq crepBody690_6 crepBody690_8

def crepBody690_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_sub"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 7]

def crepBody690_11 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_10

def crepBody690_12 : CrepProg (BitVec 64) :=
.seq crepBody690_9 crepBody690_11

def crepBody690_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_sqr"
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody690_14 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_13

def crepBody690_15 : CrepProg (BitVec 64) :=
.seq crepBody690_12 crepBody690_14

def crepBody690_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul_xi" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5]

def crepBody690_17 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_16

def crepBody690_18 : CrepProg (BitVec 64) :=
.seq crepBody690_15 crepBody690_17

def crepBody690_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]]

def crepBody690_20 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_19

def crepBody690_21 : CrepProg (BitVec 64) :=
.seq crepBody690_18 crepBody690_20

def crepBody690_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_sub"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 7]

def crepBody690_23 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_22

def crepBody690_24 : CrepProg (BitVec 64) :=
.seq crepBody690_21 crepBody690_23

def crepBody690_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_sqr"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]]

def crepBody690_26 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_25

def crepBody690_27 : CrepProg (BitVec 64) :=
.seq crepBody690_24 crepBody690_26

def crepBody690_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody690_29 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_28

def crepBody690_30 : CrepProg (BitVec 64) :=
.seq crepBody690_27 crepBody690_29

def crepBody690_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_sub"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody690_32 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_31

def crepBody690_33 : CrepProg (BitVec 64) :=
.seq crepBody690_30 crepBody690_32

def crepBody690_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.var 5]

def crepBody690_35 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_34

def crepBody690_36 : CrepProg (BitVec 64) :=
.seq crepBody690_33 crepBody690_35

def crepBody690_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 6]

def crepBody690_38 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_37

def crepBody690_39 : CrepProg (BitVec 64) :=
.seq crepBody690_36 crepBody690_38

def crepBody690_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_add"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 7]

def crepBody690_41 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_40

def crepBody690_42 : CrepProg (BitVec 64) :=
.seq crepBody690_39 crepBody690_41

def crepBody690_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul_xi" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8]

def crepBody690_44 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_43

def crepBody690_45 : CrepProg (BitVec 64) :=
.seq crepBody690_42 crepBody690_44

def crepBody690_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]

def crepBody690_47 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_46

def crepBody690_48 : CrepProg (BitVec 64) :=
.seq crepBody690_45 crepBody690_47

def crepBody690_49 : CrepProg (BitVec 64) :=
.seq crepBody690_48 crepBody690_41

def crepBody690_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_inv" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8]

def crepBody690_51 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_50

def crepBody690_52 : CrepProg (BitVec 64) :=
.seq crepBody690_49 crepBody690_51

def crepBody690_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 9]

def crepBody690_54 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_53

def crepBody690_55 : CrepProg (BitVec 64) :=
.seq crepBody690_52 crepBody690_54

def crepBody690_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 9]

def crepBody690_57 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_56

def crepBody690_58 : CrepProg (BitVec 64) :=
.seq crepBody690_55 crepBody690_57

def crepBody690_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "fp2_mul"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 9]

def crepBody690_60 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_59

def crepBody690_61 : CrepProg (BitVec 64) :=
.seq crepBody690_58 crepBody690_60

def crepBody690_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody690_63 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody690_62

def crepBody690_64 : CrepProg (BitVec 64) :=
.seq crepBody690_61 crepBody690_63

def crepBody690_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody690_66 : CrepProg (BitVec 64) :=
.seq crepBody690_64 crepBody690_65

def crepBody690_67 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 480#64]) crepBody690_66

def crepBody690_68 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 384#64]) crepBody690_67

def crepBody690_69 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 288#64]) crepBody690_68

def crepBody690_70 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64]) crepBody690_69

def crepBody690_71 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64]) crepBody690_70

def crepBody690_72 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 3) crepBody690_71

def crepBody690_73 : CrepProg (BitVec 64) :=
.seq crepBody690_1 crepBody690_72

def crepBody690_74 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody690_73

def crepBody690_75 : CrepProg (BitVec 64) :=
.seq crepBody690_0 crepBody690_74

def crepBody690_76 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody690_75

def data690 : CrepProg (BitVec 64) := crepBody690_76
def output690 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 112#8, 54#8, 95#8, 105#8, 110#8, 118#8], [0, 1], crepProgToHOL data690)
end InitECandidate.Proofs.FrontendStages.Crep
