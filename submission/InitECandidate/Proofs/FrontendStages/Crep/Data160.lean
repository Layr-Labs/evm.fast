import InitECandidate.Proofs.FrontendStages.Crep.Translate144
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody160_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody160_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "ec_set_affine"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8]

def crepBody160_2 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody160_1

def crepBody160_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody160_4 : CrepProg (BitVec 64) :=
.seq crepBody160_2 crepBody160_3

def crepBody160_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody160_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64)) crepBody160_4 crepBody160_5

def crepBody160_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22, 23, 24, 25], none)) "fp_sqr"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody160_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26, 27, 28, 29], none)) "fp_mul"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody160_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30, 31, 32, 33], none)) "fp_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody160_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30, 31, 32, 33], none)) "fp_mul"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33]

def crepBody160_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([34], none)) "u256_eq"
  [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody160_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([35, 36, 37, 38], none)) "fp_add"
  [Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody160_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38]

def crepBody160_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([40], none)) "ec_set_infinity" [Flapjack.CrepExp.var 0]

def crepBody160_15 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody160_14

def crepBody160_16 : CrepProg (BitVec 64) :=
.seq crepBody160_15 crepBody160_3

def crepBody160_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 39) (Flapjack.CrepExp.const 1#64)) crepBody160_16 crepBody160_5

def crepBody160_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([40], none)) "ec_double" [Flapjack.CrepExp.var 0]

def crepBody160_19 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody160_18

def crepBody160_20 : CrepProg (BitVec 64) :=
.seq crepBody160_17 crepBody160_19

def crepBody160_21 : CrepProg (BitVec 64) :=
.seq crepBody160_20 crepBody160_3

def crepBody160_22 : CrepProg (BitVec 64) :=
.seq crepBody160_13 crepBody160_21

def crepBody160_23 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody160_22

def crepBody160_24 : CrepProg (BitVec 64) :=
.seq crepBody160_12 crepBody160_23

def crepBody160_25 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody160_24

def crepBody160_26 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody160_25

def crepBody160_27 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody160_26

def crepBody160_28 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody160_27

def crepBody160_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 34) (Flapjack.CrepExp.const 1#64)) crepBody160_28 crepBody160_5

def crepBody160_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([35, 36, 37, 38], none)) "fp_sub"
  [Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29,
    Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody160_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40, 41, 42], none)) "fp_sub"
  [Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33,
    Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21]

def crepBody160_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([43, 44, 45, 46], none)) "fp_sqr"
  [Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38]

def crepBody160_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([47, 48, 49, 50], none)) "fp_mul"
  [Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38,
    Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46]

def crepBody160_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([51, 52, 53, 54], none)) "fp_mul"
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.var 43, Flapjack.CrepExp.var 44, Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46]

def crepBody160_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([55, 56, 57, 58], none)) "fp_sqr"
  [Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.var 42]

def crepBody160_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([55, 56, 57, 58], none)) "fp_sub"
  [Flapjack.CrepExp.var 55, Flapjack.CrepExp.var 56, Flapjack.CrepExp.var 57, Flapjack.CrepExp.var 58,
    Flapjack.CrepExp.var 47, Flapjack.CrepExp.var 48, Flapjack.CrepExp.var 49, Flapjack.CrepExp.var 50]

def crepBody160_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([59, 60, 61, 62], none)) "fp_add"
  [Flapjack.CrepExp.var 51, Flapjack.CrepExp.var 52, Flapjack.CrepExp.var 53, Flapjack.CrepExp.var 54,
    Flapjack.CrepExp.var 51, Flapjack.CrepExp.var 52, Flapjack.CrepExp.var 53, Flapjack.CrepExp.var 54]

def crepBody160_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([55, 56, 57, 58], none)) "fp_sub"
  [Flapjack.CrepExp.var 55, Flapjack.CrepExp.var 56, Flapjack.CrepExp.var 57, Flapjack.CrepExp.var 58,
    Flapjack.CrepExp.var 59, Flapjack.CrepExp.var 60, Flapjack.CrepExp.var 61, Flapjack.CrepExp.var 62]

