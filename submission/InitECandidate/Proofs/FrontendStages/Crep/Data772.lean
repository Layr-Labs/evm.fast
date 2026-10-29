import InitECandidate.Proofs.FrontendStages.Crep.Translate756
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody772_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "buffer_read"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 96#64,
    Flapjack.CrepExp.var 4]

def crepBody772_1 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody772_0

def crepBody772_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5, 6, 7, 8], none)) "u256_from_be" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]

def crepBody772_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "sat_word"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8]

def crepBody772_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 10)

def crepBody772_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody772_6 : CrepProg (BitVec 64) :=
.seq crepBody772_4 crepBody772_5

def crepBody772_7 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 4#64) crepBody772_6

def crepBody772_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 8#64

def crepBody772_9 : CrepProg (BitVec 64) :=
.seq crepBody772_7 crepBody772_8

def crepBody772_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64) (Flapjack.CrepExp.var 9)) crepBody772_9 crepBody772_5

def crepBody772_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 32#64]

def crepBody772_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "sat_word"
  [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody772_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 15)

def crepBody772_14 : CrepProg (BitVec 64) :=
.seq crepBody772_13 crepBody772_5

def crepBody772_15 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 4#64) crepBody772_14

def crepBody772_16 : CrepProg (BitVec 64) :=
.seq crepBody772_15 crepBody772_8

def crepBody772_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64) (Flapjack.CrepExp.var 14)) crepBody772_16 crepBody772_5

def crepBody772_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.const 32#64]

def crepBody772_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "sat_word"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody772_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 20)

def crepBody772_21 : CrepProg (BitVec 64) :=
.seq crepBody772_20 crepBody772_5

def crepBody772_22 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 4#64) crepBody772_21

def crepBody772_23 : CrepProg (BitVec 64) :=
.seq crepBody772_22 crepBody772_8

def crepBody772_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1024#64) (Flapjack.CrepExp.var 19)) crepBody772_23 crepBody772_5

def crepBody772_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21], none)) "min" [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.var 14]

def crepBody772_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "buffer_read"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21,
    Flapjack.CrepExp.var 4]

def crepBody772_27 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody772_26

def crepBody772_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22, 23, 24, 25], none)) "u256_from_be" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 21]

def crepBody772_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "modexp_gas"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25]

def crepBody772_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "charge_gas" [Flapjack.CrepExp.var 26]

def crepBody772_31 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody772_30

def crepBody772_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "alloc" [Flapjack.CrepExp.const 8#64]

def crepBody772_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 28) (Flapjack.CrepExp.var 29)

def crepBody772_34 : CrepProg (BitVec 64) :=
.seq crepBody772_33 crepBody772_5

def crepBody772_35 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.var 27) crepBody772_34

def crepBody772_36 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody772_35

def crepBody772_37 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody772_34

def crepBody772_38 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody772_37

def crepBody772_39 : CrepProg (BitVec 64) :=
.seq crepBody772_36 crepBody772_38

def crepBody772_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody772_41 : CrepProg (BitVec 64) :=
.seq crepBody772_39 crepBody772_40

def crepBody772_42 : CrepProg (BitVec 64) :=
.seq crepBody772_32 crepBody772_41

def crepBody772_43 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody772_42

def crepBody772_44 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64))]) crepBody772_43 crepBody772_5

def crepBody772_45 : CrepProg (BitVec 64) :=
.seq crepBody772_31 crepBody772_44

def crepBody772_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 8#64]]

def crepBody772_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "heap_mark" []

def crepBody772_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]]

def crepBody772_49 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 8#64]]

def crepBody772_50 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "alloc"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 19, Flapjack.CrepExp.const 8#64]]

def crepBody772_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "buffer_read"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.var 29]

def crepBody772_52 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody772_51

def crepBody772_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "buffer_read"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 30]

def crepBody772_54 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody772_53

def crepBody772_55 : CrepProg (BitVec 64) :=
.seq crepBody772_52 crepBody772_54

def crepBody772_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "buffer_read"
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 14], Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.var 31]

def crepBody772_57 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody772_56

def crepBody772_58 : CrepProg (BitVec 64) :=
.seq crepBody772_55 crepBody772_57

def crepBody772_59 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "modexp"
  [Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 27]

def crepBody772_60 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody772_59

def crepBody772_61 : CrepProg (BitVec 64) :=
.seq crepBody772_58 crepBody772_60

def crepBody772_62 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32], none)) "heap_release" [Flapjack.CrepExp.var 28]

def crepBody772_63 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody772_62

def crepBody772_64 : CrepProg (BitVec 64) :=
.seq crepBody772_61 crepBody772_63

