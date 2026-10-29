import InitECandidate.Proofs.FrontendStages.Crep.Translate253
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody269_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody269_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody269_2 : CrepProg (BitVec 64) :=
.seq crepBody269_0 crepBody269_1

def crepBody269_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "mpt_fail" [Flapjack.CrepExp.const 20#64]

def crepBody269_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody269_3

def crepBody269_5 : CrepProg (BitVec 64) :=
.seq crepBody269_2 crepBody269_4

def crepBody269_6 : CrepProg (BitVec 64) :=
.call (some (([3, 4, 5, 6]), some ((1#64), crepBody269_5))) ("rlp_decode_fully") ([Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1])

def crepBody269_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 1#64)) crepBody269_4 crepBody269_1

def crepBody269_8 : CrepProg (BitVec 64) :=
.seq crepBody269_6 crepBody269_7

def crepBody269_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9], none)) "rlp_list_to_slices" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody269_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "mpt_fail" [Flapjack.CrepExp.const 20#64]

def crepBody269_11 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody269_10

def crepBody269_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 4#64)) crepBody269_11 crepBody269_1

def crepBody269_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody269_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody269_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 2#64, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody269_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23, 24, 25, 26], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 3#64, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody269_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "mpt_fail" [Flapjack.CrepExp.const 20#64]

def crepBody269_18 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody269_17

def crepBody269_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 23])
  (Flapjack.CrepExp.const 0#64)) crepBody269_18 crepBody269_1

def crepBody269_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "mpt_fail" [Flapjack.CrepExp.const 21#64]

def crepBody269_21 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody269_20

def crepBody269_22 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 8#64) (Flapjack.CrepExp.var 13)) crepBody269_21 crepBody269_1

def crepBody269_23 : CrepProg (BitVec 64) :=
.seq crepBody269_19 crepBody269_22

def crepBody269_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27 (Flapjack.CrepExp.var 29)

def crepBody269_25 : CrepProg (BitVec 64) :=
.seq crepBody269_24 crepBody269_1

def crepBody269_26 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.const 8#64),
    Flapjack.CrepExp.loadByte
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 28])]) crepBody269_25

def crepBody269_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 28 (Flapjack.CrepExp.var 29)

def crepBody269_28 : CrepProg (BitVec 64) :=
.seq crepBody269_27 crepBody269_1

def crepBody269_29 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 28, Flapjack.CrepExp.const 1#64]) crepBody269_28

def crepBody269_30 : CrepProg (BitVec 64) :=
.seq crepBody269_26 crepBody269_29

def crepBody269_31 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 28) (Flapjack.CrepExp.var 13)) crepBody269_30

def crepBody269_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 29) (Flapjack.CrepExp.var 30)

def crepBody269_33 : CrepProg (BitVec 64) :=
.seq crepBody269_32 crepBody269_1

def crepBody269_34 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.var 27) crepBody269_33

def crepBody269_35 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 0#64]) crepBody269_34

def crepBody269_36 : CrepProg (BitVec 64) :=
.seq crepBody269_31 crepBody269_35

def crepBody269_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "mpt_fail" [Flapjack.CrepExp.const 22#64]

def crepBody269_38 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody269_37

def crepBody269_39 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 32#64) (Flapjack.CrepExp.var 17)) crepBody269_38 crepBody269_1

def crepBody269_40 : CrepProg (BitVec 64) :=
.seq crepBody269_36 crepBody269_39

def crepBody269_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "memzero"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64],
    Flapjack.CrepExp.const 32#64]

def crepBody269_42 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody269_41

def crepBody269_43 : CrepProg (BitVec 64) :=
.seq crepBody269_40 crepBody269_42

def crepBody269_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 28 (Flapjack.CrepExp.const 0#64)

def crepBody269_45 : CrepProg (BitVec 64) :=
.seq crepBody269_44 crepBody269_1

def crepBody269_46 : CrepProg (BitVec 64) :=
.seq crepBody269_43 crepBody269_45

def crepBody269_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 31) (Flapjack.CrepExp.var 32)

def crepBody269_48 : CrepProg (BitVec 64) :=
.seq crepBody269_47 crepBody269_1

def crepBody269_49 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.load (Flapjack.CrepExp.var 30),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl
      (Flapjack.CrepExp.loadByte
        (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 28]))
      (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
        [Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 7#64],
          Flapjack.CrepExp.const 8#64])]) crepBody269_48

def crepBody269_50 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.var 30) crepBody269_49

def crepBody269_51 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 28 (Flapjack.CrepExp.var 31)

def crepBody269_52 : CrepProg (BitVec 64) :=
.seq crepBody269_51 crepBody269_1

def crepBody269_53 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 28, Flapjack.CrepExp.const 1#64]) crepBody269_52

def crepBody269_54 : CrepProg (BitVec 64) :=
.seq crepBody269_50 crepBody269_53

def crepBody269_55 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 8#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 29) (Flapjack.CrepExp.const 3#64),
        Flapjack.CrepExp.const 8#64]]) crepBody269_54

def crepBody269_56 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.sub
  [Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 17, Flapjack.CrepExp.const 1#64],
    Flapjack.CrepExp.var 28]) crepBody269_55

