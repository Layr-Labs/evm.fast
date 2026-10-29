import InitECandidate.Proofs.FrontendStages.Loop.Translate632
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody648_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody648_1 : HolLoopProg 64 :=
.mark loopBody648_0

def loopBody648_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody648_3 : HolLoopProg 64 :=
.mark loopBody648_2

def loopBody648_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody648_5 : HolLoopProg 64 :=
.mark loopBody648_4

def loopBody648_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody648_7 : HolLoopProg 64 :=
.mark loopBody648_6

def loopBody648_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody648_9 : HolLoopProg 64 :=
.mark loopBody648_8

def loopBody648_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody648_11 : HolLoopProg 64 :=
.mark loopBody648_10

def loopBody648_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody648_13 : HolLoopProg 64 :=
.mark loopBody648_12

def loopBody648_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody648_15 : HolLoopProg 64 :=
.mark loopBody648_14

def loopBody648_16 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 705) ([7, 8, 9, 10, 11, 12]) (some (7, loopBody648_15, loopBody648_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody648_17 : HolLoopProg 64 :=
.mark loopBody648_16

def loopBody648_18 : HolLoopProg 64 :=
.seq loopBody648_17 loopBody648_1

def loopBody648_19 : HolLoopProg 64 :=
.mark loopBody648_18

def loopBody648_20 : HolLoopProg 64 :=
.seq loopBody648_13 loopBody648_19

def loopBody648_21 : HolLoopProg 64 :=
.mark loopBody648_20

def loopBody648_22 : HolLoopProg 64 :=
.seq loopBody648_11 loopBody648_21

def loopBody648_23 : HolLoopProg 64 :=
.mark loopBody648_22

def loopBody648_24 : HolLoopProg 64 :=
.seq loopBody648_9 loopBody648_23

def loopBody648_25 : HolLoopProg 64 :=
.mark loopBody648_24

def loopBody648_26 : HolLoopProg 64 :=
.seq loopBody648_7 loopBody648_25

def loopBody648_27 : HolLoopProg 64 :=
.mark loopBody648_26

def loopBody648_28 : HolLoopProg 64 :=
.seq loopBody648_5 loopBody648_27

def loopBody648_29 : HolLoopProg 64 :=
.mark loopBody648_28

def loopBody648_30 : HolLoopProg 64 :=
.seq loopBody648_3 loopBody648_29

def loopBody648_31 : HolLoopProg 64 :=
.mark loopBody648_30

def loopBody648_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody648_33 : HolLoopProg 64 :=
.mark loopBody648_32

def loopBody648_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody648_35 : HolLoopProg 64 :=
.mark loopBody648_34

def loopBody648_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody648_37 : HolLoopProg 64 :=
.mark loopBody648_36

def loopBody648_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody648_39 : HolLoopProg 64 :=
.mark loopBody648_38

def loopBody648_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.RegImm.reg 9) loopBody648_37 loopBody648_39 (Flapjack.Spt.bs
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody648_41 : HolLoopProg 64 :=
.mark loopBody648_40

def loopBody648_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody648_43 : HolLoopProg 64 :=
.mark loopBody648_42

def loopBody648_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody648_45 : HolLoopProg 64 :=
.mark loopBody648_44

def loopBody648_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody648_47 : HolLoopProg 64 :=
.mark loopBody648_46

def loopBody648_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody648_49 : HolLoopProg 64 :=
.mark loopBody648_48

def loopBody648_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody648_51 : HolLoopProg 64 :=
.mark loopBody648_50

def loopBody648_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody648_53 : HolLoopProg 64 :=
.mark loopBody648_52

def loopBody648_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7, 8, 9, 10, 11, 12]

def loopBody648_55 : HolLoopProg 64 :=
.mark loopBody648_54

def loopBody648_56 : HolLoopProg 64 :=
.seq loopBody648_55 loopBody648_1

def loopBody648_57 : HolLoopProg 64 :=
.mark loopBody648_56

def loopBody648_58 : HolLoopProg 64 :=
.seq loopBody648_53 loopBody648_57

def loopBody648_59 : HolLoopProg 64 :=
.mark loopBody648_58

def loopBody648_60 : HolLoopProg 64 :=
.seq loopBody648_51 loopBody648_59

def loopBody648_61 : HolLoopProg 64 :=
.mark loopBody648_60

def loopBody648_62 : HolLoopProg 64 :=
.seq loopBody648_49 loopBody648_61

def loopBody648_63 : HolLoopProg 64 :=
.mark loopBody648_62

def loopBody648_64 : HolLoopProg 64 :=
.seq loopBody648_47 loopBody648_63

def loopBody648_65 : HolLoopProg 64 :=
.mark loopBody648_64

def loopBody648_66 : HolLoopProg 64 :=
.seq loopBody648_39 loopBody648_65

def loopBody648_67 : HolLoopProg 64 :=
.mark loopBody648_66

def loopBody648_68 : HolLoopProg 64 :=
.seq loopBody648_45 loopBody648_67

def loopBody648_69 : HolLoopProg 64 :=
.mark loopBody648_68

def loopBody648_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody648_69 loopBody648_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody648_71 : HolLoopProg 64 :=
.mark loopBody648_70

def loopBody648_72 : HolLoopProg 64 :=
.seq loopBody648_71 loopBody648_1

def loopBody648_73 : HolLoopProg 64 :=
.mark loopBody648_72

def loopBody648_74 : HolLoopProg 64 :=
.seq loopBody648_43 loopBody648_73

def loopBody648_75 : HolLoopProg 64 :=
.mark loopBody648_74

def loopBody648_76 : HolLoopProg 64 :=
.seq loopBody648_41 loopBody648_75

def loopBody648_77 : HolLoopProg 64 :=
.mark loopBody648_76

def loopBody648_78 : HolLoopProg 64 :=
.seq loopBody648_35 loopBody648_77

def loopBody648_79 : HolLoopProg 64 :=
.mark loopBody648_78

def loopBody648_80 : HolLoopProg 64 :=
.seq loopBody648_33 loopBody648_79

def loopBody648_81 : HolLoopProg 64 :=
.mark loopBody648_80

def loopBody648_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 13402431016077863595#64)

def loopBody648_83 : HolLoopProg 64 :=
.mark loopBody648_82

def loopBody648_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 2210141511517208575#64)

def loopBody648_85 : HolLoopProg 64 :=
.mark loopBody648_84

def loopBody648_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 7435674573564081700#64)

def loopBody648_87 : HolLoopProg 64 :=
.mark loopBody648_86

def loopBody648_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 7239337960414712511#64)

def loopBody648_89 : HolLoopProg 64 :=
.mark loopBody648_88

def loopBody648_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 5412103778470702295#64)

def loopBody648_91 : HolLoopProg 64 :=
.mark loopBody648_90

def loopBody648_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 1873798617647539866#64)

def loopBody648_93 : HolLoopProg 64 :=
.mark loopBody648_92

def loopBody648_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 0)

