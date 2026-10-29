import InitECandidate.Proofs.FrontendStages.Loop.Translate732
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody748_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody748_1 : HolLoopProg 64 :=
.mark loopBody748_0

def loopBody748_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody748_3 : HolLoopProg 64 :=
.mark loopBody748_2

def loopBody748_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody748_3, loopBody748_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody748_5 : HolLoopProg 64 :=
.mark loopBody748_4

def loopBody748_6 : HolLoopProg 64 :=
.seq loopBody748_5 loopBody748_1

def loopBody748_7 : HolLoopProg 64 :=
.mark loopBody748_6

def loopBody748_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 288#64)

def loopBody748_9 : HolLoopProg 64 :=
.mark loopBody748_8

def loopBody748_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody748_11 : HolLoopProg 64 :=
.mark loopBody748_10

def loopBody748_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody748_11, loopBody748_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody748_13 : HolLoopProg 64 :=
.mark loopBody748_12

def loopBody748_14 : HolLoopProg 64 :=
.seq loopBody748_13 loopBody748_1

def loopBody748_15 : HolLoopProg 64 :=
.mark loopBody748_14

def loopBody748_16 : HolLoopProg 64 :=
.seq loopBody748_9 loopBody748_15

def loopBody748_17 : HolLoopProg 64 :=
.mark loopBody748_16

def loopBody748_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 288#64)

def loopBody748_19 : HolLoopProg 64 :=
.mark loopBody748_18

def loopBody748_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody748_21 : HolLoopProg 64 :=
.mark loopBody748_20

def loopBody748_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody748_21, loopBody748_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody748_23 : HolLoopProg 64 :=
.mark loopBody748_22

def loopBody748_24 : HolLoopProg 64 :=
.seq loopBody748_23 loopBody748_1

def loopBody748_25 : HolLoopProg 64 :=
.mark loopBody748_24

def loopBody748_26 : HolLoopProg 64 :=
.seq loopBody748_19 loopBody748_25

def loopBody748_27 : HolLoopProg 64 :=
.mark loopBody748_26

def loopBody748_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody748_29 : HolLoopProg 64 :=
.mark loopBody748_28

def loopBody748_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody748_31 : HolLoopProg 64 :=
.mark loopBody748_30

def loopBody748_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody748_33 : HolLoopProg 64 :=
.mark loopBody748_32