def crepBody160_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([63, 64, 65, 66], none)) "fp_sub"
  [Flapjack.CrepExp.var 51, Flapjack.CrepExp.var 52, Flapjack.CrepExp.var 53, Flapjack.CrepExp.var 54,
    Flapjack.CrepExp.var 55, Flapjack.CrepExp.var 56, Flapjack.CrepExp.var 57, Flapjack.CrepExp.var 58]

def crepBody160_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([63, 64, 65, 66], none)) "fp_mul"
  [Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.var 42,
    Flapjack.CrepExp.var 63, Flapjack.CrepExp.var 64, Flapjack.CrepExp.var 65, Flapjack.CrepExp.var 66]

def crepBody160_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([67, 68, 69, 70], none)) "fp_mul"
  [Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 47, Flapjack.CrepExp.var 48, Flapjack.CrepExp.var 49, Flapjack.CrepExp.var 50]

def crepBody160_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([63, 64, 65, 66], none)) "fp_sub"
  [Flapjack.CrepExp.var 63, Flapjack.CrepExp.var 64, Flapjack.CrepExp.var 65, Flapjack.CrepExp.var 66,
    Flapjack.CrepExp.var 67, Flapjack.CrepExp.var 68, Flapjack.CrepExp.var 69, Flapjack.CrepExp.var 70]

def crepBody160_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([71, 72, 73, 74], none)) "fp_mul"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38]

def crepBody160_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 75) (Flapjack.CrepExp.var 76)

def crepBody160_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 75, Flapjack.CrepExp.const 8#64])
  (Flapjack.CrepExp.var 77)

def crepBody160_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 75, Flapjack.CrepExp.const 16#64])
  (Flapjack.CrepExp.var 78)

def crepBody160_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 75, Flapjack.CrepExp.const 24#64])
  (Flapjack.CrepExp.var 79)

def crepBody160_48 : CrepProg (BitVec 64) :=
.seq crepBody160_47 crepBody160_5

def crepBody160_49 : CrepProg (BitVec 64) :=
.seq crepBody160_46 crepBody160_48

def crepBody160_50 : CrepProg (BitVec 64) :=
.seq crepBody160_45 crepBody160_49

def crepBody160_51 : CrepProg (BitVec 64) :=
.seq crepBody160_44 crepBody160_50

def crepBody160_52 : CrepProg (BitVec 64) :=
.dec 79 (Flapjack.CrepExp.var 58) crepBody160_51

def crepBody160_53 : CrepProg (BitVec 64) :=
.dec 78 (Flapjack.CrepExp.var 57) crepBody160_52

def crepBody160_54 : CrepProg (BitVec 64) :=
.dec 77 (Flapjack.CrepExp.var 56) crepBody160_53

def crepBody160_55 : CrepProg (BitVec 64) :=
.dec 76 (Flapjack.CrepExp.var 55) crepBody160_54

def crepBody160_56 : CrepProg (BitVec 64) :=
.dec 75 (Flapjack.CrepExp.var 0) crepBody160_55

def crepBody160_57 : CrepProg (BitVec 64) :=
.dec 79 (Flapjack.CrepExp.var 66) crepBody160_51

def crepBody160_58 : CrepProg (BitVec 64) :=
.dec 78 (Flapjack.CrepExp.var 65) crepBody160_57

def crepBody160_59 : CrepProg (BitVec 64) :=
.dec 77 (Flapjack.CrepExp.var 64) crepBody160_58

def crepBody160_60 : CrepProg (BitVec 64) :=
.dec 76 (Flapjack.CrepExp.var 63) crepBody160_59

def crepBody160_61 : CrepProg (BitVec 64) :=
.dec 75 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]) crepBody160_60

def crepBody160_62 : CrepProg (BitVec 64) :=
.seq crepBody160_56 crepBody160_61

def crepBody160_63 : CrepProg (BitVec 64) :=
.dec 79 (Flapjack.CrepExp.var 74) crepBody160_51

def crepBody160_64 : CrepProg (BitVec 64) :=
.dec 78 (Flapjack.CrepExp.var 73) crepBody160_63

def crepBody160_65 : CrepProg (BitVec 64) :=
.dec 77 (Flapjack.CrepExp.var 72) crepBody160_64

def crepBody160_66 : CrepProg (BitVec 64) :=
.dec 76 (Flapjack.CrepExp.var 71) crepBody160_65