def loopBody648_95 : HolLoopProg 64 :=
.mark loopBody648_94

def loopBody648_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 1)

def loopBody648_97 : HolLoopProg 64 :=
.mark loopBody648_96

def loopBody648_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 2)

def loopBody648_99 : HolLoopProg 64 :=
.mark loopBody648_98

def loopBody648_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 3)

def loopBody648_101 : HolLoopProg 64 :=
.mark loopBody648_100

def loopBody648_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 24 (Flapjack.HolLoopExp.var 4)

def loopBody648_103 : HolLoopProg 64 :=
.mark loopBody648_102

def loopBody648_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 25 (Flapjack.HolLoopExp.var 5)

def loopBody648_105 : HolLoopProg 64 :=
.mark loopBody648_104

def loopBody648_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody648_107 : HolLoopProg 64 :=
.mark loopBody648_106

def loopBody648_108 : HolLoopProg 64 :=
.call (some ([7, 8, 9, 10, 11, 12, 13], Flapjack.Spt.ln)) (some 709) ([14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]) (some (14, loopBody648_107, loopBody648_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))

def loopBody648_109 : HolLoopProg 64 :=
.mark loopBody648_108

def loopBody648_110 : HolLoopProg 64 :=
.seq loopBody648_109 loopBody648_1

