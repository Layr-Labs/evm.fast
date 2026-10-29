import InitECandidate.Proofs.WordStages.Source269
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody285_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody285_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody285_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody285_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody285_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.WordRegImm.reg 22) sourceBody285_2 sourceBody285_3

def sourceBody285_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody285_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_4 sourceBody285_5

def sourceBody285_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 10)

def sourceBody285_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody285_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 20#64)

def sourceBody285_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 26)

def sourceBody285_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_10 sourceBody285_8

def sourceBody285_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_11 sourceBody285_8

def sourceBody285_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_9 sourceBody285_12

def sourceBody285_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_13

def sourceBody285_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody285_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 26

def sourceBody285_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_15 sourceBody285_16

def sourceBody285_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_14 sourceBody285_17

def sourceBody285_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody285_18 sourceBody285_8

def sourceBody285_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_19 sourceBody285_5

def sourceBody285_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_20 sourceBody285_8

def sourceBody285_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_7 sourceBody285_21

def sourceBody285_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_6 sourceBody285_22

def sourceBody285_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_1 sourceBody285_23

def sourceBody285_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_0 sourceBody285_24

def sourceBody285_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody285_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody285_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 2)) (some 281) ([10]) (some (10, sourceBody285_27, 285, 3))

def sourceBody285_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_28 sourceBody285_5

def sourceBody285_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_29 sourceBody285_8

def sourceBody285_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_26 sourceBody285_30

def sourceBody285_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody285_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody285_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody285_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.reg 16) sourceBody285_1 sourceBody285_34

def sourceBody285_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_35 sourceBody285_5

def sourceBody285_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody285_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 21#64)

def sourceBody285_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 10)

def sourceBody285_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_39 sourceBody285_8

def sourceBody285_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_40 sourceBody285_8

def sourceBody285_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_38 sourceBody285_41

def sourceBody285_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_42

def sourceBody285_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody285_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_44 sourceBody285_27

def sourceBody285_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_43 sourceBody285_45

def sourceBody285_47 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody285_46 sourceBody285_8

def sourceBody285_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_47 sourceBody285_5

def sourceBody285_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_48 sourceBody285_8

def sourceBody285_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_37 sourceBody285_49

def sourceBody285_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_36 sourceBody285_50

def sourceBody285_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_33 sourceBody285_51

def sourceBody285_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_32 sourceBody285_52

def sourceBody285_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody285_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody285_56 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 16) sourceBody285_1 sourceBody285_34

def sourceBody285_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_56 sourceBody285_5

def sourceBody285_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 22#64)

def sourceBody285_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_58 sourceBody285_41

def sourceBody285_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_59

def sourceBody285_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_60 sourceBody285_45

def sourceBody285_62 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody285_61 sourceBody285_8

def sourceBody285_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_62 sourceBody285_5

def sourceBody285_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_63 sourceBody285_8

def sourceBody285_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_37 sourceBody285_64

def sourceBody285_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_57 sourceBody285_65

def sourceBody285_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_55 sourceBody285_66

def sourceBody285_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_54 sourceBody285_67

def sourceBody285_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_53 sourceBody285_68

def sourceBody285_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody285_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 104#64]))

def sourceBody285_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 112#64]))

def sourceBody285_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody285_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody285_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody285_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody285_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody285_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 22, 16, 30]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 4)) (some 283) ([8, 20, 14, 28, 12, 24, 18]) (some (8, sourceBody285_77, 285, 5))

def sourceBody285_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_78 sourceBody285_5

def sourceBody285_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_79 sourceBody285_8

def sourceBody285_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_76 sourceBody285_80

def sourceBody285_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_75 sourceBody285_81

def sourceBody285_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_74 sourceBody285_82

def sourceBody285_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_73 sourceBody285_83

def sourceBody285_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_72 sourceBody285_84

def sourceBody285_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_71 sourceBody285_85

def sourceBody285_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_70 sourceBody285_86

def sourceBody285_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody285_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody285_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 16)

def sourceBody285_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 30)

def sourceBody285_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody285_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody285_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody285_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 160#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody285_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody285_97 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 6)) (some 105) ([20, 14, 28, 12, 24, 18, 32, 6]) (some (20, sourceBody285_96, 285, 7))

def sourceBody285_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_97 sourceBody285_5

def sourceBody285_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_98 sourceBody285_8

def sourceBody285_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_95 sourceBody285_99

def sourceBody285_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_94 sourceBody285_100

def sourceBody285_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_93 sourceBody285_101

def sourceBody285_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_92 sourceBody285_102

