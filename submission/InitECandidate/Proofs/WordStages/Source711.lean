import InitECandidate.Proofs.WordStages.Source695
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody711_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody711_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 2)

def sourceBody711_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 4)

def sourceBody711_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 6)

def sourceBody711_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 8)

def sourceBody711_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 10)

def sourceBody711_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 12)

def sourceBody711_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 14)

def sourceBody711_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 16)

def sourceBody711_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 18)

def sourceBody711_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 20)

def sourceBody711_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 22)

def sourceBody711_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 24)

def sourceBody711_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 36

def sourceBody711_14 : WordLangProgHOL (BitVec 64) :=
.call (some (([70, 54, 86, 28, 60, 44, 76]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody711_0, 711, 2)) (some 709) ([36, 68, 52, 84, 32, 64, 48, 80, 40, 72, 56, 88]) (some (36, sourceBody711_13, 711, 3))

def sourceBody711_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody711_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_14 sourceBody711_15

def sourceBody711_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_16 sourceBody711_0

def sourceBody711_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_12 sourceBody711_17

def sourceBody711_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_11 sourceBody711_18

def sourceBody711_20 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_10 sourceBody711_19

def sourceBody711_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_9 sourceBody711_20

def sourceBody711_22 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_8 sourceBody711_21

def sourceBody711_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_7 sourceBody711_22

def sourceBody711_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_6 sourceBody711_23

def sourceBody711_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_5 sourceBody711_24

def sourceBody711_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_4 sourceBody711_25

def sourceBody711_27 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_3 sourceBody711_26

def sourceBody711_28 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_2 sourceBody711_27

def sourceBody711_29 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_1 sourceBody711_28

def sourceBody711_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 36 (Flapjack.WordLangExpHOL.var 70)

def sourceBody711_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 68 (Flapjack.WordLangExpHOL.var 54)

def sourceBody711_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 86)

def sourceBody711_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 84 (Flapjack.WordLangExpHOL.var 28)

def sourceBody711_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 32 (Flapjack.WordLangExpHOL.var 60)

def sourceBody711_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 64 (Flapjack.WordLangExpHOL.var 44)

def sourceBody711_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 76)

def sourceBody711_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody711_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody711_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody711_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 80 (Flapjack.WordRegImm.reg 40) sourceBody711_38 sourceBody711_39

def sourceBody711_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_40 sourceBody711_15

def sourceBody711_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 80)

def sourceBody711_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 48 (Flapjack.WordLangExpHOL.var 36)

def sourceBody711_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 80 (Flapjack.WordLangExpHOL.var 68)

def sourceBody711_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 40 (Flapjack.WordLangExpHOL.var 52)

def sourceBody711_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 72 (Flapjack.WordLangExpHOL.var 84)

def sourceBody711_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 56 (Flapjack.WordLangExpHOL.var 32)

def sourceBody711_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 88 (Flapjack.WordLangExpHOL.var 64)

def sourceBody711_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [48, 80, 40, 72, 56, 88]

def sourceBody711_50 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_49 sourceBody711_0

def sourceBody711_51 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_48 sourceBody711_50

def sourceBody711_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_47 sourceBody711_51

def sourceBody711_53 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_46 sourceBody711_52

def sourceBody711_54 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_45 sourceBody711_53

def sourceBody711_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_44 sourceBody711_54

def sourceBody711_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_43 sourceBody711_55

def sourceBody711_57 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 72 (Flapjack.WordRegImm.imm 0#64) sourceBody711_56 sourceBody711_0

def sourceBody711_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_57 sourceBody711_15

def sourceBody711_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_58 sourceBody711_0

def sourceBody711_60 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_42 sourceBody711_59

def sourceBody711_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_41 sourceBody711_60

def sourceBody711_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_37 sourceBody711_61

def sourceBody711_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_36 sourceBody711_62

def sourceBody711_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 36)

def sourceBody711_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 68)

def sourceBody711_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 52)

def sourceBody711_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 84)

def sourceBody711_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 32)

def sourceBody711_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 64)

