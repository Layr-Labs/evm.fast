import InitECandidate.Proofs.FrontendStages.Crep.Translate238
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody254_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 0#64)

def crepBody254_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody254_2 : CrepProg (BitVec 64) :=
.seq crepBody254_0 crepBody254_1

def crepBody254_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.const 0#64)

def crepBody254_4 : CrepProg (BitVec 64) :=
.seq crepBody254_3 crepBody254_1

def crepBody254_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "mpt_fail" [Flapjack.CrepExp.const 2#64]

def crepBody254_6 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody254_5

def crepBody254_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 0#64)) crepBody254_6 crepBody254_1

def crepBody254_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "node_invalidate" [Flapjack.CrepExp.var 0]

def crepBody254_9 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody254_8

def crepBody254_10 : CrepProg (BitVec 64) :=
.seq crepBody254_7 crepBody254_9

def crepBody254_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 0)

def crepBody254_12 : CrepProg (BitVec 64) :=
.seq crepBody254_11 crepBody254_1

def crepBody254_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "memeq"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]]

def crepBody254_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 0#64)) crepBody254_4 crepBody254_1

def crepBody254_15 : CrepProg (BitVec 64) :=
.seq crepBody254_13 crepBody254_14

def crepBody254_16 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody254_15

def crepBody254_17 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64]))
  (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3])) crepBody254_16 crepBody254_1

def crepBody254_18 : CrepProg (BitVec 64) :=
.seq crepBody254_12 crepBody254_17

def crepBody254_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "common_prefix_length"
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3],
    Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]]

def crepBody254_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "scratch_alloc" [Flapjack.CrepExp.const 40#64]

def crepBody254_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody254_22 : CrepProg (BitVec 64) :=
.seq crepBody254_21 crepBody254_1

def crepBody254_23 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 4) crepBody254_22

def crepBody254_24 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 0#64]) crepBody254_23

def crepBody254_25 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 0) crepBody254_22

def crepBody254_26 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]) crepBody254_25

def crepBody254_27 : CrepProg (BitVec 64) :=
.seq crepBody254_24 crepBody254_26

def crepBody254_28 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 2#64) crepBody254_22

def crepBody254_29 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64]) crepBody254_28

def crepBody254_30 : CrepProg (BitVec 64) :=
.seq crepBody254_27 crepBody254_29

def crepBody254_31 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 8) crepBody254_22

def crepBody254_32 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 24#64]) crepBody254_31

def crepBody254_33 : CrepProg (BitVec 64) :=
.seq crepBody254_30 crepBody254_32

def crepBody254_34 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 9) crepBody254_22

def crepBody254_35 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64]) crepBody254_34

def crepBody254_36 : CrepProg (BitVec 64) :=
.seq crepBody254_33 crepBody254_35

def crepBody254_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 11)

def crepBody254_38 : CrepProg (BitVec 64) :=
.seq crepBody254_37 crepBody254_1

def crepBody254_39 : CrepProg (BitVec 64) :=
.seq crepBody254_36 crepBody254_38

def crepBody254_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 12)

def crepBody254_41 : CrepProg (BitVec 64) :=
.seq crepBody254_40 crepBody254_1

def crepBody254_42 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody254_41

def crepBody254_43 : CrepProg (BitVec 64) :=
.seq crepBody254_39 crepBody254_42

def crepBody254_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 12)

def crepBody254_45 : CrepProg (BitVec 64) :=
.seq crepBody254_44 crepBody254_1

def crepBody254_46 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 9]) crepBody254_45

def crepBody254_47 : CrepProg (BitVec 64) :=
.seq crepBody254_43 crepBody254_46

def crepBody254_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.const 1#64)

def crepBody254_49 : CrepProg (BitVec 64) :=
.seq crepBody254_48 crepBody254_1

def crepBody254_50 : CrepProg (BitVec 64) :=
.seq crepBody254_47 crepBody254_49

def crepBody254_51 : CrepProg (BitVec 64) :=
.seq crepBody254_20 crepBody254_50

def crepBody254_52 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody254_51

def crepBody254_53 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 9)) crepBody254_12 crepBody254_52

def crepBody254_54 : CrepProg (BitVec 64) :=
.seq crepBody254_19 crepBody254_53

def crepBody254_55 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody254_54

def crepBody254_56 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody254_55

def crepBody254_57 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64])) crepBody254_56

def crepBody254_58 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody254_59 : CrepProg (BitVec 64) :=
.seq crepBody254_58 crepBody254_1

def crepBody254_60 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody254_59

def crepBody254_61 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64]) crepBody254_60

def crepBody254_62 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 168#64]) crepBody254_60

def crepBody254_63 : CrepProg (BitVec 64) :=
.seq crepBody254_61 crepBody254_62

def crepBody254_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "_collapse_branch" [Flapjack.CrepExp.var 0]

def crepBody254_65 : CrepProg (BitVec 64) :=
.seq crepBody254_63 crepBody254_64

