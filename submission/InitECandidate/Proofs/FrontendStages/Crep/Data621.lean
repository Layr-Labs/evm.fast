import InitECandidate.Proofs.FrontendStages.Crep.Translate605
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody621_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "heap_mark" []

def crepBody621_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "alloc" [Flapjack.CrepExp.var 6]

def crepBody621_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "alloc" [Flapjack.CrepExp.var 6]

def crepBody621_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "alloc" [Flapjack.CrepExp.var 6]

def crepBody621_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "alloc" [Flapjack.CrepExp.var 6]

def crepBody621_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_set_zero" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 17]

def crepBody621_6 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_5

def crepBody621_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_set_zero" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18]

def crepBody621_8 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_7

def crepBody621_9 : CrepProg (BitVec 64) :=
.seq crepBody621_6 crepBody621_8

def crepBody621_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 10]

def crepBody621_11 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_10

def crepBody621_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 13]

def crepBody621_13 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_12

def crepBody621_14 : CrepProg (BitVec 64) :=
.seq crepBody621_11 crepBody621_13

def crepBody621_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 19]

def crepBody621_16 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_15

def crepBody621_17 : CrepProg (BitVec 64) :=
.seq crepBody621_14 crepBody621_16

def crepBody621_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 10]

def crepBody621_19 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_18

def crepBody621_20 : CrepProg (BitVec 64) :=
.seq crepBody621_17 crepBody621_19

def crepBody621_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 13]

def crepBody621_22 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_21

def crepBody621_23 : CrepProg (BitVec 64) :=
.seq crepBody621_20 crepBody621_22

def crepBody621_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19]

def crepBody621_25 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_24

def crepBody621_26 : CrepProg (BitVec 64) :=
.seq crepBody621_23 crepBody621_25

def crepBody621_27 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)) crepBody621_9 crepBody621_26

def crepBody621_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "fe_is_zero" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18]

def crepBody621_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_is_zero" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 17]

def crepBody621_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_sqr"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 8]

def crepBody621_31 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_30

def crepBody621_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 3#64]

def crepBody621_33 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_32

def crepBody621_34 : CrepProg (BitVec 64) :=
.seq crepBody621_31 crepBody621_33

def crepBody621_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody621_36 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_35

def crepBody621_37 : CrepProg (BitVec 64) :=
.seq crepBody621_34 crepBody621_36

def crepBody621_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_mul_small"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 2#64]

def crepBody621_39 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_38

def crepBody621_40 : CrepProg (BitVec 64) :=
.seq crepBody621_37 crepBody621_39

def crepBody621_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 10]

def crepBody621_42 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_41

def crepBody621_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 16]

def crepBody621_44 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_43

def crepBody621_45 : CrepProg (BitVec 64) :=
.seq crepBody621_42 crepBody621_44

def crepBody621_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 19]

def crepBody621_47 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_46

def crepBody621_48 : CrepProg (BitVec 64) :=
.seq crepBody621_45 crepBody621_47

def crepBody621_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 16]

def crepBody621_50 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_49

def crepBody621_51 : CrepProg (BitVec 64) :=
.seq crepBody621_48 crepBody621_50

def crepBody621_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody621_53 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody621_52

def crepBody621_54 : CrepProg (BitVec 64) :=
.seq crepBody621_51 crepBody621_53

def crepBody621_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody621_56 : CrepProg (BitVec 64) :=
.seq crepBody621_54 crepBody621_55

def crepBody621_57 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 1#64)) crepBody621_40 crepBody621_56

def crepBody621_58 : CrepProg (BitVec 64) :=
.seq crepBody621_29 crepBody621_57

def crepBody621_59 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_58

def crepBody621_60 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody621_61 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 1#64)) crepBody621_59 crepBody621_60

def crepBody621_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 10]

def crepBody621_63 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_62

def crepBody621_64 : CrepProg (BitVec 64) :=
.seq crepBody621_61 crepBody621_63

def crepBody621_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 16]

