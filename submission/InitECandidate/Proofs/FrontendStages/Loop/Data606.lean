import InitECandidate.Proofs.FrontendStages.Loop.Translate590
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody606_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody606_1 : HolLoopProg 64 :=
.mark loopBody606_0

def loopBody606_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody606_3 : HolLoopProg 64 :=
.mark loopBody606_2

def loopBody606_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody606_5 : HolLoopProg 64 :=
.mark loopBody606_4

def loopBody606_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody606_7 : HolLoopProg 64 :=
.mark loopBody606_6

def loopBody606_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody606_5 loopBody606_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody606_9 : HolLoopProg 64 :=
.mark loopBody606_8

def loopBody606_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody606_11 : HolLoopProg 64 :=
.mark loopBody606_10

def loopBody606_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody606_13 : HolLoopProg 64 :=
.mark loopBody606_12

def loopBody606_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 2))

def loopBody606_15 : HolLoopProg 64 :=
.mark loopBody606_14

def loopBody606_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64]))

def loopBody606_17 : HolLoopProg 64 :=
.mark loopBody606_16

def loopBody606_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 16#64]))

def loopBody606_19 : HolLoopProg 64 :=
.mark loopBody606_18

def loopBody606_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 24#64]))

def loopBody606_21 : HolLoopProg 64 :=
.mark loopBody606_20

def loopBody606_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 3))

def loopBody606_23 : HolLoopProg 64 :=
.mark loopBody606_22

def loopBody606_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64]))

def loopBody606_25 : HolLoopProg 64 :=
.mark loopBody606_24

def loopBody606_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 16#64]))

def loopBody606_27 : HolLoopProg 64 :=
.mark loopBody606_26

def loopBody606_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 24#64]))

def loopBody606_29 : HolLoopProg 64 :=
.mark loopBody606_28

def loopBody606_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody606_31 : HolLoopProg 64 :=
.mark loopBody606_30

def loopBody606_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody606_33 : HolLoopProg 64 :=
.mark loopBody606_32

def loopBody606_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody606_35 : HolLoopProg 64 :=
.mark loopBody606_34

def loopBody606_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody606_37 : HolLoopProg 64 :=
.mark loopBody606_36

def loopBody606_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 8)

def loopBody606_39 : HolLoopProg 64 :=
.mark loopBody606_38

def loopBody606_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 9)

def loopBody606_41 : HolLoopProg 64 :=
.mark loopBody606_40

def loopBody606_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 10)

def loopBody606_43 : HolLoopProg 64 :=
.mark loopBody606_42

def loopBody606_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 11)

def loopBody606_45 : HolLoopProg 64 :=
.mark loopBody606_44

def loopBody606_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 16

def loopBody606_47 : HolLoopProg 64 :=
.mark loopBody606_46

def loopBody606_48 : HolLoopProg 64 :=
.call (some ([12, 13, 14, 15], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 661) ([16, 17, 18, 19, 20, 21, 22, 23]) (some (16, loopBody606_47, loopBody606_13, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody606_49 : HolLoopProg 64 :=
.mark loopBody606_48

def loopBody606_50 : HolLoopProg 64 :=
.seq loopBody606_49 loopBody606_13

def loopBody606_51 : HolLoopProg 64 :=
.mark loopBody606_50

def loopBody606_52 : HolLoopProg 64 :=
.seq loopBody606_45 loopBody606_51

def loopBody606_53 : HolLoopProg 64 :=
.mark loopBody606_52

def loopBody606_54 : HolLoopProg 64 :=
.seq loopBody606_43 loopBody606_53

def loopBody606_55 : HolLoopProg 64 :=
.mark loopBody606_54

def loopBody606_56 : HolLoopProg 64 :=
.seq loopBody606_41 loopBody606_55

def loopBody606_57 : HolLoopProg 64 :=
.mark loopBody606_56

def loopBody606_58 : HolLoopProg 64 :=
.seq loopBody606_39 loopBody606_57

def loopBody606_59 : HolLoopProg 64 :=
.mark loopBody606_58

def loopBody606_60 : HolLoopProg 64 :=
.seq loopBody606_37 loopBody606_59

def loopBody606_61 : HolLoopProg 64 :=
.mark loopBody606_60

def loopBody606_62 : HolLoopProg 64 :=
.seq loopBody606_35 loopBody606_61

def loopBody606_63 : HolLoopProg 64 :=
.mark loopBody606_62

def loopBody606_64 : HolLoopProg 64 :=
.seq loopBody606_33 loopBody606_63

def loopBody606_65 : HolLoopProg 64 :=
.mark loopBody606_64

def loopBody606_66 : HolLoopProg 64 :=
.seq loopBody606_31 loopBody606_65

def loopBody606_67 : HolLoopProg 64 :=
.mark loopBody606_66

def loopBody606_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 1)

def loopBody606_69 : HolLoopProg 64 :=
.mark loopBody606_68

def loopBody606_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody606_71 : HolLoopProg 64 :=
.mark loopBody606_70

def loopBody606_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody606_73 : HolLoopProg 64 :=
.mark loopBody606_72

def loopBody606_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 14)

def loopBody606_75 : HolLoopProg 64 :=
.mark loopBody606_74

def loopBody606_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 15)

