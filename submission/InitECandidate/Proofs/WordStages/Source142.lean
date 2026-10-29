import InitECandidate.Proofs.WordStages.Source126
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody142_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.var 10)

def sourceBody142_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 256#64)

def sourceBody142_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody142_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notLower) 28 (Flapjack.WordRegImm.reg 12) sourceBody142_2 sourceBody142_3

def sourceBody142_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody142_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_4 sourceBody142_5

def sourceBody142_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 28)

def sourceBody142_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [18, 28, 12, 22]

def sourceBody142_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody142_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_11 sourceBody142_12

def sourceBody142_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_10 sourceBody142_13

def sourceBody142_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_9 sourceBody142_14

def sourceBody142_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_3 sourceBody142_15

def sourceBody142_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_8 sourceBody142_16

def sourceBody142_18 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 22 (Flapjack.WordRegImm.imm 0#64) sourceBody142_17 sourceBody142_12

def sourceBody142_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_18 sourceBody142_5

def sourceBody142_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_19 sourceBody142_12

def sourceBody142_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_7 sourceBody142_20

def sourceBody142_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_6 sourceBody142_21

def sourceBody142_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_1 sourceBody142_22

def sourceBody142_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_0 sourceBody142_23

def sourceBody142_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 10)
    (Flapjack.WordLangExpHOL.const 6#64))

def sourceBody142_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 28
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.and [Flapjack.WordLangExpHOL.var 10, Flapjack.WordLangExpHOL.const 63#64])

def sourceBody142_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody142_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 4)

def sourceBody142_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 6)

def sourceBody142_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 8)

def sourceBody142_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 18)

def sourceBody142_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody142_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody142_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_35 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 20) sourceBody142_33 sourceBody142_34

def sourceBody142_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_35 sourceBody142_5

def sourceBody142_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody142_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 22)

def sourceBody142_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_38 sourceBody142_12

def sourceBody142_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_39 sourceBody142_12

def sourceBody142_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 16)

def sourceBody142_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_41 sourceBody142_12

def sourceBody142_43 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_42 sourceBody142_12

def sourceBody142_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_40 sourceBody142_43

def sourceBody142_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 26)

def sourceBody142_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_45 sourceBody142_12

def sourceBody142_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_46 sourceBody142_12

def sourceBody142_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_44 sourceBody142_47

def sourceBody142_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_49 sourceBody142_12

def sourceBody142_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_50 sourceBody142_12

def sourceBody142_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_48 sourceBody142_51

def sourceBody142_53 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody142_52 sourceBody142_12

def sourceBody142_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_53 sourceBody142_5

def sourceBody142_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_54 sourceBody142_12

def sourceBody142_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_37 sourceBody142_55

def sourceBody142_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_36 sourceBody142_56

def sourceBody142_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_32 sourceBody142_57

def sourceBody142_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_31 sourceBody142_58

def sourceBody142_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody142_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 16)

def sourceBody142_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_61 sourceBody142_12

def sourceBody142_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_62 sourceBody142_12

def sourceBody142_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 26)

def sourceBody142_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_64 sourceBody142_12

def sourceBody142_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_65 sourceBody142_12

def sourceBody142_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_63 sourceBody142_66

def sourceBody142_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_68 sourceBody142_12

def sourceBody142_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_69 sourceBody142_12

def sourceBody142_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_67 sourceBody142_70

def sourceBody142_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_71 sourceBody142_51

def sourceBody142_73 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody142_72 sourceBody142_12

def sourceBody142_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_73 sourceBody142_5

def sourceBody142_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_74 sourceBody142_12

def sourceBody142_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_37 sourceBody142_75

def sourceBody142_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_36 sourceBody142_76

def sourceBody142_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_60 sourceBody142_77

def sourceBody142_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_31 sourceBody142_78

def sourceBody142_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_59 sourceBody142_79

def sourceBody142_81 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody142_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 26)

def sourceBody142_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_82 sourceBody142_12

def sourceBody142_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_83 sourceBody142_12

def sourceBody142_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_10 sourceBody142_12

def sourceBody142_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_85 sourceBody142_12

