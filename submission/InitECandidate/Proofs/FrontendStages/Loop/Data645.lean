import InitECandidate.Proofs.FrontendStages.Loop.Translate629
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody645_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody645_1 : HolLoopProg 64 :=
.mark loopBody645_0

def loopBody645_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 0)

def loopBody645_3 : HolLoopProg 64 :=
.mark loopBody645_2

def loopBody645_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody645_5 : HolLoopProg 64 :=
.mark loopBody645_4

def loopBody645_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 1#64)

def loopBody645_7 : HolLoopProg 64 :=
.mark loopBody645_6

def loopBody645_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [12, 13] Flapjack.PrimOp.addCarry [14, 15, 16]

def loopBody645_9 : HolLoopProg 64 :=
.mark loopBody645_8

def loopBody645_10 : HolLoopProg 64 :=
.seq loopBody645_7 loopBody645_9

def loopBody645_11 : HolLoopProg 64 :=
.mark loopBody645_10

def loopBody645_12 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_11

def loopBody645_13 : HolLoopProg 64 :=
.mark loopBody645_12

def loopBody645_14 : HolLoopProg 64 :=
.seq loopBody645_5 loopBody645_13

def loopBody645_15 : HolLoopProg 64 :=
.mark loopBody645_14

def loopBody645_16 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_15

def loopBody645_17 : HolLoopProg 64 :=
.mark loopBody645_16

def loopBody645_18 : HolLoopProg 64 :=
.seq loopBody645_3 loopBody645_17

def loopBody645_19 : HolLoopProg 64 :=
.mark loopBody645_18

def loopBody645_20 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_19

def loopBody645_21 : HolLoopProg 64 :=
.mark loopBody645_20

def loopBody645_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 1)

def loopBody645_23 : HolLoopProg 64 :=
.mark loopBody645_22

def loopBody645_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 7,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody645_25 : HolLoopProg 64 :=
.mark loopBody645_24

def loopBody645_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody645_27 : HolLoopProg 64 :=
.mark loopBody645_26

def loopBody645_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [14, 15] Flapjack.PrimOp.addCarry [16, 17, 18]

def loopBody645_29 : HolLoopProg 64 :=
.mark loopBody645_28

def loopBody645_30 : HolLoopProg 64 :=
.seq loopBody645_27 loopBody645_29

def loopBody645_31 : HolLoopProg 64 :=
.mark loopBody645_30

def loopBody645_32 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_31

def loopBody645_33 : HolLoopProg 64 :=
.mark loopBody645_32

def loopBody645_34 : HolLoopProg 64 :=
.seq loopBody645_25 loopBody645_33

def loopBody645_35 : HolLoopProg 64 :=
.mark loopBody645_34

def loopBody645_36 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_35

def loopBody645_37 : HolLoopProg 64 :=
.mark loopBody645_36

def loopBody645_38 : HolLoopProg 64 :=
.seq loopBody645_23 loopBody645_37

def loopBody645_39 : HolLoopProg 64 :=
.mark loopBody645_38

def loopBody645_40 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_39

def loopBody645_41 : HolLoopProg 64 :=
.mark loopBody645_40

def loopBody645_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 2)

def loopBody645_43 : HolLoopProg 64 :=
.mark loopBody645_42

def loopBody645_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 8,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody645_45 : HolLoopProg 64 :=
.mark loopBody645_44

def loopBody645_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 15)

def loopBody645_47 : HolLoopProg 64 :=
.mark loopBody645_46

def loopBody645_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [16, 17] Flapjack.PrimOp.addCarry [18, 19, 20]

def loopBody645_49 : HolLoopProg 64 :=
.mark loopBody645_48

def loopBody645_50 : HolLoopProg 64 :=
.seq loopBody645_47 loopBody645_49

def loopBody645_51 : HolLoopProg 64 :=
.mark loopBody645_50

def loopBody645_52 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_51

def loopBody645_53 : HolLoopProg 64 :=
.mark loopBody645_52

