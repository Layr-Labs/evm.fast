import InitECandidate.Proofs.FrontendStages.Crep.Translate143
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody159_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody159_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody159_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody159_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody159_1 crepBody159_2

def crepBody159_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody159_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "ec_set_infinity" [Flapjack.CrepExp.var 0]

def crepBody159_6 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody159_5

def crepBody159_7 : CrepProg (BitVec 64) :=
.seq crepBody159_6 crepBody159_1

def crepBody159_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64)) crepBody159_7 crepBody159_2

def crepBody159_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "fp_sqr"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody159_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22], none)) "fp_mul"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody159_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22], none)) "fp_add"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]

def crepBody159_12 : CrepProg (BitVec 64) :=
.seq crepBody159_11 crepBody159_11

def crepBody159_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24, 25, 26], none)) "fp_sqr"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody159_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27, 28, 29, 30], none)) "fp_add"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody159_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24, 25, 26], none)) "fp_add"
  [Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody159_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31, 32, 33, 34], none)) "fp_sqr"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody159_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([35, 36, 37, 38], none)) "fp_add"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22]

def crepBody159_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31, 32, 33, 34], none)) "fp_sub"
  [Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34,
    Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38]

def crepBody159_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40, 41, 42], none)) "fp_sub"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34]

def crepBody159_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40, 41, 42], none)) "fp_mul"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.var 42]

def crepBody159_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([43, 44, 45, 46], none)) "fp_sqr"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody159_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([43, 44, 45, 46], none)) "fp_add"
  [Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46,
    Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46]

def crepBody159_23 : CrepProg (BitVec 64) :=
.seq crepBody159_22 crepBody159_22

def crepBody159_24 : CrepProg (BitVec 64) :=
.seq crepBody159_23 crepBody159_22

def crepBody159_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([47, 48, 49, 50], none)) "fp_sub"
  [Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.var 42,
    Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46]

def crepBody159_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([51, 52, 53, 54], none)) "fp_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody159_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([51, 52, 53, 54], none)) "fp_add"
  [Flapjack.CrepExp.var 51, Flapjack.CrepExp.var 52, Flapjack.CrepExp.var 53, Flapjack.CrepExp.var 54,
    Flapjack.CrepExp.var 51, Flapjack.CrepExp.var 52, Flapjack.CrepExp.var 53, Flapjack.CrepExp.var 54]

def crepBody159_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 55) (Flapjack.CrepExp.var 56)

def crepBody159_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 55, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 57)

def crepBody159_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 55, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 58)

def crepBody159_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 55, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 59)

def crepBody159_32 : CrepProg (BitVec 64) :=
.seq crepBody159_31 crepBody159_2

def crepBody159_33 : CrepProg (BitVec 64) :=
.seq crepBody159_30 crepBody159_32

def crepBody159_34 : CrepProg (BitVec 64) :=
.seq crepBody159_29 crepBody159_33

def crepBody159_35 : CrepProg (BitVec 64) :=
.seq crepBody159_28 crepBody159_34

def crepBody159_36 : CrepProg (BitVec 64) :=
.dec 59 (Flapjack.CrepExp.var 34) crepBody159_35

def crepBody159_37 : CrepProg (BitVec 64) :=
.dec 58 (Flapjack.CrepExp.var 33) crepBody159_36

def crepBody159_38 : CrepProg (BitVec 64) :=
.dec 57 (Flapjack.CrepExp.var 32) crepBody159_37

def crepBody159_39 : CrepProg (BitVec 64) :=
.dec 56 (Flapjack.CrepExp.var 31) crepBody159_38

def crepBody159_40 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.var 0) crepBody159_39

def crepBody159_41 : CrepProg (BitVec 64) :=
.seq crepBody159_27 crepBody159_40

def crepBody159_42 : CrepProg (BitVec 64) :=
.dec 59 (Flapjack.CrepExp.var 50) crepBody159_35

def crepBody159_43 : CrepProg (BitVec 64) :=
.dec 58 (Flapjack.CrepExp.var 49) crepBody159_42

def crepBody159_44 : CrepProg (BitVec 64) :=
.dec 57 (Flapjack.CrepExp.var 48) crepBody159_43

def crepBody159_45 : CrepProg (BitVec 64) :=
.dec 56 (Flapjack.CrepExp.var 47) crepBody159_44

def crepBody159_46 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody159_45

def crepBody159_47 : CrepProg (BitVec 64) :=
.seq crepBody159_41 crepBody159_46

def crepBody159_48 : CrepProg (BitVec 64) :=
.dec 59 (Flapjack.CrepExp.var 54) crepBody159_35

def crepBody159_49 : CrepProg (BitVec 64) :=
.dec 58 (Flapjack.CrepExp.var 53) crepBody159_48

def crepBody159_50 : CrepProg (BitVec 64) :=
.dec 57 (Flapjack.CrepExp.var 52) crepBody159_49

def crepBody159_51 : CrepProg (BitVec 64) :=
.dec 56 (Flapjack.CrepExp.var 51) crepBody159_50

def crepBody159_52 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]) crepBody159_51

