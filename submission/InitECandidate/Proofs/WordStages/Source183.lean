import InitECandidate.Proofs.WordStages.Source167
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody183_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody183_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 88#64)

def sourceBody183_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody183_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody183_0, 183, 2)) (some 74) ([8]) (some (8, sourceBody183_2, 183, 3))

def sourceBody183_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody183_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_3 sourceBody183_4

def sourceBody183_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_5 sourceBody183_0

def sourceBody183_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_1 sourceBody183_6

def sourceBody183_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]])

def sourceBody183_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody183_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody183_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody183_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody183_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody183_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 6) sourceBody183_12 sourceBody183_13

def sourceBody183_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_14 sourceBody183_4

def sourceBody183_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody183_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody183_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_17 sourceBody183_0

def sourceBody183_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_18 sourceBody183_0

def sourceBody183_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody183_19 sourceBody183_0

def sourceBody183_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_20 sourceBody183_4

def sourceBody183_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_21 sourceBody183_0

def sourceBody183_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_16 sourceBody183_22

def sourceBody183_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_15 sourceBody183_23

def sourceBody183_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_11 sourceBody183_24

def sourceBody183_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_10 sourceBody183_25

def sourceBody183_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody183_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody183_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody183_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 6

def sourceBody183_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_30 sourceBody183_0

def sourceBody183_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_29 sourceBody183_31

def sourceBody183_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_32 sourceBody183_0

def sourceBody183_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_28 sourceBody183_33

def sourceBody183_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_34

def sourceBody183_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_27 sourceBody183_35

def sourceBody183_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_36

def sourceBody183_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_26 sourceBody183_37

def sourceBody183_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody183_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody183_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_40 sourceBody183_33

def sourceBody183_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_41

def sourceBody183_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_39 sourceBody183_42

def sourceBody183_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_43

def sourceBody183_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_38 sourceBody183_44

def sourceBody183_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody183_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody183_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_47 sourceBody183_33

def sourceBody183_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_48

def sourceBody183_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_46 sourceBody183_49

def sourceBody183_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_50

def sourceBody183_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_45 sourceBody183_51

def sourceBody183_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody183_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_13 sourceBody183_33

def sourceBody183_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_54

def sourceBody183_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_53 sourceBody183_55

def sourceBody183_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_56

def sourceBody183_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_52 sourceBody183_57

def sourceBody183_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody183_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody183_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 22 6))

def sourceBody183_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody183_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody183_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody183_0, 183, 4)) (some 74) ([10]) (some (22, sourceBody183_63, 183, 5))

def sourceBody183_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_64 sourceBody183_4

def sourceBody183_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_65 sourceBody183_0

def sourceBody183_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_62 sourceBody183_66

def sourceBody183_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_61 sourceBody183_67

def sourceBody183_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_60 sourceBody183_68

def sourceBody183_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_59 sourceBody183_69

def sourceBody183_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody183_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody183_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody183_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 14

def sourceBody183_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_74 sourceBody183_0

def sourceBody183_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_73 sourceBody183_75

def sourceBody183_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_76 sourceBody183_0

def sourceBody183_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_72 sourceBody183_77

def sourceBody183_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_78

def sourceBody183_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_71 sourceBody183_79

def sourceBody183_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_80

def sourceBody183_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody183_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody183_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody183_0, 183, 6)) (some 74) ([6]) (some (6, sourceBody183_83, 183, 7))

def sourceBody183_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_84 sourceBody183_4

def sourceBody183_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_85 sourceBody183_0

def sourceBody183_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_82 sourceBody183_86

def sourceBody183_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody183_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 10

def sourceBody183_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_89 sourceBody183_0

def sourceBody183_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_62 sourceBody183_90

def sourceBody183_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_91 sourceBody183_0

def sourceBody183_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_16 sourceBody183_92

def sourceBody183_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_93

def sourceBody183_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_88 sourceBody183_94

def sourceBody183_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_95

def sourceBody183_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody183_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody183_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody183_0, 183, 8)) (some 74) ([14]) (some (14, sourceBody183_98, 183, 9))

def sourceBody183_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_99 sourceBody183_4

def sourceBody183_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_100 sourceBody183_0

def sourceBody183_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_97 sourceBody183_101

def sourceBody183_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody183_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody183_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody183_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 20

def sourceBody183_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_106 sourceBody183_0

def sourceBody183_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_105 sourceBody183_107

def sourceBody183_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_108 sourceBody183_0

def sourceBody183_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_104 sourceBody183_109

def sourceBody183_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_110

def sourceBody183_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_103 sourceBody183_111

def sourceBody183_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_112

def sourceBody183_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody183_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody183_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_115 sourceBody183_109

def sourceBody183_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_116

def sourceBody183_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_114 sourceBody183_117

def sourceBody183_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_118

def sourceBody183_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_113 sourceBody183_119

def sourceBody183_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody183_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody183_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_122 sourceBody183_109

def sourceBody183_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_123

def sourceBody183_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_121 sourceBody183_124

def sourceBody183_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_125

def sourceBody183_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_120 sourceBody183_126

def sourceBody183_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody183_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_128 sourceBody183_117

def sourceBody183_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_129

def sourceBody183_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_127 sourceBody183_130

def sourceBody183_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody183_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody183_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_133 sourceBody183_109

def sourceBody183_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_134

def sourceBody183_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_132 sourceBody183_135

def sourceBody183_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_136

def sourceBody183_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_131 sourceBody183_137

def sourceBody183_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody183_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody183_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_140 sourceBody183_0

def sourceBody183_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_139 sourceBody183_141

def sourceBody183_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_138 sourceBody183_142

def sourceBody183_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_102 sourceBody183_143

def sourceBody183_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_144

def sourceBody183_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_145

def sourceBody183_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_96 sourceBody183_146

def sourceBody183_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_87 sourceBody183_147

def sourceBody183_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_148

def sourceBody183_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_149

def sourceBody183_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_81 sourceBody183_150

def sourceBody183_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_70 sourceBody183_151

def sourceBody183_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_152

def sourceBody183_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_153

def sourceBody183_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_58 sourceBody183_154

def sourceBody183_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_9 sourceBody183_155

def sourceBody183_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_156

def sourceBody183_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_8 sourceBody183_157

def sourceBody183_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_158

def sourceBody183_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_7 sourceBody183_159

def sourceBody183_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_160

def sourceBody183_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody183_0 sourceBody183_161

def source183 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (183, 3, sourceBody183_162)
end InitECandidate.Proofs.WordStages
