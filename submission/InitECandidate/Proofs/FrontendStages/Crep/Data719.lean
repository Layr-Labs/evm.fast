import InitECandidate.Proofs.FrontendStages.Crep.Translate703
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody719_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "g2_is_inf" [Flapjack.CrepExp.var 1]

def crepBody719_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "g2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]

def crepBody719_2 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody719_1

def crepBody719_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody719_4 : CrepProg (BitVec 64) :=
.seq crepBody719_2 crepBody719_3

def crepBody719_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody719_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)) crepBody719_4 crepBody719_5

def crepBody719_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "g2_is_inf" [Flapjack.CrepExp.var 2]

def crepBody719_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "g2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody719_9 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody719_8

def crepBody719_10 : CrepProg (BitVec 64) :=
.seq crepBody719_9 crepBody719_3

def crepBody719_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64)) crepBody719_10 crepBody719_5

def crepBody719_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody719_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.const 12#64]]

def crepBody719_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody719_15 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody719_14

def crepBody719_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fp2_mul"
  [Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 192#64]]

def crepBody719_17 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody719_16

def crepBody719_18 : CrepProg (BitVec 64) :=
.seq crepBody719_15 crepBody719_17

def crepBody719_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fp2_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64]]

def crepBody719_20 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody719_19

def crepBody719_21 : CrepProg (BitVec 64) :=
.seq crepBody719_18 crepBody719_20

def crepBody719_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fp2_mul"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 1,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 192#64]]

def crepBody719_23 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody719_22

def crepBody719_24 : CrepProg (BitVec 64) :=
.seq crepBody719_21 crepBody719_23

def crepBody719_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fp2_eq" [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody719_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_eq" [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody719_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody719_28 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody719_27

def crepBody719_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "g2_double" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody719_30 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody719_29

def crepBody719_31 : CrepProg (BitVec 64) :=
.seq crepBody719_30 crepBody719_3

def crepBody719_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.const 1#64)) crepBody719_31 crepBody719_5

def crepBody719_33 : CrepProg (BitVec 64) :=
.seq crepBody719_28 crepBody719_32

def crepBody719_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "g2_set_inf" [Flapjack.CrepExp.var 0]

def crepBody719_35 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody719_34

def crepBody719_36 : CrepProg (BitVec 64) :=
.seq crepBody719_33 crepBody719_35

def crepBody719_37 : CrepProg (BitVec 64) :=
.seq crepBody719_36 crepBody719_3

def crepBody719_38 : CrepProg (BitVec 64) :=
.seq crepBody719_26 crepBody719_37

def crepBody719_39 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_38

def crepBody719_40 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 1#64)) crepBody719_39 crepBody719_5

def crepBody719_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sub"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody719_42 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_41

def crepBody719_43 : CrepProg (BitVec 64) :=
.seq crepBody719_40 crepBody719_42

def crepBody719_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sub"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody719_45 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_44

def crepBody719_46 : CrepProg (BitVec 64) :=
.seq crepBody719_43 crepBody719_45

def crepBody719_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sqr" [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 12]

def crepBody719_48 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_47

def crepBody719_49 : CrepProg (BitVec 64) :=
.seq crepBody719_46 crepBody719_48

def crepBody719_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 10]

def crepBody719_51 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_50

def crepBody719_52 : CrepProg (BitVec 64) :=
.seq crepBody719_49 crepBody719_51

def crepBody719_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody719_54 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_53

def crepBody719_55 : CrepProg (BitVec 64) :=
.seq crepBody719_52 crepBody719_54

def crepBody719_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 192#64]]

def crepBody719_57 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_56

def crepBody719_58 : CrepProg (BitVec 64) :=
.seq crepBody719_55 crepBody719_57

def crepBody719_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sqr" [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 11]

def crepBody719_60 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_59

def crepBody719_61 : CrepProg (BitVec 64) :=
.seq crepBody719_58 crepBody719_60

def crepBody719_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 16]

def crepBody719_63 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_62

def crepBody719_64 : CrepProg (BitVec 64) :=
.seq crepBody719_61 crepBody719_63

def crepBody719_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sub"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 15]

def crepBody719_66 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_65

def crepBody719_67 : CrepProg (BitVec 64) :=
.seq crepBody719_64 crepBody719_66

def crepBody719_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_add"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 14]

