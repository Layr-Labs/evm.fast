import InitECandidate.Proofs.WordStages.Source290
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody306_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody306_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody306_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody306_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 2)

def sourceBody306_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody306_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody306_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody306_7 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 22) sourceBody306_5 sourceBody306_6

def sourceBody306_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_7 sourceBody306_2

def sourceBody306_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 14)

def sourceBody306_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 0#64]))

def sourceBody306_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 18)

def sourceBody306_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody306_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody306_14 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 22 (Flapjack.WordRegImm.reg 8) sourceBody306_13 sourceBody306_4

def sourceBody306_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_14 sourceBody306_2

def sourceBody306_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody306_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody306_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 22

def sourceBody306_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([14]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody306_0, 306, 2)) (some 286) ([22]) (some (22, sourceBody306_18, 306, 3))

def sourceBody306_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_19 sourceBody306_2

def sourceBody306_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_20 sourceBody306_0

def sourceBody306_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_17 sourceBody306_21

def sourceBody306_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_22

def sourceBody306_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_23

def sourceBody306_25 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody306_24 sourceBody306_0

def sourceBody306_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_25 sourceBody306_2

def sourceBody306_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_26 sourceBody306_0

def sourceBody306_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_16 sourceBody306_27

def sourceBody306_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_15 sourceBody306_28

def sourceBody306_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_12 sourceBody306_29

def sourceBody306_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_11 sourceBody306_30

def sourceBody306_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody306_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 40#64]))

def sourceBody306_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 10])

def sourceBody306_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.WordRegImm.reg 16) sourceBody306_32 sourceBody306_12

def sourceBody306_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_35 sourceBody306_2

def sourceBody306_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 8)

def sourceBody306_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64]))

def sourceBody306_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def sourceBody306_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody306_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 8

def sourceBody306_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln, Flapjack.Spt.ln)), sourceBody306_0, 306, 4)) (some 79) ([8, 16, 12]) (some (8, sourceBody306_41, 306, 5))

def sourceBody306_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_42 sourceBody306_2

def sourceBody306_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_43 sourceBody306_0

def sourceBody306_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_40 sourceBody306_44

def sourceBody306_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_39 sourceBody306_45

def sourceBody306_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_38 sourceBody306_46

def sourceBody306_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody306_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody306_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody306_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.reg 12) sourceBody306_49 sourceBody306_50

def sourceBody306_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_51 sourceBody306_2

def sourceBody306_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody306_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody306_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 56#64]))

def sourceBody306_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [8, 16, 12]

def sourceBody306_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_56 sourceBody306_0

def sourceBody306_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_55 sourceBody306_57

def sourceBody306_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_54 sourceBody306_58

def sourceBody306_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_32 sourceBody306_59

def sourceBody306_61 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody306_60 sourceBody306_0

def sourceBody306_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_61 sourceBody306_2

def sourceBody306_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_62 sourceBody306_0

def sourceBody306_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_53 sourceBody306_63

def sourceBody306_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_52 sourceBody306_64

def sourceBody306_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_48 sourceBody306_65

def sourceBody306_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_16 sourceBody306_66

def sourceBody306_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_47 sourceBody306_67

def sourceBody306_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_68

def sourceBody306_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_69

def sourceBody306_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody306_70 sourceBody306_0

def sourceBody306_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_71 sourceBody306_2

def sourceBody306_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_72 sourceBody306_0

def sourceBody306_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_37 sourceBody306_73

def sourceBody306_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_36 sourceBody306_74

def sourceBody306_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_34 sourceBody306_75

def sourceBody306_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_9 sourceBody306_76

def sourceBody306_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [22, 8, 16]

def sourceBody306_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_78 sourceBody306_0

def sourceBody306_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_50 sourceBody306_79

def sourceBody306_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_12 sourceBody306_80

def sourceBody306_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_4 sourceBody306_81

def sourceBody306_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_77 sourceBody306_82

def sourceBody306_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_33 sourceBody306_83

def sourceBody306_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_84

def sourceBody306_86 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody306_85 sourceBody306_0

def sourceBody306_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_86 sourceBody306_2

def sourceBody306_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_87 sourceBody306_0

def sourceBody306_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_16 sourceBody306_88

def sourceBody306_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_15 sourceBody306_89

def sourceBody306_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_32 sourceBody306_90

def sourceBody306_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_11 sourceBody306_91

def sourceBody306_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_31 sourceBody306_92

def sourceBody306_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody306_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.var 10])

def sourceBody306_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody306_97 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 16) sourceBody306_32 sourceBody306_12

def sourceBody306_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_97 sourceBody306_2

def sourceBody306_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody306_82 sourceBody306_0

def sourceBody306_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_99 sourceBody306_2

def sourceBody306_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_100 sourceBody306_0

def sourceBody306_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_37 sourceBody306_101

def sourceBody306_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_98 sourceBody306_102

def sourceBody306_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_96 sourceBody306_103

def sourceBody306_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_95 sourceBody306_104