def loopBody748_34 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 787) ([6, 7]) (some (6, loopBody748_33, loopBody748_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody748_35 : HolLoopProg 64 :=
.mark loopBody748_34

def loopBody748_36 : HolLoopProg 64 :=
.seq loopBody748_35 loopBody748_1

def loopBody748_37 : HolLoopProg 64 :=
.mark loopBody748_36

def loopBody748_38 : HolLoopProg 64 :=
.seq loopBody748_31 loopBody748_37

def loopBody748_39 : HolLoopProg 64 :=
.mark loopBody748_38

def loopBody748_40 : HolLoopProg 64 :=
.seq loopBody748_29 loopBody748_39

def loopBody748_41 : HolLoopProg 64 :=
.mark loopBody748_40

def loopBody748_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody748_43 : HolLoopProg 64 :=
.mark loopBody748_42

def loopBody748_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody748_45 : HolLoopProg 64 :=
.mark loopBody748_44

def loopBody748_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody748_47 : HolLoopProg 64 :=
.mark loopBody748_46

def loopBody748_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody748_49 : HolLoopProg 64 :=
.mark loopBody748_48

def loopBody748_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody748_47 loopBody748_49 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody748_51 : HolLoopProg 64 :=
.mark loopBody748_50

def loopBody748_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody748_53 : HolLoopProg 64 :=
.mark loopBody748_52

def loopBody748_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 256#64])

def loopBody748_55 : HolLoopProg 64 :=
.mark loopBody748_54

def loopBody748_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody748_57 : HolLoopProg 64 :=
.mark loopBody748_56

def loopBody748_58 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 787) ([6, 7]) (some (6, loopBody748_33, loopBody748_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody748_59 : HolLoopProg 64 :=
.mark loopBody748_58

def loopBody748_60 : HolLoopProg 64 :=
.seq loopBody748_59 loopBody748_1

def loopBody748_61 : HolLoopProg 64 :=
.mark loopBody748_60

def loopBody748_62 : HolLoopProg 64 :=
.seq loopBody748_57 loopBody748_61

def loopBody748_63 : HolLoopProg 64 :=
.mark loopBody748_62

def loopBody748_64 : HolLoopProg 64 :=
.seq loopBody748_55 loopBody748_63

def loopBody748_65 : HolLoopProg 64 :=
.mark loopBody748_64

def loopBody748_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody748_65 loopBody748_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody748_67 : HolLoopProg 64 :=
.mark loopBody748_66

def loopBody748_68 : HolLoopProg 64 :=
.seq loopBody748_67 loopBody748_1

def loopBody748_69 : HolLoopProg 64 :=
.mark loopBody748_68

def loopBody748_70 : HolLoopProg 64 :=
.seq loopBody748_53 loopBody748_69

def loopBody748_71 : HolLoopProg 64 :=
.mark loopBody748_70

def loopBody748_72 : HolLoopProg 64 :=
.seq loopBody748_51 loopBody748_71

def loopBody748_73 : HolLoopProg 64 :=
.mark loopBody748_72

def loopBody748_74 : HolLoopProg 64 :=
.seq loopBody748_45 loopBody748_73

def loopBody748_75 : HolLoopProg 64 :=
.mark loopBody748_74

def loopBody748_76 : HolLoopProg 64 :=
.seq loopBody748_43 loopBody748_75

def loopBody748_77 : HolLoopProg 64 :=
.mark loopBody748_76

def loopBody748_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody748_79 : HolLoopProg 64 :=
.mark loopBody748_78

def loopBody748_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody748_47 loopBody748_49 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody748_81 : HolLoopProg 64 :=
.mark loopBody748_80

def loopBody748_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody748_83 : HolLoopProg 64 :=
.mark loopBody748_82

def loopBody748_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody748_85 : HolLoopProg 64 :=
.mark loopBody748_84

def loopBody748_86 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody748_85, loopBody748_1, (Flapjack.Spt.ln)))

def loopBody748_87 : HolLoopProg 64 :=
.mark loopBody748_86

def loopBody748_88 : HolLoopProg 64 :=
.seq loopBody748_87 loopBody748_1

def loopBody748_89 : HolLoopProg 64 :=
.mark loopBody748_88

def loopBody748_90 : HolLoopProg 64 :=
.seq loopBody748_83 loopBody748_89

def loopBody748_91 : HolLoopProg 64 :=
.mark loopBody748_90

def loopBody748_92 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_91

def loopBody748_93 : HolLoopProg 64 :=
.mark loopBody748_92

def loopBody748_94 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_93

def loopBody748_95 : HolLoopProg 64 :=
.mark loopBody748_94

def loopBody748_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody748_97 : HolLoopProg 64 :=
.mark loopBody748_96

def loopBody748_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody748_99 : HolLoopProg 64 :=
.mark loopBody748_98

def loopBody748_100 : HolLoopProg 64 :=
.seq loopBody748_99 loopBody748_1

def loopBody748_101 : HolLoopProg 64 :=
.mark loopBody748_100

def loopBody748_102 : HolLoopProg 64 :=
.seq loopBody748_97 loopBody748_101

def loopBody748_103 : HolLoopProg 64 :=
.mark loopBody748_102

def loopBody748_104 : HolLoopProg 64 :=
.seq loopBody748_95 loopBody748_103

def loopBody748_105 : HolLoopProg 64 :=
.mark loopBody748_104

def loopBody748_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody748_105 loopBody748_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody748_107 : HolLoopProg 64 :=
.mark loopBody748_106

def loopBody748_108 : HolLoopProg 64 :=
.seq loopBody748_107 loopBody748_1

def loopBody748_109 : HolLoopProg 64 :=
.mark loopBody748_108

def loopBody748_110 : HolLoopProg 64 :=
.seq loopBody748_53 loopBody748_109

def loopBody748_111 : HolLoopProg 64 :=
.mark loopBody748_110

def loopBody748_112 : HolLoopProg 64 :=
.seq loopBody748_81 loopBody748_111

def loopBody748_113 : HolLoopProg 64 :=
.mark loopBody748_112

def loopBody748_114 : HolLoopProg 64 :=
.seq loopBody748_79 loopBody748_113

def loopBody748_115 : HolLoopProg 64 :=
.mark loopBody748_114

def loopBody748_116 : HolLoopProg 64 :=
.seq loopBody748_43 loopBody748_115

def loopBody748_117 : HolLoopProg 64 :=
.mark loopBody748_116

def loopBody748_118 : HolLoopProg 64 :=
.seq loopBody748_77 loopBody748_117

def loopBody748_119 : HolLoopProg 64 :=
.mark loopBody748_118

def loopBody748_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody748_121 : HolLoopProg 64 :=
.mark loopBody748_120

def loopBody748_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody748_123 : HolLoopProg 64 :=
.mark loopBody748_122

def loopBody748_124 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 783) ([7, 8, 9]) (some (7, loopBody748_85, loopBody748_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody748_125 : HolLoopProg 64 :=
.mark loopBody748_124

def loopBody748_126 : HolLoopProg 64 :=
.seq loopBody748_125 loopBody748_1

def loopBody748_127 : HolLoopProg 64 :=
.mark loopBody748_126

def loopBody748_128 : HolLoopProg 64 :=
.seq loopBody748_123 loopBody748_127

def loopBody748_129 : HolLoopProg 64 :=
.mark loopBody748_128

def loopBody748_130 : HolLoopProg 64 :=
.seq loopBody748_121 loopBody748_129

def loopBody748_131 : HolLoopProg 64 :=
.mark loopBody748_130

def loopBody748_132 : HolLoopProg 64 :=
.seq loopBody748_31 loopBody748_131

def loopBody748_133 : HolLoopProg 64 :=
.mark loopBody748_132

def loopBody748_134 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_133

def loopBody748_135 : HolLoopProg 64 :=
.mark loopBody748_134

def loopBody748_136 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_135

def loopBody748_137 : HolLoopProg 64 :=
.mark loopBody748_136

def loopBody748_138 : HolLoopProg 64 :=
.seq loopBody748_119 loopBody748_137

def loopBody748_139 : HolLoopProg 64 :=
.mark loopBody748_138

def loopBody748_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody748_141 : HolLoopProg 64 :=
.mark loopBody748_140

def loopBody748_142 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 788) ([7, 8]) (some (7, loopBody748_85, loopBody748_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody748_143 : HolLoopProg 64 :=
.mark loopBody748_142

def loopBody748_144 : HolLoopProg 64 :=
.seq loopBody748_143 loopBody748_1

def loopBody748_145 : HolLoopProg 64 :=
.mark loopBody748_144

def loopBody748_146 : HolLoopProg 64 :=
.seq loopBody748_141 loopBody748_145

def loopBody748_147 : HolLoopProg 64 :=
.mark loopBody748_146

def loopBody748_148 : HolLoopProg 64 :=
.seq loopBody748_31 loopBody748_147

def loopBody748_149 : HolLoopProg 64 :=
.mark loopBody748_148

def loopBody748_150 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_149

def loopBody748_151 : HolLoopProg 64 :=
.mark loopBody748_150

def loopBody748_152 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_151

def loopBody748_153 : HolLoopProg 64 :=
.mark loopBody748_152

def loopBody748_154 : HolLoopProg 64 :=
.seq loopBody748_139 loopBody748_153

def loopBody748_155 : HolLoopProg 64 :=
.mark loopBody748_154

def loopBody748_156 : HolLoopProg 64 :=
.seq loopBody748_155 loopBody748_95

def loopBody748_157 : HolLoopProg 64 :=
.mark loopBody748_156

def loopBody748_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody748_159 : HolLoopProg 64 :=
.mark loopBody748_158

def loopBody748_160 : HolLoopProg 64 :=
.seq loopBody748_159 loopBody748_101

def loopBody748_161 : HolLoopProg 64 :=
.mark loopBody748_160

def loopBody748_162 : HolLoopProg 64 :=
.seq loopBody748_157 loopBody748_161

def loopBody748_163 : HolLoopProg 64 :=
.mark loopBody748_162

def loopBody748_164 : HolLoopProg 64 :=
.seq loopBody748_41 loopBody748_163

def loopBody748_165 : HolLoopProg 64 :=
.mark loopBody748_164

def loopBody748_166 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_165

def loopBody748_167 : HolLoopProg 64 :=
.mark loopBody748_166

def loopBody748_168 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_167

def loopBody748_169 : HolLoopProg 64 :=
.mark loopBody748_168

def loopBody748_170 : HolLoopProg 64 :=
.seq loopBody748_27 loopBody748_169

def loopBody748_171 : HolLoopProg 64 :=
.mark loopBody748_170

def loopBody748_172 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_171

def loopBody748_173 : HolLoopProg 64 :=
.mark loopBody748_172

def loopBody748_174 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_173

def loopBody748_175 : HolLoopProg 64 :=
.mark loopBody748_174

def loopBody748_176 : HolLoopProg 64 :=
.seq loopBody748_17 loopBody748_175

def loopBody748_177 : HolLoopProg 64 :=
.mark loopBody748_176

def loopBody748_178 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_177

def loopBody748_179 : HolLoopProg 64 :=
.mark loopBody748_178

def loopBody748_180 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_179

def loopBody748_181 : HolLoopProg 64 :=
.mark loopBody748_180

def loopBody748_182 : HolLoopProg 64 :=
.seq loopBody748_7 loopBody748_181

def loopBody748_183 : HolLoopProg 64 :=
.mark loopBody748_182

def loopBody748_184 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_183

def loopBody748_185 : HolLoopProg 64 :=
.mark loopBody748_184

def loopBody748_186 : HolLoopProg 64 :=
.seq loopBody748_1 loopBody748_185

def loopBody748_187 : HolLoopProg 64 :=
.mark loopBody748_186

def output748 : Nat × List Nat × HolLoopProg 64 :=
  (812, [0, 1], loopBody748_187)
end InitECandidate.Proofs.FrontendStages.Loop