def crepBody160_67 : CrepProg (BitVec 64) :=
.dec 75 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64]) crepBody160_66

def crepBody160_68 : CrepProg (BitVec 64) :=
.seq crepBody160_62 crepBody160_67

def crepBody160_69 : CrepProg (BitVec 64) :=
.seq crepBody160_68 crepBody160_3

def crepBody160_70 : CrepProg (BitVec 64) :=
.seq crepBody160_43 crepBody160_69

def crepBody160_71 : CrepProg (BitVec 64) :=
.dec 74 (Flapjack.CrepExp.const 0#64) crepBody160_70

def crepBody160_72 : CrepProg (BitVec 64) :=
.dec 73 (Flapjack.CrepExp.const 0#64) crepBody160_71

def crepBody160_73 : CrepProg (BitVec 64) :=
.dec 72 (Flapjack.CrepExp.const 0#64) crepBody160_72

def crepBody160_74 : CrepProg (BitVec 64) :=
.dec 71 (Flapjack.CrepExp.const 0#64) crepBody160_73

def crepBody160_75 : CrepProg (BitVec 64) :=
.seq crepBody160_42 crepBody160_74

def crepBody160_76 : CrepProg (BitVec 64) :=
.seq crepBody160_41 crepBody160_75

def crepBody160_77 : CrepProg (BitVec 64) :=
.dec 70 (Flapjack.CrepExp.const 0#64) crepBody160_76

def crepBody160_78 : CrepProg (BitVec 64) :=
.dec 69 (Flapjack.CrepExp.const 0#64) crepBody160_77

def crepBody160_79 : CrepProg (BitVec 64) :=
.dec 68 (Flapjack.CrepExp.const 0#64) crepBody160_78

def crepBody160_80 : CrepProg (BitVec 64) :=
.dec 67 (Flapjack.CrepExp.const 0#64) crepBody160_79

def crepBody160_81 : CrepProg (BitVec 64) :=
.seq crepBody160_40 crepBody160_80

def crepBody160_82 : CrepProg (BitVec 64) :=
.seq crepBody160_39 crepBody160_81

def crepBody160_83 : CrepProg (BitVec 64) :=
.dec 66 (Flapjack.CrepExp.const 0#64) crepBody160_82

def crepBody160_84 : CrepProg (BitVec 64) :=
.dec 65 (Flapjack.CrepExp.const 0#64) crepBody160_83

def crepBody160_85 : CrepProg (BitVec 64) :=
.dec 64 (Flapjack.CrepExp.const 0#64) crepBody160_84

def crepBody160_86 : CrepProg (BitVec 64) :=
.dec 63 (Flapjack.CrepExp.const 0#64) crepBody160_85

def crepBody160_87 : CrepProg (BitVec 64) :=
.seq crepBody160_38 crepBody160_86

def crepBody160_88 : CrepProg (BitVec 64) :=
.seq crepBody160_37 crepBody160_87

def crepBody160_89 : CrepProg (BitVec 64) :=
.dec 62 (Flapjack.CrepExp.const 0#64) crepBody160_88

def crepBody160_90 : CrepProg (BitVec 64) :=
.dec 61 (Flapjack.CrepExp.const 0#64) crepBody160_89

def crepBody160_91 : CrepProg (BitVec 64) :=
.dec 60 (Flapjack.CrepExp.const 0#64) crepBody160_90

def crepBody160_92 : CrepProg (BitVec 64) :=
.dec 59 (Flapjack.CrepExp.const 0#64) crepBody160_91

def crepBody160_93 : CrepProg (BitVec 64) :=
.seq crepBody160_36 crepBody160_92

def crepBody160_94 : CrepProg (BitVec 64) :=
.seq crepBody160_35 crepBody160_93

def crepBody160_95 : CrepProg (BitVec 64) :=
.dec 58 (Flapjack.CrepExp.const 0#64) crepBody160_94

def crepBody160_96 : CrepProg (BitVec 64) :=
.dec 57 (Flapjack.CrepExp.const 0#64) crepBody160_95

def crepBody160_97 : CrepProg (BitVec 64) :=
.dec 56 (Flapjack.CrepExp.const 0#64) crepBody160_96

def crepBody160_98 : CrepProg (BitVec 64) :=
.dec 55 (Flapjack.CrepExp.const 0#64) crepBody160_97

def crepBody160_99 : CrepProg (BitVec 64) :=
.seq crepBody160_34 crepBody160_98

def crepBody160_100 : CrepProg (BitVec 64) :=
.dec 54 (Flapjack.CrepExp.const 0#64) crepBody160_99

def crepBody160_101 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.const 0#64) crepBody160_100

def crepBody160_102 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.const 0#64) crepBody160_101

def crepBody160_103 : CrepProg (BitVec 64) :=
.dec 51 (Flapjack.CrepExp.const 0#64) crepBody160_102

def crepBody160_104 : CrepProg (BitVec 64) :=
.seq crepBody160_33 crepBody160_103

def crepBody160_105 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.const 0#64) crepBody160_104

def crepBody160_106 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.const 0#64) crepBody160_105

def crepBody160_107 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody160_106

def crepBody160_108 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody160_107

def crepBody160_109 : CrepProg (BitVec 64) :=
.seq crepBody160_32 crepBody160_108

def crepBody160_110 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody160_109

def crepBody160_111 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody160_110

def crepBody160_112 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody160_111

def crepBody160_113 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody160_112

def crepBody160_114 : CrepProg (BitVec 64) :=
.seq crepBody160_31 crepBody160_113

def crepBody160_115 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody160_114

def crepBody160_116 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody160_115

def crepBody160_117 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody160_116

def crepBody160_118 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody160_117

def crepBody160_119 : CrepProg (BitVec 64) :=
.seq crepBody160_30 crepBody160_118

def crepBody160_120 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody160_119

def crepBody160_121 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody160_120

def crepBody160_122 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody160_121

def crepBody160_123 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody160_122

def crepBody160_124 : CrepProg (BitVec 64) :=
.seq crepBody160_29 crepBody160_123

def crepBody160_125 : CrepProg (BitVec 64) :=
.seq crepBody160_11 crepBody160_124

def crepBody160_126 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody160_125

def crepBody160_127 : CrepProg (BitVec 64) :=
.seq crepBody160_10 crepBody160_126

def crepBody160_128 : CrepProg (BitVec 64) :=
.seq crepBody160_9 crepBody160_127

def crepBody160_129 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody160_128

def crepBody160_130 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody160_129

def crepBody160_131 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody160_130

def crepBody160_132 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody160_131

def crepBody160_133 : CrepProg (BitVec 64) :=
.seq crepBody160_8 crepBody160_132

def crepBody160_134 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody160_133

def crepBody160_135 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody160_134

def crepBody160_136 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody160_135

def crepBody160_137 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody160_136

def crepBody160_138 : CrepProg (BitVec 64) :=
.seq crepBody160_7 crepBody160_137

def crepBody160_139 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody160_138

def crepBody160_140 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody160_139

def crepBody160_141 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody160_140

def crepBody160_142 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody160_141

def crepBody160_143 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody160_142

def crepBody160_144 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody160_143

def crepBody160_145 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody160_144

def crepBody160_146 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody160_145

def crepBody160_147 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 24#64])) crepBody160_146

def crepBody160_148 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody160_147

def crepBody160_149 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 8#64])) crepBody160_148

def crepBody160_150 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 0)) crepBody160_149

def crepBody160_151 : CrepProg (BitVec 64) :=
.seq crepBody160_6 crepBody160_150

def crepBody160_152 : CrepProg (BitVec 64) :=
.seq crepBody160_0 crepBody160_151

def crepBody160_153 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody160_152

def crepBody160_154 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 24#64])) crepBody160_153

def crepBody160_155 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 16#64])) crepBody160_154

def crepBody160_156 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64],
      Flapjack.CrepExp.const 8#64])) crepBody160_155

def crepBody160_157 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 64#64])) crepBody160_156

def data160 : CrepProg (BitVec 64) := crepBody160_157
def output160 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [101#8, 99#8, 95#8, 97#8, 100#8, 100#8, 95#8, 97#8, 102#8, 102#8, 105#8, 110#8, 101#8], [0, 1, 2, 3, 4, 5, 6, 7, 8], crepProgToHOL data160)
end InitECandidate.Proofs.FrontendStages.Crep