def loopBody645_54 : HolLoopProg 64 :=
.seq loopBody645_45 loopBody645_53

def loopBody645_55 : HolLoopProg 64 :=
.mark loopBody645_54

def loopBody645_56 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_55

def loopBody645_57 : HolLoopProg 64 :=
.mark loopBody645_56

def loopBody645_58 : HolLoopProg 64 :=
.seq loopBody645_43 loopBody645_57

def loopBody645_59 : HolLoopProg 64 :=
.mark loopBody645_58

def loopBody645_60 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_59

def loopBody645_61 : HolLoopProg 64 :=
.mark loopBody645_60

def loopBody645_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 3)

def loopBody645_63 : HolLoopProg 64 :=
.mark loopBody645_62

def loopBody645_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 9,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody645_65 : HolLoopProg 64 :=
.mark loopBody645_64

def loopBody645_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 17)

def loopBody645_67 : HolLoopProg 64 :=
.mark loopBody645_66

def loopBody645_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [18, 19] Flapjack.PrimOp.addCarry [20, 21, 22]

def loopBody645_69 : HolLoopProg 64 :=
.mark loopBody645_68

def loopBody645_70 : HolLoopProg 64 :=
.seq loopBody645_67 loopBody645_69

def loopBody645_71 : HolLoopProg 64 :=
.mark loopBody645_70

def loopBody645_72 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_71

def loopBody645_73 : HolLoopProg 64 :=
.mark loopBody645_72

def loopBody645_74 : HolLoopProg 64 :=
.seq loopBody645_65 loopBody645_73

def loopBody645_75 : HolLoopProg 64 :=
.mark loopBody645_74

def loopBody645_76 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_75

def loopBody645_77 : HolLoopProg 64 :=
.mark loopBody645_76

def loopBody645_78 : HolLoopProg 64 :=
.seq loopBody645_63 loopBody645_77

def loopBody645_79 : HolLoopProg 64 :=
.mark loopBody645_78

def loopBody645_80 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_79

def loopBody645_81 : HolLoopProg 64 :=
.mark loopBody645_80

def loopBody645_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 4)

def loopBody645_83 : HolLoopProg 64 :=
.mark loopBody645_82

def loopBody645_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 10,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody645_85 : HolLoopProg 64 :=
.mark loopBody645_84

def loopBody645_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 19)

def loopBody645_87 : HolLoopProg 64 :=
.mark loopBody645_86

def loopBody645_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [20, 21] Flapjack.PrimOp.addCarry [22, 23, 24]

def loopBody645_89 : HolLoopProg 64 :=
.mark loopBody645_88

def loopBody645_90 : HolLoopProg 64 :=
.seq loopBody645_87 loopBody645_89

def loopBody645_91 : HolLoopProg 64 :=
.mark loopBody645_90

def loopBody645_92 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_91

def loopBody645_93 : HolLoopProg 64 :=
.mark loopBody645_92

def loopBody645_94 : HolLoopProg 64 :=
.seq loopBody645_85 loopBody645_93

def loopBody645_95 : HolLoopProg 64 :=
.mark loopBody645_94

def loopBody645_96 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_95

def loopBody645_97 : HolLoopProg 64 :=
.mark loopBody645_96

def loopBody645_98 : HolLoopProg 64 :=
.seq loopBody645_83 loopBody645_97

def loopBody645_99 : HolLoopProg 64 :=
.mark loopBody645_98

def loopBody645_100 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_99

def loopBody645_101 : HolLoopProg 64 :=
.mark loopBody645_100

def loopBody645_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 5)

def loopBody645_103 : HolLoopProg 64 :=
.mark loopBody645_102

def loopBody645_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 25
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 11,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody645_105 : HolLoopProg 64 :=
.mark loopBody645_104

def loopBody645_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 26 (Flapjack.HolLoopExp.var 21)

def loopBody645_107 : HolLoopProg 64 :=
.mark loopBody645_106

def loopBody645_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.primitive [22, 23] Flapjack.PrimOp.addCarry [24, 25, 26]