def crepBody719_69 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_68

def crepBody719_70 : CrepProg (BitVec 64) :=
.seq crepBody719_67 crepBody719_69

def crepBody719_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sub"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody719_72 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_71

def crepBody719_73 : CrepProg (BitVec 64) :=
.seq crepBody719_70 crepBody719_72

def crepBody719_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 17]

def crepBody719_75 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_74

def crepBody719_76 : CrepProg (BitVec 64) :=
.seq crepBody719_73 crepBody719_75

def crepBody719_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sub"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 17]

def crepBody719_78 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_77

def crepBody719_79 : CrepProg (BitVec 64) :=
.seq crepBody719_76 crepBody719_78

def crepBody719_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 7]

def crepBody719_81 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_80

def crepBody719_82 : CrepProg (BitVec 64) :=
.seq crepBody719_79 crepBody719_81

def crepBody719_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 8]

def crepBody719_84 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_83

def crepBody719_85 : CrepProg (BitVec 64) :=
.seq crepBody719_82 crepBody719_84

def crepBody719_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_sub"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody719_87 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_86

def crepBody719_88 : CrepProg (BitVec 64) :=
.seq crepBody719_85 crepBody719_87

def crepBody719_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_mul"
  [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody719_90 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_89

def crepBody719_91 : CrepProg (BitVec 64) :=
.seq crepBody719_88 crepBody719_90

def crepBody719_92 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_copy" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18]

def crepBody719_93 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_92

def crepBody719_94 : CrepProg (BitVec 64) :=
.seq crepBody719_91 crepBody719_93

def crepBody719_95 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.var 7]

def crepBody719_96 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_95

def crepBody719_97 : CrepProg (BitVec 64) :=
.seq crepBody719_94 crepBody719_96

def crepBody719_98 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "fp2_copy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 192#64],
    Flapjack.CrepExp.var 16]

def crepBody719_99 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_98

def crepBody719_100 : CrepProg (BitVec 64) :=
.seq crepBody719_97 crepBody719_99

def crepBody719_101 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody719_102 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody719_101

def crepBody719_103 : CrepProg (BitVec 64) :=
.seq crepBody719_100 crepBody719_102

def crepBody719_104 : CrepProg (BitVec 64) :=
.seq crepBody719_103 crepBody719_3

def crepBody719_105 : CrepProg (BitVec 64) :=
.seq crepBody719_25 crepBody719_104

def crepBody719_106 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody719_105

def crepBody719_107 : CrepProg (BitVec 64) :=
.seq crepBody719_24 crepBody719_106

def crepBody719_108 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 1056#64]) crepBody719_107

def crepBody719_109 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 960#64]) crepBody719_108

def crepBody719_110 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 864#64]) crepBody719_109

def crepBody719_111 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 768#64]) crepBody719_110

def crepBody719_112 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 672#64]) crepBody719_111

def crepBody719_113 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 576#64]) crepBody719_112

def crepBody719_114 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 480#64]) crepBody719_113

def crepBody719_115 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 384#64]) crepBody719_114

def crepBody719_116 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 288#64]) crepBody719_115

def crepBody719_117 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 192#64]) crepBody719_116

def crepBody719_118 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 6, Flapjack.CrepExp.const 96#64]) crepBody719_117

def crepBody719_119 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 6) crepBody719_118

def crepBody719_120 : CrepProg (BitVec 64) :=
.seq crepBody719_13 crepBody719_119

def crepBody719_121 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody719_120

def crepBody719_122 : CrepProg (BitVec 64) :=
.seq crepBody719_12 crepBody719_121

def crepBody719_123 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody719_122

def crepBody719_124 : CrepProg (BitVec 64) :=
.seq crepBody719_11 crepBody719_123

def crepBody719_125 : CrepProg (BitVec 64) :=
.seq crepBody719_7 crepBody719_124

def crepBody719_126 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody719_125

def crepBody719_127 : CrepProg (BitVec 64) :=
.seq crepBody719_6 crepBody719_126

def crepBody719_128 : CrepProg (BitVec 64) :=
.seq crepBody719_0 crepBody719_127

def crepBody719_129 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody719_128

def data719 : CrepProg (BitVec 64) := crepBody719_129
def output719 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [103#8, 50#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2], crepProgToHOL data719)
end InitECandidate.Proofs.FrontendStages.Crep
