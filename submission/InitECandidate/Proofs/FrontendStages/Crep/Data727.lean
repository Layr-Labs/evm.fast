import InitECandidate.Proofs.FrontendStages.Crep.Translate711
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody727_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody727_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 12#64]]

def crepBody727_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 20]

def crepBody727_3 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_2

def crepBody727_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 2]

def crepBody727_5 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_4

def crepBody727_6 : CrepProg (BitVec 64) :=
.seq crepBody727_3 crepBody727_5

def crepBody727_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 1]

def crepBody727_8 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_7

def crepBody727_9 : CrepProg (BitVec 64) :=
.seq crepBody727_6 crepBody727_8

def crepBody727_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 20]

def crepBody727_11 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_10

def crepBody727_12 : CrepProg (BitVec 64) :=
.seq crepBody727_9 crepBody727_11

def crepBody727_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9]

def crepBody727_14 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_13

def crepBody727_15 : CrepProg (BitVec 64) :=
.seq crepBody727_12 crepBody727_14

def crepBody727_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 7]

def crepBody727_17 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_16

def crepBody727_18 : CrepProg (BitVec 64) :=
.seq crepBody727_15 crepBody727_17

def crepBody727_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 6]

def crepBody727_20 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_19

def crepBody727_21 : CrepProg (BitVec 64) :=
.seq crepBody727_18 crepBody727_20

def crepBody727_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 6]

def crepBody727_23 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_22

def crepBody727_24 : CrepProg (BitVec 64) :=
.seq crepBody727_21 crepBody727_23

def crepBody727_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 18]

def crepBody727_26 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_25

def crepBody727_27 : CrepProg (BitVec 64) :=
.seq crepBody727_24 crepBody727_26

def crepBody727_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 10]

def crepBody727_29 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_28

def crepBody727_30 : CrepProg (BitVec 64) :=
.seq crepBody727_27 crepBody727_29

def crepBody727_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 11]

def crepBody727_32 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_31

def crepBody727_33 : CrepProg (BitVec 64) :=
.seq crepBody727_30 crepBody727_32

def crepBody727_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 12]

def crepBody727_35 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_34

def crepBody727_36 : CrepProg (BitVec 64) :=
.seq crepBody727_33 crepBody727_35

def crepBody727_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_mul"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 10]

def crepBody727_38 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_37

def crepBody727_39 : CrepProg (BitVec 64) :=
.seq crepBody727_36 crepBody727_38

def crepBody727_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 19]

def crepBody727_41 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_40

def crepBody727_42 : CrepProg (BitVec 64) :=
.seq crepBody727_39 crepBody727_41

def crepBody727_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 19]

def crepBody727_44 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_43

def crepBody727_45 : CrepProg (BitVec 64) :=
.seq crepBody727_42 crepBody727_44

def crepBody727_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_mul"
  [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 1]

def crepBody727_47 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_46

def crepBody727_48 : CrepProg (BitVec 64) :=
.seq crepBody727_45 crepBody727_47

def crepBody727_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 18]

def crepBody727_50 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_49

def crepBody727_51 : CrepProg (BitVec 64) :=
.seq crepBody727_48 crepBody727_50

def crepBody727_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 14]

def crepBody727_53 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_52

def crepBody727_54 : CrepProg (BitVec 64) :=
.seq crepBody727_51 crepBody727_53

def crepBody727_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 13]

def crepBody727_56 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_55

def crepBody727_57 : CrepProg (BitVec 64) :=
.seq crepBody727_54 crepBody727_56

def crepBody727_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 15]

def crepBody727_59 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_58

def crepBody727_60 : CrepProg (BitVec 64) :=
.seq crepBody727_57 crepBody727_59

def crepBody727_61 : CrepProg (BitVec 64) :=
.seq crepBody727_60 crepBody727_59

def crepBody727_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 10]

def crepBody727_63 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_62

def crepBody727_64 : CrepProg (BitVec 64) :=
.seq crepBody727_61 crepBody727_63

def crepBody727_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 20]

def crepBody727_66 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_65

def crepBody727_67 : CrepProg (BitVec 64) :=
.seq crepBody727_64 crepBody727_66

def crepBody727_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 6]

def crepBody727_69 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_68

def crepBody727_70 : CrepProg (BitVec 64) :=
.seq crepBody727_67 crepBody727_69

def crepBody727_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 11]

def crepBody727_72 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_71

def crepBody727_73 : CrepProg (BitVec 64) :=
.seq crepBody727_70 crepBody727_72

def crepBody727_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 20]

def crepBody727_75 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_74

def crepBody727_76 : CrepProg (BitVec 64) :=
.seq crepBody727_73 crepBody727_75

