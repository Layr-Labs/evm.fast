import InitECandidate.Proofs.FrontendStages.Loop.Translate748
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody764_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody764_1 : HolLoopProg 64 :=
.mark loopBody764_0

def loopBody764_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody764_3 : HolLoopProg 64 :=
.mark loopBody764_2

def loopBody764_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody764_5 : HolLoopProg 64 :=
.mark loopBody764_4

def loopBody764_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody764_7 : HolLoopProg 64 :=
.mark loopBody764_6

def loopBody764_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 192#64)

def loopBody764_9 : HolLoopProg 64 :=
.mark loopBody764_8

def loopBody764_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody764_11 : HolLoopProg 64 :=
.mark loopBody764_10

def loopBody764_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody764_13 : HolLoopProg 64 :=
.mark loopBody764_12

def loopBody764_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody764_11 loopBody764_13 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody764_15 : HolLoopProg 64 :=
.mark loopBody764_14

def loopBody764_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody764_17 : HolLoopProg 64 :=
.mark loopBody764_16

def loopBody764_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 13#64)

def loopBody764_19 : HolLoopProg 64 :=
.mark loopBody764_18

def loopBody764_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody764_21 : HolLoopProg 64 :=
.mark loopBody764_20

def loopBody764_22 : HolLoopProg 64 :=
.seq loopBody764_21 loopBody764_1

def loopBody764_23 : HolLoopProg 64 :=
.mark loopBody764_22

def loopBody764_24 : HolLoopProg 64 :=
.seq loopBody764_23 loopBody764_1

def loopBody764_25 : HolLoopProg 64 :=
.mark loopBody764_24

def loopBody764_26 : HolLoopProg 64 :=
.seq loopBody764_19 loopBody764_25

def loopBody764_27 : HolLoopProg 64 :=
.mark loopBody764_26

def loopBody764_28 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_27

def loopBody764_29 : HolLoopProg 64 :=
.mark loopBody764_28

def loopBody764_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody764_31 : HolLoopProg 64 :=
.mark loopBody764_30

def loopBody764_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody764_33 : HolLoopProg 64 :=
.mark loopBody764_32

def loopBody764_34 : HolLoopProg 64 :=
.seq loopBody764_31 loopBody764_33

def loopBody764_35 : HolLoopProg 64 :=
.mark loopBody764_34

def loopBody764_36 : HolLoopProg 64 :=
.seq loopBody764_29 loopBody764_35

def loopBody764_37 : HolLoopProg 64 :=
.mark loopBody764_36

def loopBody764_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody764_37 loopBody764_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody764_39 : HolLoopProg 64 :=
.mark loopBody764_38

def loopBody764_40 : HolLoopProg 64 :=
.seq loopBody764_39 loopBody764_1

def loopBody764_41 : HolLoopProg 64 :=
.mark loopBody764_40

def loopBody764_42 : HolLoopProg 64 :=
.seq loopBody764_17 loopBody764_41

def loopBody764_43 : HolLoopProg 64 :=
.mark loopBody764_42

def loopBody764_44 : HolLoopProg 64 :=
.seq loopBody764_15 loopBody764_43

def loopBody764_45 : HolLoopProg 64 :=
.mark loopBody764_44

def loopBody764_46 : HolLoopProg 64 :=
.seq loopBody764_9 loopBody764_45

def loopBody764_47 : HolLoopProg 64 :=
.mark loopBody764_46

def loopBody764_48 : HolLoopProg 64 :=
.seq loopBody764_7 loopBody764_47

def loopBody764_49 : HolLoopProg 64 :=
.mark loopBody764_48

def loopBody764_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 50000#64)

def loopBody764_51 : HolLoopProg 64 :=
.mark loopBody764_50

def loopBody764_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody764_53 : HolLoopProg 64 :=
.mark loopBody764_52

