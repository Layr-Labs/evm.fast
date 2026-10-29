import InitECandidate.Proofs.WordStages.Source821
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody837_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)

def sourceBody837_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody837_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody837_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody837_4 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) sourceBody837_2 sourceBody837_3

def sourceBody837_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody837_6 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_4 sourceBody837_5

def sourceBody837_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)

def sourceBody837_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody837_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 10

def sourceBody837_10 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 2)) (some 832) ([]) (some (10, sourceBody837_9, 837, 3))

def sourceBody837_11 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_10 sourceBody837_5

def sourceBody837_12 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_11 sourceBody837_8

def sourceBody837_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_12

def sourceBody837_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_13

def sourceBody837_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody837_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [6]

def sourceBody837_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_16 sourceBody837_8

def sourceBody837_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_15 sourceBody837_17

def sourceBody837_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_14 sourceBody837_18

def sourceBody837_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_19 sourceBody837_8

def sourceBody837_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_20 sourceBody837_5

def sourceBody837_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_21 sourceBody837_8

def sourceBody837_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_22

def sourceBody837_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_23

def sourceBody837_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_1 sourceBody837_24

def sourceBody837_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_25

def sourceBody837_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 2#64)

def sourceBody837_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 4)) (some 831) ([]) (some (10, sourceBody837_9, 837, 5))

def sourceBody837_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_28 sourceBody837_5

def sourceBody837_30 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_29 sourceBody837_8

def sourceBody837_31 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_30

def sourceBody837_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_31

def sourceBody837_33 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_32 sourceBody837_18

def sourceBody837_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_33 sourceBody837_8

def sourceBody837_35 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_34 sourceBody837_5

def sourceBody837_36 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_35 sourceBody837_8

def sourceBody837_37 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_36

def sourceBody837_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_37

def sourceBody837_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_27 sourceBody837_38

def sourceBody837_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_39

def sourceBody837_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_26 sourceBody837_40

def sourceBody837_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody837_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 6)) (some 833) ([]) (some (10, sourceBody837_9, 837, 7))

def sourceBody837_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_43 sourceBody837_5

def sourceBody837_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_44 sourceBody837_8

def sourceBody837_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_45

def sourceBody837_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_46

def sourceBody837_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_47 sourceBody837_18

def sourceBody837_49 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_48 sourceBody837_8

def sourceBody837_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_49 sourceBody837_5

def sourceBody837_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_50 sourceBody837_8

def sourceBody837_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_51

def sourceBody837_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_52

def sourceBody837_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_42 sourceBody837_53

def sourceBody837_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_54

def sourceBody837_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_41 sourceBody837_55

def sourceBody837_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody837_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 8)) (some 830) ([]) (some (10, sourceBody837_9, 837, 9))

def sourceBody837_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_58 sourceBody837_5

def sourceBody837_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_59 sourceBody837_8

def sourceBody837_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_60

def sourceBody837_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_61

def sourceBody837_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_62 sourceBody837_18

def sourceBody837_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_63 sourceBody837_8

def sourceBody837_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_64 sourceBody837_5

def sourceBody837_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_65 sourceBody837_8

def sourceBody837_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_66

def sourceBody837_68 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_67

def sourceBody837_69 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_57 sourceBody837_68

def sourceBody837_70 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_69

def sourceBody837_71 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_56 sourceBody837_70

def sourceBody837_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 6#64)

def sourceBody837_73 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 10)) (some 701) ([]) (some (10, sourceBody837_9, 837, 11))

def sourceBody837_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_73 sourceBody837_5

def sourceBody837_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_74 sourceBody837_8

def sourceBody837_76 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_75

def sourceBody837_77 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_76

def sourceBody837_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_77 sourceBody837_18

def sourceBody837_79 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_78 sourceBody837_8

def sourceBody837_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_79 sourceBody837_5

def sourceBody837_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_80 sourceBody837_8

def sourceBody837_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_81

def sourceBody837_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_82

def sourceBody837_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_72 sourceBody837_83

def sourceBody837_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_84

def sourceBody837_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_71 sourceBody837_85

def sourceBody837_87 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 7#64)

def sourceBody837_88 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 12)) (some 702) ([]) (some (10, sourceBody837_9, 837, 13))

def sourceBody837_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_88 sourceBody837_5

def sourceBody837_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_89 sourceBody837_8

def sourceBody837_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_90

def sourceBody837_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_91

def sourceBody837_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_92 sourceBody837_18

def sourceBody837_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_93 sourceBody837_8

def sourceBody837_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_94 sourceBody837_5

def sourceBody837_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_95 sourceBody837_8

def sourceBody837_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_96

def sourceBody837_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_97

def sourceBody837_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_87 sourceBody837_98

def sourceBody837_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_99

def sourceBody837_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_86 sourceBody837_100

def sourceBody837_102 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 8#64)

def sourceBody837_103 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 14)) (some 703) ([]) (some (10, sourceBody837_9, 837, 15))

def sourceBody837_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_103 sourceBody837_5

