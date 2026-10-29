import InitECandidate.Proofs.WordStages.Source609
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody625_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody625_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody625_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody625_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([8]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody625_0, 625, 2)) (some 68) ([16]) (some (16, sourceBody625_2, 625, 3))

def sourceBody625_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody625_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_3 sourceBody625_4

def sourceBody625_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_5 sourceBody625_0

def sourceBody625_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_1 sourceBody625_6

def sourceBody625_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody625_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 96#64)

def sourceBody625_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody625_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody625_0, 625, 4)) (some 78) ([6, 14]) (some (6, sourceBody625_10, 625, 5))

def sourceBody625_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_11 sourceBody625_4

def sourceBody625_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_12 sourceBody625_0

def sourceBody625_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_9 sourceBody625_13

def sourceBody625_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_8 sourceBody625_14

def sourceBody625_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_15

def sourceBody625_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_16

def sourceBody625_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 24#64]))

def sourceBody625_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody625_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody625_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody625_22 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 10) sourceBody625_20 sourceBody625_21

def sourceBody625_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_22 sourceBody625_4

def sourceBody625_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 14)

def sourceBody625_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody625_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody625_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody625_0, 625, 6)) (some 415) ([14]) (some (14, sourceBody625_26, 625, 7))

def sourceBody625_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_27 sourceBody625_4

def sourceBody625_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_28 sourceBody625_0

def sourceBody625_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_25 sourceBody625_29

def sourceBody625_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody625_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody625_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody625_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 18) sourceBody625_33 sourceBody625_19

def sourceBody625_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_34 sourceBody625_4

def sourceBody625_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 10)

def sourceBody625_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody625_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody625_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 10)

def sourceBody625_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 18

def sourceBody625_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_40 sourceBody625_0

def sourceBody625_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_39 sourceBody625_41

def sourceBody625_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_42 sourceBody625_0

def sourceBody625_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_38 sourceBody625_43

def sourceBody625_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_44

def sourceBody625_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_37 sourceBody625_45

def sourceBody625_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_46

def sourceBody625_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody625_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody625_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_49 sourceBody625_43

def sourceBody625_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_50

def sourceBody625_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_48 sourceBody625_51

def sourceBody625_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_52

def sourceBody625_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_47 sourceBody625_53

def sourceBody625_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody625_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody625_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_56 sourceBody625_43

def sourceBody625_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_57

def sourceBody625_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_55 sourceBody625_58

def sourceBody625_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_59

def sourceBody625_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_54 sourceBody625_60

def sourceBody625_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody625_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
      [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
            Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
              (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
        Flapjack.WordLangExpHOL.const 264#64]))

def sourceBody625_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_63 sourceBody625_43

def sourceBody625_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_64

def sourceBody625_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_62 sourceBody625_65

def sourceBody625_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_66

def sourceBody625_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_61 sourceBody625_67

def sourceBody625_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 8)

def sourceBody625_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody625_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_70 sourceBody625_0

def sourceBody625_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_69 sourceBody625_71

def sourceBody625_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_68 sourceBody625_72

def sourceBody625_74 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody625_73 sourceBody625_0

def sourceBody625_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_74 sourceBody625_4

def sourceBody625_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_75 sourceBody625_0

def sourceBody625_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_36 sourceBody625_76

def sourceBody625_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_35 sourceBody625_77

def sourceBody625_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_32 sourceBody625_78

def sourceBody625_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_31 sourceBody625_79

def sourceBody625_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody625_82 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody625_0, 625, 8)) (some 608) ([14]) (some (14, sourceBody625_26, 625, 9))

def sourceBody625_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_82 sourceBody625_4

def sourceBody625_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_83 sourceBody625_0

def sourceBody625_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_81 sourceBody625_84

def sourceBody625_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_80 sourceBody625_85

def sourceBody625_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_30 sourceBody625_86

def sourceBody625_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_87

def sourceBody625_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_88

def sourceBody625_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 2)

def sourceBody625_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody625_0, 625, 10)) (some 606) ([6]) (some (6, sourceBody625_10, 625, 11))

def sourceBody625_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_91 sourceBody625_4

def sourceBody625_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_92 sourceBody625_0

def sourceBody625_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_90 sourceBody625_93

