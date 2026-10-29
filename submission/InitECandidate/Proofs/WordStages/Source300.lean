import InitECandidate.Proofs.WordStages.Source284
import Flapjack.Pancake.WordLang
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.WordStages
def sourceBody300_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def sourceBody300_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 16 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.var 4)

def sourceBody300_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 6)

def sourceBody300_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 20

def sourceBody300_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def sourceBody300_8 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_0

def sourceBody300_9 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_8 sourceBody300_0

def sourceBody300_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 3#64)

def sourceBody300_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 14

def sourceBody300_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody300_0, 300, 3)) (some 286) ([14]) (some (14, sourceBody300_11, 300, 4))

def sourceBody300_13 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_12 sourceBody300_7

def sourceBody300_14 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_13 sourceBody300_0

def sourceBody300_15 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_10 sourceBody300_14

def sourceBody300_16 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_15

def sourceBody300_17 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_16

def sourceBody300_18 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_9 sourceBody300_17

def sourceBody300_19 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_7 sourceBody300_18

def sourceBody300_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 20 (Flapjack.WordRegImm.imm 1#64) sourceBody300_6 sourceBody300_19

def sourceBody300_21 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_20 sourceBody300_7

def sourceBody300_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([10, 22, 16, 28]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.ls PUnit.unit))
      PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody300_0, 300, 2)) (some 161) ([20, 14]) (some (20, sourceBody300_21, 300, 5))

def sourceBody300_23 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_22 sourceBody300_7

def sourceBody300_24 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_23 sourceBody300_0

def sourceBody300_25 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_5 sourceBody300_24

def sourceBody300_26 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_4 sourceBody300_25

def sourceBody300_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 10)

def sourceBody300_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody300_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_31 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 14 (Flapjack.WordRegImm.reg 26) sourceBody300_29 sourceBody300_30

def sourceBody300_32 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_31 sourceBody300_7

def sourceBody300_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 14)

def sourceBody300_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 16)

def sourceBody300_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [20, 14, 26, 12]

def sourceBody300_38 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_37 sourceBody300_0

def sourceBody300_39 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_36 sourceBody300_38

def sourceBody300_40 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_28 sourceBody300_39

def sourceBody300_41 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_30 sourceBody300_40

def sourceBody300_42 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_35 sourceBody300_41

def sourceBody300_43 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody300_42 sourceBody300_0

def sourceBody300_44 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_43 sourceBody300_7

def sourceBody300_45 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_44 sourceBody300_0

def sourceBody300_46 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_33 sourceBody300_45

def sourceBody300_47 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_32 sourceBody300_46

def sourceBody300_48 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_28 sourceBody300_47

def sourceBody300_49 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_34 sourceBody300_48

def sourceBody300_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 32#64)

def sourceBody300_51 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.WordRegImm.reg 26) sourceBody300_29 sourceBody300_30

def sourceBody300_52 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_51 sourceBody300_7

def sourceBody300_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.const 10#64)

def sourceBody300_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([20]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      PUnit.unit Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody300_0, 300, 6)) (some 286) ([14]) (some (14, sourceBody300_11, 300, 7))

def sourceBody300_55 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_54 sourceBody300_7

def sourceBody300_56 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_55 sourceBody300_0

def sourceBody300_57 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_53 sourceBody300_56

def sourceBody300_58 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_57

def sourceBody300_59 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_58

def sourceBody300_60 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody300_59 sourceBody300_0

def sourceBody300_61 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_60 sourceBody300_7

def sourceBody300_62 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_61 sourceBody300_0

def sourceBody300_63 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_33 sourceBody300_62

def sourceBody300_64 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_52 sourceBody300_63

def sourceBody300_65 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_50 sourceBody300_64

def sourceBody300_66 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_34 sourceBody300_65

def sourceBody300_67 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_49 sourceBody300_66

def sourceBody300_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.var 2)

def sourceBody300_69 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 22)

def sourceBody300_70 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 12

def sourceBody300_71 : WordLangProgHOL (BitVec 64) :=
.call (some (([20, 14, 26]), ((Flapjack.Spt.bs
    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    PUnit.unit Flapjack.Spt.ln,
  Flapjack.Spt.ln)), sourceBody300_0, 300, 8)) (some 294) ([12, 24]) (some (12, sourceBody300_70, 300, 9))

def sourceBody300_72 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_71 sourceBody300_7

def sourceBody300_73 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_72 sourceBody300_0

