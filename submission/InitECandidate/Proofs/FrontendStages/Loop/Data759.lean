import InitECandidate.Proofs.FrontendStages.Loop.Translate743
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody759_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody759_1 : HolLoopProg 64 :=
.mark loopBody759_0

def loopBody759_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody759_3 : HolLoopProg 64 :=
.mark loopBody759_2

def loopBody759_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody759_5 : HolLoopProg 64 :=
.mark loopBody759_4

def loopBody759_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody759_7 : HolLoopProg 64 :=
.mark loopBody759_6

def loopBody759_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 512#64)

def loopBody759_9 : HolLoopProg 64 :=
.mark loopBody759_8

def loopBody759_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody759_11 : HolLoopProg 64 :=
.mark loopBody759_10

def loopBody759_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody759_13 : HolLoopProg 64 :=
.mark loopBody759_12

def loopBody759_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody759_11 loopBody759_13 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody759_15 : HolLoopProg 64 :=
.mark loopBody759_14

def loopBody759_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody759_17 : HolLoopProg 64 :=
.mark loopBody759_16

def loopBody759_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 10#64)

def loopBody759_19 : HolLoopProg 64 :=
.mark loopBody759_18

def loopBody759_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody759_21 : HolLoopProg 64 :=
.mark loopBody759_20

def loopBody759_22 : HolLoopProg 64 :=
.seq loopBody759_21 loopBody759_1

def loopBody759_23 : HolLoopProg 64 :=
.mark loopBody759_22

def loopBody759_24 : HolLoopProg 64 :=
.seq loopBody759_23 loopBody759_1

def loopBody759_25 : HolLoopProg 64 :=
.mark loopBody759_24

def loopBody759_26 : HolLoopProg 64 :=
.seq loopBody759_19 loopBody759_25

def loopBody759_27 : HolLoopProg 64 :=
.mark loopBody759_26

def loopBody759_28 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_27

def loopBody759_29 : HolLoopProg 64 :=
.mark loopBody759_28

def loopBody759_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody759_31 : HolLoopProg 64 :=
.mark loopBody759_30

def loopBody759_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody759_33 : HolLoopProg 64 :=
.mark loopBody759_32

def loopBody759_34 : HolLoopProg 64 :=
.seq loopBody759_31 loopBody759_33

def loopBody759_35 : HolLoopProg 64 :=
.mark loopBody759_34

def loopBody759_36 : HolLoopProg 64 :=
.seq loopBody759_29 loopBody759_35

def loopBody759_37 : HolLoopProg 64 :=
.mark loopBody759_36

def loopBody759_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody759_37 loopBody759_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody759_39 : HolLoopProg 64 :=
.mark loopBody759_38

def loopBody759_40 : HolLoopProg 64 :=
.seq loopBody759_39 loopBody759_1

def loopBody759_41 : HolLoopProg 64 :=
.mark loopBody759_40

def loopBody759_42 : HolLoopProg 64 :=
.seq loopBody759_17 loopBody759_41

def loopBody759_43 : HolLoopProg 64 :=
.mark loopBody759_42

def loopBody759_44 : HolLoopProg 64 :=
.seq loopBody759_15 loopBody759_43

def loopBody759_45 : HolLoopProg 64 :=
.mark loopBody759_44

def loopBody759_46 : HolLoopProg 64 :=
.seq loopBody759_9 loopBody759_45

def loopBody759_47 : HolLoopProg 64 :=
.mark loopBody759_46

def loopBody759_48 : HolLoopProg 64 :=
.seq loopBody759_7 loopBody759_47

def loopBody759_49 : HolLoopProg 64 :=
.mark loopBody759_48

def loopBody759_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 600#64)

def loopBody759_51 : HolLoopProg 64 :=
.mark loopBody759_50

def loopBody759_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody759_53 : HolLoopProg 64 :=
.mark loopBody759_52

