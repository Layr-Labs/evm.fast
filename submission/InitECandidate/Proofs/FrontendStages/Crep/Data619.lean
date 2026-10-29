import InitECandidate.Proofs.FrontendStages.Crep.Translate603
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody619_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "fe_is_zero"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 2,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 4]]]

def crepBody619_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "memcpy"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 4]]

def crepBody619_2 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody619_1

def crepBody619_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody619_4 : CrepProg (BitVec 64) :=
.seq crepBody619_2 crepBody619_3

def crepBody619_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody619_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody619_4 crepBody619_5

def crepBody619_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "fe_is_zero"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 3,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 4]]]

def crepBody619_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "memcpy"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.var 4]]

def crepBody619_9 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody619_8

def crepBody619_10 : CrepProg (BitVec 64) :=
.seq crepBody619_9 crepBody619_3

def crepBody619_11 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 1#64)) crepBody619_10 crepBody619_5

def crepBody619_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody619_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 10]

def crepBody619_18 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody619_17

def crepBody619_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 13]

def crepBody619_20 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody619_19

def crepBody619_21 : CrepProg (BitVec 64) :=
.seq crepBody619_18 crepBody619_20

def crepBody619_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 10]

def crepBody619_23 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody619_22

def crepBody619_24 : CrepProg (BitVec 64) :=
.seq crepBody619_21 crepBody619_23

def crepBody619_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 13]

def crepBody619_26 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody619_25

def crepBody619_27 : CrepProg (BitVec 64) :=
.seq crepBody619_24 crepBody619_26

def crepBody619_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "fe_eq"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody619_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "fe_eq"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody619_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody619_31 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody619_30

def crepBody619_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "ecp_double"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody619_33 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody619_32

def crepBody619_34 : CrepProg (BitVec 64) :=
.seq crepBody619_33 crepBody619_3

def crepBody619_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 1#64)) crepBody619_34 crepBody619_5

def crepBody619_36 : CrepProg (BitVec 64) :=
.seq crepBody619_31 crepBody619_35

def crepBody619_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "ecp_set_inf" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody619_38 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody619_37

def crepBody619_39 : CrepProg (BitVec 64) :=
.seq crepBody619_36 crepBody619_38

def crepBody619_40 : CrepProg (BitVec 64) :=
.seq crepBody619_39 crepBody619_3

def crepBody619_41 : CrepProg (BitVec 64) :=
.seq crepBody619_29 crepBody619_40

def crepBody619_42 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody619_41

def crepBody619_43 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 1#64)) crepBody619_42 crepBody619_5

def crepBody619_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "alloc" [Flapjack.CrepExp.var 4]

def crepBody619_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15]

def crepBody619_53 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_52

def crepBody619_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody619_55 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_54

def crepBody619_56 : CrepProg (BitVec 64) :=
.seq crepBody619_53 crepBody619_55

def crepBody619_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sqr"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 20]

def crepBody619_58 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_57

def crepBody619_59 : CrepProg (BitVec 64) :=
.seq crepBody619_56 crepBody619_58

def crepBody619_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 17]

def crepBody619_61 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_60

def crepBody619_62 : CrepProg (BitVec 64) :=
.seq crepBody619_59 crepBody619_61

def crepBody619_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody619_64 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_63

def crepBody619_65 : CrepProg (BitVec 64) :=
.seq crepBody619_62 crepBody619_64

def crepBody619_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 13]

def crepBody619_67 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_66

def crepBody619_68 : CrepProg (BitVec 64) :=
.seq crepBody619_65 crepBody619_67

def crepBody619_69 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sqr"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 19]

def crepBody619_70 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_69

def crepBody619_71 : CrepProg (BitVec 64) :=
.seq crepBody619_68 crepBody619_70

def crepBody619_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 24]

def crepBody619_73 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_72

def crepBody619_74 : CrepProg (BitVec 64) :=
.seq crepBody619_71 crepBody619_73

def crepBody619_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 23]

def crepBody619_76 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_75

def crepBody619_77 : CrepProg (BitVec 64) :=
.seq crepBody619_74 crepBody619_76

def crepBody619_78 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 2#64]

def crepBody619_79 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_78

def crepBody619_80 : CrepProg (BitVec 64) :=
.seq crepBody619_77 crepBody619_79

def crepBody619_81 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody619_82 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_81

def crepBody619_83 : CrepProg (BitVec 64) :=
.seq crepBody619_80 crepBody619_82

def crepBody619_84 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 25]

def crepBody619_85 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_84

def crepBody619_86 : CrepProg (BitVec 64) :=
.seq crepBody619_83 crepBody619_85

def crepBody619_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 25]

def crepBody619_88 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_87

def crepBody619_89 : CrepProg (BitVec 64) :=
.seq crepBody619_86 crepBody619_88

def crepBody619_90 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody619_91 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_90

def crepBody619_92 : CrepProg (BitVec 64) :=
.seq crepBody619_89 crepBody619_91