def sourceBody300_74 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_69 sourceBody300_73

def sourceBody300_75 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_68 sourceBody300_74

def sourceBody300_76 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 20)

def sourceBody300_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_78 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody300_79 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_80 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 24 (Flapjack.WordRegImm.reg 18) sourceBody300_78 sourceBody300_79

def sourceBody300_81 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_80 sourceBody300_7

def sourceBody300_82 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 24)

def sourceBody300_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 24

def sourceBody300_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([12]), ((Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln)), sourceBody300_0, 300, 10)) (some 295) ([24]) (some (24, sourceBody300_83, 300, 11))

def sourceBody300_85 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_84 sourceBody300_7

def sourceBody300_86 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_85 sourceBody300_0

def sourceBody300_87 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_69 sourceBody300_86

def sourceBody300_88 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 12)

def sourceBody300_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_90 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 0#64)

def sourceBody300_91 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [24, 18, 30, 8]

def sourceBody300_92 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_91 sourceBody300_0

def sourceBody300_93 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_90 sourceBody300_92

def sourceBody300_94 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_89 sourceBody300_93

def sourceBody300_95 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_88 sourceBody300_94

def sourceBody300_96 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_79 sourceBody300_95

def sourceBody300_97 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_87 sourceBody300_96

def sourceBody300_98 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_97

def sourceBody300_99 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_98

def sourceBody300_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 30 (Flapjack.WordRegImm.imm 0#64) sourceBody300_99 sourceBody300_0

def sourceBody300_101 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_100 sourceBody300_7

def sourceBody300_102 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_101 sourceBody300_0

def sourceBody300_103 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_82 sourceBody300_102

def sourceBody300_104 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_81 sourceBody300_103

def sourceBody300_105 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_77 sourceBody300_104

def sourceBody300_106 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_76 sourceBody300_105

def sourceBody300_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 12 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody300_108 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 14)

def sourceBody300_109 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.var 26)

def sourceBody300_110 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 30 (Flapjack.WordLangExpHOL.var 22)

def sourceBody300_111 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [12, 24, 18, 30]

def sourceBody300_112 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_111 sourceBody300_0

def sourceBody300_113 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_110 sourceBody300_112

def sourceBody300_114 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_109 sourceBody300_113

def sourceBody300_115 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_108 sourceBody300_114

def sourceBody300_116 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_107 sourceBody300_115

def sourceBody300_117 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_106 sourceBody300_116

def sourceBody300_118 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_75 sourceBody300_117

def sourceBody300_119 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_118

def sourceBody300_120 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_119

def sourceBody300_121 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_120

def sourceBody300_122 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_121

def sourceBody300_123 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_122

def sourceBody300_124 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_123

def sourceBody300_125 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_67 sourceBody300_124

def sourceBody300_126 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.WordRegImm.imm 0#64) sourceBody300_125 sourceBody300_0

def sourceBody300_127 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_126 sourceBody300_7

def sourceBody300_128 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_127 sourceBody300_0

def sourceBody300_129 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_33 sourceBody300_128

def sourceBody300_130 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_32 sourceBody300_129

def sourceBody300_131 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_28 sourceBody300_130

def sourceBody300_132 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_27 sourceBody300_131

def sourceBody300_133 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_26 sourceBody300_132

def sourceBody300_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 20 (Flapjack.WordLangExpHOL.const 1#64)

def sourceBody300_135 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 14 (Flapjack.WordLangExpHOL.var 4)

def sourceBody300_136 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 6)

def sourceBody300_137 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_136 sourceBody300_39

def sourceBody300_138 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_135 sourceBody300_137

def sourceBody300_139 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_134 sourceBody300_138

def sourceBody300_140 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_133 sourceBody300_139

def sourceBody300_141 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_140

def sourceBody300_142 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_141

def sourceBody300_143 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_142

def sourceBody300_144 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_143

def sourceBody300_145 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_3 sourceBody300_144

def sourceBody300_146 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_145

def sourceBody300_147 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_2 sourceBody300_146

def sourceBody300_148 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_147

def sourceBody300_149 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_1 sourceBody300_148

def sourceBody300_150 : WordLangProgHOL (BitVec 64) :=
.seq sourceBody300_0 sourceBody300_149

def source300 : Nat × Nat × Flapjack.WordLangProgHOL (BitVec 64) :=
  (300, 4, sourceBody300_150)
end InitECandidate.Proofs.WordStages
