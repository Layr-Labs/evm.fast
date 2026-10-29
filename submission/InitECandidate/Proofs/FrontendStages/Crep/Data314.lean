import InitECandidate.Proofs.FrontendStages.Crep.Translate298
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody314_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody314_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 12)

def crepBody314_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody314_3 : CrepProg (BitVec 64) :=
.seq crepBody314_1 crepBody314_2

def crepBody314_4 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 40#64) crepBody314_3

def crepBody314_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.raise 6#64

def crepBody314_6 : CrepProg (BitVec 64) :=
.seq crepBody314_4 crepBody314_5

def crepBody314_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody314_6 crepBody314_2

def crepBody314_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "u256_lt"
  [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6,
    Flapjack.CrepExp.const 13822214165235122497#64, Flapjack.CrepExp.const 13451932020343611451#64,
    Flapjack.CrepExp.const 18446744073709551614#64, Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody314_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 13)

def crepBody314_10 : CrepProg (BitVec 64) :=
.seq crepBody314_9 crepBody314_2

def crepBody314_11 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 40#64) crepBody314_10

def crepBody314_12 : CrepProg (BitVec 64) :=
.seq crepBody314_11 crepBody314_5

def crepBody314_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 0#64)) crepBody314_12 crepBody314_2

def crepBody314_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody314_15 : CrepProg (BitVec 64) :=
.seq crepBody314_13 crepBody314_14

def crepBody314_16 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 41#64) crepBody314_10

def crepBody314_17 : CrepProg (BitVec 64) :=
.seq crepBody314_16 crepBody314_5

def crepBody314_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody314_17 crepBody314_2

def crepBody314_19 : CrepProg (BitVec 64) :=
.seq crepBody314_15 crepBody314_18

def crepBody314_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "u256_gt"
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10,
    Flapjack.CrepExp.const 16134479119472337056#64, Flapjack.CrepExp.const 6725966010171805725#64,
    Flapjack.CrepExp.const 18446744073709551615#64, Flapjack.CrepExp.const 9223372036854775807#64]

def crepBody314_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 14)

def crepBody314_22 : CrepProg (BitVec 64) :=
.seq crepBody314_21 crepBody314_2

def crepBody314_23 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 41#64) crepBody314_22

def crepBody314_24 : CrepProg (BitVec 64) :=
.seq crepBody314_23 crepBody314_5

def crepBody314_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 0#64)) crepBody314_24 crepBody314_2

def crepBody314_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "u256_fits_word"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody314_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "signing_hash_pre155" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]

def crepBody314_28 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody314_27

def crepBody314_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 27#64]]

def crepBody314_30 : CrepProg (BitVec 64) :=
.seq crepBody314_28 crepBody314_29

def crepBody314_31 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 27#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 28#64)])) crepBody314_30 crepBody314_2

def crepBody314_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64)) crepBody314_31 crepBody314_2

def crepBody314_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24, 25, 26, 27], none)) "u256_add"
  [Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23]

def crepBody314_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28, 29, 30, 31], none)) "u256_add"
  [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27,
    Flapjack.CrepExp.const 35#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody314_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([32, 33, 34, 35], none)) "u256_add"
  [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27,
    Flapjack.CrepExp.const 36#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody314_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([36], none)) "u256_eq"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 28, Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 30, Flapjack.CrepExp.var 31]

def crepBody314_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([37], none)) "u256_eq"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18,
    Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33, Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35]

def crepBody314_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 38)

def crepBody314_39 : CrepProg (BitVec 64) :=
.seq crepBody314_38 crepBody314_2

def crepBody314_40 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 42#64) crepBody314_39

def crepBody314_41 : CrepProg (BitVec 64) :=
.seq crepBody314_40 crepBody314_5

def crepBody314_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 36) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 37) (Flapjack.CrepExp.const 0#64))]) crepBody314_41 crepBody314_2

def crepBody314_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([38], none)) "signing_hash_155"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]

def crepBody314_44 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.const 0#64) crepBody314_43

def crepBody314_45 : CrepProg (BitVec 64) :=
.seq crepBody314_42 crepBody314_44

def crepBody314_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 37]

def crepBody314_47 : CrepProg (BitVec 64) :=
.seq crepBody314_45 crepBody314_46

def crepBody314_48 : CrepProg (BitVec 64) :=
.seq crepBody314_37 crepBody314_47

def crepBody314_49 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.const 0#64) crepBody314_48

def crepBody314_50 : CrepProg (BitVec 64) :=
.seq crepBody314_36 crepBody314_49

def crepBody314_51 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.const 0#64) crepBody314_50

def crepBody314_52 : CrepProg (BitVec 64) :=
.seq crepBody314_35 crepBody314_51

def crepBody314_53 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.const 0#64) crepBody314_52

def crepBody314_54 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.const 0#64) crepBody314_53

def crepBody314_55 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.const 0#64) crepBody314_54

def crepBody314_56 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.const 0#64) crepBody314_55

def crepBody314_57 : CrepProg (BitVec 64) :=
.seq crepBody314_34 crepBody314_56

def crepBody314_58 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody314_57

def crepBody314_59 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody314_58

def crepBody314_60 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody314_59

def crepBody314_61 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody314_60