def crepBody619_93 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 15]

def crepBody619_94 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_93

def crepBody619_95 : CrepProg (BitVec 64) :=
.seq crepBody619_92 crepBody619_94

def crepBody619_96 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 14]

def crepBody619_97 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_96

def crepBody619_98 : CrepProg (BitVec 64) :=
.seq crepBody619_95 crepBody619_97

def crepBody619_99 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]

def crepBody619_100 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_99

def crepBody619_101 : CrepProg (BitVec 64) :=
.seq crepBody619_98 crepBody619_100

def crepBody619_102 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "memcpy"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 4]

def crepBody619_103 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_102

def crepBody619_104 : CrepProg (BitVec 64) :=
.seq crepBody619_101 crepBody619_103

def crepBody619_105 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4], Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 4]

def crepBody619_106 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_105

def crepBody619_107 : CrepProg (BitVec 64) :=
.seq crepBody619_104 crepBody619_106

def crepBody619_108 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 1,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 4]],
    Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 4]

def crepBody619_109 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_108

def crepBody619_110 : CrepProg (BitVec 64) :=
.seq crepBody619_107 crepBody619_109

def crepBody619_111 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody619_112 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody619_111

def crepBody619_113 : CrepProg (BitVec 64) :=
.seq crepBody619_110 crepBody619_112

def crepBody619_114 : CrepProg (BitVec 64) :=
.seq crepBody619_113 crepBody619_3

def crepBody619_115 : CrepProg (BitVec 64) :=
.seq crepBody619_51 crepBody619_114

def crepBody619_116 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody619_115

def crepBody619_117 : CrepProg (BitVec 64) :=
.seq crepBody619_50 crepBody619_116

def crepBody619_118 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody619_117

def crepBody619_119 : CrepProg (BitVec 64) :=
.seq crepBody619_49 crepBody619_118

def crepBody619_120 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody619_119

def crepBody619_121 : CrepProg (BitVec 64) :=
.seq crepBody619_48 crepBody619_120

def crepBody619_122 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody619_121

def crepBody619_123 : CrepProg (BitVec 64) :=
.seq crepBody619_47 crepBody619_122

def crepBody619_124 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody619_123

def crepBody619_125 : CrepProg (BitVec 64) :=
.seq crepBody619_46 crepBody619_124

def crepBody619_126 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody619_125

def crepBody619_127 : CrepProg (BitVec 64) :=
.seq crepBody619_45 crepBody619_126

def crepBody619_128 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody619_127

def crepBody619_129 : CrepProg (BitVec 64) :=
.seq crepBody619_44 crepBody619_128

def crepBody619_130 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody619_129

def crepBody619_131 : CrepProg (BitVec 64) :=
.seq crepBody619_43 crepBody619_130

def crepBody619_132 : CrepProg (BitVec 64) :=
.seq crepBody619_28 crepBody619_131

def crepBody619_133 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody619_132

def crepBody619_134 : CrepProg (BitVec 64) :=
.seq crepBody619_27 crepBody619_133

def crepBody619_135 : CrepProg (BitVec 64) :=
.seq crepBody619_16 crepBody619_134

def crepBody619_136 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody619_135

def crepBody619_137 : CrepProg (BitVec 64) :=
.seq crepBody619_15 crepBody619_136

def crepBody619_138 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody619_137

def crepBody619_139 : CrepProg (BitVec 64) :=
.seq crepBody619_14 crepBody619_138

def crepBody619_140 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody619_139

def crepBody619_141 : CrepProg (BitVec 64) :=
.seq crepBody619_13 crepBody619_140

def crepBody619_142 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody619_141

def crepBody619_143 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 4]]) crepBody619_142

def crepBody619_144 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]) crepBody619_143

def crepBody619_145 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 3) crepBody619_144

def crepBody619_146 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 4]]) crepBody619_145

def crepBody619_147 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]) crepBody619_146

def crepBody619_148 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 2) crepBody619_147

def crepBody619_149 : CrepProg (BitVec 64) :=
.seq crepBody619_12 crepBody619_148

def crepBody619_150 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody619_149

def crepBody619_151 : CrepProg (BitVec 64) :=
.seq crepBody619_11 crepBody619_150

def crepBody619_152 : CrepProg (BitVec 64) :=
.seq crepBody619_7 crepBody619_151

def crepBody619_153 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody619_152

def crepBody619_154 : CrepProg (BitVec 64) :=
.seq crepBody619_6 crepBody619_153

def crepBody619_155 : CrepProg (BitVec 64) :=
.seq crepBody619_0 crepBody619_154

def crepBody619_156 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody619_155

def crepBody619_157 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody619_156

def data619 : CrepProg (BitVec 64) := crepBody619_157
def output619 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 112#8, 95#8, 97#8, 100#8, 100#8], [0, 1, 2, 3], crepProgToHOL data619)
end InitECandidate.Proofs.FrontendStages.Crep