def loopBody645_109 : HolLoopProg 64 :=
.mark loopBody645_108

def loopBody645_110 : HolLoopProg 64 :=
.seq loopBody645_107 loopBody645_109

def loopBody645_111 : HolLoopProg 64 :=
.mark loopBody645_110

def loopBody645_112 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_111

def loopBody645_113 : HolLoopProg 64 :=
.mark loopBody645_112

def loopBody645_114 : HolLoopProg 64 :=
.seq loopBody645_105 loopBody645_113

def loopBody645_115 : HolLoopProg 64 :=
.mark loopBody645_114

def loopBody645_116 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_115

def loopBody645_117 : HolLoopProg 64 :=
.mark loopBody645_116

def loopBody645_118 : HolLoopProg 64 :=
.seq loopBody645_103 loopBody645_117

def loopBody645_119 : HolLoopProg 64 :=
.mark loopBody645_118

def loopBody645_120 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_119

def loopBody645_121 : HolLoopProg 64 :=
.mark loopBody645_120

def loopBody645_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 12)

def loopBody645_123 : HolLoopProg 64 :=
.mark loopBody645_122

def loopBody645_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 25 (Flapjack.HolLoopExp.var 14)

def loopBody645_125 : HolLoopProg 64 :=
.mark loopBody645_124

def loopBody645_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 26 (Flapjack.HolLoopExp.var 16)

def loopBody645_127 : HolLoopProg 64 :=
.mark loopBody645_126

def loopBody645_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 27 (Flapjack.HolLoopExp.var 18)

def loopBody645_129 : HolLoopProg 64 :=
.mark loopBody645_128

def loopBody645_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 28 (Flapjack.HolLoopExp.var 20)

def loopBody645_131 : HolLoopProg 64 :=
.mark loopBody645_130

def loopBody645_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 29 (Flapjack.HolLoopExp.var 22)

def loopBody645_133 : HolLoopProg 64 :=
.mark loopBody645_132

def loopBody645_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 30 (Flapjack.HolLoopExp.var 23)

def loopBody645_135 : HolLoopProg 64 :=
.mark loopBody645_134

def loopBody645_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [24, 25, 26, 27, 28, 29, 30]

def loopBody645_137 : HolLoopProg 64 :=
.mark loopBody645_136

def loopBody645_138 : HolLoopProg 64 :=
.seq loopBody645_137 loopBody645_1

def loopBody645_139 : HolLoopProg 64 :=
.mark loopBody645_138

def loopBody645_140 : HolLoopProg 64 :=
.seq loopBody645_135 loopBody645_139

def loopBody645_141 : HolLoopProg 64 :=
.mark loopBody645_140

def loopBody645_142 : HolLoopProg 64 :=
.seq loopBody645_133 loopBody645_141

def loopBody645_143 : HolLoopProg 64 :=
.mark loopBody645_142

def loopBody645_144 : HolLoopProg 64 :=
.seq loopBody645_131 loopBody645_143

def loopBody645_145 : HolLoopProg 64 :=
.mark loopBody645_144

def loopBody645_146 : HolLoopProg 64 :=
.seq loopBody645_129 loopBody645_145

def loopBody645_147 : HolLoopProg 64 :=
.mark loopBody645_146

def loopBody645_148 : HolLoopProg 64 :=
.seq loopBody645_127 loopBody645_147

def loopBody645_149 : HolLoopProg 64 :=
.mark loopBody645_148

def loopBody645_150 : HolLoopProg 64 :=
.seq loopBody645_125 loopBody645_149

def loopBody645_151 : HolLoopProg 64 :=
.mark loopBody645_150

def loopBody645_152 : HolLoopProg 64 :=
.seq loopBody645_123 loopBody645_151

def loopBody645_153 : HolLoopProg 64 :=
.mark loopBody645_152

def loopBody645_154 : HolLoopProg 64 :=
.seq loopBody645_121 loopBody645_153

def loopBody645_155 : HolLoopProg 64 :=
.mark loopBody645_154

def loopBody645_156 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_155

