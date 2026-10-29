import InitECandidate.Proofs.FrontendStages.Crep.Translate222
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody238_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11], none)) "_decode_step"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6]

def crepBody238_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 11)

def crepBody238_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody238_3 : CrepProg (BitVec 64) :=
.seq crepBody238_1 crepBody238_2

def crepBody238_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 0#64)

def crepBody238_5 : CrepProg (BitVec 64) :=
.seq crepBody238_4 crepBody238_2

def crepBody238_6 : CrepProg (BitVec 64) :=
.seq crepBody238_3 crepBody238_5

def crepBody238_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.var 13)

def crepBody238_8 : CrepProg (BitVec 64) :=
.seq crepBody238_7 crepBody238_2

def crepBody238_9 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 3) crepBody238_8

def crepBody238_10 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 0#64]) crepBody238_9

def crepBody238_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 11)

def crepBody238_12 : CrepProg (BitVec 64) :=
.seq crepBody238_11 crepBody238_2

def crepBody238_13 : CrepProg (BitVec 64) :=
.seq crepBody238_10 crepBody238_12

def crepBody238_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 1#64)

def crepBody238_15 : CrepProg (BitVec 64) :=
.seq crepBody238_14 crepBody238_2

def crepBody238_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 0#64)

def crepBody238_17 : CrepProg (BitVec 64) :=
.seq crepBody238_16 crepBody238_2

def crepBody238_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.const 1#64)) crepBody238_15 crepBody238_17

def crepBody238_19 : CrepProg (BitVec 64) :=
.seq crepBody238_13 crepBody238_18

def crepBody238_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 2#64)

def crepBody238_21 : CrepProg (BitVec 64) :=
.seq crepBody238_20 crepBody238_2

def crepBody238_22 : CrepProg (BitVec 64) :=
.seq crepBody238_19 crepBody238_21

def crepBody238_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody238_6 crepBody238_22

def crepBody238_24 : CrepProg (BitVec 64) :=
.seq crepBody238_0 crepBody238_23

def crepBody238_25 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody238_24

def crepBody238_26 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody238_25

def crepBody238_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "_resolve_step"
  [Flapjack.CrepExp.var 0,
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 8, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody238_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.var 16)

def crepBody238_29 : CrepProg (BitVec 64) :=
.seq crepBody238_28 crepBody238_2

def crepBody238_30 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody238_29

def crepBody238_31 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 80#64]) crepBody238_30

def crepBody238_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 4 (Flapjack.CrepExp.var 12)

def crepBody238_33 : CrepProg (BitVec 64) :=
.seq crepBody238_32 crepBody238_2

def crepBody238_34 : CrepProg (BitVec 64) :=
.seq crepBody238_31 crepBody238_33

def crepBody238_35 : CrepProg (BitVec 64) :=
.seq crepBody238_34 crepBody238_5

def crepBody238_36 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 14) crepBody238_29

def crepBody238_37 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 80#64]) crepBody238_36

def crepBody238_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 5 (Flapjack.CrepExp.var 12)

def crepBody238_39 : CrepProg (BitVec 64) :=
.seq crepBody238_38 crepBody238_2

def crepBody238_40 : CrepProg (BitVec 64) :=
.seq crepBody238_37 crepBody238_39

def crepBody238_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 13)

def crepBody238_42 : CrepProg (BitVec 64) :=
.seq crepBody238_41 crepBody238_2

def crepBody238_43 : CrepProg (BitVec 64) :=
.seq crepBody238_40 crepBody238_42

def crepBody238_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 1#64)

def crepBody238_45 : CrepProg (BitVec 64) :=
.seq crepBody238_44 crepBody238_2

def crepBody238_46 : CrepProg (BitVec 64) :=
.seq crepBody238_43 crepBody238_45

def crepBody238_47 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody238_35 crepBody238_46

def crepBody238_48 : CrepProg (BitVec 64) :=
.seq crepBody238_27 crepBody238_47

def crepBody238_49 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody238_48

def crepBody238_50 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody238_49

def crepBody238_51 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody238_50