def loopBody606_77 : HolLoopProg 64 :=
.mark loopBody606_76

def loopBody606_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 17)

def loopBody606_79 : HolLoopProg 64 :=
.mark loopBody606_78

def loopBody606_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 16) 21

def loopBody606_81 : HolLoopProg 64 :=
.mark loopBody606_80

def loopBody606_82 : HolLoopProg 64 :=
.seq loopBody606_81 loopBody606_13

def loopBody606_83 : HolLoopProg 64 :=
.mark loopBody606_82

def loopBody606_84 : HolLoopProg 64 :=
.seq loopBody606_79 loopBody606_83

def loopBody606_85 : HolLoopProg 64 :=
.mark loopBody606_84

def loopBody606_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 18)

def loopBody606_87 : HolLoopProg 64 :=
.mark loopBody606_86

def loopBody606_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 16, Flapjack.HolLoopExp.const 8#64]) 21

def loopBody606_89 : HolLoopProg 64 :=
.mark loopBody606_88

def loopBody606_90 : HolLoopProg 64 :=
.seq loopBody606_89 loopBody606_13

def loopBody606_91 : HolLoopProg 64 :=
.mark loopBody606_90

def loopBody606_92 : HolLoopProg 64 :=
.seq loopBody606_87 loopBody606_91

def loopBody606_93 : HolLoopProg 64 :=
.mark loopBody606_92

def loopBody606_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 19)

def loopBody606_95 : HolLoopProg 64 :=
.mark loopBody606_94

def loopBody606_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 16, Flapjack.HolLoopExp.const 16#64]) 21

def loopBody606_97 : HolLoopProg 64 :=
.mark loopBody606_96

def loopBody606_98 : HolLoopProg 64 :=
.seq loopBody606_97 loopBody606_13

def loopBody606_99 : HolLoopProg 64 :=
.mark loopBody606_98

def loopBody606_100 : HolLoopProg 64 :=
.seq loopBody606_95 loopBody606_99

def loopBody606_101 : HolLoopProg 64 :=
.mark loopBody606_100

def loopBody606_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 20)

def loopBody606_103 : HolLoopProg 64 :=
.mark loopBody606_102

def loopBody606_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 16, Flapjack.HolLoopExp.const 24#64]) 21

def loopBody606_105 : HolLoopProg 64 :=
.mark loopBody606_104

def loopBody606_106 : HolLoopProg 64 :=
.seq loopBody606_105 loopBody606_13

def loopBody606_107 : HolLoopProg 64 :=
.mark loopBody606_106

def loopBody606_108 : HolLoopProg 64 :=
.seq loopBody606_103 loopBody606_107

def loopBody606_109 : HolLoopProg 64 :=
.mark loopBody606_108

def loopBody606_110 : HolLoopProg 64 :=
.seq loopBody606_109 loopBody606_13

def loopBody606_111 : HolLoopProg 64 :=
.mark loopBody606_110

def loopBody606_112 : HolLoopProg 64 :=
.seq loopBody606_101 loopBody606_111

def loopBody606_113 : HolLoopProg 64 :=
.mark loopBody606_112

def loopBody606_114 : HolLoopProg 64 :=
.seq loopBody606_93 loopBody606_113

def loopBody606_115 : HolLoopProg 64 :=
.mark loopBody606_114

def loopBody606_116 : HolLoopProg 64 :=
.seq loopBody606_85 loopBody606_115

