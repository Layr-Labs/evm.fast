import InitECandidate.Proofs.FrontendStages.Crep.Translate710
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody726_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "heap_mark" []

def crepBody726_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 9#64]]

def crepBody726_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 13]

def crepBody726_3 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_2

def crepBody726_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 14]

def crepBody726_5 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_4

def crepBody726_6 : CrepProg (BitVec 64) :=
.seq crepBody726_3 crepBody726_5

def crepBody726_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]

def crepBody726_8 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_7

def crepBody726_9 : CrepProg (BitVec 64) :=
.seq crepBody726_6 crepBody726_8

def crepBody726_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 13]

def crepBody726_11 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_10

def crepBody726_12 : CrepProg (BitVec 64) :=
.seq crepBody726_9 crepBody726_11

def crepBody726_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7]

def crepBody726_14 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_13

def crepBody726_15 : CrepProg (BitVec 64) :=
.seq crepBody726_12 crepBody726_14

def crepBody726_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 4]

def crepBody726_17 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_16

def crepBody726_18 : CrepProg (BitVec 64) :=
.seq crepBody726_15 crepBody726_17

def crepBody726_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 6]

def crepBody726_20 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_19

def crepBody726_21 : CrepProg (BitVec 64) :=
.seq crepBody726_18 crepBody726_20

def crepBody726_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7]

def crepBody726_23 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_22

def crepBody726_24 : CrepProg (BitVec 64) :=
.seq crepBody726_21 crepBody726_23

def crepBody726_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4]

def crepBody726_26 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_25

def crepBody726_27 : CrepProg (BitVec 64) :=
.seq crepBody726_24 crepBody726_26

def crepBody726_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 4]

def crepBody726_29 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_28

def crepBody726_30 : CrepProg (BitVec 64) :=
.seq crepBody726_27 crepBody726_29

def crepBody726_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 8]

def crepBody726_32 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_31

def crepBody726_33 : CrepProg (BitVec 64) :=
.seq crepBody726_30 crepBody726_32

def crepBody726_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 8]

def crepBody726_35 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_34

def crepBody726_36 : CrepProg (BitVec 64) :=
.seq crepBody726_33 crepBody726_35

def crepBody726_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 15]

def crepBody726_38 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_37

def crepBody726_39 : CrepProg (BitVec 64) :=
.seq crepBody726_36 crepBody726_38

def crepBody726_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 7]

def crepBody726_41 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_40

def crepBody726_42 : CrepProg (BitVec 64) :=
.seq crepBody726_39 crepBody726_41

def crepBody726_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 7]

def crepBody726_44 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_43

def crepBody726_45 : CrepProg (BitVec 64) :=
.seq crepBody726_42 crepBody726_44

def crepBody726_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 14]

def crepBody726_47 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_46

def crepBody726_48 : CrepProg (BitVec 64) :=
.seq crepBody726_45 crepBody726_47

def crepBody726_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 15]

def crepBody726_50 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_49

def crepBody726_51 : CrepProg (BitVec 64) :=
.seq crepBody726_48 crepBody726_50

def crepBody726_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 5]

def crepBody726_53 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_52

def crepBody726_54 : CrepProg (BitVec 64) :=
.seq crepBody726_51 crepBody726_53

def crepBody726_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 11]

def crepBody726_56 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_55

def crepBody726_57 : CrepProg (BitVec 64) :=
.seq crepBody726_54 crepBody726_56

def crepBody726_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 12]

def crepBody726_59 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_58

def crepBody726_60 : CrepProg (BitVec 64) :=
.seq crepBody726_57 crepBody726_59

def crepBody726_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_mul"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 8]

def crepBody726_62 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_61

def crepBody726_63 : CrepProg (BitVec 64) :=
.seq crepBody726_60 crepBody726_62

def crepBody726_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 6]

def crepBody726_65 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_64

def crepBody726_66 : CrepProg (BitVec 64) :=
.seq crepBody726_63 crepBody726_65

def crepBody726_67 : CrepProg (BitVec 64) :=
.seq crepBody726_66 crepBody726_65