def sourceBody285_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_91 sourceBody285_103

def sourceBody285_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_90 sourceBody285_104

def sourceBody285_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_89 sourceBody285_105

def sourceBody285_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_88 sourceBody285_106

def sourceBody285_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody285_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody285_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody285_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody285_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 28) sourceBody285_110 sourceBody285_111

def sourceBody285_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_112 sourceBody285_5

def sourceBody285_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody285_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 23#64)

def sourceBody285_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 20)

def sourceBody285_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_116 sourceBody285_8

def sourceBody285_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_117 sourceBody285_8

def sourceBody285_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_115 sourceBody285_118

def sourceBody285_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_119

def sourceBody285_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody285_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_121 sourceBody285_96

def sourceBody285_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_120 sourceBody285_122

def sourceBody285_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody285_123 sourceBody285_8

def sourceBody285_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_124 sourceBody285_5

def sourceBody285_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_125 sourceBody285_8

def sourceBody285_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_114 sourceBody285_126

def sourceBody285_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_113 sourceBody285_127

def sourceBody285_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_109 sourceBody285_128

def sourceBody285_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_108 sourceBody285_129

def sourceBody285_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody285_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody285_133 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 14 (Flapjack.WordRegImm.reg 28) sourceBody285_110 sourceBody285_111

def sourceBody285_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_133 sourceBody285_5

def sourceBody285_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 24#64)

def sourceBody285_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_135 sourceBody285_118

def sourceBody285_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_136

def sourceBody285_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_137 sourceBody285_122

def sourceBody285_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody285_138 sourceBody285_8

def sourceBody285_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_139 sourceBody285_5

def sourceBody285_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_140 sourceBody285_8

def sourceBody285_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_114 sourceBody285_141

def sourceBody285_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_134 sourceBody285_142

def sourceBody285_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_132 sourceBody285_143

def sourceBody285_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_131 sourceBody285_144

def sourceBody285_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_130 sourceBody285_145

def sourceBody285_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody285_148 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1#64])

def sourceBody285_149 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 28) sourceBody285_110 sourceBody285_111

def sourceBody285_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_149 sourceBody285_5

def sourceBody285_151 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 25#64)

def sourceBody285_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_151 sourceBody285_118

def sourceBody285_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_152

def sourceBody285_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_153 sourceBody285_122

def sourceBody285_155 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody285_154 sourceBody285_8

def sourceBody285_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_155 sourceBody285_5

def sourceBody285_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_156 sourceBody285_8

def sourceBody285_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_114 sourceBody285_157

def sourceBody285_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_150 sourceBody285_158

def sourceBody285_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_148 sourceBody285_159

def sourceBody285_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_147 sourceBody285_160

def sourceBody285_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_146 sourceBody285_161

def sourceBody285_163 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody285_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody285_165 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 28) sourceBody285_110 sourceBody285_111

def sourceBody285_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_165 sourceBody285_5

def sourceBody285_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 26#64)

def sourceBody285_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_167 sourceBody285_118

def sourceBody285_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_168

def sourceBody285_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_169 sourceBody285_122

def sourceBody285_171 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody285_170 sourceBody285_8

def sourceBody285_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_171 sourceBody285_5

def sourceBody285_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_172 sourceBody285_8

def sourceBody285_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_114 sourceBody285_173

def sourceBody285_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_166 sourceBody285_174

def sourceBody285_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_164 sourceBody285_175

def sourceBody285_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_163 sourceBody285_176

def sourceBody285_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_162 sourceBody285_177

def sourceBody285_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody285_180 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody285_181 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody285_182 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 64#64],
        Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody285_183 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody285_184 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 8)) (some 102) ([14, 28, 12, 24]) (some (14, sourceBody285_183, 285, 9))

def sourceBody285_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_184 sourceBody285_5

def sourceBody285_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_185 sourceBody285_8

def sourceBody285_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_182 sourceBody285_186

def sourceBody285_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_181 sourceBody285_187

def sourceBody285_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_180 sourceBody285_188

def sourceBody285_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_179 sourceBody285_189

def sourceBody285_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 20)

def sourceBody285_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody285_193 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody285_194 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 28 (Flapjack.WordRegImm.reg 12) sourceBody285_193 sourceBody285_109

def sourceBody285_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_194 sourceBody285_5

def sourceBody285_196 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody285_197 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 27#64)

def sourceBody285_198 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 14)

def sourceBody285_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_198 sourceBody285_8

def sourceBody285_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_199 sourceBody285_8

def sourceBody285_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_197 sourceBody285_200

