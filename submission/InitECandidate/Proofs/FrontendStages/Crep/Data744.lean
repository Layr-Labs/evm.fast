import InitECandidate.Proofs.FrontendStages.Crep.Translate728
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody744_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody744_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody744_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody744_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody744_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody744_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "alloc" [Flapjack.CrepExp.const 144#64]

def crepBody744_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "alloc" [Flapjack.CrepExp.const 288#64]

def crepBody744_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "alloc" [Flapjack.CrepExp.const 576#64]

def crepBody744_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_copy"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 480#64]]

def crepBody744_9 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_8

def crepBody744_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 576#64]]

def crepBody744_11 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_10

def crepBody744_12 : CrepProg (BitVec 64) :=
.seq crepBody744_9 crepBody744_11

def crepBody744_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_set_one"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 192#64]]

def crepBody744_14 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_13

def crepBody744_15 : CrepProg (BitVec 64) :=
.seq crepBody744_12 crepBody744_14

def crepBody744_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "kzg_neg_scalar" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5]

def crepBody744_17 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_16

def crepBody744_18 : CrepProg (BitVec 64) :=
.seq crepBody744_15 crepBody744_17

def crepBody744_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "g2_mul"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 4#64]

def crepBody744_20 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_19

def crepBody744_21 : CrepProg (BitVec 64) :=
.seq crepBody744_18 crepBody744_20

def crepBody744_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_copy"
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 672#64]]

def crepBody744_23 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_22

def crepBody744_24 : CrepProg (BitVec 64) :=
.seq crepBody744_21 crepBody744_23

def crepBody744_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 768#64]]

def crepBody744_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_25

def crepBody744_27 : CrepProg (BitVec 64) :=
.seq crepBody744_24 crepBody744_26

def crepBody744_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp2_set_one"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 192#64]]

def crepBody744_29 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_28

def crepBody744_30 : CrepProg (BitVec 64) :=
.seq crepBody744_27 crepBody744_29

def crepBody744_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "g2_add"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 10]

def crepBody744_32 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_31

def crepBody744_33 : CrepProg (BitVec 64) :=
.seq crepBody744_30 crepBody744_32

def crepBody744_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "memcpy"
  [Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 384#64],
    Flapjack.CrepExp.const 48#64]

def crepBody744_35 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_34

def crepBody744_36 : CrepProg (BitVec 64) :=
.seq crepBody744_33 crepBody744_35

def crepBody744_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 48#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 392#64]),
        Flapjack.CrepExp.const 432#64],
    Flapjack.CrepExp.const 48#64]

def crepBody744_38 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_37

def crepBody744_39 : CrepProg (BitVec 64) :=
.seq crepBody744_36 crepBody744_38

def crepBody744_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody744_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 14)

def crepBody744_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 15)

def crepBody744_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 16)

def crepBody744_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 32#64])
  (Flapjack.CrepExp.var 17)

def crepBody744_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 40#64])
  (Flapjack.CrepExp.var 18)

def crepBody744_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody744_47 : CrepProg (BitVec 64) :=
.seq crepBody744_45 crepBody744_46

def crepBody744_48 : CrepProg (BitVec 64) :=
.seq crepBody744_44 crepBody744_47

def crepBody744_49 : CrepProg (BitVec 64) :=
.seq crepBody744_43 crepBody744_48

def crepBody744_50 : CrepProg (BitVec 64) :=
.seq crepBody744_42 crepBody744_49

def crepBody744_51 : CrepProg (BitVec 64) :=
.seq crepBody744_41 crepBody744_50

def crepBody744_52 : CrepProg (BitVec 64) :=
.seq crepBody744_40 crepBody744_51

def crepBody744_53 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 1582556514881692819#64) crepBody744_52

def crepBody744_54 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 6631298214892334189#64) crepBody744_53

def crepBody744_55 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 8632934651105793861#64) crepBody744_54

def crepBody744_56 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 6865905132761471162#64) crepBody744_55

def crepBody744_57 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 17002214543764226050#64) crepBody744_56