def crepBody772_65 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 32) (Flapjack.CrepExp.var 33)

def crepBody772_66 : CrepProg (BitVec 64) :=
.seq crepBody772_65 crepBody772_5

def crepBody772_67 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.var 27) crepBody772_66

def crepBody772_68 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody772_67

def crepBody772_69 : CrepProg (BitVec 64) :=
.seq crepBody772_64 crepBody772_68

def crepBody772_70 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.var 19) crepBody772_66

def crepBody772_71 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody772_70

def crepBody772_72 : CrepProg (BitVec 64) :=
.seq crepBody772_69 crepBody772_71

def crepBody772_73 : CrepProg (BitVec 64) :=
.seq crepBody772_72 crepBody772_40

def crepBody772_74 : CrepProg (BitVec 64) :=
.seq crepBody772_50 crepBody772_73

def crepBody772_75 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody772_74

def crepBody772_76 : CrepProg (BitVec 64) :=
.seq crepBody772_49 crepBody772_75

def crepBody772_77 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody772_76

def crepBody772_78 : CrepProg (BitVec 64) :=
.seq crepBody772_48 crepBody772_77

def crepBody772_79 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody772_78

def crepBody772_80 : CrepProg (BitVec 64) :=
.seq crepBody772_47 crepBody772_79

def crepBody772_81 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody772_80

def crepBody772_82 : CrepProg (BitVec 64) :=
.seq crepBody772_46 crepBody772_81

def crepBody772_83 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody772_82

def crepBody772_84 : CrepProg (BitVec 64) :=
.seq crepBody772_45 crepBody772_83

def crepBody772_85 : CrepProg (BitVec 64) :=
.seq crepBody772_29 crepBody772_84

def crepBody772_86 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody772_85

def crepBody772_87 : CrepProg (BitVec 64) :=
.seq crepBody772_28 crepBody772_86

def crepBody772_88 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody772_87

def crepBody772_89 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody772_88

def crepBody772_90 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody772_89

def crepBody772_91 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody772_90

def crepBody772_92 : CrepProg (BitVec 64) :=
.seq crepBody772_27 crepBody772_91

def crepBody772_93 : CrepProg (BitVec 64) :=
.seq crepBody772_25 crepBody772_92

def crepBody772_94 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody772_93

def crepBody772_95 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 96#64, Flapjack.CrepExp.var 9]) crepBody772_94

def crepBody772_96 : CrepProg (BitVec 64) :=
.seq crepBody772_24 crepBody772_95

def crepBody772_97 : CrepProg (BitVec 64) :=
.seq crepBody772_19 crepBody772_96

def crepBody772_98 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody772_97

def crepBody772_99 : CrepProg (BitVec 64) :=
.seq crepBody772_18 crepBody772_98

def crepBody772_100 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody772_99

def crepBody772_101 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody772_100

def crepBody772_102 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody772_101

def crepBody772_103 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody772_102

def crepBody772_104 : CrepProg (BitVec 64) :=
.seq crepBody772_17 crepBody772_103

def crepBody772_105 : CrepProg (BitVec 64) :=
.seq crepBody772_12 crepBody772_104

def crepBody772_106 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody772_105

def crepBody772_107 : CrepProg (BitVec 64) :=
.seq crepBody772_11 crepBody772_106

def crepBody772_108 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody772_107

def crepBody772_109 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody772_108

def crepBody772_110 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody772_109

def crepBody772_111 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody772_110

def crepBody772_112 : CrepProg (BitVec 64) :=
.seq crepBody772_10 crepBody772_111

def crepBody772_113 : CrepProg (BitVec 64) :=
.seq crepBody772_3 crepBody772_112

def crepBody772_114 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody772_113

def crepBody772_115 : CrepProg (BitVec 64) :=
.seq crepBody772_2 crepBody772_114

def crepBody772_116 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody772_115

def crepBody772_117 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody772_116

def crepBody772_118 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody772_117

def crepBody772_119 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody772_118

def crepBody772_120 : CrepProg (BitVec 64) :=
.seq crepBody772_1 crepBody772_119

def crepBody772_121 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 272#64])) crepBody772_120

def crepBody772_122 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64])) crepBody772_121

def crepBody772_123 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64])) crepBody772_122

def crepBody772_124 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody772_123

def data772 : CrepProg (BitVec 64) := crepBody772_124
def output772 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [112#8, 114#8, 101#8, 95#8, 109#8, 111#8, 100#8, 101#8, 120#8, 112#8], [], crepProgToHOL data772)
end InitECandidate.Proofs.FrontendStages.Crep
