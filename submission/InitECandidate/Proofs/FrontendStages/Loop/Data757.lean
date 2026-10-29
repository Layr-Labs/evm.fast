import InitECandidate.Proofs.FrontendStages.Loop.Translate741
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody757_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody757_1 : HolLoopProg 64 :=
.mark loopBody757_0

def loopBody757_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody757_3 : HolLoopProg 64 :=
.mark loopBody757_2

def loopBody757_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody757_5 : HolLoopProg 64 :=
.mark loopBody757_4

def loopBody757_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody757_7 : HolLoopProg 64 :=
.mark loopBody757_6

def loopBody757_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 256#64)

def loopBody757_9 : HolLoopProg 64 :=
.mark loopBody757_8

def loopBody757_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody757_11 : HolLoopProg 64 :=
.mark loopBody757_10

def loopBody757_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody757_13 : HolLoopProg 64 :=
.mark loopBody757_12

def loopBody757_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody757_11 loopBody757_13 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody757_15 : HolLoopProg 64 :=
.mark loopBody757_14

def loopBody757_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody757_17 : HolLoopProg 64 :=
.mark loopBody757_16

def loopBody757_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 10#64)

def loopBody757_19 : HolLoopProg 64 :=
.mark loopBody757_18

def loopBody757_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody757_21 : HolLoopProg 64 :=
.mark loopBody757_20

def loopBody757_22 : HolLoopProg 64 :=
.seq loopBody757_21 loopBody757_1

def loopBody757_23 : HolLoopProg 64 :=
.mark loopBody757_22

def loopBody757_24 : HolLoopProg 64 :=
.seq loopBody757_23 loopBody757_1

def loopBody757_25 : HolLoopProg 64 :=
.mark loopBody757_24

def loopBody757_26 : HolLoopProg 64 :=
.seq loopBody757_19 loopBody757_25

def loopBody757_27 : HolLoopProg 64 :=
.mark loopBody757_26

def loopBody757_28 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_27

def loopBody757_29 : HolLoopProg 64 :=
.mark loopBody757_28

def loopBody757_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody757_31 : HolLoopProg 64 :=
.mark loopBody757_30

def loopBody757_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody757_33 : HolLoopProg 64 :=
.mark loopBody757_32

def loopBody757_34 : HolLoopProg 64 :=
.seq loopBody757_31 loopBody757_33

def loopBody757_35 : HolLoopProg 64 :=
.mark loopBody757_34

def loopBody757_36 : HolLoopProg 64 :=
.seq loopBody757_29 loopBody757_35

def loopBody757_37 : HolLoopProg 64 :=
.mark loopBody757_36

def loopBody757_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody757_37 loopBody757_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody757_39 : HolLoopProg 64 :=
.mark loopBody757_38

def loopBody757_40 : HolLoopProg 64 :=
.seq loopBody757_39 loopBody757_1

def loopBody757_41 : HolLoopProg 64 :=
.mark loopBody757_40

def loopBody757_42 : HolLoopProg 64 :=
.seq loopBody757_17 loopBody757_41

def loopBody757_43 : HolLoopProg 64 :=
.mark loopBody757_42

def loopBody757_44 : HolLoopProg 64 :=
.seq loopBody757_15 loopBody757_43

def loopBody757_45 : HolLoopProg 64 :=
.mark loopBody757_44

def loopBody757_46 : HolLoopProg 64 :=
.seq loopBody757_9 loopBody757_45

def loopBody757_47 : HolLoopProg 64 :=
.mark loopBody757_46

def loopBody757_48 : HolLoopProg 64 :=
.seq loopBody757_7 loopBody757_47

def loopBody757_49 : HolLoopProg 64 :=
.mark loopBody757_48

def loopBody757_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 375#64)

def loopBody757_51 : HolLoopProg 64 :=
.mark loopBody757_50

def loopBody757_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody757_53 : HolLoopProg 64 :=
.mark loopBody757_52

