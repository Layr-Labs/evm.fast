import InitECandidate.Proofs.FrontendStages.Crep.Translate782
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody798_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "min" [Flapjack.CrepExp.const 16777216#64, Flapjack.CrepExp.var 6]

def crepBody798_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 8)

def crepBody798_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody798_3 : CrepProg (BitVec 64) :=
.seq crepBody798_1 crepBody798_2

def crepBody798_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 80#64) crepBody798_3

def crepBody798_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 4#64

def crepBody798_6 : CrepProg (BitVec 64) :=
.seq crepBody798_4 crepBody798_5

def crepBody798_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 7)) crepBody798_6 crepBody798_2

def crepBody798_8 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 81#64) crepBody798_3

def crepBody798_9 : CrepProg (BitVec 64) :=
.seq crepBody798_8 crepBody798_5

def crepBody798_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 6)) crepBody798_9 crepBody798_2

def crepBody798_11 : CrepProg (BitVec 64) :=
.seq crepBody798_7 crepBody798_10

def crepBody798_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "calculate_total_blob_gas" [Flapjack.CrepExp.var 0]

def crepBody798_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 9)

def crepBody798_14 : CrepProg (BitVec 64) :=
.seq crepBody798_13 crepBody798_2

def crepBody798_15 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 82#64) crepBody798_14

def crepBody798_16 : CrepProg (BitVec 64) :=
.seq crepBody798_15 crepBody798_5

def crepBody798_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 8)) crepBody798_16 crepBody798_2

def crepBody798_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "get_account" [Flapjack.CrepExp.var 1]

def crepBody798_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "u256_lt"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody798_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 28)

def crepBody798_21 : CrepProg (BitVec 64) :=
.seq crepBody798_20 crepBody798_2

def crepBody798_22 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 83#64) crepBody798_21

def crepBody798_23 : CrepProg (BitVec 64) :=
.seq crepBody798_22 crepBody798_5

def crepBody798_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.const 0#64)) crepBody798_23 crepBody798_2

def crepBody798_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 23)

def crepBody798_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 24)

def crepBody798_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 25)

def crepBody798_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 17 (Flapjack.CrepExp.var 26)

def crepBody798_29 : CrepProg (BitVec 64) :=
.seq crepBody798_28 crepBody798_2

def crepBody798_30 : CrepProg (BitVec 64) :=
.seq crepBody798_27 crepBody798_29

def crepBody798_31 : CrepProg (BitVec 64) :=
.seq crepBody798_26 crepBody798_30

def crepBody798_32 : CrepProg (BitVec 64) :=
.seq crepBody798_25 crepBody798_31

def crepBody798_33 : CrepProg (BitVec 64) :=
.seq crepBody798_24 crepBody798_32

def crepBody798_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 23)

def crepBody798_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 19 (Flapjack.CrepExp.var 24)

def crepBody798_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 20 (Flapjack.CrepExp.var 25)

def crepBody798_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 21 (Flapjack.CrepExp.var 26)

def crepBody798_38 : CrepProg (BitVec 64) :=
.seq crepBody798_37 crepBody798_2

def crepBody798_39 : CrepProg (BitVec 64) :=
.seq crepBody798_36 crepBody798_38

def crepBody798_40 : CrepProg (BitVec 64) :=
.seq crepBody798_35 crepBody798_39

def crepBody798_41 : CrepProg (BitVec 64) :=
.seq crepBody798_34 crepBody798_40

def crepBody798_42 : CrepProg (BitVec 64) :=
.seq crepBody798_33 crepBody798_41

def crepBody798_43 : CrepProg (BitVec 64) :=
.seq crepBody798_19 crepBody798_42

def crepBody798_44 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody798_43

def crepBody798_45 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody798_44

def crepBody798_46 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody798_45

def crepBody798_47 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody798_46

def crepBody798_48 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody798_47

def crepBody798_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "u256_lt"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30]

def crepBody798_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 32)

def crepBody798_51 : CrepProg (BitVec 64) :=
.seq crepBody798_50 crepBody798_2

def crepBody798_52 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 84#64) crepBody798_51

def crepBody798_53 : CrepProg (BitVec 64) :=
.seq crepBody798_52 crepBody798_5