def loopBody648_111 : HolLoopProg 64 :=
.mark loopBody648_110

def loopBody648_112 : HolLoopProg 64 :=
.seq loopBody648_105 loopBody648_111

def loopBody648_113 : HolLoopProg 64 :=
.mark loopBody648_112

def loopBody648_114 : HolLoopProg 64 :=
.seq loopBody648_103 loopBody648_113

def loopBody648_115 : HolLoopProg 64 :=
.mark loopBody648_114

def loopBody648_116 : HolLoopProg 64 :=
.seq loopBody648_101 loopBody648_115

def loopBody648_117 : HolLoopProg 64 :=
.mark loopBody648_116

def loopBody648_118 : HolLoopProg 64 :=
.seq loopBody648_99 loopBody648_117

def loopBody648_119 : HolLoopProg 64 :=
.mark loopBody648_118

def loopBody648_120 : HolLoopProg 64 :=
.seq loopBody648_97 loopBody648_119

def loopBody648_121 : HolLoopProg 64 :=
.mark loopBody648_120

def loopBody648_122 : HolLoopProg 64 :=
.seq loopBody648_95 loopBody648_121

def loopBody648_123 : HolLoopProg 64 :=
.mark loopBody648_122

def loopBody648_124 : HolLoopProg 64 :=
.seq loopBody648_93 loopBody648_123

def loopBody648_125 : HolLoopProg 64 :=
.mark loopBody648_124

def loopBody648_126 : HolLoopProg 64 :=
.seq loopBody648_91 loopBody648_125

def loopBody648_127 : HolLoopProg 64 :=
.mark loopBody648_126

def loopBody648_128 : HolLoopProg 64 :=
.seq loopBody648_89 loopBody648_127

def loopBody648_129 : HolLoopProg 64 :=
.mark loopBody648_128

def loopBody648_130 : HolLoopProg 64 :=
.seq loopBody648_87 loopBody648_129

def loopBody648_131 : HolLoopProg 64 :=
.mark loopBody648_130

def loopBody648_132 : HolLoopProg 64 :=
.seq loopBody648_85 loopBody648_131

def loopBody648_133 : HolLoopProg 64 :=
.mark loopBody648_132

def loopBody648_134 : HolLoopProg 64 :=
.seq loopBody648_83 loopBody648_133

def loopBody648_135 : HolLoopProg 64 :=
.mark loopBody648_134

def loopBody648_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 7)

def loopBody648_137 : HolLoopProg 64 :=
.mark loopBody648_136

def loopBody648_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 8)

def loopBody648_139 : HolLoopProg 64 :=
.mark loopBody648_138

def loopBody648_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 9)

def loopBody648_141 : HolLoopProg 64 :=
.mark loopBody648_140

def loopBody648_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 10)

def loopBody648_143 : HolLoopProg 64 :=
.mark loopBody648_142

def loopBody648_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 11)

def loopBody648_145 : HolLoopProg 64 :=
.mark loopBody648_144

def loopBody648_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 12)

def loopBody648_147 : HolLoopProg 64 :=
.mark loopBody648_146

def loopBody648_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14, 15, 16, 17, 18, 19]

def loopBody648_149 : HolLoopProg 64 :=
.mark loopBody648_148

def loopBody648_150 : HolLoopProg 64 :=
.seq loopBody648_149 loopBody648_1

def loopBody648_151 : HolLoopProg 64 :=
.mark loopBody648_150