def sourceBody625_95 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 18 (Flapjack.WordRegImm.imm 0#64) sourceBody625_89 sourceBody625_94

def sourceBody625_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_95 sourceBody625_4

def sourceBody625_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_96 sourceBody625_0

def sourceBody625_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_24 sourceBody625_97

def sourceBody625_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_23 sourceBody625_98

def sourceBody625_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_19 sourceBody625_99

def sourceBody625_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_18 sourceBody625_100

def sourceBody625_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody625_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 64#64]))

def sourceBody625_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody625_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 10

def sourceBody625_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_105 sourceBody625_0

def sourceBody625_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_104 sourceBody625_106

def sourceBody625_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_107 sourceBody625_0

def sourceBody625_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_103 sourceBody625_108

def sourceBody625_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_109

def sourceBody625_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_102 sourceBody625_110

def sourceBody625_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_111

def sourceBody625_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_101 sourceBody625_112

def sourceBody625_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody625_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody625_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_115 sourceBody625_108

def sourceBody625_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_116

def sourceBody625_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_114 sourceBody625_117

def sourceBody625_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_118

def sourceBody625_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_113 sourceBody625_119

def sourceBody625_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody625_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 120#64]))

def sourceBody625_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_122 sourceBody625_108

def sourceBody625_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_123

def sourceBody625_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_121 sourceBody625_124

def sourceBody625_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_125

def sourceBody625_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_120 sourceBody625_126

def sourceBody625_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody625_129 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 128#64]))

def sourceBody625_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_129 sourceBody625_108

def sourceBody625_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_130

def sourceBody625_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_128 sourceBody625_131

def sourceBody625_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_132

def sourceBody625_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_127 sourceBody625_133

def sourceBody625_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody625_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 72#64]))

def sourceBody625_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_136 sourceBody625_108

def sourceBody625_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_137

def sourceBody625_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_135 sourceBody625_138

def sourceBody625_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_139

def sourceBody625_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_134 sourceBody625_140

def sourceBody625_142 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody625_143 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 184#64]))

def sourceBody625_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_143 sourceBody625_108

def sourceBody625_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_144

def sourceBody625_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_142 sourceBody625_145

def sourceBody625_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_146

def sourceBody625_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_141 sourceBody625_147

def sourceBody625_149 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody625_150 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody625_0, 625, 12)) (some 473) ([14]) (some (14, sourceBody625_26, 625, 13))

def sourceBody625_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_150 sourceBody625_4

def sourceBody625_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_151 sourceBody625_0

def sourceBody625_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_149 sourceBody625_152

def sourceBody625_154 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody625_155 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 6,
      Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
          [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 200#64])])

def sourceBody625_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_155 sourceBody625_43

def sourceBody625_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_156

def sourceBody625_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_154 sourceBody625_157

def sourceBody625_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_158

def sourceBody625_160 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody625_161 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody625_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 88#64]))

def sourceBody625_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_162 sourceBody625_43

def sourceBody625_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_163

def sourceBody625_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_161 sourceBody625_164

def sourceBody625_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_165

def sourceBody625_167 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody625_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 136#64]))

def sourceBody625_169 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_168 sourceBody625_43

def sourceBody625_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_169

def sourceBody625_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_167 sourceBody625_170

def sourceBody625_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_171

def sourceBody625_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_166 sourceBody625_172

def sourceBody625_174 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 96#64]))

def sourceBody625_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody625_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody625_177 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.less) 18 (Flapjack.WordRegImm.reg 4) sourceBody625_176 sourceBody625_32

def sourceBody625_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_177 sourceBody625_4

def sourceBody625_179 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 18)

def sourceBody625_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_21 sourceBody625_0

def sourceBody625_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_180 sourceBody625_0

def sourceBody625_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody625_181 sourceBody625_0

def sourceBody625_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_182 sourceBody625_4

def sourceBody625_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_183 sourceBody625_0

def sourceBody625_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_179 sourceBody625_184

def sourceBody625_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_178 sourceBody625_185

def sourceBody625_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_175 sourceBody625_186

def sourceBody625_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_24 sourceBody625_187

def sourceBody625_189 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody625_190 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.var 18)

def sourceBody625_191 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 10) 4

def sourceBody625_192 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_191 sourceBody625_0

def sourceBody625_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_190 sourceBody625_192

def sourceBody625_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_193 sourceBody625_0

def sourceBody625_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_24 sourceBody625_194

def sourceBody625_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_195

def sourceBody625_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_189 sourceBody625_196

def sourceBody625_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_197

def sourceBody625_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_188 sourceBody625_198

def sourceBody625_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_174 sourceBody625_199

def sourceBody625_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_200

def sourceBody625_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_173 sourceBody625_201

def sourceBody625_203 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.WordRegImm.imm 0#64) sourceBody625_202 sourceBody625_0

def sourceBody625_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_203 sourceBody625_4

def sourceBody625_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_204 sourceBody625_0

def sourceBody625_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_36 sourceBody625_205

def sourceBody625_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_35 sourceBody625_206

def sourceBody625_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_32 sourceBody625_207

def sourceBody625_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_160 sourceBody625_208

def sourceBody625_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_159 sourceBody625_209

def sourceBody625_211 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody625_212 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 208#64]))

def sourceBody625_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_212 sourceBody625_43

def sourceBody625_214 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_213

def sourceBody625_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_211 sourceBody625_214

def sourceBody625_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_215

def sourceBody625_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_210 sourceBody625_216

def sourceBody625_218 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 8, Flapjack.WordLangExpHOL.const 88#64])

def sourceBody625_219 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 224#64]))

def sourceBody625_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_219 sourceBody625_43

def sourceBody625_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_220

def sourceBody625_222 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_218 sourceBody625_221

def sourceBody625_223 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_222

def sourceBody625_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_217 sourceBody625_223

def sourceBody625_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_224 sourceBody625_72

def sourceBody625_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_153 sourceBody625_225

def sourceBody625_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_226

def sourceBody625_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_227

def sourceBody625_229 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_148 sourceBody625_228

def sourceBody625_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_229

def sourceBody625_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_230

def sourceBody625_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_17 sourceBody625_231

def sourceBody625_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_7 sourceBody625_232

def sourceBody625_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_233

def sourceBody625_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody625_0 sourceBody625_234

def source625 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (625, 2, sourceBody625_235)
end InitECandidate.Proofs.WordStages