def loopBody757_54 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 470) ([4]) (some (4, loopBody757_53, loopBody757_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody757_55 : HolLoopProg 64 :=
.mark loopBody757_54

def loopBody757_56 : HolLoopProg 64 :=
.seq loopBody757_55 loopBody757_1

def loopBody757_57 : HolLoopProg 64 :=
.mark loopBody757_56

def loopBody757_58 : HolLoopProg 64 :=
.seq loopBody757_51 loopBody757_57

def loopBody757_59 : HolLoopProg 64 :=
.mark loopBody757_58

def loopBody757_60 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_59

def loopBody757_61 : HolLoopProg 64 :=
.mark loopBody757_60

def loopBody757_62 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_61

def loopBody757_63 : HolLoopProg 64 :=
.mark loopBody757_62

def loopBody757_64 : HolLoopProg 64 :=
.seq loopBody757_49 loopBody757_63

def loopBody757_65 : HolLoopProg 64 :=
.mark loopBody757_64

def loopBody757_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 128#64)

def loopBody757_67 : HolLoopProg 64 :=
.mark loopBody757_66

def loopBody757_68 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody757_53, loopBody757_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody757_69 : HolLoopProg 64 :=
.mark loopBody757_68

def loopBody757_70 : HolLoopProg 64 :=
.seq loopBody757_69 loopBody757_1

def loopBody757_71 : HolLoopProg 64 :=
.mark loopBody757_70

def loopBody757_72 : HolLoopProg 64 :=
.seq loopBody757_67 loopBody757_71

def loopBody757_73 : HolLoopProg 64 :=
.mark loopBody757_72

def loopBody757_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody757_75 : HolLoopProg 64 :=
.mark loopBody757_74

def loopBody757_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody757_77 : HolLoopProg 64 :=
.mark loopBody757_76

def loopBody757_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody757_79 : HolLoopProg 64 :=
.mark loopBody757_78

def loopBody757_80 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 810) ([5, 6]) (some (5, loopBody757_79, loopBody757_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody757_81 : HolLoopProg 64 :=
.mark loopBody757_80

def loopBody757_82 : HolLoopProg 64 :=
.seq loopBody757_81 loopBody757_1

def loopBody757_83 : HolLoopProg 64 :=
.mark loopBody757_82

def loopBody757_84 : HolLoopProg 64 :=
.seq loopBody757_77 loopBody757_83

def loopBody757_85 : HolLoopProg 64 :=
.mark loopBody757_84

def loopBody757_86 : HolLoopProg 64 :=
.seq loopBody757_75 loopBody757_85

def loopBody757_87 : HolLoopProg 64 :=
.mark loopBody757_86

def loopBody757_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody757_89 : HolLoopProg 64 :=
.mark loopBody757_88

def loopBody757_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody757_91 : HolLoopProg 64 :=
.mark loopBody757_90

def loopBody757_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody757_93 : HolLoopProg 64 :=
.mark loopBody757_92

def loopBody757_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody757_91 loopBody757_93 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody757_95 : HolLoopProg 64 :=
.mark loopBody757_94

def loopBody757_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody757_97 : HolLoopProg 64 :=
.mark loopBody757_96

def loopBody757_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 10#64)

def loopBody757_99 : HolLoopProg 64 :=
.mark loopBody757_98

def loopBody757_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody757_101 : HolLoopProg 64 :=
.mark loopBody757_100

def loopBody757_102 : HolLoopProg 64 :=
.seq loopBody757_101 loopBody757_1

def loopBody757_103 : HolLoopProg 64 :=
.mark loopBody757_102

def loopBody757_104 : HolLoopProg 64 :=
.seq loopBody757_103 loopBody757_1

def loopBody757_105 : HolLoopProg 64 :=
.mark loopBody757_104

def loopBody757_106 : HolLoopProg 64 :=
.seq loopBody757_99 loopBody757_105

def loopBody757_107 : HolLoopProg 64 :=
.mark loopBody757_106

def loopBody757_108 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_107

def loopBody757_109 : HolLoopProg 64 :=
.mark loopBody757_108

def loopBody757_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8#64)

def loopBody757_111 : HolLoopProg 64 :=
.mark loopBody757_110

def loopBody757_112 : HolLoopProg 64 :=
.seq loopBody757_111 loopBody757_79

def loopBody757_113 : HolLoopProg 64 :=
.mark loopBody757_112

def loopBody757_114 : HolLoopProg 64 :=
.seq loopBody757_109 loopBody757_113

def loopBody757_115 : HolLoopProg 64 :=
.mark loopBody757_114

def loopBody757_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody757_115 loopBody757_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody757_117 : HolLoopProg 64 :=
.mark loopBody757_116

def loopBody757_118 : HolLoopProg 64 :=
.seq loopBody757_117 loopBody757_1

def loopBody757_119 : HolLoopProg 64 :=
.mark loopBody757_118

def loopBody757_120 : HolLoopProg 64 :=
.seq loopBody757_97 loopBody757_119

def loopBody757_121 : HolLoopProg 64 :=
.mark loopBody757_120

def loopBody757_122 : HolLoopProg 64 :=
.seq loopBody757_95 loopBody757_121

def loopBody757_123 : HolLoopProg 64 :=
.mark loopBody757_122

def loopBody757_124 : HolLoopProg 64 :=
.seq loopBody757_89 loopBody757_123

def loopBody757_125 : HolLoopProg 64 :=
.mark loopBody757_124

def loopBody757_126 : HolLoopProg 64 :=
.seq loopBody757_17 loopBody757_125

def loopBody757_127 : HolLoopProg 64 :=
.mark loopBody757_126

def loopBody757_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody757_129 : HolLoopProg 64 :=
.mark loopBody757_128

def loopBody757_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody757_131 : HolLoopProg 64 :=
.mark loopBody757_130

def loopBody757_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody757_133 : HolLoopProg 64 :=
.mark loopBody757_132

def loopBody757_134 : HolLoopProg 64 :=
.seq loopBody757_133 loopBody757_1

def loopBody757_135 : HolLoopProg 64 :=
.mark loopBody757_134

def loopBody757_136 : HolLoopProg 64 :=
.seq loopBody757_131 loopBody757_135

def loopBody757_137 : HolLoopProg 64 :=
.mark loopBody757_136

def loopBody757_138 : HolLoopProg 64 :=
.seq loopBody757_137 loopBody757_1

def loopBody757_139 : HolLoopProg 64 :=
.mark loopBody757_138

def loopBody757_140 : HolLoopProg 64 :=
.seq loopBody757_77 loopBody757_139

def loopBody757_141 : HolLoopProg 64 :=
.mark loopBody757_140

def loopBody757_142 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_141

def loopBody757_143 : HolLoopProg 64 :=
.mark loopBody757_142

def loopBody757_144 : HolLoopProg 64 :=
.seq loopBody757_129 loopBody757_143

def loopBody757_145 : HolLoopProg 64 :=
.mark loopBody757_144

def loopBody757_146 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_145

def loopBody757_147 : HolLoopProg 64 :=
.mark loopBody757_146

def loopBody757_148 : HolLoopProg 64 :=
.seq loopBody757_127 loopBody757_147

def loopBody757_149 : HolLoopProg 64 :=
.mark loopBody757_148

def loopBody757_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody757_151 : HolLoopProg 64 :=
.mark loopBody757_150

def loopBody757_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 128#64)

def loopBody757_153 : HolLoopProg 64 :=
.mark loopBody757_152

def loopBody757_154 : HolLoopProg 64 :=
.seq loopBody757_153 loopBody757_139

def loopBody757_155 : HolLoopProg 64 :=
.mark loopBody757_154

def loopBody757_156 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_155

def loopBody757_157 : HolLoopProg 64 :=
.mark loopBody757_156

def loopBody757_158 : HolLoopProg 64 :=
.seq loopBody757_151 loopBody757_157

def loopBody757_159 : HolLoopProg 64 :=
.mark loopBody757_158

def loopBody757_160 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_159

def loopBody757_161 : HolLoopProg 64 :=
.mark loopBody757_160

def loopBody757_162 : HolLoopProg 64 :=
.seq loopBody757_149 loopBody757_161

def loopBody757_163 : HolLoopProg 64 :=
.mark loopBody757_162

def loopBody757_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody757_165 : HolLoopProg 64 :=
.mark loopBody757_164

def loopBody757_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody757_167 : HolLoopProg 64 :=
.mark loopBody757_166

def loopBody757_168 : HolLoopProg 64 :=
.seq loopBody757_167 loopBody757_1

def loopBody757_169 : HolLoopProg 64 :=
.mark loopBody757_168

def loopBody757_170 : HolLoopProg 64 :=
.seq loopBody757_165 loopBody757_169

def loopBody757_171 : HolLoopProg 64 :=
.mark loopBody757_170

def loopBody757_172 : HolLoopProg 64 :=
.seq loopBody757_163 loopBody757_171

def loopBody757_173 : HolLoopProg 64 :=
.mark loopBody757_172

def loopBody757_174 : HolLoopProg 64 :=
.seq loopBody757_87 loopBody757_173

def loopBody757_175 : HolLoopProg 64 :=
.mark loopBody757_174

def loopBody757_176 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_175

def loopBody757_177 : HolLoopProg 64 :=
.mark loopBody757_176

def loopBody757_178 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_177

def loopBody757_179 : HolLoopProg 64 :=
.mark loopBody757_178

def loopBody757_180 : HolLoopProg 64 :=
.seq loopBody757_73 loopBody757_179

def loopBody757_181 : HolLoopProg 64 :=
.mark loopBody757_180

def loopBody757_182 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_181

def loopBody757_183 : HolLoopProg 64 :=
.mark loopBody757_182

def loopBody757_184 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_183

def loopBody757_185 : HolLoopProg 64 :=
.mark loopBody757_184

def loopBody757_186 : HolLoopProg 64 :=
.seq loopBody757_65 loopBody757_185

def loopBody757_187 : HolLoopProg 64 :=
.mark loopBody757_186

def loopBody757_188 : HolLoopProg 64 :=
.seq loopBody757_5 loopBody757_187

def loopBody757_189 : HolLoopProg 64 :=
.mark loopBody757_188

def loopBody757_190 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_189

def loopBody757_191 : HolLoopProg 64 :=
.mark loopBody757_190

def loopBody757_192 : HolLoopProg 64 :=
.seq loopBody757_3 loopBody757_191

def loopBody757_193 : HolLoopProg 64 :=
.mark loopBody757_192

def loopBody757_194 : HolLoopProg 64 :=
.seq loopBody757_1 loopBody757_193

def loopBody757_195 : HolLoopProg 64 :=
.mark loopBody757_194

def output757 : Nat × List Nat × HolLoopProg 64 :=
  (821, [], loopBody757_195)
end InitECandidate.Proofs.FrontendStages.Loop
