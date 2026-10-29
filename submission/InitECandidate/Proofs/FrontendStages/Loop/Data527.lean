import InitECandidate.Proofs.FrontendStages.Loop.Translate511
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody527_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody527_1 : HolLoopProg 64 :=
.mark loopBody527_0

def loopBody527_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody527_3 : HolLoopProg 64 :=
.mark loopBody527_2

def loopBody527_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody527_5 : HolLoopProg 64 :=
.mark loopBody527_4

def loopBody527_6 : HolLoopProg 64 :=
.call (some ([1, 2], Flapjack.Spt.ls PUnit.unit)) (some 565) ([3]) (some (3, loopBody527_5, loopBody527_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody527_7 : HolLoopProg 64 :=
.mark loopBody527_6

def loopBody527_8 : HolLoopProg 64 :=
.seq loopBody527_7 loopBody527_1

def loopBody527_9 : HolLoopProg 64 :=
.mark loopBody527_8

def loopBody527_10 : HolLoopProg 64 :=
.seq loopBody527_3 loopBody527_9

def loopBody527_11 : HolLoopProg 64 :=
.mark loopBody527_10

def loopBody527_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody527_13 : HolLoopProg 64 :=
.mark loopBody527_12

def loopBody527_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody527_15 : HolLoopProg 64 :=
.mark loopBody527_14

def loopBody527_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody527_17 : HolLoopProg 64 :=
.mark loopBody527_16

def loopBody527_18 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 468) ([4, 5]) (some (4, loopBody527_17, loopBody527_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody527_19 : HolLoopProg 64 :=
.mark loopBody527_18

def loopBody527_20 : HolLoopProg 64 :=
.seq loopBody527_19 loopBody527_1

def loopBody527_21 : HolLoopProg 64 :=
.mark loopBody527_20

def loopBody527_22 : HolLoopProg 64 :=
.seq loopBody527_15 loopBody527_21

def loopBody527_23 : HolLoopProg 64 :=
.mark loopBody527_22

def loopBody527_24 : HolLoopProg 64 :=
.seq loopBody527_13 loopBody527_23

def loopBody527_25 : HolLoopProg 64 :=
.mark loopBody527_24

def loopBody527_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody527_27 : HolLoopProg 64 :=
.mark loopBody527_26

def loopBody527_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody527_29 : HolLoopProg 64 :=
.mark loopBody527_28

def loopBody527_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody527_31 : HolLoopProg 64 :=
.mark loopBody527_30

def loopBody527_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody527_33 : HolLoopProg 64 :=
.mark loopBody527_32

def loopBody527_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody527_31 loopBody527_33 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody527_35 : HolLoopProg 64 :=
.mark loopBody527_34

def loopBody527_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody527_37 : HolLoopProg 64 :=
.mark loopBody527_36

def loopBody527_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody527_39 : HolLoopProg 64 :=
.mark loopBody527_38

def loopBody527_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody527_41 : HolLoopProg 64 :=
.mark loopBody527_40

def loopBody527_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5, 6]

def loopBody527_43 : HolLoopProg 64 :=
.mark loopBody527_42

def loopBody527_44 : HolLoopProg 64 :=
.seq loopBody527_43 loopBody527_1

def loopBody527_45 : HolLoopProg 64 :=
.mark loopBody527_44

def loopBody527_46 : HolLoopProg 64 :=
.seq loopBody527_29 loopBody527_45

def loopBody527_47 : HolLoopProg 64 :=
.mark loopBody527_46

def loopBody527_48 : HolLoopProg 64 :=
.seq loopBody527_41 loopBody527_47

def loopBody527_49 : HolLoopProg 64 :=
.mark loopBody527_48

def loopBody527_50 : HolLoopProg 64 :=
.seq loopBody527_39 loopBody527_49

def loopBody527_51 : HolLoopProg 64 :=
.mark loopBody527_50

def loopBody527_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody527_51 loopBody527_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody527_53 : HolLoopProg 64 :=
.mark loopBody527_52

def loopBody527_54 : HolLoopProg 64 :=
.seq loopBody527_53 loopBody527_1

def loopBody527_55 : HolLoopProg 64 :=
.mark loopBody527_54

def loopBody527_56 : HolLoopProg 64 :=
.seq loopBody527_37 loopBody527_55

def loopBody527_57 : HolLoopProg 64 :=
.mark loopBody527_56

def loopBody527_58 : HolLoopProg 64 :=
.seq loopBody527_35 loopBody527_57

def loopBody527_59 : HolLoopProg 64 :=
.mark loopBody527_58

def loopBody527_60 : HolLoopProg 64 :=
.seq loopBody527_29 loopBody527_59

def loopBody527_61 : HolLoopProg 64 :=
.mark loopBody527_60

def loopBody527_62 : HolLoopProg 64 :=
.seq loopBody527_27 loopBody527_61

def loopBody527_63 : HolLoopProg 64 :=
.mark loopBody527_62

def loopBody527_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 24#64)

def loopBody527_65 : HolLoopProg 64 :=
.mark loopBody527_64

def loopBody527_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody527_67 : HolLoopProg 64 :=
.mark loopBody527_66

def loopBody527_68 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 68) ([5]) (some (5, loopBody527_67, loopBody527_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))

def loopBody527_69 : HolLoopProg 64 :=
.mark loopBody527_68

def loopBody527_70 : HolLoopProg 64 :=
.seq loopBody527_69 loopBody527_1

def loopBody527_71 : HolLoopProg 64 :=
.mark loopBody527_70

def loopBody527_72 : HolLoopProg 64 :=
.seq loopBody527_65 loopBody527_71

def loopBody527_73 : HolLoopProg 64 :=
.mark loopBody527_72

def loopBody527_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody527_75 : HolLoopProg 64 :=
.mark loopBody527_74

def loopBody527_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 3#64])

def loopBody527_77 : HolLoopProg 64 :=
.mark loopBody527_76

def loopBody527_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 20#64)

def loopBody527_79 : HolLoopProg 64 :=
.mark loopBody527_78

def loopBody527_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody527_81 : HolLoopProg 64 :=
.mark loopBody527_80

def loopBody527_82 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 77) ([6, 7, 8]) (some (6, loopBody527_81, loopBody527_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody527_83 : HolLoopProg 64 :=
.mark loopBody527_82

def loopBody527_84 : HolLoopProg 64 :=
.seq loopBody527_83 loopBody527_1

def loopBody527_85 : HolLoopProg 64 :=
.mark loopBody527_84

def loopBody527_86 : HolLoopProg 64 :=
.seq loopBody527_79 loopBody527_85

def loopBody527_87 : HolLoopProg 64 :=
.mark loopBody527_86

def loopBody527_88 : HolLoopProg 64 :=
.seq loopBody527_77 loopBody527_87

def loopBody527_89 : HolLoopProg 64 :=
.mark loopBody527_88

def loopBody527_90 : HolLoopProg 64 :=
.seq loopBody527_75 loopBody527_89

def loopBody527_91 : HolLoopProg 64 :=
.mark loopBody527_90

def loopBody527_92 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_91

def loopBody527_93 : HolLoopProg 64 :=
.mark loopBody527_92

def loopBody527_94 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_93

def loopBody527_95 : HolLoopProg 64 :=
.mark loopBody527_94

def loopBody527_96 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 493) ([6]) (some (6, loopBody527_81, loopBody527_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody527_97 : HolLoopProg 64 :=
.mark loopBody527_96

def loopBody527_98 : HolLoopProg 64 :=
.seq loopBody527_97 loopBody527_1

def loopBody527_99 : HolLoopProg 64 :=
.mark loopBody527_98

def loopBody527_100 : HolLoopProg 64 :=
.seq loopBody527_75 loopBody527_99

def loopBody527_101 : HolLoopProg 64 :=
.mark loopBody527_100

def loopBody527_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody527_103 : HolLoopProg 64 :=
.mark loopBody527_102

def loopBody527_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody527_105 : HolLoopProg 64 :=
.mark loopBody527_104

def loopBody527_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody527_107 : HolLoopProg 64 :=
.mark loopBody527_106

def loopBody527_108 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody527_105 loopBody527_107 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody527_109 : HolLoopProg 64 :=
.mark loopBody527_108

def loopBody527_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody527_111 : HolLoopProg 64 :=
.mark loopBody527_110

def loopBody527_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody527_113 : HolLoopProg 64 :=
.mark loopBody527_112

def loopBody527_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody527_115 : HolLoopProg 64 :=
.mark loopBody527_114

def loopBody527_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 100#64)

def loopBody527_117 : HolLoopProg 64 :=
.mark loopBody527_116

def loopBody527_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7, 8]

def loopBody527_119 : HolLoopProg 64 :=
.mark loopBody527_118

def loopBody527_120 : HolLoopProg 64 :=
.seq loopBody527_119 loopBody527_1

def loopBody527_121 : HolLoopProg 64 :=
.mark loopBody527_120

def loopBody527_122 : HolLoopProg 64 :=
.seq loopBody527_117 loopBody527_121

def loopBody527_123 : HolLoopProg 64 :=
.mark loopBody527_122

def loopBody527_124 : HolLoopProg 64 :=
.seq loopBody527_115 loopBody527_123

def loopBody527_125 : HolLoopProg 64 :=
.mark loopBody527_124

def loopBody527_126 : HolLoopProg 64 :=
.seq loopBody527_113 loopBody527_125

def loopBody527_127 : HolLoopProg 64 :=
.mark loopBody527_126

def loopBody527_128 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody527_127 loopBody527_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody527_129 : HolLoopProg 64 :=
.mark loopBody527_128

def loopBody527_130 : HolLoopProg 64 :=
.seq loopBody527_129 loopBody527_1

def loopBody527_131 : HolLoopProg 64 :=
.mark loopBody527_130

def loopBody527_132 : HolLoopProg 64 :=
.seq loopBody527_111 loopBody527_131

def loopBody527_133 : HolLoopProg 64 :=
.mark loopBody527_132

def loopBody527_134 : HolLoopProg 64 :=
.seq loopBody527_109 loopBody527_133

def loopBody527_135 : HolLoopProg 64 :=
.mark loopBody527_134

def loopBody527_136 : HolLoopProg 64 :=
.seq loopBody527_103 loopBody527_135

def loopBody527_137 : HolLoopProg 64 :=
.mark loopBody527_136

def loopBody527_138 : HolLoopProg 64 :=
.seq loopBody527_37 loopBody527_137

def loopBody527_139 : HolLoopProg 64 :=
.mark loopBody527_138

def loopBody527_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 3000#64)

def loopBody527_141 : HolLoopProg 64 :=
.mark loopBody527_140

def loopBody527_142 : HolLoopProg 64 :=
.seq loopBody527_141 loopBody527_121

def loopBody527_143 : HolLoopProg 64 :=
.mark loopBody527_142

def loopBody527_144 : HolLoopProg 64 :=
.seq loopBody527_115 loopBody527_143

def loopBody527_145 : HolLoopProg 64 :=
.mark loopBody527_144

def loopBody527_146 : HolLoopProg 64 :=
.seq loopBody527_113 loopBody527_145

def loopBody527_147 : HolLoopProg 64 :=
.mark loopBody527_146

def loopBody527_148 : HolLoopProg 64 :=
.seq loopBody527_139 loopBody527_147

def loopBody527_149 : HolLoopProg 64 :=
.mark loopBody527_148

def loopBody527_150 : HolLoopProg 64 :=
.seq loopBody527_101 loopBody527_149

def loopBody527_151 : HolLoopProg 64 :=
.mark loopBody527_150

def loopBody527_152 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_151

def loopBody527_153 : HolLoopProg 64 :=
.mark loopBody527_152

def loopBody527_154 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_153

def loopBody527_155 : HolLoopProg 64 :=
.mark loopBody527_154

def loopBody527_156 : HolLoopProg 64 :=
.seq loopBody527_95 loopBody527_155

def loopBody527_157 : HolLoopProg 64 :=
.mark loopBody527_156

def loopBody527_158 : HolLoopProg 64 :=
.seq loopBody527_73 loopBody527_157

def loopBody527_159 : HolLoopProg 64 :=
.mark loopBody527_158

def loopBody527_160 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_159

def loopBody527_161 : HolLoopProg 64 :=
.mark loopBody527_160

def loopBody527_162 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_161

def loopBody527_163 : HolLoopProg 64 :=
.mark loopBody527_162

def loopBody527_164 : HolLoopProg 64 :=
.seq loopBody527_63 loopBody527_163

def loopBody527_165 : HolLoopProg 64 :=
.mark loopBody527_164

def loopBody527_166 : HolLoopProg 64 :=
.seq loopBody527_25 loopBody527_165

def loopBody527_167 : HolLoopProg 64 :=
.mark loopBody527_166

def loopBody527_168 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_167

def loopBody527_169 : HolLoopProg 64 :=
.mark loopBody527_168

def loopBody527_170 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_169

def loopBody527_171 : HolLoopProg 64 :=
.mark loopBody527_170

def loopBody527_172 : HolLoopProg 64 :=
.seq loopBody527_11 loopBody527_171

def loopBody527_173 : HolLoopProg 64 :=
.mark loopBody527_172

def loopBody527_174 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_173

def loopBody527_175 : HolLoopProg 64 :=
.mark loopBody527_174

def loopBody527_176 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_175

def loopBody527_177 : HolLoopProg 64 :=
.mark loopBody527_176

def loopBody527_178 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_177

def loopBody527_179 : HolLoopProg 64 :=
.mark loopBody527_178

def loopBody527_180 : HolLoopProg 64 :=
.seq loopBody527_1 loopBody527_179

def loopBody527_181 : HolLoopProg 64 :=
.mark loopBody527_180

def output527 : Nat × List Nat × HolLoopProg 64 :=
  (591, [0], loopBody527_181)
end InitECandidate.Proofs.FrontendStages.Loop