def loopBody764_54 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 470) ([4]) (some (4, loopBody764_53, loopBody764_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody764_55 : HolLoopProg 64 :=
.mark loopBody764_54

def loopBody764_56 : HolLoopProg 64 :=
.seq loopBody764_55 loopBody764_1

def loopBody764_57 : HolLoopProg 64 :=
.mark loopBody764_56

def loopBody764_58 : HolLoopProg 64 :=
.seq loopBody764_51 loopBody764_57

def loopBody764_59 : HolLoopProg 64 :=
.mark loopBody764_58

def loopBody764_60 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_59

def loopBody764_61 : HolLoopProg 64 :=
.mark loopBody764_60

def loopBody764_62 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_61

def loopBody764_63 : HolLoopProg 64 :=
.mark loopBody764_62

def loopBody764_64 : HolLoopProg 64 :=
.seq loopBody764_49 loopBody764_63

def loopBody764_65 : HolLoopProg 64 :=
.mark loopBody764_64

def loopBody764_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 64#64)

def loopBody764_67 : HolLoopProg 64 :=
.mark loopBody764_66

def loopBody764_68 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody764_53, loopBody764_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody764_69 : HolLoopProg 64 :=
.mark loopBody764_68

def loopBody764_70 : HolLoopProg 64 :=
.seq loopBody764_69 loopBody764_1

def loopBody764_71 : HolLoopProg 64 :=
.mark loopBody764_70

def loopBody764_72 : HolLoopProg 64 :=
.seq loopBody764_67 loopBody764_71

def loopBody764_73 : HolLoopProg 64 :=
.mark loopBody764_72

def loopBody764_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody764_75 : HolLoopProg 64 :=
.mark loopBody764_74

def loopBody764_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody764_77 : HolLoopProg 64 :=
.mark loopBody764_76

def loopBody764_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody764_79 : HolLoopProg 64 :=
.mark loopBody764_78

def loopBody764_80 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 817) ([5, 6]) (some (5, loopBody764_79, loopBody764_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody764_81 : HolLoopProg 64 :=
.mark loopBody764_80

def loopBody764_82 : HolLoopProg 64 :=
.seq loopBody764_81 loopBody764_1

def loopBody764_83 : HolLoopProg 64 :=
.mark loopBody764_82

def loopBody764_84 : HolLoopProg 64 :=
.seq loopBody764_77 loopBody764_83

def loopBody764_85 : HolLoopProg 64 :=
.mark loopBody764_84

def loopBody764_86 : HolLoopProg 64 :=
.seq loopBody764_75 loopBody764_85

def loopBody764_87 : HolLoopProg 64 :=
.mark loopBody764_86

def loopBody764_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody764_89 : HolLoopProg 64 :=
.mark loopBody764_88

def loopBody764_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody764_91 : HolLoopProg 64 :=
.mark loopBody764_90

def loopBody764_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody764_93 : HolLoopProg 64 :=
.mark loopBody764_92

def loopBody764_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody764_91 loopBody764_93 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody764_95 : HolLoopProg 64 :=
.mark loopBody764_94

def loopBody764_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody764_97 : HolLoopProg 64 :=
.mark loopBody764_96

def loopBody764_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 13#64)

def loopBody764_99 : HolLoopProg 64 :=
.mark loopBody764_98

def loopBody764_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody764_101 : HolLoopProg 64 :=
.mark loopBody764_100

def loopBody764_102 : HolLoopProg 64 :=
.seq loopBody764_101 loopBody764_1

def loopBody764_103 : HolLoopProg 64 :=
.mark loopBody764_102

def loopBody764_104 : HolLoopProg 64 :=
.seq loopBody764_103 loopBody764_1

def loopBody764_105 : HolLoopProg 64 :=
.mark loopBody764_104

def loopBody764_106 : HolLoopProg 64 :=
.seq loopBody764_99 loopBody764_105

def loopBody764_107 : HolLoopProg 64 :=
.mark loopBody764_106

def loopBody764_108 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_107

def loopBody764_109 : HolLoopProg 64 :=
.mark loopBody764_108

def loopBody764_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8#64)

def loopBody764_111 : HolLoopProg 64 :=
.mark loopBody764_110

def loopBody764_112 : HolLoopProg 64 :=
.seq loopBody764_111 loopBody764_79

def loopBody764_113 : HolLoopProg 64 :=
.mark loopBody764_112

def loopBody764_114 : HolLoopProg 64 :=
.seq loopBody764_109 loopBody764_113

def loopBody764_115 : HolLoopProg 64 :=
.mark loopBody764_114

def loopBody764_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody764_115 loopBody764_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody764_117 : HolLoopProg 64 :=
.mark loopBody764_116

def loopBody764_118 : HolLoopProg 64 :=
.seq loopBody764_117 loopBody764_1

def loopBody764_119 : HolLoopProg 64 :=
.mark loopBody764_118

def loopBody764_120 : HolLoopProg 64 :=
.seq loopBody764_97 loopBody764_119

def loopBody764_121 : HolLoopProg 64 :=
.mark loopBody764_120

def loopBody764_122 : HolLoopProg 64 :=
.seq loopBody764_95 loopBody764_121

def loopBody764_123 : HolLoopProg 64 :=
.mark loopBody764_122

def loopBody764_124 : HolLoopProg 64 :=
.seq loopBody764_89 loopBody764_123

def loopBody764_125 : HolLoopProg 64 :=
.mark loopBody764_124

def loopBody764_126 : HolLoopProg 64 :=
.seq loopBody764_17 loopBody764_125

def loopBody764_127 : HolLoopProg 64 :=
.mark loopBody764_126

def loopBody764_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody764_129 : HolLoopProg 64 :=
.mark loopBody764_128

def loopBody764_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody764_131 : HolLoopProg 64 :=
.mark loopBody764_130

def loopBody764_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody764_133 : HolLoopProg 64 :=
.mark loopBody764_132

def loopBody764_134 : HolLoopProg 64 :=
.seq loopBody764_133 loopBody764_1

def loopBody764_135 : HolLoopProg 64 :=
.mark loopBody764_134

def loopBody764_136 : HolLoopProg 64 :=
.seq loopBody764_131 loopBody764_135

def loopBody764_137 : HolLoopProg 64 :=
.mark loopBody764_136

def loopBody764_138 : HolLoopProg 64 :=
.seq loopBody764_137 loopBody764_1

def loopBody764_139 : HolLoopProg 64 :=
.mark loopBody764_138

def loopBody764_140 : HolLoopProg 64 :=
.seq loopBody764_77 loopBody764_139

def loopBody764_141 : HolLoopProg 64 :=
.mark loopBody764_140

def loopBody764_142 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_141

def loopBody764_143 : HolLoopProg 64 :=
.mark loopBody764_142

def loopBody764_144 : HolLoopProg 64 :=
.seq loopBody764_129 loopBody764_143

def loopBody764_145 : HolLoopProg 64 :=
.mark loopBody764_144

def loopBody764_146 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_145

def loopBody764_147 : HolLoopProg 64 :=
.mark loopBody764_146

def loopBody764_148 : HolLoopProg 64 :=
.seq loopBody764_127 loopBody764_147

def loopBody764_149 : HolLoopProg 64 :=
.mark loopBody764_148

def loopBody764_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody764_151 : HolLoopProg 64 :=
.mark loopBody764_150

def loopBody764_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 64#64)

def loopBody764_153 : HolLoopProg 64 :=
.mark loopBody764_152

def loopBody764_154 : HolLoopProg 64 :=
.seq loopBody764_153 loopBody764_139

def loopBody764_155 : HolLoopProg 64 :=
.mark loopBody764_154

def loopBody764_156 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_155

def loopBody764_157 : HolLoopProg 64 :=
.mark loopBody764_156

def loopBody764_158 : HolLoopProg 64 :=
.seq loopBody764_151 loopBody764_157

def loopBody764_159 : HolLoopProg 64 :=
.mark loopBody764_158

def loopBody764_160 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_159

def loopBody764_161 : HolLoopProg 64 :=
.mark loopBody764_160

def loopBody764_162 : HolLoopProg 64 :=
.seq loopBody764_149 loopBody764_161

def loopBody764_163 : HolLoopProg 64 :=
.mark loopBody764_162

def loopBody764_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody764_165 : HolLoopProg 64 :=
.mark loopBody764_164

def loopBody764_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody764_167 : HolLoopProg 64 :=
.mark loopBody764_166

def loopBody764_168 : HolLoopProg 64 :=
.seq loopBody764_167 loopBody764_1

def loopBody764_169 : HolLoopProg 64 :=
.mark loopBody764_168

def loopBody764_170 : HolLoopProg 64 :=
.seq loopBody764_165 loopBody764_169

def loopBody764_171 : HolLoopProg 64 :=
.mark loopBody764_170

def loopBody764_172 : HolLoopProg 64 :=
.seq loopBody764_163 loopBody764_171

def loopBody764_173 : HolLoopProg 64 :=
.mark loopBody764_172

def loopBody764_174 : HolLoopProg 64 :=
.seq loopBody764_87 loopBody764_173

def loopBody764_175 : HolLoopProg 64 :=
.mark loopBody764_174

def loopBody764_176 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_175

def loopBody764_177 : HolLoopProg 64 :=
.mark loopBody764_176

def loopBody764_178 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_177

def loopBody764_179 : HolLoopProg 64 :=
.mark loopBody764_178

def loopBody764_180 : HolLoopProg 64 :=
.seq loopBody764_73 loopBody764_179

def loopBody764_181 : HolLoopProg 64 :=
.mark loopBody764_180

def loopBody764_182 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_181

def loopBody764_183 : HolLoopProg 64 :=
.mark loopBody764_182

def loopBody764_184 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_183

def loopBody764_185 : HolLoopProg 64 :=
.mark loopBody764_184

def loopBody764_186 : HolLoopProg 64 :=
.seq loopBody764_65 loopBody764_185

def loopBody764_187 : HolLoopProg 64 :=
.mark loopBody764_186

def loopBody764_188 : HolLoopProg 64 :=
.seq loopBody764_5 loopBody764_187

def loopBody764_189 : HolLoopProg 64 :=
.mark loopBody764_188

def loopBody764_190 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_189

def loopBody764_191 : HolLoopProg 64 :=
.mark loopBody764_190

def loopBody764_192 : HolLoopProg 64 :=
.seq loopBody764_3 loopBody764_191

def loopBody764_193 : HolLoopProg 64 :=
.mark loopBody764_192

def loopBody764_194 : HolLoopProg 64 :=
.seq loopBody764_1 loopBody764_193

def loopBody764_195 : HolLoopProg 64 :=
.mark loopBody764_194

def output764 : Nat × List Nat × HolLoopProg 64 :=
  (828, [], loopBody764_195)
end InitECandidate.Proofs.FrontendStages.Loop
