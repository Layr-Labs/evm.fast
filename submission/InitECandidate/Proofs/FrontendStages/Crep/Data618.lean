import InitECandidate.Proofs.FrontendStages.Crep.Translate602
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody618_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody618_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody618_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody618_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody618_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody618_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody618_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody618_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "alloc" [Flapjack.CrepExp.var 3]

def crepBody618_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_sqr"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 5]

def crepBody618_9 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_8

def crepBody618_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 3#64]

def crepBody618_11 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_10

def crepBody618_12 : CrepProg (BitVec 64) :=
.seq crepBody618_9 crepBody618_11

def crepBody618_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody618_14 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_13

def crepBody618_15 : CrepProg (BitVec 64) :=
.seq crepBody618_12 crepBody618_14

def crepBody618_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody618_17 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_16

def crepBody618_18 : CrepProg (BitVec 64) :=
.seq crepBody618_15 crepBody618_17

def crepBody618_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 9]

def crepBody618_20 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_19

def crepBody618_21 : CrepProg (BitVec 64) :=
.seq crepBody618_18 crepBody618_20

def crepBody618_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_sqr"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 8]

def crepBody618_23 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_22

def crepBody618_24 : CrepProg (BitVec 64) :=
.seq crepBody618_21 crepBody618_23

def crepBody618_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 8#64]

def crepBody618_26 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_25

def crepBody618_27 : CrepProg (BitVec 64) :=
.seq crepBody618_24 crepBody618_26

def crepBody618_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody618_29 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_28

def crepBody618_30 : CrepProg (BitVec 64) :=
.seq crepBody618_27 crepBody618_29

def crepBody618_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_sqr"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 9]

def crepBody618_32 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_31

def crepBody618_33 : CrepProg (BitVec 64) :=
.seq crepBody618_30 crepBody618_32

def crepBody618_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 9]

def crepBody618_35 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_34

def crepBody618_36 : CrepProg (BitVec 64) :=
.seq crepBody618_33 crepBody618_35

def crepBody618_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 2#64]

def crepBody618_38 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_37

def crepBody618_39 : CrepProg (BitVec 64) :=
.seq crepBody618_36 crepBody618_38

def crepBody618_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 10, Flapjack.CrepExp.const 4#64]

def crepBody618_41 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_40

def crepBody618_42 : CrepProg (BitVec 64) :=
.seq crepBody618_39 crepBody618_41

def crepBody618_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 11]

def crepBody618_44 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_43

def crepBody618_45 : CrepProg (BitVec 64) :=
.seq crepBody618_42 crepBody618_44

def crepBody618_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 14]

def crepBody618_47 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_46

def crepBody618_48 : CrepProg (BitVec 64) :=
.seq crepBody618_45 crepBody618_47

def crepBody618_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_sqr"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 6]

def crepBody618_50 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_49

def crepBody618_51 : CrepProg (BitVec 64) :=
.seq crepBody618_48 crepBody618_50

def crepBody618_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 12]

def crepBody618_53 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_52

def crepBody618_54 : CrepProg (BitVec 64) :=
.seq crepBody618_51 crepBody618_53

def crepBody618_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]

def crepBody618_56 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_55

def crepBody618_57 : CrepProg (BitVec 64) :=
.seq crepBody618_54 crepBody618_56

def crepBody618_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 8]

def crepBody618_59 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_58

def crepBody618_60 : CrepProg (BitVec 64) :=
.seq crepBody618_57 crepBody618_59

def crepBody618_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 12]

def crepBody618_62 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_61

def crepBody618_63 : CrepProg (BitVec 64) :=
.seq crepBody618_60 crepBody618_62

def crepBody618_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]

def crepBody618_65 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_64

def crepBody618_66 : CrepProg (BitVec 64) :=
.seq crepBody618_63 crepBody618_65

def crepBody618_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "memcpy"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 3]

def crepBody618_68 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_67

def crepBody618_69 : CrepProg (BitVec 64) :=
.seq crepBody618_66 crepBody618_68

def crepBody618_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3], Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 3]

def crepBody618_71 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_70

def crepBody618_72 : CrepProg (BitVec 64) :=
.seq crepBody618_69 crepBody618_71

def crepBody618_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3]],
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 3]

def crepBody618_74 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_73

def crepBody618_75 : CrepProg (BitVec 64) :=
.seq crepBody618_72 crepBody618_74

def crepBody618_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody618_77 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody618_76

def crepBody618_78 : CrepProg (BitVec 64) :=
.seq crepBody618_75 crepBody618_77

def crepBody618_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody618_80 : CrepProg (BitVec 64) :=
.seq crepBody618_78 crepBody618_79

def crepBody618_81 : CrepProg (BitVec 64) :=
.seq crepBody618_7 crepBody618_80

def crepBody618_82 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody618_81

def crepBody618_83 : CrepProg (BitVec 64) :=
.seq crepBody618_6 crepBody618_82

def crepBody618_84 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody618_83

def crepBody618_85 : CrepProg (BitVec 64) :=
.seq crepBody618_5 crepBody618_84

def crepBody618_86 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody618_85

def crepBody618_87 : CrepProg (BitVec 64) :=
.seq crepBody618_4 crepBody618_86

def crepBody618_88 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody618_87

def crepBody618_89 : CrepProg (BitVec 64) :=
.seq crepBody618_3 crepBody618_88

def crepBody618_90 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody618_89

def crepBody618_91 : CrepProg (BitVec 64) :=
.seq crepBody618_2 crepBody618_90

def crepBody618_92 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody618_91

def crepBody618_93 : CrepProg (BitVec 64) :=
.seq crepBody618_1 crepBody618_92

def crepBody618_94 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody618_93

def crepBody618_95 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 3]]) crepBody618_94

def crepBody618_96 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]) crepBody618_95

def crepBody618_97 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 2) crepBody618_96

def crepBody618_98 : CrepProg (BitVec 64) :=
.seq crepBody618_0 crepBody618_97

def crepBody618_99 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody618_98

def crepBody618_100 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody618_99

def data618 : CrepProg (BitVec 64) := crepBody618_100
def output618 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8], [0, 1, 2], crepProgToHOL data618)
end InitECandidate.Proofs.FrontendStages.Crep