def crepBody254_66 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 168#64]))
  (Flapjack.CrepExp.const 0#64)) crepBody254_12 crepBody254_65

def crepBody254_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "scratch_alloc" [Flapjack.CrepExp.const 40#64]

def crepBody254_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody254_69 : CrepProg (BitVec 64) :=
.seq crepBody254_68 crepBody254_1

def crepBody254_70 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 4) crepBody254_69

def crepBody254_71 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 0#64]) crepBody254_70

def crepBody254_72 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 0) crepBody254_69

def crepBody254_73 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 8#64]) crepBody254_72

def crepBody254_74 : CrepProg (BitVec 64) :=
.seq crepBody254_71 crepBody254_73

def crepBody254_75 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 3#64) crepBody254_69

def crepBody254_76 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 16#64]) crepBody254_75

def crepBody254_77 : CrepProg (BitVec 64) :=
.seq crepBody254_74 crepBody254_76

def crepBody254_78 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 8) crepBody254_69

def crepBody254_79 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 32#64]) crepBody254_78

def crepBody254_80 : CrepProg (BitVec 64) :=
.seq crepBody254_77 crepBody254_79

def crepBody254_81 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 9)

def crepBody254_82 : CrepProg (BitVec 64) :=
.seq crepBody254_81 crepBody254_1

def crepBody254_83 : CrepProg (BitVec 64) :=
.seq crepBody254_80 crepBody254_82

def crepBody254_84 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 0 (Flapjack.CrepExp.var 10)

def crepBody254_85 : CrepProg (BitVec 64) :=
.seq crepBody254_84 crepBody254_1

def crepBody254_86 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 32#64,
      Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 8#64]])) crepBody254_85

def crepBody254_87 : CrepProg (BitVec 64) :=
.seq crepBody254_83 crepBody254_86

def crepBody254_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 10)

def crepBody254_89 : CrepProg (BitVec 64) :=
.seq crepBody254_88 crepBody254_1

def crepBody254_90 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 1#64]) crepBody254_89

def crepBody254_91 : CrepProg (BitVec 64) :=
.seq crepBody254_87 crepBody254_90

def crepBody254_92 : CrepProg (BitVec 64) :=
.seq crepBody254_91 crepBody254_49

def crepBody254_93 : CrepProg (BitVec 64) :=
.seq crepBody254_67 crepBody254_92

def crepBody254_94 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody254_93

def crepBody254_95 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.loadByte (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 3])) crepBody254_94

def crepBody254_96 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 2)) crepBody254_66 crepBody254_95

def crepBody254_97 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 2#64)) crepBody254_57 crepBody254_96

def crepBody254_98 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1#64)) crepBody254_18 crepBody254_97

def crepBody254_99 : CrepProg (BitVec 64) :=
.seq crepBody254_10 crepBody254_98

def crepBody254_100 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 0#64])) crepBody254_99

def crepBody254_101 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 0) (Flapjack.CrepExp.const 0#64)) crepBody254_4 crepBody254_100

def crepBody254_102 : CrepProg (BitVec 64) :=
.seq crepBody254_2 crepBody254_101

def crepBody254_103 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody254_102

def crepBody254_104 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "_delete_ext_finish"
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]),
    Flapjack.CrepExp.var 5]

def crepBody254_105 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 5) crepBody254_59

def crepBody254_106 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 32#64]),
        Flapjack.CrepExp.const 8#64]]) crepBody254_105

def crepBody254_107 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "_collapse_branch" [Flapjack.CrepExp.var 7]

def crepBody254_108 : CrepProg (BitVec 64) :=
.seq crepBody254_106 crepBody254_107

def crepBody254_109 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load
    (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 16#64]))
  (Flapjack.CrepExp.const 2#64)) crepBody254_104 crepBody254_108

def crepBody254_110 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 8)

def crepBody254_111 : CrepProg (BitVec 64) :=
.seq crepBody254_110 crepBody254_1

def crepBody254_112 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 0#64])) crepBody254_111

def crepBody254_113 : CrepProg (BitVec 64) :=
.seq crepBody254_109 crepBody254_112

def crepBody254_114 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 8#64])) crepBody254_113

def crepBody254_115 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody254_114

def crepBody254_116 : CrepProg (BitVec 64) :=
.seq crepBody254_103 crepBody254_115

def crepBody254_117 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 5]

def crepBody254_118 : CrepProg (BitVec 64) :=
.seq crepBody254_116 crepBody254_117

def crepBody254_119 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 1#64) crepBody254_118

def crepBody254_120 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody254_119

def crepBody254_121 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody254_120

def data254 : CrepProg (BitVec 64) := crepBody254_121
def output254 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 109#8, 112#8, 116#8, 95#8, 100#8, 101#8, 108#8, 101#8, 116#8, 101#8, 95#8, 110#8, 111#8, 100#8, 101#8, 95#8,
    98#8, 111#8, 100#8, 121#8], [0, 1, 2, 3], crepProgToHOL data254)
end InitECandidate.Proofs.FrontendStages.Crep