def crepBody798_54 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 31) (Flapjack.CrepExp.const 0#64)) crepBody798_53 crepBody798_2

def crepBody798_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "u256_lt"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody798_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 33)

def crepBody798_57 : CrepProg (BitVec 64) :=
.seq crepBody798_56 crepBody798_2

def crepBody798_58 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 85#64) crepBody798_57

def crepBody798_59 : CrepProg (BitVec 64) :=
.seq crepBody798_58 crepBody798_5

def crepBody798_60 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 32) (Flapjack.CrepExp.const 0#64)) crepBody798_59 crepBody798_2

def crepBody798_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([33, 34, 35, 36], none)) "u256_sub"
  [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody798_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([37], none)) "u256_lt"
  [Flapjack.CrepExp.var 27, Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30,
    Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36]

def crepBody798_63 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 38 (Flapjack.CrepExp.var 27)

def crepBody798_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 39 (Flapjack.CrepExp.var 28)

def crepBody798_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 40 (Flapjack.CrepExp.var 29)

def crepBody798_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 41 (Flapjack.CrepExp.var 30)

def crepBody798_67 : CrepProg (BitVec 64) :=
.seq crepBody798_66 crepBody798_2

def crepBody798_68 : CrepProg (BitVec 64) :=
.seq crepBody798_65 crepBody798_67

def crepBody798_69 : CrepProg (BitVec 64) :=
.seq crepBody798_64 crepBody798_68

def crepBody798_70 : CrepProg (BitVec 64) :=
.seq crepBody798_63 crepBody798_69

def crepBody798_71 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 37) (Flapjack.CrepExp.const 0#64)) crepBody798_70 crepBody798_2

def crepBody798_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "u256_add"
  [Flapjack.CrepExp.var 38, Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41,
    Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody798_73 : CrepProg (BitVec 64) :=
.seq crepBody798_71 crepBody798_72

def crepBody798_74 : CrepProg (BitVec 64) :=
.seq crepBody798_73 crepBody798_41

def crepBody798_75 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.var 36) crepBody798_74

def crepBody798_76 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.var 35) crepBody798_75

def crepBody798_77 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.var 34) crepBody798_76

def crepBody798_78 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.var 33) crepBody798_77

def crepBody798_79 : CrepProg (BitVec 64) :=
.seq crepBody798_62 crepBody798_78

def crepBody798_80 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody798_79

def crepBody798_81 : CrepProg (BitVec 64) :=
.seq crepBody798_61 crepBody798_80

def crepBody798_82 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody798_81

def crepBody798_83 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody798_82

def crepBody798_84 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody798_83

def crepBody798_85 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody798_84

def crepBody798_86 : CrepProg (BitVec 64) :=
.seq crepBody798_60 crepBody798_85

def crepBody798_87 : CrepProg (BitVec 64) :=
.seq crepBody798_55 crepBody798_86

def crepBody798_88 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody798_87

def crepBody798_89 : CrepProg (BitVec 64) :=
.seq crepBody798_54 crepBody798_88

def crepBody798_90 : CrepProg (BitVec 64) :=
.seq crepBody798_49 crepBody798_89

def crepBody798_91 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody798_90

def crepBody798_92 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64],
      Flapjack.CrepExp.const 24#64])) crepBody798_91

def crepBody798_93 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64],
      Flapjack.CrepExp.const 16#64])) crepBody798_92

def crepBody798_94 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64],
      Flapjack.CrepExp.const 8#64])) crepBody798_93

def crepBody798_95 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 80#64])) crepBody798_94

def crepBody798_96 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64],
      Flapjack.CrepExp.const 24#64])) crepBody798_95

def crepBody798_97 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64],
      Flapjack.CrepExp.const 16#64])) crepBody798_96

def crepBody798_98 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64],
      Flapjack.CrepExp.const 8#64])) crepBody798_97

def crepBody798_99 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64])) crepBody798_98

def crepBody798_100 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 0#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 1#64)])) crepBody798_48 crepBody798_99

def crepBody798_101 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24, 25, 26, 27], none)) "fee_mul"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 21]

def crepBody798_102 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 34)