def loopBody645_157 : HolLoopProg 64 :=
.mark loopBody645_156

def loopBody645_158 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_157

def loopBody645_159 : HolLoopProg 64 :=
.mark loopBody645_158

def loopBody645_160 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_159

def loopBody645_161 : HolLoopProg 64 :=
.mark loopBody645_160

def loopBody645_162 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_161

def loopBody645_163 : HolLoopProg 64 :=
.mark loopBody645_162

def loopBody645_164 : HolLoopProg 64 :=
.seq loopBody645_101 loopBody645_163

def loopBody645_165 : HolLoopProg 64 :=
.mark loopBody645_164

def loopBody645_166 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_165

def loopBody645_167 : HolLoopProg 64 :=
.mark loopBody645_166

def loopBody645_168 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_167

def loopBody645_169 : HolLoopProg 64 :=
.mark loopBody645_168

def loopBody645_170 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_169

def loopBody645_171 : HolLoopProg 64 :=
.mark loopBody645_170

def loopBody645_172 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_171

def loopBody645_173 : HolLoopProg 64 :=
.mark loopBody645_172

def loopBody645_174 : HolLoopProg 64 :=
.seq loopBody645_81 loopBody645_173

def loopBody645_175 : HolLoopProg 64 :=
.mark loopBody645_174

def loopBody645_176 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_175

def loopBody645_177 : HolLoopProg 64 :=
.mark loopBody645_176

def loopBody645_178 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_177

def loopBody645_179 : HolLoopProg 64 :=
.mark loopBody645_178

def loopBody645_180 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_179

def loopBody645_181 : HolLoopProg 64 :=
.mark loopBody645_180

def loopBody645_182 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_181

def loopBody645_183 : HolLoopProg 64 :=
.mark loopBody645_182

def loopBody645_184 : HolLoopProg 64 :=
.seq loopBody645_61 loopBody645_183

def loopBody645_185 : HolLoopProg 64 :=
.mark loopBody645_184

def loopBody645_186 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_185

def loopBody645_187 : HolLoopProg 64 :=
.mark loopBody645_186

def loopBody645_188 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_187

def loopBody645_189 : HolLoopProg 64 :=
.mark loopBody645_188

def loopBody645_190 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_189

def loopBody645_191 : HolLoopProg 64 :=
.mark loopBody645_190

def loopBody645_192 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_191

def loopBody645_193 : HolLoopProg 64 :=
.mark loopBody645_192

def loopBody645_194 : HolLoopProg 64 :=
.seq loopBody645_41 loopBody645_193

def loopBody645_195 : HolLoopProg 64 :=
.mark loopBody645_194

def loopBody645_196 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_195

def loopBody645_197 : HolLoopProg 64 :=
.mark loopBody645_196

def loopBody645_198 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_197

def loopBody645_199 : HolLoopProg 64 :=
.mark loopBody645_198

def loopBody645_200 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_199

def loopBody645_201 : HolLoopProg 64 :=
.mark loopBody645_200

def loopBody645_202 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_201

def loopBody645_203 : HolLoopProg 64 :=
.mark loopBody645_202

def loopBody645_204 : HolLoopProg 64 :=
.seq loopBody645_21 loopBody645_203

def loopBody645_205 : HolLoopProg 64 :=
.mark loopBody645_204

def loopBody645_206 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_205

def loopBody645_207 : HolLoopProg 64 :=
.mark loopBody645_206

def loopBody645_208 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_207

def loopBody645_209 : HolLoopProg 64 :=
.mark loopBody645_208

def loopBody645_210 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_209

def loopBody645_211 : HolLoopProg 64 :=
.mark loopBody645_210

def loopBody645_212 : HolLoopProg 64 :=
.seq loopBody645_1 loopBody645_211

def loopBody645_213 : HolLoopProg 64 :=
.mark loopBody645_212

def output645 : Nat × List Nat × HolLoopProg 64 :=
  (709, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], loopBody645_213)
end InitECandidate.Proofs.FrontendStages.Loop