def loopBody648_152 : HolLoopProg 64 :=
.seq loopBody648_147 loopBody648_151

def loopBody648_153 : HolLoopProg 64 :=
.mark loopBody648_152

def loopBody648_154 : HolLoopProg 64 :=
.seq loopBody648_145 loopBody648_153

def loopBody648_155 : HolLoopProg 64 :=
.mark loopBody648_154

def loopBody648_156 : HolLoopProg 64 :=
.seq loopBody648_143 loopBody648_155

def loopBody648_157 : HolLoopProg 64 :=
.mark loopBody648_156

def loopBody648_158 : HolLoopProg 64 :=
.seq loopBody648_141 loopBody648_157

def loopBody648_159 : HolLoopProg 64 :=
.mark loopBody648_158

def loopBody648_160 : HolLoopProg 64 :=
.seq loopBody648_139 loopBody648_159

def loopBody648_161 : HolLoopProg 64 :=
.mark loopBody648_160

def loopBody648_162 : HolLoopProg 64 :=
.seq loopBody648_137 loopBody648_161

def loopBody648_163 : HolLoopProg 64 :=
.mark loopBody648_162

def loopBody648_164 : HolLoopProg 64 :=
.seq loopBody648_135 loopBody648_163

def loopBody648_165 : HolLoopProg 64 :=
.mark loopBody648_164

def loopBody648_166 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_165

def loopBody648_167 : HolLoopProg 64 :=
.mark loopBody648_166

def loopBody648_168 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_167

def loopBody648_169 : HolLoopProg 64 :=
.mark loopBody648_168

def loopBody648_170 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_169

def loopBody648_171 : HolLoopProg 64 :=
.mark loopBody648_170

def loopBody648_172 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_171

def loopBody648_173 : HolLoopProg 64 :=
.mark loopBody648_172

def loopBody648_174 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_173

def loopBody648_175 : HolLoopProg 64 :=
.mark loopBody648_174

def loopBody648_176 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_175

def loopBody648_177 : HolLoopProg 64 :=
.mark loopBody648_176

def loopBody648_178 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_177

def loopBody648_179 : HolLoopProg 64 :=
.mark loopBody648_178

def loopBody648_180 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_179

def loopBody648_181 : HolLoopProg 64 :=
.mark loopBody648_180

def loopBody648_182 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_181

def loopBody648_183 : HolLoopProg 64 :=
.mark loopBody648_182

def loopBody648_184 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_183

def loopBody648_185 : HolLoopProg 64 :=
.mark loopBody648_184

def loopBody648_186 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_185

def loopBody648_187 : HolLoopProg 64 :=
.mark loopBody648_186

def loopBody648_188 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_187

def loopBody648_189 : HolLoopProg 64 :=
.mark loopBody648_188

def loopBody648_190 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_189

def loopBody648_191 : HolLoopProg 64 :=
.mark loopBody648_190

def loopBody648_192 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_191

def loopBody648_193 : HolLoopProg 64 :=
.mark loopBody648_192

def loopBody648_194 : HolLoopProg 64 :=
.seq loopBody648_81 loopBody648_193

def loopBody648_195 : HolLoopProg 64 :=
.mark loopBody648_194

def loopBody648_196 : HolLoopProg 64 :=
.seq loopBody648_31 loopBody648_195

def loopBody648_197 : HolLoopProg 64 :=
.mark loopBody648_196

def loopBody648_198 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_197

def loopBody648_199 : HolLoopProg 64 :=
.mark loopBody648_198

def loopBody648_200 : HolLoopProg 64 :=
.seq loopBody648_1 loopBody648_199

def loopBody648_201 : HolLoopProg 64 :=
.mark loopBody648_200

def output648 : Nat × List Nat × HolLoopProg 64 :=
  (712, [0, 1, 2, 3, 4, 5], loopBody648_201)
end InitECandidate.Proofs.FrontendStages.Loop