def sourceBody142_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_84 sourceBody142_86

def sourceBody142_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_87 sourceBody142_70

def sourceBody142_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_88 sourceBody142_51

def sourceBody142_90 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody142_89 sourceBody142_12

def sourceBody142_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_90 sourceBody142_5

def sourceBody142_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_91 sourceBody142_12

def sourceBody142_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_37 sourceBody142_92

def sourceBody142_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_36 sourceBody142_93

def sourceBody142_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_81 sourceBody142_94

def sourceBody142_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_31 sourceBody142_95

def sourceBody142_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_80 sourceBody142_96

def sourceBody142_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 28)

def sourceBody142_99 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody142_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 24 (Flapjack.WordRegImm.reg 20) sourceBody142_33 sourceBody142_34

def sourceBody142_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_100 sourceBody142_5

def sourceBody142_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 12) (Flapjack.WordLangExpHOL.var 28),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 22)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 28])])

def sourceBody142_103 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody142_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_103 sourceBody142_12

def sourceBody142_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_104 sourceBody142_12

def sourceBody142_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_102 sourceBody142_105

def sourceBody142_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_106

def sourceBody142_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 22) (Flapjack.WordLangExpHOL.var 28),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 16)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 28])])

def sourceBody142_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 14)

def sourceBody142_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_109 sourceBody142_12

def sourceBody142_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_110 sourceBody142_12

def sourceBody142_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_108 sourceBody142_111

def sourceBody142_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_112

def sourceBody142_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_107 sourceBody142_113

def sourceBody142_115 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.or
    [Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 16) (Flapjack.WordLangExpHOL.var 28),
      Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl (Flapjack.WordLangExpHOL.var 26)
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.const 64#64, Flapjack.WordLangExpHOL.var 28])])

def sourceBody142_116 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.var 14)

def sourceBody142_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_116 sourceBody142_12

def sourceBody142_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_117 sourceBody142_12

def sourceBody142_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_115 sourceBody142_118

def sourceBody142_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_119

def sourceBody142_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_114 sourceBody142_120

def sourceBody142_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14
  (Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsr (Flapjack.WordLangExpHOL.var 26) (Flapjack.WordLangExpHOL.var 28))

def sourceBody142_123 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 14)

def sourceBody142_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_123 sourceBody142_12

def sourceBody142_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_124 sourceBody142_12

def sourceBody142_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_122 sourceBody142_125

def sourceBody142_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_126

def sourceBody142_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_121 sourceBody142_127

def sourceBody142_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody142_128 sourceBody142_12

def sourceBody142_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_129 sourceBody142_5

def sourceBody142_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_130 sourceBody142_12

def sourceBody142_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_37 sourceBody142_131

def sourceBody142_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_101 sourceBody142_132

def sourceBody142_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_99 sourceBody142_133

def sourceBody142_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_98 sourceBody142_134

def sourceBody142_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_97 sourceBody142_135

def sourceBody142_137 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 12)

def sourceBody142_138 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody142_139 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 16)

def sourceBody142_140 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 26)

def sourceBody142_141 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [14, 24, 20, 30]

def sourceBody142_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_141 sourceBody142_12

def sourceBody142_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_140 sourceBody142_142

def sourceBody142_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_139 sourceBody142_143

def sourceBody142_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_138 sourceBody142_144

def sourceBody142_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_137 sourceBody142_145

def sourceBody142_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_136 sourceBody142_146

def sourceBody142_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_30 sourceBody142_147

def sourceBody142_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_148

def sourceBody142_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_29 sourceBody142_149

def sourceBody142_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_150

def sourceBody142_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_28 sourceBody142_151

def sourceBody142_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_152

def sourceBody142_154 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_27 sourceBody142_153

def sourceBody142_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_154

def sourceBody142_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_26 sourceBody142_155

def sourceBody142_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_156

def sourceBody142_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_25 sourceBody142_157

def sourceBody142_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_12 sourceBody142_158

def sourceBody142_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody142_24 sourceBody142_159

def source142 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (142, 6, sourceBody142_160)
end InitECandidate.Proofs.WordStages