def crepBody798_103 : CrepProg (BitVec 64) :=
.seq crepBody798_102 crepBody798_2

def crepBody798_104 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 86#64) crepBody798_103

def crepBody798_105 : CrepProg (BitVec 64) :=
.seq crepBody798_104 crepBody798_5

def crepBody798_106 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 33) (Flapjack.CrepExp.const 0#64)) crepBody798_105 crepBody798_2

def crepBody798_107 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 87#64) crepBody798_103

def crepBody798_108 : CrepProg (BitVec 64) :=
.seq crepBody798_107 crepBody798_5

def crepBody798_109 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 6#64) (Flapjack.CrepExp.var 33)) crepBody798_108 crepBody798_2

def crepBody798_110 : CrepProg (BitVec 64) :=
.seq crepBody798_106 crepBody798_109

def crepBody798_111 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 35)

def crepBody798_112 : CrepProg (BitVec 64) :=
.seq crepBody798_111 crepBody798_2

def crepBody798_113 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 88#64) crepBody798_112

def crepBody798_114 : CrepProg (BitVec 64) :=
.seq crepBody798_113 crepBody798_5

def crepBody798_115 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.loadByte
    (Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 256#64]),
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 34, Flapjack.CrepExp.const 32#64]]))
  (Flapjack.CrepExp.const 1#64)) crepBody798_114 crepBody798_2

def crepBody798_116 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 34 (Flapjack.CrepExp.var 35)

def crepBody798_117 : CrepProg (BitVec 64) :=
.seq crepBody798_116 crepBody798_2

def crepBody798_118 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 34, Flapjack.CrepExp.const 1#64]) crepBody798_117

def crepBody798_119 : CrepProg (BitVec 64) :=
.seq crepBody798_115 crepBody798_118

def crepBody798_120 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 34) (Flapjack.CrepExp.var 33)) crepBody798_119

def crepBody798_121 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([35, 36, 37, 38], none)) "calculate_blob_gas_price"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 96#64])]

def crepBody798_122 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([43], none)) "u256_lt"
  [Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.var 42,
    Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37, Flapjack.CrepExp.var 38]

def crepBody798_123 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 44)

def crepBody798_124 : CrepProg (BitVec 64) :=
.seq crepBody798_123 crepBody798_2

def crepBody798_125 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 89#64) crepBody798_124

def crepBody798_126 : CrepProg (BitVec 64) :=
.seq crepBody798_125 crepBody798_5

def crepBody798_127 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 43) (Flapjack.CrepExp.const 0#64)) crepBody798_126 crepBody798_2

def crepBody798_128 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([44, 45, 46, 47, 48], none)) "fee_mul"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41,
    Flapjack.CrepExp.var 42]

def crepBody798_129 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 28 (Flapjack.CrepExp.const 1#64)

def crepBody798_130 : CrepProg (BitVec 64) :=
.seq crepBody798_129 crepBody798_2

def crepBody798_131 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 44) (Flapjack.CrepExp.const 0#64)) crepBody798_130 crepBody798_2

def crepBody798_132 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([49, 50, 51, 52, 53], none)) "u256_add_carry"
  [Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32,
    Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46, Flapjack.CrepExp.var 47, Flapjack.CrepExp.var 48]