def sourceBody837_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_104 sourceBody837_8

def sourceBody837_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_105

def sourceBody837_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_106

def sourceBody837_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_107 sourceBody837_18

def sourceBody837_109 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_108 sourceBody837_8

def sourceBody837_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_109 sourceBody837_5

def sourceBody837_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_110 sourceBody837_8

def sourceBody837_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_111

def sourceBody837_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_112

def sourceBody837_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_102 sourceBody837_113

def sourceBody837_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_114

def sourceBody837_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_101 sourceBody837_115

def sourceBody837_117 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 5#64)

def sourceBody837_118 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 16)) (some 836) ([]) (some (10, sourceBody837_9, 837, 17))

def sourceBody837_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_118 sourceBody837_5

def sourceBody837_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_119 sourceBody837_8

def sourceBody837_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_120

def sourceBody837_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_121

def sourceBody837_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_122 sourceBody837_18

def sourceBody837_124 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_123 sourceBody837_8

def sourceBody837_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_124 sourceBody837_5

def sourceBody837_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_125 sourceBody837_8

def sourceBody837_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_126

def sourceBody837_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_127

def sourceBody837_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_117 sourceBody837_128

def sourceBody837_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_129

def sourceBody837_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_116 sourceBody837_130

def sourceBody837_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 9#64)

def sourceBody837_133 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 18)) (some 834) ([]) (some (10, sourceBody837_9, 837, 19))

def sourceBody837_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_133 sourceBody837_5

def sourceBody837_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_134 sourceBody837_8

def sourceBody837_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_135

def sourceBody837_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_136

def sourceBody837_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_137 sourceBody837_18

def sourceBody837_139 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_138 sourceBody837_8

def sourceBody837_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_139 sourceBody837_5

def sourceBody837_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_140 sourceBody837_8

def sourceBody837_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_141

def sourceBody837_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_142

def sourceBody837_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_132 sourceBody837_143

def sourceBody837_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_144

def sourceBody837_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_131 sourceBody837_145

def sourceBody837_147 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody837_148 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 20)) (some 828) ([]) (some (10, sourceBody837_9, 837, 21))

def sourceBody837_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_148 sourceBody837_5

def sourceBody837_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_149 sourceBody837_8

def sourceBody837_151 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_150

def sourceBody837_152 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_151

def sourceBody837_153 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_152 sourceBody837_18

def sourceBody837_154 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_153 sourceBody837_8

def sourceBody837_155 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_154 sourceBody837_5

def sourceBody837_156 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_155 sourceBody837_8

def sourceBody837_157 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_156

def sourceBody837_158 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_157

def sourceBody837_159 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_147 sourceBody837_158

def sourceBody837_160 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_159

def sourceBody837_161 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_146 sourceBody837_160

def sourceBody837_162 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 11#64)

def sourceBody837_163 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 22)) (some 821) ([]) (some (10, sourceBody837_9, 837, 23))

def sourceBody837_164 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_163 sourceBody837_5

def sourceBody837_165 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_164 sourceBody837_8

def sourceBody837_166 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_165

def sourceBody837_167 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_166

def sourceBody837_168 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_167 sourceBody837_18

def sourceBody837_169 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_168 sourceBody837_8

def sourceBody837_170 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_169 sourceBody837_5

def sourceBody837_171 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_170 sourceBody837_8

def sourceBody837_172 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_171

def sourceBody837_173 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_172

def sourceBody837_174 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_162 sourceBody837_173

def sourceBody837_175 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_174

def sourceBody837_176 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_161 sourceBody837_175

def sourceBody837_177 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 12#64)

def sourceBody837_178 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 24)) (some 822) ([]) (some (10, sourceBody837_9, 837, 25))

def sourceBody837_179 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_178 sourceBody837_5

def sourceBody837_180 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_179 sourceBody837_8

def sourceBody837_181 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_180

def sourceBody837_182 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_181

def sourceBody837_183 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_182 sourceBody837_18

def sourceBody837_184 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_183 sourceBody837_8

def sourceBody837_185 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_184 sourceBody837_5

def sourceBody837_186 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_185 sourceBody837_8

def sourceBody837_187 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_186

def sourceBody837_188 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_187

def sourceBody837_189 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_177 sourceBody837_188

def sourceBody837_190 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_189

def sourceBody837_191 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_176 sourceBody837_190

def sourceBody837_192 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 13#64)

def sourceBody837_193 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 26)) (some 823) ([]) (some (10, sourceBody837_9, 837, 27))

def sourceBody837_194 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_193 sourceBody837_5

def sourceBody837_195 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_194 sourceBody837_8

def sourceBody837_196 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_195

def sourceBody837_197 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_196

def sourceBody837_198 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_197 sourceBody837_18

def sourceBody837_199 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_198 sourceBody837_8

def sourceBody837_200 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_199 sourceBody837_5

def sourceBody837_201 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_200 sourceBody837_8

def sourceBody837_202 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_201

def sourceBody837_203 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_202