def crepBody159_53 : CrepProg (BitVec 64) :=
.seq crepBody159_47 crepBody159_52

def crepBody159_54 : CrepProg (BitVec 64) :=
.seq crepBody159_53 crepBody159_1

def crepBody159_55 : CrepProg (BitVec 64) :=
.seq crepBody159_26 crepBody159_54

def crepBody159_56 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.const 0#64) crepBody159_55

def crepBody159_57 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.const 0#64) crepBody159_56

def crepBody159_58 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.const 0#64) crepBody159_57

def crepBody159_59 : CrepProg (BitVec 64) :=
.dec 51 (Flapjack.CrepExp.const 0#64) crepBody159_58

def crepBody159_60 : CrepProg (BitVec 64) :=
.seq crepBody159_25 crepBody159_59

def crepBody159_61 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.const 0#64) crepBody159_60

def crepBody159_62 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.const 0#64) crepBody159_61

def crepBody159_63 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody159_62

def crepBody159_64 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody159_63

def crepBody159_65 : CrepProg (BitVec 64) :=
.seq crepBody159_24 crepBody159_64

def crepBody159_66 : CrepProg (BitVec 64) :=
.seq crepBody159_21 crepBody159_65

def crepBody159_67 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody159_66

def crepBody159_68 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody159_67

def crepBody159_69 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody159_68

def crepBody159_70 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody159_69

def crepBody159_71 : CrepProg (BitVec 64) :=
.seq crepBody159_20 crepBody159_70

def crepBody159_72 : CrepProg (BitVec 64) :=
.seq crepBody159_19 crepBody159_71

def crepBody159_73 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody159_72

def crepBody159_74 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody159_73

def crepBody159_75 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody159_74

def crepBody159_76 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody159_75

def crepBody159_77 : CrepProg (BitVec 64) :=
.seq crepBody159_18 crepBody159_76

def crepBody159_78 : CrepProg (BitVec 64) :=
.seq crepBody159_17 crepBody159_77

def crepBody159_79 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody159_78

def crepBody159_80 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody159_79

def crepBody159_81 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody159_80

def crepBody159_82 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody159_81

def crepBody159_83 : CrepProg (BitVec 64) :=
.seq crepBody159_16 crepBody159_82

def crepBody159_84 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody159_83

def crepBody159_85 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody159_84

def crepBody159_86 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody159_85

def crepBody159_87 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody159_86

def crepBody159_88 : CrepProg (BitVec 64) :=
.seq crepBody159_15 crepBody159_87

def crepBody159_89 : CrepProg (BitVec 64) :=
.seq crepBody159_14 crepBody159_88

def crepBody159_90 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody159_89

def crepBody159_91 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody159_90

def crepBody159_92 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody159_91

def crepBody159_93 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody159_92

def crepBody159_94 : CrepProg (BitVec 64) :=
.seq crepBody159_13 crepBody159_93

def crepBody159_95 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody159_94

def crepBody159_96 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody159_95

def crepBody159_97 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody159_96

def crepBody159_98 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody159_97

def crepBody159_99 : CrepProg (BitVec 64) :=
.seq crepBody159_12 crepBody159_98

def crepBody159_100 : CrepProg (BitVec 64) :=
.seq crepBody159_10 crepBody159_99

def crepBody159_101 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody159_100

def crepBody159_102 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody159_101

def crepBody159_103 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody159_102

def crepBody159_104 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody159_103

def crepBody159_105 : CrepProg (BitVec 64) :=
.seq crepBody159_9 crepBody159_104

def crepBody159_106 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody159_105

def crepBody159_107 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody159_106

def crepBody159_108 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody159_107

def crepBody159_109 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody159_108

def crepBody159_110 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody159_109

def crepBody159_111 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody159_110

def crepBody159_112 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody159_111

def crepBody159_113 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) crepBody159_112

def crepBody159_114 : CrepProg (BitVec 64) :=
.seq crepBody159_8 crepBody159_113

def crepBody159_115 : CrepProg (BitVec 64) :=
.seq crepBody159_4 crepBody159_114

def crepBody159_116 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody159_115

def crepBody159_117 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody159_116

def crepBody159_118 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody159_117

def crepBody159_119 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody159_118

def crepBody159_120 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody159_119

def crepBody159_121 : CrepProg (BitVec 64) :=
.seq crepBody159_3 crepBody159_120

def crepBody159_122 : CrepProg (BitVec 64) :=
.seq crepBody159_0 crepBody159_121

def crepBody159_123 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody159_122

def crepBody159_124 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 24#64])) crepBody159_123

def crepBody159_125 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 16#64])) crepBody159_124

def crepBody159_126 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 8#64])) crepBody159_125

def crepBody159_127 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64])) crepBody159_126

def data159 : CrepProg (BitVec 64) := crepBody159_127
def output159 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 95#8, 100#8, 111#8, 117#8, 98#8, 108#8, 101#8], [0], crepProgToHOL data159)
end InitECandidate.Proofs.FrontendStages.Crep