def crepBody798_133 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 53) (Flapjack.CrepExp.const 0#64)) crepBody798_130 crepBody798_2

def crepBody798_134 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 29 (Flapjack.CrepExp.var 49)

def crepBody798_135 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 30 (Flapjack.CrepExp.var 50)

def crepBody798_136 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 31 (Flapjack.CrepExp.var 51)

def crepBody798_137 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 32 (Flapjack.CrepExp.var 52)

def crepBody798_138 : CrepProg (BitVec 64) :=
.seq crepBody798_137 crepBody798_2

def crepBody798_139 : CrepProg (BitVec 64) :=
.seq crepBody798_136 crepBody798_138

def crepBody798_140 : CrepProg (BitVec 64) :=
.seq crepBody798_135 crepBody798_139

def crepBody798_141 : CrepProg (BitVec 64) :=
.seq crepBody798_134 crepBody798_140

def crepBody798_142 : CrepProg (BitVec 64) :=
.seq crepBody798_133 crepBody798_141

def crepBody798_143 : CrepProg (BitVec 64) :=
.seq crepBody798_132 crepBody798_142

def crepBody798_144 : CrepProg (BitVec 64) :=
.dec 53 (Flapjack.CrepExp.const 0#64) crepBody798_143

def crepBody798_145 : CrepProg (BitVec 64) :=
.dec 52 (Flapjack.CrepExp.const 0#64) crepBody798_144

def crepBody798_146 : CrepProg (BitVec 64) :=
.dec 51 (Flapjack.CrepExp.const 0#64) crepBody798_145

def crepBody798_147 : CrepProg (BitVec 64) :=
.dec 50 (Flapjack.CrepExp.const 0#64) crepBody798_146

def crepBody798_148 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.const 0#64) crepBody798_147

def crepBody798_149 : CrepProg (BitVec 64) :=
.seq crepBody798_131 crepBody798_148

def crepBody798_150 : CrepProg (BitVec 64) :=
.seq crepBody798_128 crepBody798_149

def crepBody798_151 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody798_150

def crepBody798_152 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody798_151

def crepBody798_153 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody798_152

def crepBody798_154 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody798_153

def crepBody798_155 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody798_154

def crepBody798_156 : CrepProg (BitVec 64) :=
.seq crepBody798_127 crepBody798_155

def crepBody798_157 : CrepProg (BitVec 64) :=
.seq crepBody798_122 crepBody798_156

def crepBody798_158 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody798_157

def crepBody798_159 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64],
      Flapjack.CrepExp.const 24#64])) crepBody798_158

def crepBody798_160 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64],
      Flapjack.CrepExp.const 16#64])) crepBody798_159

def crepBody798_161 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64],
      Flapjack.CrepExp.const 8#64])) crepBody798_160

def crepBody798_162 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 224#64])) crepBody798_161

def crepBody798_163 : CrepProg (BitVec 64) :=
.seq crepBody798_121 crepBody798_162

def crepBody798_164 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody798_163

def crepBody798_165 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody798_164

def crepBody798_166 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody798_165

def crepBody798_167 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody798_166

def crepBody798_168 : CrepProg (BitVec 64) :=
.seq crepBody798_120 crepBody798_167

def crepBody798_169 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody798_168

def crepBody798_170 : CrepProg (BitVec 64) :=
.seq crepBody798_110 crepBody798_169

def crepBody798_171 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 264#64])) crepBody798_170

def crepBody798_172 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 3#64)) crepBody798_171 crepBody798_2

def crepBody798_173 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 90#64) crepBody798_57

def crepBody798_174 : CrepProg (BitVec 64) :=
.seq crepBody798_173 crepBody798_5

def crepBody798_175 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 280#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody798_174 crepBody798_2

def crepBody798_176 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 22) (Flapjack.CrepExp.const 4#64)) crepBody798_175 crepBody798_2

def crepBody798_177 : CrepProg (BitVec 64) :=
.seq crepBody798_172 crepBody798_176

def crepBody798_178 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([37], none)) "u256_fits_word"
  [Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36]

def crepBody798_179 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 39)

def crepBody798_180 : CrepProg (BitVec 64) :=
.seq crepBody798_179 crepBody798_2

def crepBody798_181 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 92#64) crepBody798_180

def crepBody798_182 : CrepProg (BitVec 64) :=
.seq crepBody798_181 crepBody798_5

def crepBody798_183 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 37) (Flapjack.CrepExp.const 0#64)) crepBody798_182 crepBody798_2

def crepBody798_184 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 91#64) crepBody798_180

def crepBody798_185 : CrepProg (BitVec 64) :=
.seq crepBody798_184 crepBody798_5

def crepBody798_186 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 33) (Flapjack.CrepExp.var 38)) crepBody798_185 crepBody798_2

def crepBody798_187 : CrepProg (BitVec 64) :=
.seq crepBody798_183 crepBody798_186

def crepBody798_188 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 38) (Flapjack.CrepExp.var 33)) crepBody798_182 crepBody798_2

def crepBody798_189 : CrepProg (BitVec 64) :=
.seq crepBody798_187 crepBody798_188