def loopBody759_54 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 470) ([4]) (some (4, loopBody759_53, loopBody759_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody759_55 : HolLoopProg 64 :=
.mark loopBody759_54

def loopBody759_56 : HolLoopProg 64 :=
.seq loopBody759_55 loopBody759_1

def loopBody759_57 : HolLoopProg 64 :=
.mark loopBody759_56

def loopBody759_58 : HolLoopProg 64 :=
.seq loopBody759_51 loopBody759_57

def loopBody759_59 : HolLoopProg 64 :=
.mark loopBody759_58

def loopBody759_60 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_59

def loopBody759_61 : HolLoopProg 64 :=
.mark loopBody759_60

def loopBody759_62 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_61

def loopBody759_63 : HolLoopProg 64 :=
.mark loopBody759_62

def loopBody759_64 : HolLoopProg 64 :=
.seq loopBody759_49 loopBody759_63

def loopBody759_65 : HolLoopProg 64 :=
.mark loopBody759_64

def loopBody759_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 256#64)

def loopBody759_67 : HolLoopProg 64 :=
.mark loopBody759_66

def loopBody759_68 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody759_53, loopBody759_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody759_69 : HolLoopProg 64 :=
.mark loopBody759_68

def loopBody759_70 : HolLoopProg 64 :=
.seq loopBody759_69 loopBody759_1

def loopBody759_71 : HolLoopProg 64 :=
.mark loopBody759_70

def loopBody759_72 : HolLoopProg 64 :=
.seq loopBody759_67 loopBody759_71

def loopBody759_73 : HolLoopProg 64 :=
.mark loopBody759_72

def loopBody759_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody759_75 : HolLoopProg 64 :=
.mark loopBody759_74

def loopBody759_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody759_77 : HolLoopProg 64 :=
.mark loopBody759_76

def loopBody759_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody759_79 : HolLoopProg 64 :=
.mark loopBody759_78

def loopBody759_80 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 812) ([5, 6]) (some (5, loopBody759_79, loopBody759_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody759_81 : HolLoopProg 64 :=
.mark loopBody759_80

def loopBody759_82 : HolLoopProg 64 :=
.seq loopBody759_81 loopBody759_1

def loopBody759_83 : HolLoopProg 64 :=
.mark loopBody759_82

def loopBody759_84 : HolLoopProg 64 :=
.seq loopBody759_77 loopBody759_83

def loopBody759_85 : HolLoopProg 64 :=
.mark loopBody759_84

def loopBody759_86 : HolLoopProg 64 :=
.seq loopBody759_75 loopBody759_85

def loopBody759_87 : HolLoopProg 64 :=
.mark loopBody759_86

def loopBody759_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody759_89 : HolLoopProg 64 :=
.mark loopBody759_88

def loopBody759_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody759_91 : HolLoopProg 64 :=
.mark loopBody759_90

def loopBody759_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody759_93 : HolLoopProg 64 :=
.mark loopBody759_92

def loopBody759_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody759_91 loopBody759_93 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody759_95 : HolLoopProg 64 :=
.mark loopBody759_94

def loopBody759_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody759_97 : HolLoopProg 64 :=
.mark loopBody759_96

def loopBody759_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 10#64)

def loopBody759_99 : HolLoopProg 64 :=
.mark loopBody759_98

def loopBody759_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody759_101 : HolLoopProg 64 :=
.mark loopBody759_100

def loopBody759_102 : HolLoopProg 64 :=
.seq loopBody759_101 loopBody759_1

def loopBody759_103 : HolLoopProg 64 :=
.mark loopBody759_102

def loopBody759_104 : HolLoopProg 64 :=
.seq loopBody759_103 loopBody759_1

def loopBody759_105 : HolLoopProg 64 :=
.mark loopBody759_104

def loopBody759_106 : HolLoopProg 64 :=
.seq loopBody759_99 loopBody759_105

def loopBody759_107 : HolLoopProg 64 :=
.mark loopBody759_106

def loopBody759_108 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_107

def loopBody759_109 : HolLoopProg 64 :=
.mark loopBody759_108

def loopBody759_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8#64)

def loopBody759_111 : HolLoopProg 64 :=
.mark loopBody759_110

def loopBody759_112 : HolLoopProg 64 :=
.seq loopBody759_111 loopBody759_79

def loopBody759_113 : HolLoopProg 64 :=
.mark loopBody759_112

def loopBody759_114 : HolLoopProg 64 :=
.seq loopBody759_109 loopBody759_113

def loopBody759_115 : HolLoopProg 64 :=
.mark loopBody759_114

def loopBody759_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody759_115 loopBody759_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody759_117 : HolLoopProg 64 :=
.mark loopBody759_116

def loopBody759_118 : HolLoopProg 64 :=
.seq loopBody759_117 loopBody759_1

def loopBody759_119 : HolLoopProg 64 :=
.mark loopBody759_118

def loopBody759_120 : HolLoopProg 64 :=
.seq loopBody759_97 loopBody759_119

def loopBody759_121 : HolLoopProg 64 :=
.mark loopBody759_120

def loopBody759_122 : HolLoopProg 64 :=
.seq loopBody759_95 loopBody759_121

def loopBody759_123 : HolLoopProg 64 :=
.mark loopBody759_122

def loopBody759_124 : HolLoopProg 64 :=
.seq loopBody759_89 loopBody759_123

def loopBody759_125 : HolLoopProg 64 :=
.mark loopBody759_124

def loopBody759_126 : HolLoopProg 64 :=
.seq loopBody759_17 loopBody759_125

def loopBody759_127 : HolLoopProg 64 :=
.mark loopBody759_126

def loopBody759_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody759_129 : HolLoopProg 64 :=
.mark loopBody759_128

def loopBody759_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody759_131 : HolLoopProg 64 :=
.mark loopBody759_130

def loopBody759_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody759_133 : HolLoopProg 64 :=
.mark loopBody759_132

def loopBody759_134 : HolLoopProg 64 :=
.seq loopBody759_133 loopBody759_1

def loopBody759_135 : HolLoopProg 64 :=
.mark loopBody759_134

def loopBody759_136 : HolLoopProg 64 :=
.seq loopBody759_131 loopBody759_135

def loopBody759_137 : HolLoopProg 64 :=
.mark loopBody759_136

def loopBody759_138 : HolLoopProg 64 :=
.seq loopBody759_137 loopBody759_1

def loopBody759_139 : HolLoopProg 64 :=
.mark loopBody759_138

def loopBody759_140 : HolLoopProg 64 :=
.seq loopBody759_77 loopBody759_139

def loopBody759_141 : HolLoopProg 64 :=
.mark loopBody759_140

def loopBody759_142 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_141

def loopBody759_143 : HolLoopProg 64 :=
.mark loopBody759_142

def loopBody759_144 : HolLoopProg 64 :=
.seq loopBody759_129 loopBody759_143

def loopBody759_145 : HolLoopProg 64 :=
.mark loopBody759_144

def loopBody759_146 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_145

def loopBody759_147 : HolLoopProg 64 :=
.mark loopBody759_146

def loopBody759_148 : HolLoopProg 64 :=
.seq loopBody759_127 loopBody759_147

def loopBody759_149 : HolLoopProg 64 :=
.mark loopBody759_148

def loopBody759_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody759_151 : HolLoopProg 64 :=
.mark loopBody759_150

def loopBody759_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 256#64)

def loopBody759_153 : HolLoopProg 64 :=
.mark loopBody759_152

def loopBody759_154 : HolLoopProg 64 :=
.seq loopBody759_153 loopBody759_139

def loopBody759_155 : HolLoopProg 64 :=
.mark loopBody759_154

def loopBody759_156 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_155

def loopBody759_157 : HolLoopProg 64 :=
.mark loopBody759_156

def loopBody759_158 : HolLoopProg 64 :=
.seq loopBody759_151 loopBody759_157

def loopBody759_159 : HolLoopProg 64 :=
.mark loopBody759_158

def loopBody759_160 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_159

def loopBody759_161 : HolLoopProg 64 :=
.mark loopBody759_160

def loopBody759_162 : HolLoopProg 64 :=
.seq loopBody759_149 loopBody759_161

def loopBody759_163 : HolLoopProg 64 :=
.mark loopBody759_162

def loopBody759_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody759_165 : HolLoopProg 64 :=
.mark loopBody759_164

def loopBody759_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody759_167 : HolLoopProg 64 :=
.mark loopBody759_166

def loopBody759_168 : HolLoopProg 64 :=
.seq loopBody759_167 loopBody759_1

def loopBody759_169 : HolLoopProg 64 :=
.mark loopBody759_168

def loopBody759_170 : HolLoopProg 64 :=
.seq loopBody759_165 loopBody759_169

def loopBody759_171 : HolLoopProg 64 :=
.mark loopBody759_170

def loopBody759_172 : HolLoopProg 64 :=
.seq loopBody759_163 loopBody759_171

def loopBody759_173 : HolLoopProg 64 :=
.mark loopBody759_172

def loopBody759_174 : HolLoopProg 64 :=
.seq loopBody759_87 loopBody759_173

def loopBody759_175 : HolLoopProg 64 :=
.mark loopBody759_174

def loopBody759_176 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_175

def loopBody759_177 : HolLoopProg 64 :=
.mark loopBody759_176

def loopBody759_178 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_177

def loopBody759_179 : HolLoopProg 64 :=
.mark loopBody759_178

def loopBody759_180 : HolLoopProg 64 :=
.seq loopBody759_73 loopBody759_179

def loopBody759_181 : HolLoopProg 64 :=
.mark loopBody759_180

def loopBody759_182 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_181

def loopBody759_183 : HolLoopProg 64 :=
.mark loopBody759_182

def loopBody759_184 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_183

def loopBody759_185 : HolLoopProg 64 :=
.mark loopBody759_184

def loopBody759_186 : HolLoopProg 64 :=
.seq loopBody759_65 loopBody759_185

def loopBody759_187 : HolLoopProg 64 :=
.mark loopBody759_186

def loopBody759_188 : HolLoopProg 64 :=
.seq loopBody759_5 loopBody759_187

def loopBody759_189 : HolLoopProg 64 :=
.mark loopBody759_188

def loopBody759_190 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_189

def loopBody759_191 : HolLoopProg 64 :=
.mark loopBody759_190

def loopBody759_192 : HolLoopProg 64 :=
.seq loopBody759_3 loopBody759_191

def loopBody759_193 : HolLoopProg 64 :=
.mark loopBody759_192

def loopBody759_194 : HolLoopProg 64 :=
.seq loopBody759_1 loopBody759_193

def loopBody759_195 : HolLoopProg 64 :=
.mark loopBody759_194

def output759 : Nat × List Nat × HolLoopProg 64 :=
  (823, [], loopBody759_195)
end InitECandidate.Proofs.FrontendStages.Loop
