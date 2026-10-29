import InitECandidate.Proofs.FrontendStages.Crep.Translate221
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody237_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.loadGlob 0#5)

def crepBody237_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody237_2 : CrepProg (BitVec 64) :=
.seq crepBody237_0 crepBody237_1

def crepBody237_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "mpt_fail" [Flapjack.CrepExp.const 3#64]

def crepBody237_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody237_3

def crepBody237_5 : CrepProg (BitVec 64) :=
.seq crepBody237_2 crepBody237_4

def crepBody237_6 : CrepProg (BitVec 64) :=
.call (some (([3, 4, 5, 6]), some ((1#64), crepBody237_5))) ("rlp_decode_fully") ([Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2])

def crepBody237_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody237_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 0#64)) crepBody237_7 crepBody237_1

def crepBody237_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "mpt_fail" [Flapjack.CrepExp.const 4#64]

def crepBody237_10 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody237_9

def crepBody237_11 : CrepProg (BitVec 64) :=
.seq crepBody237_8 crepBody237_10

def crepBody237_12 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.const 0#64)) crepBody237_11 crepBody237_1

def crepBody237_13 : CrepProg (BitVec 64) :=
.seq crepBody237_6 crepBody237_12

def crepBody237_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9], none)) "rlp_list_to_slices" [Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5]

def crepBody237_15 : CrepProg (BitVec 64) :=
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

def crepBody237_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15], none)) "mpt_fail" [Flapjack.CrepExp.const 5#64]

def crepBody237_17 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody237_16

def crepBody237_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 0#64)) crepBody237_17 crepBody237_1

def crepBody237_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17], none)) "compact_to_nibbles"
  [Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13]

def crepBody237_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19, 20, 21], none)) "rlp_item"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 16#64]]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add
        [Flapjack.CrepExp.var 10,
          Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.const 16#64],
          Flapjack.CrepExp.const 8#64])]

def crepBody237_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "mpt_fail" [Flapjack.CrepExp.const 6#64]

def crepBody237_22 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody237_21

def crepBody237_23 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody237_22 crepBody237_1

def crepBody237_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([22], none)) "node_new_leaf"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody237_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.var 24)

def crepBody237_26 : CrepProg (BitVec 64) :=
.seq crepBody237_25 crepBody237_1

def crepBody237_27 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 1) crepBody237_26

def crepBody237_28 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 8#64]) crepBody237_27

def crepBody237_29 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 2) crepBody237_26

def crepBody237_30 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 22, Flapjack.CrepExp.const 16#64]) crepBody237_29

def crepBody237_31 : CrepProg (BitVec 64) :=
.seq crepBody237_28 crepBody237_30

def crepBody237_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.var 22]

def crepBody237_33 : CrepProg (BitVec 64) :=
.seq crepBody237_31 crepBody237_32

def crepBody237_34 : CrepProg (BitVec 64) :=
.seq crepBody237_24 crepBody237_33

def crepBody237_35 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody237_34

def crepBody237_36 : CrepProg (BitVec 64) :=
.seq crepBody237_23 crepBody237_35

def crepBody237_37 : CrepProg (BitVec 64) :=
.seq crepBody237_20 crepBody237_36

def crepBody237_38 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody237_37

def crepBody237_39 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody237_38

def crepBody237_40 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody237_39

def crepBody237_41 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody237_40

def crepBody237_42 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 17) (Flapjack.CrepExp.const 0#64)) crepBody237_41 crepBody237_1

def crepBody237_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "mpt_fail" [Flapjack.CrepExp.const 7#64]

def crepBody237_44 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody237_43

def crepBody237_45 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 0#64)) crepBody237_44 crepBody237_1

def crepBody237_46 : CrepProg (BitVec 64) :=
.seq crepBody237_42 crepBody237_45

def crepBody237_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "scratch_alloc" [Flapjack.CrepExp.const 88#64]

def crepBody237_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody237_49 : CrepProg (BitVec 64) :=
.seq crepBody237_48 crepBody237_1

def crepBody237_50 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 1#64) crepBody237_49

def crepBody237_51 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 8#64]) crepBody237_50

def crepBody237_52 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 10) crepBody237_49

def crepBody237_53 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 24#64]) crepBody237_52

def crepBody237_54 : CrepProg (BitVec 64) :=
.seq crepBody237_51 crepBody237_53

def crepBody237_55 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 1) crepBody237_49

def crepBody237_56 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 48#64]) crepBody237_55

def crepBody237_57 : CrepProg (BitVec 64) :=
.seq crepBody237_54 crepBody237_56

def crepBody237_58 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 2) crepBody237_49

def crepBody237_59 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 56#64]) crepBody237_58

def crepBody237_60 : CrepProg (BitVec 64) :=
.seq crepBody237_57 crepBody237_59

def crepBody237_61 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 15) crepBody237_49

def crepBody237_62 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 64#64]) crepBody237_61

def crepBody237_63 : CrepProg (BitVec 64) :=
.seq crepBody237_60 crepBody237_62

