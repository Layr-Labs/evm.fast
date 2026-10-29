import InitECandidate.Proofs.FrontendStages.Crep.Translate702
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody718_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody718_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 8#64]]

def crepBody718_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_sqr" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 12]

def crepBody718_3 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_2

def crepBody718_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4]

def crepBody718_5 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_4

def crepBody718_6 : CrepProg (BitVec 64) :=
.seq crepBody718_3 crepBody718_5

def crepBody718_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_add"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 4]

def crepBody718_8 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_7

def crepBody718_9 : CrepProg (BitVec 64) :=
.seq crepBody718_6 crepBody718_8

def crepBody718_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_mul"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody718_11 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_10

def crepBody718_12 : CrepProg (BitVec 64) :=
.seq crepBody718_9 crepBody718_11

def crepBody718_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody718_14 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_13

def crepBody718_15 : CrepProg (BitVec 64) :=
.seq crepBody718_12 crepBody718_14

def crepBody718_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody718_17 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_16

def crepBody718_18 : CrepProg (BitVec 64) :=
.seq crepBody718_15 crepBody718_17

def crepBody718_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6]

def crepBody718_20 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_19

def crepBody718_21 : CrepProg (BitVec 64) :=
.seq crepBody718_18 crepBody718_20

def crepBody718_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9]

def crepBody718_23 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_22

def crepBody718_24 : CrepProg (BitVec 64) :=
.seq crepBody718_21 crepBody718_23

def crepBody718_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_add"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9]

def crepBody718_26 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_25

def crepBody718_27 : CrepProg (BitVec 64) :=
.seq crepBody718_24 crepBody718_26

def crepBody718_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_sqr" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 4]

def crepBody718_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_28

def crepBody718_30 : CrepProg (BitVec 64) :=
.seq crepBody718_27 crepBody718_29

def crepBody718_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_sub"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 7]

def crepBody718_32 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_31

def crepBody718_33 : CrepProg (BitVec 64) :=
.seq crepBody718_30 crepBody718_32

def crepBody718_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_sqr" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 5]

def crepBody718_35 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_34

def crepBody718_36 : CrepProg (BitVec 64) :=
.seq crepBody718_33 crepBody718_35

def crepBody718_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_mul"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5]

def crepBody718_38 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_37

def crepBody718_39 : CrepProg (BitVec 64) :=
.seq crepBody718_36 crepBody718_38

def crepBody718_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_add"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10]

def crepBody718_41 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_40

def crepBody718_42 : CrepProg (BitVec 64) :=
.seq crepBody718_39 crepBody718_41

def crepBody718_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_sub"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 7]

def crepBody718_44 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_43

def crepBody718_45 : CrepProg (BitVec 64) :=
.seq crepBody718_42 crepBody718_44

def crepBody718_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_mul"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 9]

def crepBody718_47 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_46

def crepBody718_48 : CrepProg (BitVec 64) :=
.seq crepBody718_45 crepBody718_47

def crepBody718_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_sqr" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 13]

def crepBody718_50 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_49

def crepBody718_51 : CrepProg (BitVec 64) :=
.seq crepBody718_48 crepBody718_50

def crepBody718_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8]

def crepBody718_53 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_52

def crepBody718_54 : CrepProg (BitVec 64) :=
.seq crepBody718_51 crepBody718_53

def crepBody718_55 : CrepProg (BitVec 64) :=
.seq crepBody718_54 crepBody718_23

def crepBody718_56 : CrepProg (BitVec 64) :=
.seq crepBody718_55 crepBody718_23

def crepBody718_57 : CrepProg (BitVec 64) :=
.seq crepBody718_56 crepBody718_23

def crepBody718_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_sub"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 9]

def crepBody718_59 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_58

def crepBody718_60 : CrepProg (BitVec 64) :=
.seq crepBody718_57 crepBody718_59

def crepBody718_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 8]

def crepBody718_62 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_61

def crepBody718_63 : CrepProg (BitVec 64) :=
.seq crepBody718_60 crepBody718_62

def crepBody718_64 : CrepProg (BitVec 64) :=
.seq crepBody718_63 crepBody718_23

def crepBody718_65 : CrepProg (BitVec 64) :=
.seq crepBody718_64 crepBody718_23

def crepBody718_66 : CrepProg (BitVec 64) :=
.seq crepBody718_65 crepBody718_23

def crepBody718_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 10]

def crepBody718_68 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_67

def crepBody718_69 : CrepProg (BitVec 64) :=
.seq crepBody718_66 crepBody718_68

def crepBody718_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 11]

def crepBody718_71 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_70

def crepBody718_72 : CrepProg (BitVec 64) :=
.seq crepBody718_69 crepBody718_71

def crepBody718_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.var 9]

def crepBody718_74 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_73

def crepBody718_75 : CrepProg (BitVec 64) :=
.seq crepBody718_72 crepBody718_74

def crepBody718_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody718_77 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody718_76

def crepBody718_78 : CrepProg (BitVec 64) :=
.seq crepBody718_75 crepBody718_77

def crepBody718_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody718_80 : CrepProg (BitVec 64) :=
.seq crepBody718_78 crepBody718_79

def crepBody718_81 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]) crepBody718_80

def crepBody718_82 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]) crepBody718_81

def crepBody718_83 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 1) crepBody718_82

def crepBody718_84 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 672#64]) crepBody718_83

def crepBody718_85 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 576#64]) crepBody718_84

def crepBody718_86 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 480#64]) crepBody718_85

def crepBody718_87 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 384#64]) crepBody718_86

def crepBody718_88 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 288#64]) crepBody718_87

def crepBody718_89 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64]) crepBody718_88

def crepBody718_90 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64]) crepBody718_89

def crepBody718_91 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 3) crepBody718_90

def crepBody718_92 : CrepProg (BitVec 64) :=
.seq crepBody718_1 crepBody718_91

def crepBody718_93 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody718_92

def crepBody718_94 : CrepProg (BitVec 64) :=
.seq crepBody718_0 crepBody718_93

def crepBody718_95 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody718_94

def data718 : CrepProg (BitVec 64) := crepBody718_95
def output718 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8], [0, 1], crepProgToHOL data718)
end InitECandidate.Proofs.FrontendStages.Crep