def loopBody606_117 : HolLoopProg 64 :=
.mark loopBody606_116

def loopBody606_118 : HolLoopProg 64 :=
.seq loopBody606_77 loopBody606_117

def loopBody606_119 : HolLoopProg 64 :=
.mark loopBody606_118

def loopBody606_120 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_119

def loopBody606_121 : HolLoopProg 64 :=
.mark loopBody606_120

def loopBody606_122 : HolLoopProg 64 :=
.seq loopBody606_75 loopBody606_121

def loopBody606_123 : HolLoopProg 64 :=
.mark loopBody606_122

def loopBody606_124 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_123

def loopBody606_125 : HolLoopProg 64 :=
.mark loopBody606_124

def loopBody606_126 : HolLoopProg 64 :=
.seq loopBody606_73 loopBody606_125

def loopBody606_127 : HolLoopProg 64 :=
.mark loopBody606_126

def loopBody606_128 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_127

def loopBody606_129 : HolLoopProg 64 :=
.mark loopBody606_128

def loopBody606_130 : HolLoopProg 64 :=
.seq loopBody606_71 loopBody606_129

def loopBody606_131 : HolLoopProg 64 :=
.mark loopBody606_130

def loopBody606_132 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_131

def loopBody606_133 : HolLoopProg 64 :=
.mark loopBody606_132

def loopBody606_134 : HolLoopProg 64 :=
.seq loopBody606_69 loopBody606_133

def loopBody606_135 : HolLoopProg 64 :=
.mark loopBody606_134

def loopBody606_136 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_135

def loopBody606_137 : HolLoopProg 64 :=
.mark loopBody606_136

def loopBody606_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody606_139 : HolLoopProg 64 :=
.mark loopBody606_138

def loopBody606_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [16]

def loopBody606_141 : HolLoopProg 64 :=
.mark loopBody606_140

def loopBody606_142 : HolLoopProg 64 :=
.seq loopBody606_141 loopBody606_13

def loopBody606_143 : HolLoopProg 64 :=
.mark loopBody606_142

def loopBody606_144 : HolLoopProg 64 :=
.seq loopBody606_139 loopBody606_143

def loopBody606_145 : HolLoopProg 64 :=
.mark loopBody606_144

def loopBody606_146 : HolLoopProg 64 :=
.seq loopBody606_137 loopBody606_145

def loopBody606_147 : HolLoopProg 64 :=
.mark loopBody606_146

def loopBody606_148 : HolLoopProg 64 :=
.seq loopBody606_67 loopBody606_147

def loopBody606_149 : HolLoopProg 64 :=
.mark loopBody606_148

def loopBody606_150 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_149

def loopBody606_151 : HolLoopProg 64 :=
.mark loopBody606_150

def loopBody606_152 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_151

def loopBody606_153 : HolLoopProg 64 :=
.mark loopBody606_152

def loopBody606_154 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_153

def loopBody606_155 : HolLoopProg 64 :=
.mark loopBody606_154

def loopBody606_156 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_155

def loopBody606_157 : HolLoopProg 64 :=
.mark loopBody606_156

def loopBody606_158 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_157

def loopBody606_159 : HolLoopProg 64 :=
.mark loopBody606_158

def loopBody606_160 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_159

def loopBody606_161 : HolLoopProg 64 :=
.mark loopBody606_160

def loopBody606_162 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_161

def loopBody606_163 : HolLoopProg 64 :=
.mark loopBody606_162

def loopBody606_164 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_163

def loopBody606_165 : HolLoopProg 64 :=
.mark loopBody606_164

def loopBody606_166 : HolLoopProg 64 :=
.seq loopBody606_29 loopBody606_165

def loopBody606_167 : HolLoopProg 64 :=
.mark loopBody606_166

def loopBody606_168 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_167

def loopBody606_169 : HolLoopProg 64 :=
.mark loopBody606_168

def loopBody606_170 : HolLoopProg 64 :=
.seq loopBody606_27 loopBody606_169

def loopBody606_171 : HolLoopProg 64 :=
.mark loopBody606_170

def loopBody606_172 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_171

def loopBody606_173 : HolLoopProg 64 :=
.mark loopBody606_172

def loopBody606_174 : HolLoopProg 64 :=
.seq loopBody606_25 loopBody606_173