def crepBody237_64 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 16) crepBody237_49

def crepBody237_65 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 18, Flapjack.CrepExp.const 72#64]) crepBody237_64

def crepBody237_66 : CrepProg (BitVec 64) :=
.seq crepBody237_63 crepBody237_65

def crepBody237_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 18]

def crepBody237_68 : CrepProg (BitVec 64) :=
.seq crepBody237_66 crepBody237_67

def crepBody237_69 : CrepProg (BitVec 64) :=
.seq crepBody237_47 crepBody237_68

def crepBody237_70 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody237_69

def crepBody237_71 : CrepProg (BitVec 64) :=
.seq crepBody237_46 crepBody237_70

def crepBody237_72 : CrepProg (BitVec 64) :=
.seq crepBody237_19 crepBody237_71

def crepBody237_73 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody237_72

def crepBody237_74 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody237_73

def crepBody237_75 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody237_74

def crepBody237_76 : CrepProg (BitVec 64) :=
.seq crepBody237_18 crepBody237_75

def crepBody237_77 : CrepProg (BitVec 64) :=
.seq crepBody237_15 crepBody237_76

def crepBody237_78 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody237_77

def crepBody237_79 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody237_78

def crepBody237_80 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody237_79

def crepBody237_81 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody237_80

def crepBody237_82 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 2#64)) crepBody237_81 crepBody237_1

def crepBody237_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "mpt_fail" [Flapjack.CrepExp.const 4#64]

def crepBody237_84 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody237_83

def crepBody237_85 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 17#64)) crepBody237_84 crepBody237_1

def crepBody237_86 : CrepProg (BitVec 64) :=
.seq crepBody237_82 crepBody237_85

def crepBody237_87 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11], none)) "node_new_branch" []

def crepBody237_88 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12], none)) "scratch_alloc" [Flapjack.CrepExp.const 88#64]

def crepBody237_89 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 14)

def crepBody237_90 : CrepProg (BitVec 64) :=
.seq crepBody237_89 crepBody237_1

def crepBody237_91 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 2#64) crepBody237_90

def crepBody237_92 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 8#64]) crepBody237_91

def crepBody237_93 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 11) crepBody237_90

def crepBody237_94 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 16#64]) crepBody237_93

def crepBody237_95 : CrepProg (BitVec 64) :=
.seq crepBody237_92 crepBody237_94

def crepBody237_96 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 10) crepBody237_90

def crepBody237_97 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 24#64]) crepBody237_96

def crepBody237_98 : CrepProg (BitVec 64) :=
.seq crepBody237_95 crepBody237_97

def crepBody237_99 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody237_90

def crepBody237_100 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 32#64]) crepBody237_99

def crepBody237_101 : CrepProg (BitVec 64) :=
.seq crepBody237_98 crepBody237_100

def crepBody237_102 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 40#64]) crepBody237_99

def crepBody237_103 : CrepProg (BitVec 64) :=
.seq crepBody237_101 crepBody237_102

def crepBody237_104 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 1) crepBody237_90

def crepBody237_105 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 48#64]) crepBody237_104

def crepBody237_106 : CrepProg (BitVec 64) :=
.seq crepBody237_103 crepBody237_105

def crepBody237_107 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 2) crepBody237_90

def crepBody237_108 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 12, Flapjack.CrepExp.const 56#64]) crepBody237_107

def crepBody237_109 : CrepProg (BitVec 64) :=
.seq crepBody237_106 crepBody237_108

def crepBody237_110 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64, Flapjack.CrepExp.var 12]

def crepBody237_111 : CrepProg (BitVec 64) :=
.seq crepBody237_109 crepBody237_110

def crepBody237_112 : CrepProg (BitVec 64) :=
.seq crepBody237_88 crepBody237_111

def crepBody237_113 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody237_112

def crepBody237_114 : CrepProg (BitVec 64) :=
.seq crepBody237_87 crepBody237_113

def crepBody237_115 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody237_114

def crepBody237_116 : CrepProg (BitVec 64) :=
.seq crepBody237_86 crepBody237_115

def crepBody237_117 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody237_116

def crepBody237_118 : CrepProg (BitVec 64) :=
.seq crepBody237_14 crepBody237_117

def crepBody237_119 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody237_118

def crepBody237_120 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody237_119

def crepBody237_121 : CrepProg (BitVec 64) :=
.seq crepBody237_13 crepBody237_120

def crepBody237_122 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody237_121

def crepBody237_123 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody237_122

def crepBody237_124 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody237_123

def crepBody237_125 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody237_124

def crepBody237_126 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody237_125

def data237 : CrepProg (BitVec 64) := crepBody237_126
def output237 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [95#8, 100#8, 101#8, 99#8, 111#8, 100#8, 101#8, 95#8, 115#8, 116#8, 101#8, 112#8], [0, 1, 2], crepProgToHOL data237)
end InitECandidate.Proofs.FrontendStages.Crep