def crepBody269_57 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 28) (Flapjack.CrepExp.var 17)) crepBody269_56

def crepBody269_58 : CrepProg (BitVec 64) :=
.seq crepBody269_46 crepBody269_57

def crepBody269_59 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 128#64])) crepBody269_33

def crepBody269_60 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 40#64]) crepBody269_59

def crepBody269_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "mpt_fail" [Flapjack.CrepExp.const 23#64]

def crepBody269_62 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody269_61

def crepBody269_63 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 32#64)) crepBody269_62 crepBody269_1

def crepBody269_64 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.var 20) crepBody269_33

def crepBody269_65 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 40#64]) crepBody269_64

def crepBody269_66 : CrepProg (BitVec 64) :=
.seq crepBody269_63 crepBody269_65

def crepBody269_67 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 21) (Flapjack.CrepExp.const 0#64)) crepBody269_60 crepBody269_66

def crepBody269_68 : CrepProg (BitVec 64) :=
.seq crepBody269_58 crepBody269_67

def crepBody269_69 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 136#64])) crepBody269_33

def crepBody269_70 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64]) crepBody269_69

def crepBody269_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "mpt_fail" [Flapjack.CrepExp.const 24#64]

def crepBody269_72 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody269_71

def crepBody269_73 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 32#64)) crepBody269_72 crepBody269_1

def crepBody269_74 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.var 24) crepBody269_33

def crepBody269_75 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 48#64]) crepBody269_74

def crepBody269_76 : CrepProg (BitVec 64) :=
.seq crepBody269_73 crepBody269_75

def crepBody269_77 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 0#64)) crepBody269_70 crepBody269_76

def crepBody269_78 : CrepProg (BitVec 64) :=
.seq crepBody269_68 crepBody269_77

def crepBody269_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody269_80 : CrepProg (BitVec 64) :=
.seq crepBody269_78 crepBody269_79

def crepBody269_81 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody269_80

def crepBody269_82 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody269_81

def crepBody269_83 : CrepProg (BitVec 64) :=
.seq crepBody269_23 crepBody269_82

def crepBody269_84 : CrepProg (BitVec 64) :=
.seq crepBody269_16 crepBody269_83

def crepBody269_85 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody269_84

def crepBody269_86 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody269_85

def crepBody269_87 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody269_86

def crepBody269_88 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody269_87

def crepBody269_89 : CrepProg (BitVec 64) :=
.seq crepBody269_15 crepBody269_88

def crepBody269_90 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody269_89

def crepBody269_91 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody269_90

def crepBody269_92 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody269_91

def crepBody269_93 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody269_92

def crepBody269_94 : CrepProg (BitVec 64) :=
.seq crepBody269_14 crepBody269_93

def crepBody269_95 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody269_94

def crepBody269_96 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody269_95

def crepBody269_97 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody269_96

def crepBody269_98 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody269_97

def crepBody269_99 : CrepProg (BitVec 64) :=
.seq crepBody269_13 crepBody269_98

def crepBody269_100 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody269_99

def crepBody269_101 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody269_100

def crepBody269_102 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody269_101

def crepBody269_103 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody269_102

def crepBody269_104 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody269_103

def crepBody269_105 : CrepProg (BitVec 64) :=
.seq crepBody269_12 crepBody269_104

def crepBody269_106 : CrepProg (BitVec 64) :=
.seq crepBody269_9 crepBody269_105

def crepBody269_107 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody269_106

def crepBody269_108 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody269_107

def crepBody269_109 : CrepProg (BitVec 64) :=
.seq crepBody269_8 crepBody269_108

def crepBody269_110 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody269_109

def crepBody269_111 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody269_110

def crepBody269_112 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody269_111

def crepBody269_113 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody269_112

def crepBody269_114 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody269_113

def data269 : CrepProg (BitVec 64) := crepBody269_114
def output269 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 97#8, 99#8, 99#8, 111#8, 117#8, 110#8, 116#8, 95#8, 102#8, 114#8,
    111#8, 109#8, 95#8, 108#8, 101#8, 97#8, 102#8], [0, 1, 2], crepProgToHOL data269)
end InitECandidate.Proofs.FrontendStages.Crep