def loopBody606_175 : HolLoopProg 64 :=
.mark loopBody606_174

def loopBody606_176 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_175

def loopBody606_177 : HolLoopProg 64 :=
.mark loopBody606_176

def loopBody606_178 : HolLoopProg 64 :=
.seq loopBody606_23 loopBody606_177

def loopBody606_179 : HolLoopProg 64 :=
.mark loopBody606_178

def loopBody606_180 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_179

def loopBody606_181 : HolLoopProg 64 :=
.mark loopBody606_180

def loopBody606_182 : HolLoopProg 64 :=
.seq loopBody606_21 loopBody606_181

def loopBody606_183 : HolLoopProg 64 :=
.mark loopBody606_182

def loopBody606_184 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_183

def loopBody606_185 : HolLoopProg 64 :=
.mark loopBody606_184

def loopBody606_186 : HolLoopProg 64 :=
.seq loopBody606_19 loopBody606_185

def loopBody606_187 : HolLoopProg 64 :=
.mark loopBody606_186

def loopBody606_188 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_187

def loopBody606_189 : HolLoopProg 64 :=
.mark loopBody606_188

def loopBody606_190 : HolLoopProg 64 :=
.seq loopBody606_17 loopBody606_189

def loopBody606_191 : HolLoopProg 64 :=
.mark loopBody606_190

def loopBody606_192 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_191

def loopBody606_193 : HolLoopProg 64 :=
.mark loopBody606_192

def loopBody606_194 : HolLoopProg 64 :=
.seq loopBody606_15 loopBody606_193

def loopBody606_195 : HolLoopProg 64 :=
.mark loopBody606_194

def loopBody606_196 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_195

def loopBody606_197 : HolLoopProg 64 :=
.mark loopBody606_196

def loopBody606_198 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody606_197 loopBody606_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody606_199 : HolLoopProg 64 :=
.mark loopBody606_198

def loopBody606_200 : HolLoopProg 64 :=
.seq loopBody606_199 loopBody606_13

def loopBody606_201 : HolLoopProg 64 :=
.mark loopBody606_200

def loopBody606_202 : HolLoopProg 64 :=
.seq loopBody606_11 loopBody606_201

def loopBody606_203 : HolLoopProg 64 :=
.mark loopBody606_202

def loopBody606_204 : HolLoopProg 64 :=
.seq loopBody606_9 loopBody606_203

def loopBody606_205 : HolLoopProg 64 :=
.mark loopBody606_204

def loopBody606_206 : HolLoopProg 64 :=
.seq loopBody606_3 loopBody606_205

def loopBody606_207 : HolLoopProg 64 :=
.mark loopBody606_206

def loopBody606_208 : HolLoopProg 64 :=
.seq loopBody606_1 loopBody606_207

def loopBody606_209 : HolLoopProg 64 :=
.mark loopBody606_208

def loopBody606_210 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 2#64)

def loopBody606_211 : HolLoopProg 64 :=
.mark loopBody606_210

def loopBody606_212 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody606_5 loopBody606_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody606_213 : HolLoopProg 64 :=
.mark loopBody606_212

def loopBody606_214 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody606_215 : HolLoopProg 64 :=
.mark loopBody606_214

def loopBody606_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody606_217 : HolLoopProg 64 :=
.mark loopBody606_216

def loopBody606_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody606_219 : HolLoopProg 64 :=
.mark loopBody606_218

def loopBody606_220 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody606_221 : HolLoopProg 64 :=
.mark loopBody606_220

def loopBody606_222 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 666) ([5, 6, 7]) (some (5, loopBody606_221, loopBody606_13, (Flapjack.Spt.ln)))

def loopBody606_223 : HolLoopProg 64 :=
.mark loopBody606_222

def loopBody606_224 : HolLoopProg 64 :=
.seq loopBody606_223 loopBody606_13

def loopBody606_225 : HolLoopProg 64 :=
.mark loopBody606_224

def loopBody606_226 : HolLoopProg 64 :=
.seq loopBody606_219 loopBody606_225

def loopBody606_227 : HolLoopProg 64 :=
.mark loopBody606_226

def loopBody606_228 : HolLoopProg 64 :=
.seq loopBody606_217 loopBody606_227

def loopBody606_229 : HolLoopProg 64 :=
.mark loopBody606_228