def sourceBody306_106 : WordLangProgHOL (BitVec 64) :=
.call (some (([22]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody306_0, 306, 6)) (some 79) ([8, 16, 12]) (some (8, sourceBody306_41, 306, 7))

def sourceBody306_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_106 sourceBody306_2

def sourceBody306_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_107 sourceBody306_0

def sourceBody306_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_40 sourceBody306_108

def sourceBody306_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_39 sourceBody306_109

def sourceBody306_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_38 sourceBody306_110

def sourceBody306_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 16 (Flapjack.WordRegImm.reg 12) sourceBody306_49 sourceBody306_50

def sourceBody306_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_112 sourceBody306_2

def sourceBody306_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_48 sourceBody306_57

def sourceBody306_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_50 sourceBody306_114

def sourceBody306_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_12 sourceBody306_115

def sourceBody306_117 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 0#64) sourceBody306_116 sourceBody306_0

def sourceBody306_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_117 sourceBody306_2

def sourceBody306_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_118 sourceBody306_0

def sourceBody306_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_53 sourceBody306_119

def sourceBody306_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_113 sourceBody306_120

def sourceBody306_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_48 sourceBody306_121

def sourceBody306_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_16 sourceBody306_122

def sourceBody306_124 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.var 14])

def sourceBody306_125 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 8)

def sourceBody306_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_125 sourceBody306_0

def sourceBody306_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_126 sourceBody306_0

def sourceBody306_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_124 sourceBody306_127

def sourceBody306_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_128

def sourceBody306_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_123 sourceBody306_129

def sourceBody306_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 48#64]))

def sourceBody306_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 8)

def sourceBody306_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_132 sourceBody306_0

def sourceBody306_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_133 sourceBody306_0

def sourceBody306_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_131 sourceBody306_134

def sourceBody306_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_135

def sourceBody306_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_130 sourceBody306_136

def sourceBody306_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_111 sourceBody306_137

def sourceBody306_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_138

def sourceBody306_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_139

def sourceBody306_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_105 sourceBody306_140

def sourceBody306_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_33 sourceBody306_141

def sourceBody306_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_142

def sourceBody306_144 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 10)

def sourceBody306_145 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 6)

def sourceBody306_146 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 168#64]))

def sourceBody306_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_36 sourceBody306_102

def sourceBody306_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_50 sourceBody306_147

def sourceBody306_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_9 sourceBody306_148

def sourceBody306_150 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 160#64]))

def sourceBody306_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_96 sourceBody306_79

def sourceBody306_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_150 sourceBody306_151

def sourceBody306_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_13 sourceBody306_152

def sourceBody306_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_149 sourceBody306_153

def sourceBody306_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_146 sourceBody306_154

def sourceBody306_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_155

def sourceBody306_157 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody306_156 sourceBody306_0

def sourceBody306_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_157 sourceBody306_2

def sourceBody306_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_158 sourceBody306_0

def sourceBody306_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_16 sourceBody306_159

def sourceBody306_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_15 sourceBody306_160

def sourceBody306_162 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_145 sourceBody306_161

def sourceBody306_163 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_144 sourceBody306_162

def sourceBody306_164 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 4, Flapjack.WordLangExpHOL.var 10])

def sourceBody306_165 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 14 (Flapjack.WordLangAddr.addr 14 0#64))

def sourceBody306_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_165 sourceBody306_0

def sourceBody306_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_164 sourceBody306_166

def sourceBody306_168 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 2, Flapjack.WordLangExpHOL.const 32#64,
        Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 14)
          (Flapjack.WordLangExpHOL.const 3#64)]))

def sourceBody306_169 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 2 (Flapjack.WordLangExpHOL.var 22)

def sourceBody306_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_169 sourceBody306_0

def sourceBody306_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_170 sourceBody306_0

def sourceBody306_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_168 sourceBody306_171

def sourceBody306_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_167 sourceBody306_172

def sourceBody306_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_163 sourceBody306_173

def sourceBody306_175 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 1#64])

def sourceBody306_176 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 14)

def sourceBody306_177 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_176 sourceBody306_0

def sourceBody306_178 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_177 sourceBody306_0

def sourceBody306_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_175 sourceBody306_178

def sourceBody306_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_179

def sourceBody306_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_174 sourceBody306_180

def sourceBody306_182 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.WordRegImm.imm 0#64) sourceBody306_143 sourceBody306_181

def sourceBody306_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_182 sourceBody306_2

def sourceBody306_184 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_183 sourceBody306_0

def sourceBody306_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_16 sourceBody306_184

def sourceBody306_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_15 sourceBody306_185

def sourceBody306_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_94 sourceBody306_186

def sourceBody306_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_11 sourceBody306_187

def sourceBody306_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_93 sourceBody306_188

def sourceBody306_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_10 sourceBody306_189

def sourceBody306_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_190

def sourceBody306_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.continue 0

def sourceBody306_193 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_191 sourceBody306_192

def sourceBody306_194 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.break 0

def sourceBody306_195 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody306_193 sourceBody306_194

def sourceBody306_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_195 sourceBody306_2

def sourceBody306_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_196 sourceBody306_0

def sourceBody306_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_9 sourceBody306_197

def sourceBody306_199 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_8 sourceBody306_198

def sourceBody306_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_4 sourceBody306_199

def sourceBody306_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_3 sourceBody306_200

def sourceBody306_202 : WordLangProgHOL (BitVec 64) :=
.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit Flapjack.Spt.ln) sourceBody306_201 (Flapjack.Spt.ls PUnit.unit)

def sourceBody306_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_202 sourceBody306_2

def sourceBody306_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_2 sourceBody306_203

def sourceBody306_205 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody306_206 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18, 14, 22]

def sourceBody306_207 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_206 sourceBody306_0

def sourceBody306_208 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_4 sourceBody306_207

def sourceBody306_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_6 sourceBody306_208

def sourceBody306_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_205 sourceBody306_209

def sourceBody306_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_204 sourceBody306_210

def sourceBody306_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_1 sourceBody306_211

def sourceBody306_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody306_0 sourceBody306_212

def source306 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (306, 4, sourceBody306_213)
end InitECandidate.Proofs.WordStages