def crepBody621_66 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_65

def crepBody621_67 : CrepProg (BitVec 64) :=
.seq crepBody621_64 crepBody621_66

def crepBody621_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody621_69 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_68

def crepBody621_70 : CrepProg (BitVec 64) :=
.seq crepBody621_67 crepBody621_69

def crepBody621_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 19]

def crepBody621_72 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_71

def crepBody621_73 : CrepProg (BitVec 64) :=
.seq crepBody621_70 crepBody621_72

def crepBody621_74 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 10]

def crepBody621_75 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_74

def crepBody621_76 : CrepProg (BitVec 64) :=
.seq crepBody621_73 crepBody621_75

def crepBody621_77 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 16]

def crepBody621_78 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_77

def crepBody621_79 : CrepProg (BitVec 64) :=
.seq crepBody621_76 crepBody621_78

def crepBody621_80 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 1]

def crepBody621_81 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_80

def crepBody621_82 : CrepProg (BitVec 64) :=
.seq crepBody621_79 crepBody621_81

def crepBody621_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 20]

def crepBody621_84 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_83

def crepBody621_85 : CrepProg (BitVec 64) :=
.seq crepBody621_82 crepBody621_84

def crepBody621_86 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_sub"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody621_87 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_86

def crepBody621_88 : CrepProg (BitVec 64) :=
.seq crepBody621_85 crepBody621_87

def crepBody621_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 16]

def crepBody621_90 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_89

def crepBody621_91 : CrepProg (BitVec 64) :=
.seq crepBody621_88 crepBody621_90

def crepBody621_92 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "fe_mul"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 10]

def crepBody621_93 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_92

def crepBody621_94 : CrepProg (BitVec 64) :=
.seq crepBody621_91 crepBody621_93

def crepBody621_95 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "heap_release" [Flapjack.CrepExp.var 7]

def crepBody621_96 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody621_95

def crepBody621_97 : CrepProg (BitVec 64) :=
.seq crepBody621_94 crepBody621_96

def crepBody621_98 : CrepProg (BitVec 64) :=
.seq crepBody621_97 crepBody621_55

def crepBody621_99 : CrepProg (BitVec 64) :=
.seq crepBody621_28 crepBody621_98

def crepBody621_100 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody621_99

def crepBody621_101 : CrepProg (BitVec 64) :=
.seq crepBody621_27 crepBody621_100

def crepBody621_102 : CrepProg (BitVec 64) :=
.seq crepBody621_4 crepBody621_101

def crepBody621_103 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody621_102

def crepBody621_104 : CrepProg (BitVec 64) :=
.seq crepBody621_3 crepBody621_103

def crepBody621_105 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody621_104

def crepBody621_106 : CrepProg (BitVec 64) :=
.seq crepBody621_2 crepBody621_105

def crepBody621_107 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody621_106

def crepBody621_108 : CrepProg (BitVec 64) :=
.seq crepBody621_1 crepBody621_107

def crepBody621_109 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody621_108

def crepBody621_110 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 5,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 6]]) crepBody621_109

def crepBody621_111 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]) crepBody621_110

def crepBody621_112 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 5) crepBody621_111

def crepBody621_113 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 6]]) crepBody621_112

def crepBody621_114 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 6]) crepBody621_113

def crepBody621_115 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody621_114

def crepBody621_116 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 6]]) crepBody621_115

def crepBody621_117 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 6]) crepBody621_116

def crepBody621_118 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 3) crepBody621_117

def crepBody621_119 : CrepProg (BitVec 64) :=
.seq crepBody621_0 crepBody621_118

def crepBody621_120 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody621_119

def crepBody621_121 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody621_120

def data621 : CrepProg (BitVec 64) := crepBody621_121
def output621 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 99#8, 112#8, 95#8, 108#8, 105#8, 110#8, 101#8, 102#8, 117#8, 110#8, 99#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data621)
end InitECandidate.Proofs.FrontendStages.Crep
