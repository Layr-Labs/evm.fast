import InitECandidate.Proofs.FrontendStages.Crep.Translate168
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody184_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.shMem Flapjack.WordMemOp.load 1 (Flapjack.CrepExp.const 1073741832#64)

def crepBody184_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody184_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody184_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 1073741808#64) (Flapjack.CrepExp.var 1)) crepBody184_1 crepBody184_2

def crepBody184_4 : CrepProg (BitVec 64) :=
.seq crepBody184_0 crepBody184_3

def crepBody184_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "ssz_fail" [Flapjack.CrepExp.const 1#64]

def crepBody184_6 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody184_5

def crepBody184_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 2#64)) crepBody184_6 crepBody184_2

def crepBody184_8 : CrepProg (BitVec 64) :=
.seq crepBody184_4 crepBody184_7

def crepBody184_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "host_input_byte" [Flapjack.CrepExp.const 0#64]

def crepBody184_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "host_input_byte" [Flapjack.CrepExp.const 1#64]

def crepBody184_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "ssz_fail" [Flapjack.CrepExp.const 2#64]

def crepBody184_12 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody184_11

def crepBody184_13 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 2) (Flapjack.CrepExp.const 21#64),
      Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)])) crepBody184_12 crepBody184_2

def crepBody184_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "ssz_fail" [Flapjack.CrepExp.const 80#64]

def crepBody184_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody184_14

def crepBody184_16 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 16#64)) crepBody184_15 crepBody184_2

def crepBody184_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "host_input_le32" [Flapjack.CrepExp.const 2#64]

def crepBody184_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "host_input_le32" [Flapjack.CrepExp.const 6#64]

def crepBody184_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody184_20 : CrepProg (BitVec 64) :=
.seq crepBody184_19 crepBody184_2

def crepBody184_21 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 5) crepBody184_20

def crepBody184_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64])) crepBody184_21

def crepBody184_23 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody184_20

def crepBody184_24 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 8#64]) crepBody184_23

def crepBody184_25 : CrepProg (BitVec 64) :=
.seq crepBody184_22 crepBody184_24

def crepBody184_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "ssz_check_offsets"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.var 4]

def crepBody184_27 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody184_26

def crepBody184_28 : CrepProg (BitVec 64) :=
.seq crepBody184_25 crepBody184_27

def crepBody184_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "ssz_fail" [Flapjack.CrepExp.const 81#64]

def crepBody184_30 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody184_29

def crepBody184_31 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 44#64)) crepBody184_30 crepBody184_2

def crepBody184_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "host_input_le32" [Flapjack.CrepExp.var 8]

def crepBody184_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "host_input_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 4#64]]

def crepBody184_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "host_input_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 40#64]]

def crepBody184_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody184_36 : CrepProg (BitVec 64) :=
.seq crepBody184_35 crepBody184_2

def crepBody184_37 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 9) crepBody184_36

def crepBody184_38 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64])) crepBody184_37

def crepBody184_39 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 10) crepBody184_36

def crepBody184_40 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 8#64]) crepBody184_39

def crepBody184_41 : CrepProg (BitVec 64) :=
.seq crepBody184_38 crepBody184_40

def crepBody184_42 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 11) crepBody184_36

def crepBody184_43 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 16#64]) crepBody184_42

def crepBody184_44 : CrepProg (BitVec 64) :=
.seq crepBody184_41 crepBody184_43

def crepBody184_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "ssz_check_offsets"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 44#64, Flapjack.CrepExp.var 7]

def crepBody184_46 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody184_45

def crepBody184_47 : CrepProg (BitVec 64) :=
.seq crepBody184_44 crepBody184_46

def crepBody184_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13], none)) "ssz_fail" [Flapjack.CrepExp.const 50#64]

def crepBody184_49 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody184_48

def crepBody184_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 540#64)) crepBody184_49 crepBody184_2

def crepBody184_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14], none)) "host_input_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 436#64]]

def crepBody184_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "host_input_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 504#64]]

def crepBody184_53 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "host_input_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 508#64]]

def crepBody184_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17], none)) "host_input_le32"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 528#64]]

def crepBody184_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.var 19)

def crepBody184_56 : CrepProg (BitVec 64) :=
.seq crepBody184_55 crepBody184_2

def crepBody184_57 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 14) crepBody184_56

def crepBody184_58 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64])) crepBody184_57