def crepBody798_190 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 93#64) crepBody798_180

def crepBody798_191 : CrepProg (BitVec 64) :=
.seq crepBody798_190 crepBody798_5

def crepBody798_192 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 28) (Flapjack.CrepExp.const 0#64)) crepBody798_191 crepBody798_2

def crepBody798_193 : CrepProg (BitVec 64) :=
.seq crepBody798_189 crepBody798_192

def crepBody798_194 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39, 40, 41, 42, 43], none)) "u256_add_carry"
  [Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64],
          Flapjack.CrepExp.const 24#64])]

def crepBody798_195 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 93#64) crepBody798_124

def crepBody798_196 : CrepProg (BitVec 64) :=
.seq crepBody798_195 crepBody798_5

def crepBody798_197 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 43) (Flapjack.CrepExp.const 0#64)) crepBody798_196 crepBody798_2

def crepBody798_198 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([44], none)) "u256_lt"
  [Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 8#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 16#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64],
          Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.var 39, Flapjack.CrepExp.var 40, Flapjack.CrepExp.var 41, Flapjack.CrepExp.var 42]

def crepBody798_199 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 45)

def crepBody798_200 : CrepProg (BitVec 64) :=
.seq crepBody798_199 crepBody798_2

def crepBody798_201 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 93#64) crepBody798_200

def crepBody798_202 : CrepProg (BitVec 64) :=
.seq crepBody798_201 crepBody798_5

def crepBody798_203 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 44) (Flapjack.CrepExp.const 0#64)) crepBody798_202 crepBody798_2

def crepBody798_204 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([45, 46], none)) "get_code"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.var 1]

def crepBody798_205 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([47], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 48#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64]),
    Flapjack.CrepExp.const 32#64]

def crepBody798_206 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([48], none)) "is_valid_delegation" [Flapjack.CrepExp.var 45, Flapjack.CrepExp.var 46]

def crepBody798_207 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 49)

def crepBody798_208 : CrepProg (BitVec 64) :=
.seq crepBody798_207 crepBody798_2

