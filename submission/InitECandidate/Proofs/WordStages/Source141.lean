import InitECandidate.Proofs.WordStages.Source125
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody141_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody141_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody141_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody141_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody141_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 12) sourceBody141_2 sourceBody141_3

def sourceBody141_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody141_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_4 sourceBody141_5

def sourceBody141_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody141_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody141_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody141_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody141_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18, 28, 12, 22]

def sourceBody141_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody141_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_11 sourceBody141_12

def sourceBody141_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_10 sourceBody141_13

def sourceBody141_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_9 sourceBody141_14

def sourceBody141_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_3 sourceBody141_15

def sourceBody141_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_8 sourceBody141_16

def sourceBody141_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody141_17 sourceBody141_12

def sourceBody141_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_18 sourceBody141_5

def sourceBody141_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_19 sourceBody141_12

def sourceBody141_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_7 sourceBody141_20

def sourceBody141_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_6 sourceBody141_21

def sourceBody141_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_1 sourceBody141_22

def sourceBody141_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_0 sourceBody141_23

def sourceBody141_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody141_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 63#64])

def sourceBody141_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody141_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody141_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody141_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody141_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody141_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody141_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody141_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody141_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 20) sourceBody141_33 sourceBody141_34

def sourceBody141_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_35 sourceBody141_5

def sourceBody141_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody141_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 16)

def sourceBody141_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_38 sourceBody141_12

def sourceBody141_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_39 sourceBody141_12

def sourceBody141_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 22)

def sourceBody141_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_41 sourceBody141_12

def sourceBody141_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_42 sourceBody141_12

def sourceBody141_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_40 sourceBody141_43

def sourceBody141_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 12)

def sourceBody141_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_45 sourceBody141_12

def sourceBody141_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_46 sourceBody141_12

def sourceBody141_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_44 sourceBody141_47

def sourceBody141_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_9 sourceBody141_12

def sourceBody141_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_49 sourceBody141_12

def sourceBody141_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_48 sourceBody141_50

def sourceBody141_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody141_51 sourceBody141_12

def sourceBody141_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_52 sourceBody141_5

def sourceBody141_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_53 sourceBody141_12

def sourceBody141_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_37 sourceBody141_54

def sourceBody141_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_36 sourceBody141_55

def sourceBody141_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_32 sourceBody141_56

def sourceBody141_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_31 sourceBody141_57

def sourceBody141_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody141_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 22)

def sourceBody141_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_60 sourceBody141_12

def sourceBody141_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_61 sourceBody141_12

def sourceBody141_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 12)

def sourceBody141_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_63 sourceBody141_12

def sourceBody141_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_64 sourceBody141_12

def sourceBody141_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_62 sourceBody141_65

def sourceBody141_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_10 sourceBody141_12

def sourceBody141_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_67 sourceBody141_12

def sourceBody141_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_66 sourceBody141_68

def sourceBody141_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_69 sourceBody141_50

def sourceBody141_71 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody141_70 sourceBody141_12

def sourceBody141_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_71 sourceBody141_5

def sourceBody141_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_72 sourceBody141_12

def sourceBody141_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_37 sourceBody141_73

def sourceBody141_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_36 sourceBody141_74

def sourceBody141_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_59 sourceBody141_75

def sourceBody141_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_31 sourceBody141_76

def sourceBody141_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_58 sourceBody141_77

def sourceBody141_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody141_80 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 12)

def sourceBody141_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_80 sourceBody141_12

def sourceBody141_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_81 sourceBody141_12

def sourceBody141_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody141_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_83 sourceBody141_12

def sourceBody141_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_84 sourceBody141_12

def sourceBody141_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_82 sourceBody141_85

def sourceBody141_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_86 sourceBody141_68

def sourceBody141_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_87 sourceBody141_50

def sourceBody141_89 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody141_88 sourceBody141_12

def sourceBody141_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_89 sourceBody141_5

def sourceBody141_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_90 sourceBody141_12

def sourceBody141_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_37 sourceBody141_91

def sourceBody141_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_36 sourceBody141_92

def sourceBody141_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_79 sourceBody141_93

def sourceBody141_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_31 sourceBody141_94

def sourceBody141_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_78 sourceBody141_95

def sourceBody141_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody141_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody141_99 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 20) sourceBody141_33 sourceBody141_34

def sourceBody141_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_99 sourceBody141_5

def sourceBody141_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26) (Flapjack.WordLangExpHOL.var 28),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 28])])

def sourceBody141_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody141_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_102 sourceBody141_12

def sourceBody141_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_103 sourceBody141_12

def sourceBody141_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_101 sourceBody141_104

def sourceBody141_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_105

def sourceBody141_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16) (Flapjack.WordLangExpHOL.var 28),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 28])])

def sourceBody141_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody141_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_108 sourceBody141_12

def sourceBody141_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_109 sourceBody141_12

def sourceBody141_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_107 sourceBody141_110

def sourceBody141_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_111

def sourceBody141_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_106 sourceBody141_112

def sourceBody141_114 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22) (Flapjack.WordLangExpHOL.var 28),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 12)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 28])])

def sourceBody141_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody141_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_115 sourceBody141_12

def sourceBody141_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_116 sourceBody141_12

def sourceBody141_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_114 sourceBody141_117

def sourceBody141_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_118

def sourceBody141_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_113 sourceBody141_119

def sourceBody141_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 12) (Flapjack.WordLangExpHOL.var 28))

def sourceBody141_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody141_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_122 sourceBody141_12

def sourceBody141_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_123 sourceBody141_12

def sourceBody141_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_121 sourceBody141_124

def sourceBody141_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_125

def sourceBody141_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_120 sourceBody141_126

def sourceBody141_128 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody141_127 sourceBody141_12

def sourceBody141_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_128 sourceBody141_5

def sourceBody141_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_129 sourceBody141_12

def sourceBody141_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_37 sourceBody141_130

def sourceBody141_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_100 sourceBody141_131

def sourceBody141_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_98 sourceBody141_132

def sourceBody141_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_97 sourceBody141_133

def sourceBody141_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_96 sourceBody141_134

def sourceBody141_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody141_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody141_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody141_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody141_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 24, 20, 30]

def sourceBody141_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_140 sourceBody141_12

def sourceBody141_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_139 sourceBody141_141

def sourceBody141_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_138 sourceBody141_142

def sourceBody141_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_137 sourceBody141_143

def sourceBody141_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_136 sourceBody141_144

def sourceBody141_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_135 sourceBody141_145

def sourceBody141_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_30 sourceBody141_146

def sourceBody141_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_147

def sourceBody141_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_29 sourceBody141_148

def sourceBody141_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_149

def sourceBody141_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_28 sourceBody141_150

def sourceBody141_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_151

def sourceBody141_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_27 sourceBody141_152

def sourceBody141_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_153

def sourceBody141_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_26 sourceBody141_154

def sourceBody141_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_155

def sourceBody141_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_25 sourceBody141_156

def sourceBody141_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_12 sourceBody141_157

def sourceBody141_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody141_24 sourceBody141_158

def source141 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (141, 6, sourceBody141_159)
end InitECandidate.Proofs.WordStages