def crepBody744_58 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 8505329371266088957#64) crepBody744_57

def crepBody744_59 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 96#64]) crepBody744_58

def crepBody744_60 : CrepProg (BitVec 64) :=
.seq crepBody744_39 crepBody744_59

def crepBody744_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "kzg_neg_scalar" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5]

def crepBody744_62 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_61

def crepBody744_63 : CrepProg (BitVec 64) :=
.seq crepBody744_60 crepBody744_62

def crepBody744_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "g1_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 4#64]

def crepBody744_65 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_64

def crepBody744_66 : CrepProg (BitVec 64) :=
.seq crepBody744_63 crepBody744_65

def crepBody744_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "g1_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 9]

def crepBody744_68 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_67

def crepBody744_69 : CrepProg (BitVec 64) :=
.seq crepBody744_66 crepBody744_68

def crepBody744_70 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "g2_neg" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7]

def crepBody744_71 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_70

def crepBody744_72 : CrepProg (BitVec 64) :=
.seq crepBody744_69 crepBody744_71

def crepBody744_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp12_set_one" [Flapjack.CrepExp.var 11]

def crepBody744_74 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_73

def crepBody744_75 : CrepProg (BitVec 64) :=
.seq crepBody744_72 crepBody744_74

def crepBody744_76 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "pair_accumulate"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 7]

def crepBody744_77 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_76

def crepBody744_78 : CrepProg (BitVec 64) :=
.seq crepBody744_75 crepBody744_77

def crepBody744_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "pair_accumulate"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 10]

def crepBody744_80 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_79

def crepBody744_81 : CrepProg (BitVec 64) :=
.seq crepBody744_78 crepBody744_80

def crepBody744_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp12_final_exp" [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 11]

def crepBody744_83 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_82

def crepBody744_84 : CrepProg (BitVec 64) :=
.seq crepBody744_81 crepBody744_83

def crepBody744_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "fp12_is_one" [Flapjack.CrepExp.var 11]

def crepBody744_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody744_87 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody744_86

def crepBody744_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 12]

def crepBody744_89 : CrepProg (BitVec 64) :=
.seq crepBody744_87 crepBody744_88

def crepBody744_90 : CrepProg (BitVec 64) :=
.seq crepBody744_85 crepBody744_89

def crepBody744_91 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody744_90

def crepBody744_92 : CrepProg (BitVec 64) :=
.seq crepBody744_84 crepBody744_91

def crepBody744_93 : CrepProg (BitVec 64) :=
.seq crepBody744_7 crepBody744_92

def crepBody744_94 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody744_93

def crepBody744_95 : CrepProg (BitVec 64) :=
.seq crepBody744_6 crepBody744_94

def crepBody744_96 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody744_95

def crepBody744_97 : CrepProg (BitVec 64) :=
.seq crepBody744_5 crepBody744_96

def crepBody744_98 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody744_97

def crepBody744_99 : CrepProg (BitVec 64) :=
.seq crepBody744_4 crepBody744_98

def crepBody744_100 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody744_99

def crepBody744_101 : CrepProg (BitVec 64) :=
.seq crepBody744_3 crepBody744_100

def crepBody744_102 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody744_101

def crepBody744_103 : CrepProg (BitVec 64) :=
.seq crepBody744_2 crepBody744_102

def crepBody744_104 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody744_103

def crepBody744_105 : CrepProg (BitVec 64) :=
.seq crepBody744_1 crepBody744_104

def crepBody744_106 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody744_105

def crepBody744_107 : CrepProg (BitVec 64) :=
.seq crepBody744_0 crepBody744_106

def crepBody744_108 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody744_107

def data744 : CrepProg (BitVec 64) := crepBody744_108
def output744 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [107#8, 122#8, 103#8, 95#8, 118#8, 101#8, 114#8, 105#8, 102#8, 121#8], [0, 1, 2, 3], crepProgToHOL data744)
end InitECandidate.Proofs.FrontendStages.Crep