def crepBody238_52 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody238_51

def crepBody238_53 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody238_52

def crepBody238_54 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 0#64)

def crepBody238_55 : CrepProg (BitVec 64) :=
.seq crepBody238_54 crepBody238_2

def crepBody238_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.var 12)

def crepBody238_57 : CrepProg (BitVec 64) :=
.seq crepBody238_56 crepBody238_2

def crepBody238_58 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 10) crepBody238_57

def crepBody238_59 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 24#64]) crepBody238_58

def crepBody238_60 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64))]) crepBody238_59 crepBody238_2

def crepBody238_61 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "mpt_fail" [Flapjack.CrepExp.const 8#64]

def crepBody238_62 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody238_61

def crepBody238_63 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody238_62 crepBody238_2

def crepBody238_64 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "mpt_fail" [Flapjack.CrepExp.const 8#64]

def crepBody238_65 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody238_64

def crepBody238_66 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 3#64)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64))]) crepBody238_65 crepBody238_2

def crepBody238_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "node_new_ext"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 72#64]),
    Flapjack.CrepExp.var 4]

def crepBody238_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody238_69 : CrepProg (BitVec 64) :=
.seq crepBody238_68 crepBody238_2

def crepBody238_70 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64])) crepBody238_69

def crepBody238_71 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]) crepBody238_70

def crepBody238_72 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 56#64])) crepBody238_69

def crepBody238_73 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64]) crepBody238_72

def crepBody238_74 : CrepProg (BitVec 64) :=
.seq crepBody238_71 crepBody238_73

def crepBody238_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 13)

def crepBody238_76 : CrepProg (BitVec 64) :=
.seq crepBody238_75 crepBody238_2

def crepBody238_77 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64])) crepBody238_76

def crepBody238_78 : CrepProg (BitVec 64) :=
.seq crepBody238_74 crepBody238_77

def crepBody238_79 : CrepProg (BitVec 64) :=
.seq crepBody238_78 crepBody238_33

def crepBody238_80 : CrepProg (BitVec 64) :=
.seq crepBody238_67 crepBody238_79

def crepBody238_81 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody238_80

def crepBody238_82 : CrepProg (BitVec 64) :=
.seq crepBody238_66 crepBody238_81

def crepBody238_83 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 0#64])) crepBody238_82

def crepBody238_84 : CrepProg (BitVec 64) :=
.seq crepBody238_63 crepBody238_83

def crepBody238_85 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 4) crepBody238_69

def crepBody238_86 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 32#64,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]]) crepBody238_85

def crepBody238_87 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64]),
    Flapjack.CrepExp.const 1#64]) crepBody238_69

def crepBody238_88 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64]) crepBody238_87

def crepBody238_89 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 0#64)) crepBody238_88 crepBody238_2

def crepBody238_90 : CrepProg (BitVec 64) :=
.seq crepBody238_86 crepBody238_89

def crepBody238_91 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 13)

def crepBody238_92 : CrepProg (BitVec 64) :=
.seq crepBody238_91 crepBody238_2

def crepBody238_93 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 1#64]) crepBody238_92

def crepBody238_94 : CrepProg (BitVec 64) :=
.seq crepBody238_90 crepBody238_93

def crepBody238_95 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 12) crepBody238_69

def crepBody238_96 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64]) crepBody238_95

def crepBody238_97 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 12)

def crepBody238_98 : CrepProg (BitVec 64) :=
.seq crepBody238_97 crepBody238_2

def crepBody238_99 : CrepProg (BitVec 64) :=
.seq crepBody238_96 crepBody238_98

def crepBody238_100 : CrepProg (BitVec 64) :=
.seq crepBody238_99 crepBody238_21

def crepBody238_101 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 13,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 13,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 16#64, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody238_102 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody238_103 : CrepProg (BitVec 64) :=
.seq crepBody238_102 crepBody238_2

def crepBody238_104 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody238_103

def crepBody238_105 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 160#64]) crepBody238_104

def crepBody238_106 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 16) crepBody238_103

def crepBody238_107 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 168#64]) crepBody238_106

