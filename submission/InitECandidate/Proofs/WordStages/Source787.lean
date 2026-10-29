import InitECandidate.Proofs.WordStages.Source771
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody787_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody787_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody787_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody787_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody787_4 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody787_0, 787, 2)) (some 727) ([10, 22]) (some (10, sourceBody787_3, 787, 3))

def sourceBody787_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody787_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_4 sourceBody787_5

def sourceBody787_7 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_6 sourceBody787_0

def sourceBody787_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_2 sourceBody787_7

def sourceBody787_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_1 sourceBody787_8

def sourceBody787_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody787_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody787_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody787_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 16) sourceBody787_12 sourceBody787_13

def sourceBody787_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_14 sourceBody787_5

def sourceBody787_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody787_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody787_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [10]

def sourceBody787_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_18 sourceBody787_0

def sourceBody787_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_17 sourceBody787_19

def sourceBody787_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody787_20 sourceBody787_0

def sourceBody787_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_21 sourceBody787_5

def sourceBody787_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_22 sourceBody787_0

def sourceBody787_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_16 sourceBody787_23

def sourceBody787_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_15 sourceBody787_24

def sourceBody787_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_11 sourceBody787_25

def sourceBody787_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_10 sourceBody787_26

def sourceBody787_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 64#64])

def sourceBody787_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody787_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody787_0, 787, 4)) (some 727) ([10, 22]) (some (10, sourceBody787_3, 787, 5))

def sourceBody787_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_30 sourceBody787_5

def sourceBody787_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_31 sourceBody787_0

def sourceBody787_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_29 sourceBody787_32

def sourceBody787_34 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_28 sourceBody787_33

def sourceBody787_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_27 sourceBody787_34

def sourceBody787_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_35 sourceBody787_27

def sourceBody787_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 128#64])

def sourceBody787_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody787_39 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody787_0, 787, 6)) (some 727) ([10, 22]) (some (10, sourceBody787_3, 787, 7))

def sourceBody787_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_39 sourceBody787_5

def sourceBody787_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_40 sourceBody787_0

def sourceBody787_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_38 sourceBody787_41

def sourceBody787_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_37 sourceBody787_42

def sourceBody787_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_36 sourceBody787_43

def sourceBody787_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_44 sourceBody787_27

def sourceBody787_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody787_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64, Flapjack.WordLangExpHOL.const 48#64])

def sourceBody787_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([26]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody787_0, 787, 8)) (some 727) ([10, 22]) (some (10, sourceBody787_3, 787, 9))

def sourceBody787_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_48 sourceBody787_5

def sourceBody787_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_49 sourceBody787_0

def sourceBody787_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_47 sourceBody787_50

def sourceBody787_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_46 sourceBody787_51

def sourceBody787_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_45 sourceBody787_52

def sourceBody787_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_53 sourceBody787_27

def sourceBody787_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody787_56 : WordLangProgHOL (BitVec 64) :=
.call (some (([10]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody787_0, 787, 10)) (some 732) ([22]) (some (22, sourceBody787_55, 787, 11))

def sourceBody787_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_56 sourceBody787_5

def sourceBody787_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_57 sourceBody787_0

def sourceBody787_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_2 sourceBody787_58

def sourceBody787_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody787_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 16

def sourceBody787_62 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody787_0, 787, 12)) (some 732) ([16]) (some (16, sourceBody787_61, 787, 13))

def sourceBody787_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_62 sourceBody787_5

def sourceBody787_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_63 sourceBody787_0

def sourceBody787_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_60 sourceBody787_64

def sourceBody787_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 10)

def sourceBody787_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody787_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 30 (Flapjack.WordRegImm.reg 8) sourceBody787_68 sourceBody787_69

def sourceBody787_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_70 sourceBody787_5

def sourceBody787_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody787_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 30)

def sourceBody787_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_75 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 28) sourceBody787_74 sourceBody787_72

def sourceBody787_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_75 sourceBody787_5

def sourceBody787_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody787_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody787_81 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 18) sourceBody787_79 sourceBody787_80

def sourceBody787_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_81 sourceBody787_5

def sourceBody787_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody787_84 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 24)

def sourceBody787_85 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.WordRegImm.reg 20) sourceBody787_85 sourceBody787_83

def sourceBody787_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_86 sourceBody787_5

def sourceBody787_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 14, Flapjack.WordLangExpHOL.var 6])

def sourceBody787_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 192#64])

def sourceBody787_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 30

def sourceBody787_91 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody787_0, 787, 14)) (some 730) ([30]) (some (30, sourceBody787_90, 787, 15))

def sourceBody787_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_91 sourceBody787_5

def sourceBody787_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_92 sourceBody787_0

def sourceBody787_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_89 sourceBody787_93

def sourceBody787_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_94

def sourceBody787_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_95

def sourceBody787_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody787_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [16]

def sourceBody787_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_98 sourceBody787_0

def sourceBody787_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_97 sourceBody787_99

def sourceBody787_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_96 sourceBody787_100

def sourceBody787_102 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody787_101 sourceBody787_0

def sourceBody787_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_102 sourceBody787_5

def sourceBody787_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_103 sourceBody787_0

def sourceBody787_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_88 sourceBody787_104

def sourceBody787_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_87 sourceBody787_105

def sourceBody787_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_84 sourceBody787_106

def sourceBody787_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_83 sourceBody787_107

def sourceBody787_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_82 sourceBody787_108

def sourceBody787_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_78 sourceBody787_109

def sourceBody787_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_77 sourceBody787_110

def sourceBody787_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_76 sourceBody787_111

def sourceBody787_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_73 sourceBody787_112

def sourceBody787_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_72 sourceBody787_113

def sourceBody787_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_71 sourceBody787_114

def sourceBody787_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_67 sourceBody787_115

def sourceBody787_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_66 sourceBody787_116

def sourceBody787_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([16]), ((Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody787_0, 787, 16)) (some 731) ([30]) (some (30, sourceBody787_90, 787, 17))

def sourceBody787_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_118 sourceBody787_5

def sourceBody787_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_119 sourceBody787_0

def sourceBody787_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_89 sourceBody787_120

def sourceBody787_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_121

def sourceBody787_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_122

def sourceBody787_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_117 sourceBody787_123

def sourceBody787_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 4)

def sourceBody787_126 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.const 96#64])

def sourceBody787_127 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 786) ([0, 16, 30]) (none)

def sourceBody787_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_127 sourceBody787_0

def sourceBody787_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_126 sourceBody787_128

def sourceBody787_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_125 sourceBody787_129

def sourceBody787_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_124 sourceBody787_130

def sourceBody787_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_65 sourceBody787_131

def sourceBody787_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_132

def sourceBody787_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_133

def sourceBody787_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_59 sourceBody787_134

def sourceBody787_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_135

def sourceBody787_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_136

def sourceBody787_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_54 sourceBody787_137

def sourceBody787_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_9 sourceBody787_138

def sourceBody787_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_139

def sourceBody787_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody787_0 sourceBody787_140

def source787 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (787, 3, sourceBody787_141)
end InitECandidate.Proofs.WordStages