def crepBody184_59 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 15) crepBody184_56

def crepBody184_60 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 8#64]) crepBody184_59

def crepBody184_61 : CrepProg (BitVec 64) :=
.seq crepBody184_58 crepBody184_60

def crepBody184_62 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 16) crepBody184_56

def crepBody184_63 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 16#64]) crepBody184_62

def crepBody184_64 : CrepProg (BitVec 64) :=
.seq crepBody184_61 crepBody184_63

def crepBody184_65 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.var 17) crepBody184_56

def crepBody184_66 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 24#64]) crepBody184_65

def crepBody184_67 : CrepProg (BitVec 64) :=
.seq crepBody184_64 crepBody184_66

def crepBody184_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "ssz_check_offsets"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.const 4#64, Flapjack.CrepExp.const 540#64, Flapjack.CrepExp.var 12]

def crepBody184_69 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody184_68

def crepBody184_70 : CrepProg (BitVec 64) :=
.seq crepBody184_67 crepBody184_69

def crepBody184_71 : CrepProg (BitVec 64) :=
.seq crepBody184_70 crepBody184_1

def crepBody184_72 : CrepProg (BitVec 64) :=
.seq crepBody184_54 crepBody184_71

def crepBody184_73 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody184_72

def crepBody184_74 : CrepProg (BitVec 64) :=
.seq crepBody184_53 crepBody184_73

def crepBody184_75 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody184_74

def crepBody184_76 : CrepProg (BitVec 64) :=
.seq crepBody184_52 crepBody184_75

def crepBody184_77 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody184_76

def crepBody184_78 : CrepProg (BitVec 64) :=
.seq crepBody184_51 crepBody184_77

def crepBody184_79 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody184_78

def crepBody184_80 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]) crepBody184_79

def crepBody184_81 : CrepProg (BitVec 64) :=
.seq crepBody184_50 crepBody184_80

def crepBody184_82 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]) crepBody184_81

def crepBody184_83 : CrepProg (BitVec 64) :=
.seq crepBody184_47 crepBody184_82

def crepBody184_84 : CrepProg (BitVec 64) :=
.seq crepBody184_34 crepBody184_83

def crepBody184_85 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody184_84

def crepBody184_86 : CrepProg (BitVec 64) :=
.seq crepBody184_33 crepBody184_85

def crepBody184_87 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody184_86

def crepBody184_88 : CrepProg (BitVec 64) :=
.seq crepBody184_32 crepBody184_87

def crepBody184_89 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody184_88

def crepBody184_90 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.var 5]) crepBody184_89

def crepBody184_91 : CrepProg (BitVec 64) :=
.seq crepBody184_31 crepBody184_90

def crepBody184_92 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 5]) crepBody184_91

def crepBody184_93 : CrepProg (BitVec 64) :=
.seq crepBody184_28 crepBody184_92

def crepBody184_94 : CrepProg (BitVec 64) :=
.seq crepBody184_18 crepBody184_93

def crepBody184_95 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody184_94

def crepBody184_96 : CrepProg (BitVec 64) :=
.seq crepBody184_17 crepBody184_95

def crepBody184_97 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody184_96

def crepBody184_98 : CrepProg (BitVec 64) :=
.seq crepBody184_16 crepBody184_97

def crepBody184_99 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 2#64]) crepBody184_98

def crepBody184_100 : CrepProg (BitVec 64) :=
.seq crepBody184_13 crepBody184_99

def crepBody184_101 : CrepProg (BitVec 64) :=
.seq crepBody184_10 crepBody184_100

def crepBody184_102 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody184_101

def crepBody184_103 : CrepProg (BitVec 64) :=
.seq crepBody184_9 crepBody184_102

def crepBody184_104 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody184_103

def crepBody184_105 : CrepProg (BitVec 64) :=
.seq crepBody184_8 crepBody184_104

def crepBody184_106 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody184_105

def data184 : CrepProg (BitVec 64) := crepBody184_106
def output184 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 99#8, 104#8, 101#8, 99#8, 107#8, 95#8, 104#8, 111#8, 115#8, 116#8, 95#8, 115#8, 115#8, 122#8,
    95#8, 104#8, 101#8, 97#8, 100#8, 101#8, 114#8], [], crepProgToHOL data184)
end InitECandidate.Proofs.FrontendStages.Crep