def loopBody606_230 : HolLoopProg 64 :=
.seq loopBody606_215 loopBody606_229

def loopBody606_231 : HolLoopProg 64 :=
.mark loopBody606_230

def loopBody606_232 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_231

def loopBody606_233 : HolLoopProg 64 :=
.mark loopBody606_232

def loopBody606_234 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_233

def loopBody606_235 : HolLoopProg 64 :=
.mark loopBody606_234

def loopBody606_236 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody606_237 : HolLoopProg 64 :=
.mark loopBody606_236

def loopBody606_238 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody606_239 : HolLoopProg 64 :=
.mark loopBody606_238

def loopBody606_240 : HolLoopProg 64 :=
.seq loopBody606_239 loopBody606_13

def loopBody606_241 : HolLoopProg 64 :=
.mark loopBody606_240

def loopBody606_242 : HolLoopProg 64 :=
.seq loopBody606_237 loopBody606_241

def loopBody606_243 : HolLoopProg 64 :=
.mark loopBody606_242

def loopBody606_244 : HolLoopProg 64 :=
.seq loopBody606_235 loopBody606_243

def loopBody606_245 : HolLoopProg 64 :=
.mark loopBody606_244

def loopBody606_246 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody606_245 loopBody606_13 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody606_247 : HolLoopProg 64 :=
.mark loopBody606_246

def loopBody606_248 : HolLoopProg 64 :=
.seq loopBody606_247 loopBody606_13

def loopBody606_249 : HolLoopProg 64 :=
.mark loopBody606_248

def loopBody606_250 : HolLoopProg 64 :=
.seq loopBody606_11 loopBody606_249

def loopBody606_251 : HolLoopProg 64 :=
.mark loopBody606_250

def loopBody606_252 : HolLoopProg 64 :=
.seq loopBody606_213 loopBody606_251

def loopBody606_253 : HolLoopProg 64 :=
.mark loopBody606_252

def loopBody606_254 : HolLoopProg 64 :=
.seq loopBody606_211 loopBody606_253

def loopBody606_255 : HolLoopProg 64 :=
.mark loopBody606_254

def loopBody606_256 : HolLoopProg 64 :=
.seq loopBody606_1 loopBody606_255

def loopBody606_257 : HolLoopProg 64 :=
.mark loopBody606_256

def loopBody606_258 : HolLoopProg 64 :=
.seq loopBody606_209 loopBody606_257

def loopBody606_259 : HolLoopProg 64 :=
.mark loopBody606_258

def loopBody606_260 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 668) ([5, 6, 7]) (some (5, loopBody606_221, loopBody606_13, (Flapjack.Spt.ln)))

def loopBody606_261 : HolLoopProg 64 :=
.mark loopBody606_260

def loopBody606_262 : HolLoopProg 64 :=
.seq loopBody606_261 loopBody606_13

def loopBody606_263 : HolLoopProg 64 :=
.mark loopBody606_262

def loopBody606_264 : HolLoopProg 64 :=
.seq loopBody606_219 loopBody606_263

def loopBody606_265 : HolLoopProg 64 :=
.mark loopBody606_264

def loopBody606_266 : HolLoopProg 64 :=
.seq loopBody606_217 loopBody606_265

def loopBody606_267 : HolLoopProg 64 :=
.mark loopBody606_266

def loopBody606_268 : HolLoopProg 64 :=
.seq loopBody606_215 loopBody606_267

def loopBody606_269 : HolLoopProg 64 :=
.mark loopBody606_268

def loopBody606_270 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_269

def loopBody606_271 : HolLoopProg 64 :=
.mark loopBody606_270

def loopBody606_272 : HolLoopProg 64 :=
.seq loopBody606_13 loopBody606_271

def loopBody606_273 : HolLoopProg 64 :=
.mark loopBody606_272

def loopBody606_274 : HolLoopProg 64 :=
.seq loopBody606_259 loopBody606_273

def loopBody606_275 : HolLoopProg 64 :=
.mark loopBody606_274

def loopBody606_276 : HolLoopProg 64 :=
.seq loopBody606_275 loopBody606_243

def loopBody606_277 : HolLoopProg 64 :=
.mark loopBody606_276

def output606 : Nat × List Nat × HolLoopProg 64 :=
  (670, [0, 1, 2, 3], loopBody606_277)
end InitECandidate.Proofs.FrontendStages.Loop