def sourceBody285_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_201

def sourceBody285_203 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody285_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_203 sourceBody285_183

def sourceBody285_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_202 sourceBody285_204

def sourceBody285_206 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody285_205 sourceBody285_8

def sourceBody285_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_206 sourceBody285_5

def sourceBody285_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_207 sourceBody285_8

def sourceBody285_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_196 sourceBody285_208

def sourceBody285_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_195 sourceBody285_209

def sourceBody285_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_192 sourceBody285_210

def sourceBody285_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_191 sourceBody285_211

def sourceBody285_213 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 152#64]))

def sourceBody285_214 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody285_215 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody285_216 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 10)) (some 79) ([14, 28, 12]) (some (14, sourceBody285_183, 285, 11))

def sourceBody285_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_216 sourceBody285_5

def sourceBody285_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_217 sourceBody285_8

def sourceBody285_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_215 sourceBody285_218

def sourceBody285_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_214 sourceBody285_219

def sourceBody285_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_213 sourceBody285_220

def sourceBody285_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_212 sourceBody285_221

def sourceBody285_223 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 8)

def sourceBody285_224 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 28#64)

def sourceBody285_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_224 sourceBody285_200

def sourceBody285_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_225

def sourceBody285_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_226 sourceBody285_204

def sourceBody285_228 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.imm 0#64) sourceBody285_227 sourceBody285_8

def sourceBody285_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_228 sourceBody285_5

def sourceBody285_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_229 sourceBody285_8

def sourceBody285_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_196 sourceBody285_230

def sourceBody285_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_195 sourceBody285_231

def sourceBody285_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_192 sourceBody285_232

def sourceBody285_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_223 sourceBody285_233

def sourceBody285_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_222 sourceBody285_234

def sourceBody285_236 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 28

def sourceBody285_237 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 12)) (some 69) ([]) (some (28, sourceBody285_236, 285, 13))

def sourceBody285_238 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_237 sourceBody285_5

def sourceBody285_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_238 sourceBody285_8

def sourceBody285_240 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 64#64)

def sourceBody285_241 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody285_242 : WordLangProgHOL (BitVec 64) :=
.call (some (([28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 14)) (some 68) ([12]) (some (12, sourceBody285_241, 285, 15))

def sourceBody285_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_242 sourceBody285_5

def sourceBody285_244 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_243 sourceBody285_8

def sourceBody285_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_240 sourceBody285_244

def sourceBody285_246 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 28)

def sourceBody285_247 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 192#64)

def sourceBody285_248 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store8 24 (Flapjack.WordLangAddr.addr 12 0#64))

def sourceBody285_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_248 sourceBody285_8

def sourceBody285_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_247 sourceBody285_249

def sourceBody285_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_246 sourceBody285_250

def sourceBody285_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody285_253 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody285_254 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody285_255 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 16)) (some 158) ([24, 18, 32]) (some (24, sourceBody285_254, 285, 17))

def sourceBody285_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_255 sourceBody285_5

def sourceBody285_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_256 sourceBody285_8

def sourceBody285_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_253 sourceBody285_257

def sourceBody285_259 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_252 sourceBody285_258

def sourceBody285_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_196 sourceBody285_259

def sourceBody285_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_260

def sourceBody285_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_261

def sourceBody285_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_251 sourceBody285_262

def sourceBody285_264 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 16#64]))

def sourceBody285_265 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 28, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody285_266 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody285_267 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 18)) (some 79) ([12, 24, 18]) (some (12, sourceBody285_241, 285, 19))

def sourceBody285_268 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_267 sourceBody285_5

def sourceBody285_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_268 sourceBody285_8

def sourceBody285_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_266 sourceBody285_269

def sourceBody285_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_265 sourceBody285_270

def sourceBody285_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_264 sourceBody285_271

def sourceBody285_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_263 sourceBody285_272

def sourceBody285_274 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 8)

def sourceBody285_275 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody285_276 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody285_277 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody285_278 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 18) sourceBody285_276 sourceBody285_277

def sourceBody285_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_278 sourceBody285_5

def sourceBody285_280 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 24)

def sourceBody285_281 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody285_282 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody285_8, 285, 20)) (some 70) ([24]) (some (24, sourceBody285_254, 285, 21))

def sourceBody285_283 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_282 sourceBody285_5

def sourceBody285_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_283 sourceBody285_8

def sourceBody285_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_281 sourceBody285_284

def sourceBody285_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_285

def sourceBody285_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_286

def sourceBody285_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 29#64)

def sourceBody285_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 12)

def sourceBody285_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_289 sourceBody285_8