def sourceBody711_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 82 (Flapjack.WordLangExpHOL.const 13402431016077863595#64)

def sourceBody711_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 2210141511517208575#64)

def sourceBody711_72 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.const 7435674573564081700#64)

def sourceBody711_73 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 46 (Flapjack.WordLangExpHOL.const 7239337960414712511#64)

def sourceBody711_74 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 5412103778470702295#64)

def sourceBody711_75 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 38 (Flapjack.WordLangExpHOL.const 1873798617647539866#64)

def sourceBody711_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 58

def sourceBody711_77 : WordLangProgHOL (BitVec 64) :=
.call (some (([48, 80, 40, 72, 56, 88, 26]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody711_0, 711, 4)) (some 708) ([58, 42, 74, 34, 66, 50, 82, 30, 62, 46, 78, 38]) (some (58, sourceBody711_76, 711, 5))

def sourceBody711_78 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_77 sourceBody711_15

def sourceBody711_79 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_78 sourceBody711_0

def sourceBody711_80 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_75 sourceBody711_79

def sourceBody711_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_74 sourceBody711_80

def sourceBody711_82 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_73 sourceBody711_81

def sourceBody711_83 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_72 sourceBody711_82

def sourceBody711_84 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_71 sourceBody711_83

def sourceBody711_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_70 sourceBody711_84

def sourceBody711_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_69 sourceBody711_85

def sourceBody711_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_68 sourceBody711_86

def sourceBody711_88 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_67 sourceBody711_87

def sourceBody711_89 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_66 sourceBody711_88

def sourceBody711_90 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_65 sourceBody711_89

def sourceBody711_91 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_64 sourceBody711_90

def sourceBody711_92 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 58 (Flapjack.WordLangExpHOL.var 48)

def sourceBody711_93 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 80)

def sourceBody711_94 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 74 (Flapjack.WordLangExpHOL.var 40)

def sourceBody711_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 34 (Flapjack.WordLangExpHOL.var 72)

def sourceBody711_96 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 56)

def sourceBody711_97 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 50 (Flapjack.WordLangExpHOL.var 88)

def sourceBody711_98 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [58, 42, 74, 34, 66, 50]

def sourceBody711_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_98 sourceBody711_0

def sourceBody711_100 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_97 sourceBody711_99

def sourceBody711_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_96 sourceBody711_100

def sourceBody711_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_95 sourceBody711_101

def sourceBody711_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_94 sourceBody711_102

def sourceBody711_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_93 sourceBody711_103

def sourceBody711_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_92 sourceBody711_104

def sourceBody711_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_91 sourceBody711_105

def sourceBody711_107 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_106

def sourceBody711_108 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_107

def sourceBody711_109 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_108

def sourceBody711_110 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_109

def sourceBody711_111 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_110

def sourceBody711_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_111

def sourceBody711_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_112

def sourceBody711_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_113

def sourceBody711_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_114

def sourceBody711_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_115

def sourceBody711_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_116

def sourceBody711_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_117

def sourceBody711_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_118

def sourceBody711_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_119

def sourceBody711_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_63 sourceBody711_120

def sourceBody711_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_35 sourceBody711_121

def sourceBody711_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_122

def sourceBody711_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_34 sourceBody711_123

def sourceBody711_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_124

def sourceBody711_126 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_33 sourceBody711_125

def sourceBody711_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_126

def sourceBody711_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_32 sourceBody711_127

def sourceBody711_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_128

def sourceBody711_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_31 sourceBody711_129

def sourceBody711_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_130

def sourceBody711_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_30 sourceBody711_131

def sourceBody711_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_132

def sourceBody711_134 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_29 sourceBody711_133

def sourceBody711_135 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_134

def sourceBody711_136 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_135

def sourceBody711_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_136

def sourceBody711_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_137

def sourceBody711_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_138

def sourceBody711_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_139

def sourceBody711_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_140

def sourceBody711_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_141

def sourceBody711_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_142

def sourceBody711_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_143

def sourceBody711_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_144

def sourceBody711_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_145

def sourceBody711_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_146

def sourceBody711_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody711_0 sourceBody711_147

def source711 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (711, 13, sourceBody711_148)
end InitECandidate.Proofs.WordStages