def crepBody726_68 : CrepProg (BitVec 64) :=
.seq crepBody726_67 crepBody726_65

def crepBody726_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 6]

def crepBody726_70 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_69

def crepBody726_71 : CrepProg (BitVec 64) :=
.seq crepBody726_68 crepBody726_70

def crepBody726_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_copy" [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 12]

def crepBody726_73 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_72

def crepBody726_74 : CrepProg (BitVec 64) :=
.seq crepBody726_71 crepBody726_73

def crepBody726_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 11]

def crepBody726_76 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_75

def crepBody726_77 : CrepProg (BitVec 64) :=
.seq crepBody726_74 crepBody726_76

def crepBody726_78 : CrepProg (BitVec 64) :=
.seq crepBody726_77 crepBody726_23

def crepBody726_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_neg"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 7]

def crepBody726_80 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_79

def crepBody726_81 : CrepProg (BitVec 64) :=
.seq crepBody726_78 crepBody726_80

def crepBody726_82 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sqr" [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10]

def crepBody726_83 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_82

def crepBody726_84 : CrepProg (BitVec 64) :=
.seq crepBody726_81 crepBody726_83

def crepBody726_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 4]

def crepBody726_86 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_85

def crepBody726_87 : CrepProg (BitVec 64) :=
.seq crepBody726_84 crepBody726_86

def crepBody726_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]

def crepBody726_89 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_88

def crepBody726_90 : CrepProg (BitVec 64) :=
.seq crepBody726_87 crepBody726_89

def crepBody726_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 5]

def crepBody726_92 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_91

def crepBody726_93 : CrepProg (BitVec 64) :=
.seq crepBody726_90 crepBody726_92

def crepBody726_94 : CrepProg (BitVec 64) :=
.seq crepBody726_93 crepBody726_92

def crepBody726_95 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_sub"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 5]

def crepBody726_96 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_95

def crepBody726_97 : CrepProg (BitVec 64) :=
.seq crepBody726_94 crepBody726_96

def crepBody726_98 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_mul"
  [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 11]

def crepBody726_99 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_98

def crepBody726_100 : CrepProg (BitVec 64) :=
.seq crepBody726_97 crepBody726_99

def crepBody726_101 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "fp2_add"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 4]

def crepBody726_102 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_101

def crepBody726_103 : CrepProg (BitVec 64) :=
.seq crepBody726_100 crepBody726_102

def crepBody726_104 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "heap_release" [Flapjack.CrepExp.var 2]

def crepBody726_105 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody726_104

def crepBody726_106 : CrepProg (BitVec 64) :=
.seq crepBody726_103 crepBody726_105

def crepBody726_107 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody726_108 : CrepProg (BitVec 64) :=
.seq crepBody726_106 crepBody726_107

def crepBody726_109 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]) crepBody726_108

def crepBody726_110 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64]) crepBody726_109

def crepBody726_111 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 0) crepBody726_110

def crepBody726_112 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 768#64]) crepBody726_111

def crepBody726_113 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 672#64]) crepBody726_112

def crepBody726_114 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 576#64]) crepBody726_113

def crepBody726_115 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 480#64]) crepBody726_114

def crepBody726_116 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 384#64]) crepBody726_115

def crepBody726_117 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 288#64]) crepBody726_116

def crepBody726_118 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64]) crepBody726_117

def crepBody726_119 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64]) crepBody726_118

def crepBody726_120 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 3) crepBody726_119

def crepBody726_121 : CrepProg (BitVec 64) :=
.seq crepBody726_1 crepBody726_120

def crepBody726_122 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody726_121

def crepBody726_123 : CrepProg (BitVec 64) :=
.seq crepBody726_0 crepBody726_122

def crepBody726_124 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody726_123

def data726 : CrepProg (BitVec 64) := crepBody726_124
def output726 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 97#8, 105#8, 114#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 105#8, 110#8, 103#8, 95#8, 115#8, 116#8, 101#8,
    112#8], [0, 1], crepProgToHOL data726)
end InitECandidate.Proofs.FrontendStages.Crep