def sourceBody837_204 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_192 sourceBody837_203

def sourceBody837_205 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_204

def sourceBody837_206 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_191 sourceBody837_205

def sourceBody837_207 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 14#64)

def sourceBody837_208 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 28)) (some 824) ([]) (some (10, sourceBody837_9, 837, 29))

def sourceBody837_209 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_208 sourceBody837_5

def sourceBody837_210 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_209 sourceBody837_8

def sourceBody837_211 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_210

def sourceBody837_212 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_211

def sourceBody837_213 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_212 sourceBody837_18

def sourceBody837_214 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_213 sourceBody837_8

def sourceBody837_215 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_214 sourceBody837_5

def sourceBody837_216 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_215 sourceBody837_8

def sourceBody837_217 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_216

def sourceBody837_218 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_217

def sourceBody837_219 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_207 sourceBody837_218

def sourceBody837_220 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_219

def sourceBody837_221 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_206 sourceBody837_220

def sourceBody837_222 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 15#64)

def sourceBody837_223 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 30)) (some 825) ([]) (some (10, sourceBody837_9, 837, 31))

def sourceBody837_224 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_223 sourceBody837_5

def sourceBody837_225 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_224 sourceBody837_8

def sourceBody837_226 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_225

def sourceBody837_227 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_226

def sourceBody837_228 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_227 sourceBody837_18

def sourceBody837_229 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_228 sourceBody837_8

def sourceBody837_230 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_229 sourceBody837_5

def sourceBody837_231 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_230 sourceBody837_8

def sourceBody837_232 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_231

def sourceBody837_233 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_232

def sourceBody837_234 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_222 sourceBody837_233

def sourceBody837_235 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_234

def sourceBody837_236 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_221 sourceBody837_235

def sourceBody837_237 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 16#64)

def sourceBody837_238 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 32)) (some 826) ([]) (some (10, sourceBody837_9, 837, 33))

def sourceBody837_239 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_238 sourceBody837_5

def sourceBody837_240 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_239 sourceBody837_8

def sourceBody837_241 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_240

def sourceBody837_242 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_241

def sourceBody837_243 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_242 sourceBody837_18

def sourceBody837_244 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_243 sourceBody837_8

def sourceBody837_245 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_244 sourceBody837_5

def sourceBody837_246 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_245 sourceBody837_8

def sourceBody837_247 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_246

def sourceBody837_248 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_247

def sourceBody837_249 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_237 sourceBody837_248

def sourceBody837_250 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_249

def sourceBody837_251 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_236 sourceBody837_250

def sourceBody837_252 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 17#64)

def sourceBody837_253 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 34)) (some 827) ([]) (some (10, sourceBody837_9, 837, 35))

def sourceBody837_254 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_253 sourceBody837_5

def sourceBody837_255 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_254 sourceBody837_8

def sourceBody837_256 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_255

def sourceBody837_257 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_256

def sourceBody837_258 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_257 sourceBody837_18

def sourceBody837_259 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_258 sourceBody837_8

def sourceBody837_260 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_259 sourceBody837_5

def sourceBody837_261 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_260 sourceBody837_8

def sourceBody837_262 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_261

def sourceBody837_263 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_262

def sourceBody837_264 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_252 sourceBody837_263

def sourceBody837_265 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_264

def sourceBody837_266 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_251 sourceBody837_265

def sourceBody837_267 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 18#64)

def sourceBody837_268 : WordLangProgHOL (BitVec 64) :=
.call (some (([6]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody837_8, 837, 36)) (some 656) ([]) (some (10, sourceBody837_9, 837, 37))

def sourceBody837_269 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_268 sourceBody837_5

def sourceBody837_270 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_269 sourceBody837_8

def sourceBody837_271 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_270

def sourceBody837_272 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_271

def sourceBody837_273 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_272 sourceBody837_18

def sourceBody837_274 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) sourceBody837_273 sourceBody837_8

def sourceBody837_275 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_274 sourceBody837_5

def sourceBody837_276 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_275 sourceBody837_8

def sourceBody837_277 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_7 sourceBody837_276

def sourceBody837_278 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_6 sourceBody837_277

def sourceBody837_279 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_267 sourceBody837_278

def sourceBody837_280 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_0 sourceBody837_279

def sourceBody837_281 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_266 sourceBody837_280

def sourceBody837_282 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 99#64)

def sourceBody837_283 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)

def sourceBody837_284 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_283 sourceBody837_8

def sourceBody837_285 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_284 sourceBody837_8

def sourceBody837_286 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_282 sourceBody837_285

def sourceBody837_287 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_8 sourceBody837_286

def sourceBody837_288 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 4#64)

def sourceBody837_289 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 6

def sourceBody837_290 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_288 sourceBody837_289

def sourceBody837_291 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_287 sourceBody837_290

def sourceBody837_292 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_281 sourceBody837_291

def sourceBody837_293 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody837_292 sourceBody837_18

def source837 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (837, 2, sourceBody837_293)
end InitECandidate.Proofs.WordStages