def crepBody798_209 : CrepProg (BitVec 64) :=
.dec 49 (Flapjack.CrepExp.const 94#64) crepBody798_208

def crepBody798_210 : CrepProg (BitVec 64) :=
.seq crepBody798_209 crepBody798_5

def crepBody798_211 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 48) (Flapjack.CrepExp.const 0#64)) crepBody798_210 crepBody798_2

def crepBody798_212 : CrepProg (BitVec 64) :=
.seq crepBody798_206 crepBody798_211

def crepBody798_213 : CrepProg (BitVec 64) :=
.dec 48 (Flapjack.CrepExp.const 0#64) crepBody798_212

def crepBody798_214 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 47) (Flapjack.CrepExp.const 0#64)) crepBody798_213 crepBody798_2

def crepBody798_215 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17]

def crepBody798_216 : CrepProg (BitVec 64) :=
.seq crepBody798_214 crepBody798_215

def crepBody798_217 : CrepProg (BitVec 64) :=
.seq crepBody798_205 crepBody798_216

def crepBody798_218 : CrepProg (BitVec 64) :=
.dec 47 (Flapjack.CrepExp.const 0#64) crepBody798_217

def crepBody798_219 : CrepProg (BitVec 64) :=
.seq crepBody798_204 crepBody798_218

def crepBody798_220 : CrepProg (BitVec 64) :=
.dec 46 (Flapjack.CrepExp.const 0#64) crepBody798_219

def crepBody798_221 : CrepProg (BitVec 64) :=
.dec 45 (Flapjack.CrepExp.const 0#64) crepBody798_220

def crepBody798_222 : CrepProg (BitVec 64) :=
.seq crepBody798_203 crepBody798_221

def crepBody798_223 : CrepProg (BitVec 64) :=
.seq crepBody798_198 crepBody798_222

def crepBody798_224 : CrepProg (BitVec 64) :=
.dec 44 (Flapjack.CrepExp.const 0#64) crepBody798_223

def crepBody798_225 : CrepProg (BitVec 64) :=
.seq crepBody798_197 crepBody798_224

def crepBody798_226 : CrepProg (BitVec 64) :=
.seq crepBody798_194 crepBody798_225

def crepBody798_227 : CrepProg (BitVec 64) :=
.dec 43 (Flapjack.CrepExp.const 0#64) crepBody798_226

def crepBody798_228 : CrepProg (BitVec 64) :=
.dec 42 (Flapjack.CrepExp.const 0#64) crepBody798_227

def crepBody798_229 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody798_228

def crepBody798_230 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody798_229

def crepBody798_231 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody798_230

def crepBody798_232 : CrepProg (BitVec 64) :=
.seq crepBody798_193 crepBody798_231

def crepBody798_233 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 0#64])) crepBody798_232

def crepBody798_234 : CrepProg (BitVec 64) :=
.seq crepBody798_178 crepBody798_233

def crepBody798_235 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody798_234

def crepBody798_236 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
      Flapjack.CrepExp.const 24#64])) crepBody798_235

def crepBody798_237 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
      Flapjack.CrepExp.const 16#64])) crepBody798_236

def crepBody798_238 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64],
      Flapjack.CrepExp.const 8#64])) crepBody798_237

def crepBody798_239 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 16#64])) crepBody798_238

def crepBody798_240 : CrepProg (BitVec 64) :=
.seq crepBody798_177 crepBody798_239

def crepBody798_241 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.var 27) crepBody798_240

def crepBody798_242 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.var 26) crepBody798_241

def crepBody798_243 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.var 25) crepBody798_242

def crepBody798_244 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.var 24) crepBody798_243

def crepBody798_245 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.var 23) crepBody798_244

def crepBody798_246 : CrepProg (BitVec 64) :=
.seq crepBody798_101 crepBody798_245

def crepBody798_247 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody798_246

def crepBody798_248 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody798_247

def crepBody798_249 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody798_248

def crepBody798_250 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody798_249

def crepBody798_251 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody798_250

def crepBody798_252 : CrepProg (BitVec 64) :=
.seq crepBody798_100 crepBody798_251

def crepBody798_253 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody798_252

def crepBody798_254 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody798_253

def crepBody798_255 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody798_254

def crepBody798_256 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody798_255

def crepBody798_257 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody798_256

def crepBody798_258 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody798_257

def crepBody798_259 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody798_258

def crepBody798_260 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody798_259

def crepBody798_261 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody798_260

def crepBody798_262 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 24#64])) crepBody798_261

def crepBody798_263 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 16#64])) crepBody798_262

def crepBody798_264 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
          Flapjack.CrepExp.const 48#64],
      Flapjack.CrepExp.const 8#64])) crepBody798_263

def crepBody798_265 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
      Flapjack.CrepExp.const 48#64])) crepBody798_264

def crepBody798_266 : CrepProg (BitVec 64) :=
.seq crepBody798_18 crepBody798_265

def crepBody798_267 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody798_266

def crepBody798_268 : CrepProg (BitVec 64) :=
.seq crepBody798_17 crepBody798_267

def crepBody798_269 : CrepProg (BitVec 64) :=
.seq crepBody798_12 crepBody798_268

def crepBody798_270 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody798_269

def crepBody798_271 : CrepProg (BitVec 64) :=
.seq crepBody798_11 crepBody798_270

def crepBody798_272 : CrepProg (BitVec 64) :=
.seq crepBody798_0 crepBody798_271

def crepBody798_273 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody798_272

def crepBody798_274 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 144#64])) crepBody798_273

def crepBody798_275 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.const 2752512#64,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 48#64])]) crepBody798_274

def crepBody798_276 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 8#64])]) crepBody798_275

def crepBody798_277 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.var 2,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.load
            (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 416#64]),
          Flapjack.CrepExp.const 0#64])]) crepBody798_276

def crepBody798_278 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 408#64]),
      Flapjack.CrepExp.const 8#64])) crepBody798_277

def data798 : CrepProg (BitVec 64) := crepBody798_278
def output798 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 116#8, 114#8, 97#8, 110#8, 115#8, 97#8, 99#8, 116#8, 105#8, 111#8, 110#8], [0, 1], crepProgToHOL data798)
end InitECandidate.Proofs.FrontendStages.Crep