def crepBody238_108 : CrepProg (BitVec 64) :=
.seq crepBody238_105 crepBody238_107

def crepBody238_109 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 18 (Flapjack.CrepExp.var 19)

def crepBody238_110 : CrepProg (BitVec 64) :=
.seq crepBody238_109 crepBody238_2

def crepBody238_111 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 1#64]) crepBody238_110

def crepBody238_112 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 0#64)) crepBody238_111 crepBody238_2

def crepBody238_113 : CrepProg (BitVec 64) :=
.seq crepBody238_108 crepBody238_112

def crepBody238_114 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 0#64)) crepBody238_113 crepBody238_2

def crepBody238_115 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "mpt_fail" [Flapjack.CrepExp.const 9#64]

def crepBody238_116 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody238_115

def crepBody238_117 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 2#64)) crepBody238_116 crepBody238_2

def crepBody238_118 : CrepProg (BitVec 64) :=
.seq crepBody238_114 crepBody238_117

def crepBody238_119 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64])) crepBody238_103

def crepBody238_120 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 8#64]) crepBody238_119

def crepBody238_121 : CrepProg (BitVec 64) :=
.seq crepBody238_118 crepBody238_120

def crepBody238_122 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 56#64])) crepBody238_103

def crepBody238_123 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.const 16#64]) crepBody238_122

def crepBody238_124 : CrepProg (BitVec 64) :=
.seq crepBody238_121 crepBody238_123

def crepBody238_125 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 3 (Flapjack.CrepExp.var 19)

def crepBody238_126 : CrepProg (BitVec 64) :=
.seq crepBody238_125 crepBody238_2

def crepBody238_127 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 0#64])) crepBody238_126

def crepBody238_128 : CrepProg (BitVec 64) :=
.seq crepBody238_124 crepBody238_127

def crepBody238_129 : CrepProg (BitVec 64) :=
.seq crepBody238_128 crepBody238_3

def crepBody238_130 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64])) crepBody238_129

def crepBody238_131 : CrepProg (BitVec 64) :=
.seq crepBody238_101 crepBody238_130

def crepBody238_132 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody238_131

def crepBody238_133 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody238_132

def crepBody238_134 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody238_133

def crepBody238_135 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody238_134

def crepBody238_136 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64])) crepBody238_135

def crepBody238_137 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 16#64)) crepBody238_100 crepBody238_136

def crepBody238_138 : CrepProg (BitVec 64) :=
.seq crepBody238_94 crepBody238_137

def crepBody238_139 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 32#64])) crepBody238_138

def crepBody238_140 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 16#64])) crepBody238_139

def crepBody238_141 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]))
  (Flapjack.CrepExp.const 1#64)) crepBody238_84 crepBody238_140

def crepBody238_142 : CrepProg (BitVec 64) :=
.seq crepBody238_60 crepBody238_141

def crepBody238_143 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 80#64])) crepBody238_142

def crepBody238_144 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody238_55 crepBody238_143

def crepBody238_145 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 2#64)) crepBody238_53 crepBody238_144

def crepBody238_146 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.const 1#64)) crepBody238_26 crepBody238_145

def crepBody238_147 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 0#64)) crepBody238_146

def crepBody238_148 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 4]

def crepBody238_149 : CrepProg (BitVec 64) :=
.seq crepBody238_147 crepBody238_148

def crepBody238_150 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 1#64) crepBody238_149

def crepBody238_151 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody238_150

def crepBody238_152 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 1#64) crepBody238_151

def crepBody238_153 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 2) crepBody238_152

def crepBody238_154 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 1) crepBody238_153

def crepBody238_155 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody238_154

def crepBody238_156 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody238_155

def data238 : CrepProg (BitVec 64) := crepBody238_156
def output238 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 119#8, 105#8, 116#8, 110#8, 101#8, 115#8, 115#8, 95#8, 110#8,
    111#8, 100#8, 101#8, 95#8, 98#8, 111#8, 100#8, 121#8], [0, 1, 2], crepProgToHOL data238)
end InitECandidate.Proofs.FrontendStages.Crep
