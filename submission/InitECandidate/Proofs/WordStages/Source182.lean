import InitECandidate.Proofs.WordStages.Source166
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody182_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody182_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 88#64)

def sourceBody182_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody182_3 : WordLangProgHOL (BitVec 64) :=
.call (some (([18]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody182_0, 182, 2)) (some 68) ([8]) (some (8, sourceBody182_2, 182, 3))

def sourceBody182_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody182_5 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_3 sourceBody182_4

def sourceBody182_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_5 sourceBody182_0

def sourceBody182_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_1 sourceBody182_6

def sourceBody182_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and
    [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 7#64],
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.const 0#64, Flapjack.WordLangExpHOL.const 8#64]])

def sourceBody182_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody182_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody182_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody182_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody182_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody182_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 22 (Flapjack.WordRegImm.reg 6) sourceBody182_12 sourceBody182_13

def sourceBody182_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_14 sourceBody182_4

def sourceBody182_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 22)

def sourceBody182_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody182_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_17 sourceBody182_0

def sourceBody182_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_18 sourceBody182_0

def sourceBody182_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.imm 0#64) sourceBody182_19 sourceBody182_0

def sourceBody182_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_20 sourceBody182_4

def sourceBody182_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_21 sourceBody182_0

def sourceBody182_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_16 sourceBody182_22

def sourceBody182_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_15 sourceBody182_23

def sourceBody182_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_11 sourceBody182_24

def sourceBody182_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_10 sourceBody182_25

def sourceBody182_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 0#64])

def sourceBody182_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 2)

def sourceBody182_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 22)

def sourceBody182_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 12) 6

def sourceBody182_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_30 sourceBody182_0

def sourceBody182_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_29 sourceBody182_31

def sourceBody182_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_32 sourceBody182_0

def sourceBody182_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_28 sourceBody182_33

def sourceBody182_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_34

def sourceBody182_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_27 sourceBody182_35

def sourceBody182_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_36

def sourceBody182_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_26 sourceBody182_37

def sourceBody182_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 8#64])

def sourceBody182_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 8)

def sourceBody182_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_40 sourceBody182_33

def sourceBody182_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_41

def sourceBody182_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_39 sourceBody182_42

def sourceBody182_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_43

def sourceBody182_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_38 sourceBody182_44

def sourceBody182_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 16#64])

def sourceBody182_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody182_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_47 sourceBody182_33

def sourceBody182_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_48

def sourceBody182_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_46 sourceBody182_49

def sourceBody182_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_50

def sourceBody182_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_45 sourceBody182_51

def sourceBody182_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 24#64])

def sourceBody182_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_13 sourceBody182_33

def sourceBody182_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_54

def sourceBody182_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_53 sourceBody182_55

def sourceBody182_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_56

def sourceBody182_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_52 sourceBody182_57

def sourceBody182_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody182_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 8)

def sourceBody182_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 14 14 22 6))

def sourceBody182_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody182_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody182_64 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody182_0, 182, 4)) (some 68) ([10]) (some (22, sourceBody182_63, 182, 5))

def sourceBody182_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_64 sourceBody182_4

def sourceBody182_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_65 sourceBody182_0

def sourceBody182_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_62 sourceBody182_66

def sourceBody182_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_61 sourceBody182_67

def sourceBody182_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_60 sourceBody182_68

def sourceBody182_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_59 sourceBody182_69

def sourceBody182_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 32#64])

def sourceBody182_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.var 12)

def sourceBody182_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody182_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 22) 14

def sourceBody182_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_74 sourceBody182_0

def sourceBody182_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_73 sourceBody182_75

def sourceBody182_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_76 sourceBody182_0

def sourceBody182_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_72 sourceBody182_77

def sourceBody182_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_78

def sourceBody182_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_71 sourceBody182_79

def sourceBody182_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_80

def sourceBody182_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])
    (Flapjack.WordLangExpHOL.const 5#64))

def sourceBody182_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody182_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody182_0, 182, 6)) (some 68) ([6]) (some (6, sourceBody182_83, 182, 7))

def sourceBody182_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_84 sourceBody182_4

def sourceBody182_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_85 sourceBody182_0

def sourceBody182_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_82 sourceBody182_86

def sourceBody182_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 40#64])

def sourceBody182_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 6) 10

def sourceBody182_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_89 sourceBody182_0

def sourceBody182_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_62 sourceBody182_90

def sourceBody182_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_91 sourceBody182_0

def sourceBody182_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_16 sourceBody182_92

def sourceBody182_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_93

def sourceBody182_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_88 sourceBody182_94

def sourceBody182_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_95

def sourceBody182_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 16, Flapjack.WordLangExpHOL.const 1#64])
    (Flapjack.WordLangExpHOL.const 3#64))

def sourceBody182_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody182_99 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody182_0, 182, 8)) (some 68) ([14]) (some (14, sourceBody182_98, 182, 9))

def sourceBody182_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_99 sourceBody182_4

def sourceBody182_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_100 sourceBody182_0

def sourceBody182_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_97 sourceBody182_101

def sourceBody182_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody182_104 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 6)

def sourceBody182_105 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 10)

def sourceBody182_106 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.store (Flapjack.WordLangExpHOL.var 14) 20

def sourceBody182_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_106 sourceBody182_0

def sourceBody182_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_105 sourceBody182_107

def sourceBody182_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_108 sourceBody182_0

def sourceBody182_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_104 sourceBody182_109

def sourceBody182_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_110

def sourceBody182_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_103 sourceBody182_111

def sourceBody182_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_112

def sourceBody182_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 56#64])

def sourceBody182_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody182_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_115 sourceBody182_109

def sourceBody182_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_116

def sourceBody182_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_114 sourceBody182_117

def sourceBody182_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_118

def sourceBody182_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_113 sourceBody182_119

def sourceBody182_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody182_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody182_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_122 sourceBody182_109

def sourceBody182_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_123

def sourceBody182_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_121 sourceBody182_124

def sourceBody182_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_125

def sourceBody182_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_120 sourceBody182_126

def sourceBody182_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 72#64])

def sourceBody182_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_128 sourceBody182_117

def sourceBody182_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_129

def sourceBody182_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_127 sourceBody182_130

def sourceBody182_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 18, Flapjack.WordLangExpHOL.const 80#64])

def sourceBody182_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 16)

def sourceBody182_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_133 sourceBody182_109

def sourceBody182_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_134

def sourceBody182_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_132 sourceBody182_135

def sourceBody182_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_136

def sourceBody182_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_131 sourceBody182_137

def sourceBody182_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 18)

def sourceBody182_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14]

def sourceBody182_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_140 sourceBody182_0

def sourceBody182_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_139 sourceBody182_141

def sourceBody182_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_138 sourceBody182_142

def sourceBody182_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_102 sourceBody182_143

def sourceBody182_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_144

def sourceBody182_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_145

def sourceBody182_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_96 sourceBody182_146

def sourceBody182_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_87 sourceBody182_147

def sourceBody182_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_148

def sourceBody182_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_149

def sourceBody182_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_81 sourceBody182_150

def sourceBody182_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_70 sourceBody182_151

def sourceBody182_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_152

def sourceBody182_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_153

def sourceBody182_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_58 sourceBody182_154

def sourceBody182_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_9 sourceBody182_155

def sourceBody182_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_156

def sourceBody182_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_8 sourceBody182_157

def sourceBody182_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_158

def sourceBody182_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_7 sourceBody182_159

def sourceBody182_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_160

def sourceBody182_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody182_0 sourceBody182_161

def source182 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (182, 3, sourceBody182_162)
end InitECandidate.Proofs.WordStages