def crepBody727_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 8]

def crepBody727_78 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_77

def crepBody727_79 : CrepProg (BitVec 64) :=
.seq crepBody727_76 crepBody727_78

def crepBody727_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 14]

def crepBody727_81 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_80

def crepBody727_82 : CrepProg (BitVec 64) :=
.seq crepBody727_79 crepBody727_81

def crepBody727_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 13]

def crepBody727_84 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_83

def crepBody727_85 : CrepProg (BitVec 64) :=
.seq crepBody727_82 crepBody727_84

def crepBody727_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 9]

def crepBody727_87 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_86

def crepBody727_88 : CrepProg (BitVec 64) :=
.seq crepBody727_85 crepBody727_87

def crepBody727_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 9]

def crepBody727_90 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_89

def crepBody727_91 : CrepProg (BitVec 64) :=
.seq crepBody727_88 crepBody727_90

def crepBody727_92 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_copy" [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 8]

def crepBody727_93 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_92

def crepBody727_94 : CrepProg (BitVec 64) :=
.seq crepBody727_91 crepBody727_93

def crepBody727_95 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 17]

def crepBody727_96 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_95

def crepBody727_97 : CrepProg (BitVec 64) :=
.seq crepBody727_94 crepBody727_96

def crepBody727_98 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 7]

def crepBody727_99 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_98

def crepBody727_100 : CrepProg (BitVec 64) :=
.seq crepBody727_97 crepBody727_99

def crepBody727_101 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sqr" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 20]

def crepBody727_102 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_101

def crepBody727_103 : CrepProg (BitVec 64) :=
.seq crepBody727_100 crepBody727_102

def crepBody727_104 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 9]

def crepBody727_105 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_104

def crepBody727_106 : CrepProg (BitVec 64) :=
.seq crepBody727_103 crepBody727_105

def crepBody727_107 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 16]

def crepBody727_108 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_107

def crepBody727_109 : CrepProg (BitVec 64) :=
.seq crepBody727_106 crepBody727_108

def crepBody727_110 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_sub"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody727_111 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_110

def crepBody727_112 : CrepProg (BitVec 64) :=
.seq crepBody727_109 crepBody727_111

def crepBody727_113 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 20]

def crepBody727_114 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_113

def crepBody727_115 : CrepProg (BitVec 64) :=
.seq crepBody727_112 crepBody727_114

def crepBody727_116 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_neg" [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14]

def crepBody727_117 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_116

def crepBody727_118 : CrepProg (BitVec 64) :=
.seq crepBody727_115 crepBody727_117

def crepBody727_119 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fp2_add"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14]

def crepBody727_120 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_119

def crepBody727_121 : CrepProg (BitVec 64) :=
.seq crepBody727_118 crepBody727_120

def crepBody727_122 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody727_123 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody727_122

def crepBody727_124 : CrepProg (BitVec 64) :=
.seq crepBody727_121 crepBody727_123

def crepBody727_125 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody727_126 : CrepProg (BitVec 64) :=
.seq crepBody727_124 crepBody727_125

def crepBody727_127 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64]) crepBody727_126

def crepBody727_128 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64]) crepBody727_127

def crepBody727_129 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.var 0) crepBody727_128

def crepBody727_130 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 1056#64]) crepBody727_129

def crepBody727_131 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 960#64]) crepBody727_130

def crepBody727_132 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 864#64]) crepBody727_131

def crepBody727_133 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 768#64]) crepBody727_132

def crepBody727_134 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 672#64]) crepBody727_133

def crepBody727_135 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 576#64]) crepBody727_134

def crepBody727_136 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 480#64]) crepBody727_135

def crepBody727_137 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 384#64]) crepBody727_136

def crepBody727_138 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 288#64]) crepBody727_137

def crepBody727_139 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 192#64]) crepBody727_138

def crepBody727_140 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 96#64]) crepBody727_139

def crepBody727_141 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 5) crepBody727_140

def crepBody727_142 : CrepProg (BitVec 64) :=
.seq crepBody727_1 crepBody727_141

def crepBody727_143 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody727_142

def crepBody727_144 : CrepProg (BitVec 64) :=
.seq crepBody727_0 crepBody727_143

def crepBody727_145 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody727_144

def data727 : CrepProg (BitVec 64) := crepBody727_145
def output727 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 97#8, 105#8, 114#8, 95#8, 97#8, 100#8, 100#8, 105#8, 116#8, 105#8, 111#8, 110#8, 95#8, 115#8, 116#8, 101#8,
    112#8], [0, 1, 2, 3], crepProgToHOL data727)
end InitECandidate.Proofs.FrontendStages.Crep