def sourceBody285_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_290 sourceBody285_8

def sourceBody285_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_288 sourceBody285_291

def sourceBody285_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_292

def sourceBody285_294 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody285_295 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_294 sourceBody285_241

def sourceBody285_296 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_293 sourceBody285_295

def sourceBody285_297 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_287 sourceBody285_296

def sourceBody285_298 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody285_297 sourceBody285_8

def sourceBody285_299 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_298 sourceBody285_5

def sourceBody285_300 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_299 sourceBody285_8

def sourceBody285_301 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_280 sourceBody285_300

def sourceBody285_302 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_279 sourceBody285_301

def sourceBody285_303 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_275 sourceBody285_302

def sourceBody285_304 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_274 sourceBody285_303

def sourceBody285_305 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_273 sourceBody285_304

def sourceBody285_306 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 2)

def sourceBody285_307 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 28)

def sourceBody285_308 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 22)) (some 277) ([24, 18]) (some (24, sourceBody285_254, 285, 23))

def sourceBody285_309 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_308 sourceBody285_5

def sourceBody285_310 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_309 sourceBody285_8

def sourceBody285_311 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_307 sourceBody285_310

def sourceBody285_312 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_306 sourceBody285_311

def sourceBody285_313 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_312

def sourceBody285_314 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_313

def sourceBody285_315 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_305 sourceBody285_314

def sourceBody285_316 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 8#64]))

def sourceBody285_317 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 24)) (some 79) ([12, 24, 18]) (some (12, sourceBody285_241, 285, 25))

def sourceBody285_318 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_317 sourceBody285_5

def sourceBody285_319 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_318 sourceBody285_8

def sourceBody285_320 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_266 sourceBody285_319

def sourceBody285_321 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_196 sourceBody285_320

def sourceBody285_322 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_316 sourceBody285_321

def sourceBody285_323 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_315 sourceBody285_322

def sourceBody285_324 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody285_8, 285, 26)) (some 70) ([24]) (some (24, sourceBody285_254, 285, 27))

def sourceBody285_325 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_324 sourceBody285_5

def sourceBody285_326 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_325 sourceBody285_8

def sourceBody285_327 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_281 sourceBody285_326

def sourceBody285_328 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_327

def sourceBody285_329 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_328

def sourceBody285_330 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_323 sourceBody285_329

def sourceBody285_331 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 30#64)

def sourceBody285_332 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_331 sourceBody285_291

def sourceBody285_333 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_332

def sourceBody285_334 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_333 sourceBody285_295

def sourceBody285_335 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 32 (Flapjack.WordRegImm.imm 0#64) sourceBody285_334 sourceBody285_8

def sourceBody285_336 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_335 sourceBody285_5

def sourceBody285_337 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_336 sourceBody285_8

def sourceBody285_338 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_280 sourceBody285_337

def sourceBody285_339 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_279 sourceBody285_338

def sourceBody285_340 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_275 sourceBody285_339

def sourceBody285_341 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_274 sourceBody285_340

def sourceBody285_342 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_330 sourceBody285_341

def sourceBody285_343 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12]

def sourceBody285_344 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_343 sourceBody285_8

def sourceBody285_345 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_192 sourceBody285_344

def sourceBody285_346 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_342 sourceBody285_345

def sourceBody285_347 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_245 sourceBody285_346

def sourceBody285_348 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_347

def sourceBody285_349 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_348

def sourceBody285_350 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_239 sourceBody285_349

def sourceBody285_351 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_350

def sourceBody285_352 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_351

def sourceBody285_353 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_235 sourceBody285_352

def sourceBody285_354 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_190 sourceBody285_353

def sourceBody285_355 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_354

def sourceBody285_356 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_355

def sourceBody285_357 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_178 sourceBody285_356

def sourceBody285_358 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_107 sourceBody285_357

def sourceBody285_359 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_358

def sourceBody285_360 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_359

def sourceBody285_361 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_87 sourceBody285_360

def sourceBody285_362 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_361

def sourceBody285_363 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_362

def sourceBody285_364 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_363

def sourceBody285_365 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_364

def sourceBody285_366 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_365

def sourceBody285_367 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_366

def sourceBody285_368 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_367

def sourceBody285_369 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_368

def sourceBody285_370 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_69 sourceBody285_369

def sourceBody285_371 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_31 sourceBody285_370

def sourceBody285_372 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_371

def sourceBody285_373 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_8 sourceBody285_372

def sourceBody285_374 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody285_25 sourceBody285_373

def source285 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (285, 3, sourceBody285_374)
end InitECandidate.Proofs.WordStages