def crepBody314_62 : CrepProg (BitVec 64) :=
.seq crepBody314_33 crepBody314_61

def crepBody314_63 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody314_62

def crepBody314_64 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody314_63

def crepBody314_65 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody314_64

def crepBody314_66 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody314_65

def crepBody314_67 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody314_66

def crepBody314_68 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody314_67

def crepBody314_69 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody314_68

def crepBody314_70 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 1) crepBody314_69

def crepBody314_71 : CrepProg (BitVec 64) :=
.seq crepBody314_32 crepBody314_70

def crepBody314_72 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 0#64)) crepBody314_71 crepBody314_2

def crepBody314_73 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.storeGlob (0#5) (Flapjack.CrepExp.var 20)

def crepBody314_74 : CrepProg (BitVec 64) :=
.seq crepBody314_73 crepBody314_2

def crepBody314_75 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 43#64) crepBody314_74

def crepBody314_76 : CrepProg (BitVec 64) :=
.seq crepBody314_75 crepBody314_5

def crepBody314_77 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64)) crepBody314_76 crepBody314_2

def crepBody314_78 : CrepProg (BitVec 64) :=
.seq crepBody314_72 crepBody314_77

def crepBody314_79 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1#64) (Flapjack.CrepExp.var 15)) crepBody314_76 crepBody314_2

def crepBody314_80 : CrepProg (BitVec 64) :=
.seq crepBody314_78 crepBody314_79

def crepBody314_81 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "signing_hash_2930" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]

def crepBody314_82 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody314_81

def crepBody314_83 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 1#64)) crepBody314_82 crepBody314_2

def crepBody314_84 : CrepProg (BitVec 64) :=
.seq crepBody314_80 crepBody314_83

def crepBody314_85 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "signing_hash_1559" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]

def crepBody314_86 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody314_85

def crepBody314_87 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 2#64)) crepBody314_86 crepBody314_2

def crepBody314_88 : CrepProg (BitVec 64) :=
.seq crepBody314_84 crepBody314_87

def crepBody314_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "signing_hash_4844" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]

def crepBody314_90 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody314_89

def crepBody314_91 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 3#64)) crepBody314_90 crepBody314_2

def crepBody314_92 : CrepProg (BitVec 64) :=
.seq crepBody314_88 crepBody314_91

def crepBody314_93 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "signing_hash_7702" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 2]

def crepBody314_94 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody314_93

def crepBody314_95 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 4#64)) crepBody314_94 crepBody314_2

def crepBody314_96 : CrepProg (BitVec 64) :=
.seq crepBody314_92 crepBody314_95

def crepBody314_97 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 15]

def crepBody314_98 : CrepProg (BitVec 64) :=
.seq crepBody314_96 crepBody314_97

def crepBody314_99 : CrepProg (BitVec 64) :=
.seq crepBody314_26 crepBody314_98

def crepBody314_100 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody314_99

def crepBody314_101 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
      Flapjack.CrepExp.const 24#64])) crepBody314_100

def crepBody314_102 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
      Flapjack.CrepExp.const 16#64])) crepBody314_101

def crepBody314_103 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64],
      Flapjack.CrepExp.const 8#64])) crepBody314_102

def crepBody314_104 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 288#64])) crepBody314_103

def crepBody314_105 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody314_104

def crepBody314_106 : CrepProg (BitVec 64) :=
.seq crepBody314_25 crepBody314_105

def crepBody314_107 : CrepProg (BitVec 64) :=
.seq crepBody314_20 crepBody314_106

def crepBody314_108 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody314_107

def crepBody314_109 : CrepProg (BitVec 64) :=
.seq crepBody314_19 crepBody314_108

def crepBody314_110 : CrepProg (BitVec 64) :=
.seq crepBody314_8 crepBody314_109

def crepBody314_111 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody314_110

def crepBody314_112 : CrepProg (BitVec 64) :=
.seq crepBody314_7 crepBody314_111

def crepBody314_113 : CrepProg (BitVec 64) :=
.seq crepBody314_0 crepBody314_112

def crepBody314_114 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody314_113

def crepBody314_115 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
      Flapjack.CrepExp.const 24#64])) crepBody314_114

def crepBody314_116 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
      Flapjack.CrepExp.const 16#64])) crepBody314_115

def crepBody314_117 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64],
      Flapjack.CrepExp.const 8#64])) crepBody314_116

def crepBody314_118 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 352#64])) crepBody314_117

def crepBody314_119 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
      Flapjack.CrepExp.const 24#64])) crepBody314_118

def crepBody314_120 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
      Flapjack.CrepExp.const 16#64])) crepBody314_119

def crepBody314_121 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64],
      Flapjack.CrepExp.const 8#64])) crepBody314_120

def crepBody314_122 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 320#64])) crepBody314_121

def data314 : CrepProg (BitVec 64) := crepBody314_122
def output314 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 105#8, 103#8, 110#8, 97#8, 116#8, 117#8, 114#8, 101#8, 95#8, 114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8,
    121#8, 95#8, 112#8, 97#8, 114#8, 97#8, 109#8, 101#8, 116#8, 101#8, 114#8, 115#8], [0, 1, 2], crepProgToHOL data314)
end InitECandidate.Proofs.FrontendStages.Crep
