import InitECandidate.Proofs.FrontendStages.Loop.Translate746
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody762_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody762_1 : HolLoopProg 64 :=
.mark loopBody762_0

def loopBody762_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody762_3 : HolLoopProg 64 :=
.mark loopBody762_2

def loopBody762_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody762_5 : HolLoopProg 64 :=
.mark loopBody762_4

def loopBody762_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody762_7 : HolLoopProg 64 :=
.mark loopBody762_6

def loopBody762_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 64#64)

def loopBody762_9 : HolLoopProg 64 :=
.mark loopBody762_8

def loopBody762_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody762_11 : HolLoopProg 64 :=
.mark loopBody762_10

def loopBody762_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody762_13 : HolLoopProg 64 :=
.mark loopBody762_12

def loopBody762_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody762_11 loopBody762_13 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody762_15 : HolLoopProg 64 :=
.mark loopBody762_14

def loopBody762_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody762_17 : HolLoopProg 64 :=
.mark loopBody762_16

def loopBody762_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 10#64)

def loopBody762_19 : HolLoopProg 64 :=
.mark loopBody762_18

def loopBody762_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody762_21 : HolLoopProg 64 :=
.mark loopBody762_20

def loopBody762_22 : HolLoopProg 64 :=
.seq loopBody762_21 loopBody762_1

def loopBody762_23 : HolLoopProg 64 :=
.mark loopBody762_22

def loopBody762_24 : HolLoopProg 64 :=
.seq loopBody762_23 loopBody762_1

def loopBody762_25 : HolLoopProg 64 :=
.mark loopBody762_24

def loopBody762_26 : HolLoopProg 64 :=
.seq loopBody762_19 loopBody762_25

def loopBody762_27 : HolLoopProg 64 :=
.mark loopBody762_26

def loopBody762_28 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_27

def loopBody762_29 : HolLoopProg 64 :=
.mark loopBody762_28

def loopBody762_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody762_31 : HolLoopProg 64 :=
.mark loopBody762_30

def loopBody762_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody762_33 : HolLoopProg 64 :=
.mark loopBody762_32

def loopBody762_34 : HolLoopProg 64 :=
.seq loopBody762_31 loopBody762_33

def loopBody762_35 : HolLoopProg 64 :=
.mark loopBody762_34

def loopBody762_36 : HolLoopProg 64 :=
.seq loopBody762_29 loopBody762_35

def loopBody762_37 : HolLoopProg 64 :=
.mark loopBody762_36

def loopBody762_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody762_37 loopBody762_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody762_39 : HolLoopProg 64 :=
.mark loopBody762_38

def loopBody762_40 : HolLoopProg 64 :=
.seq loopBody762_39 loopBody762_1

def loopBody762_41 : HolLoopProg 64 :=
.mark loopBody762_40

def loopBody762_42 : HolLoopProg 64 :=
.seq loopBody762_17 loopBody762_41

def loopBody762_43 : HolLoopProg 64 :=
.mark loopBody762_42

def loopBody762_44 : HolLoopProg 64 :=
.seq loopBody762_15 loopBody762_43

def loopBody762_45 : HolLoopProg 64 :=
.mark loopBody762_44

def loopBody762_46 : HolLoopProg 64 :=
.seq loopBody762_9 loopBody762_45

def loopBody762_47 : HolLoopProg 64 :=
.mark loopBody762_46

def loopBody762_48 : HolLoopProg 64 :=
.seq loopBody762_7 loopBody762_47

def loopBody762_49 : HolLoopProg 64 :=
.mark loopBody762_48

def loopBody762_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 5500#64)

def loopBody762_51 : HolLoopProg 64 :=
.mark loopBody762_50

def loopBody762_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody762_53 : HolLoopProg 64 :=
.mark loopBody762_52

def loopBody762_54 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 470) ([4]) (some (4, loopBody762_53, loopBody762_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody762_55 : HolLoopProg 64 :=
.mark loopBody762_54

def loopBody762_56 : HolLoopProg 64 :=
.seq loopBody762_55 loopBody762_1

def loopBody762_57 : HolLoopProg 64 :=
.mark loopBody762_56

def loopBody762_58 : HolLoopProg 64 :=
.seq loopBody762_51 loopBody762_57

def loopBody762_59 : HolLoopProg 64 :=
.mark loopBody762_58

def loopBody762_60 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_59

def loopBody762_61 : HolLoopProg 64 :=
.mark loopBody762_60

def loopBody762_62 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_61

def loopBody762_63 : HolLoopProg 64 :=
.mark loopBody762_62

def loopBody762_64 : HolLoopProg 64 :=
.seq loopBody762_49 loopBody762_63

def loopBody762_65 : HolLoopProg 64 :=
.mark loopBody762_64

def loopBody762_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 128#64)

def loopBody762_67 : HolLoopProg 64 :=
.mark loopBody762_66

def loopBody762_68 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody762_53, loopBody762_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody762_69 : HolLoopProg 64 :=
.mark loopBody762_68

def loopBody762_70 : HolLoopProg 64 :=
.seq loopBody762_69 loopBody762_1

def loopBody762_71 : HolLoopProg 64 :=
.mark loopBody762_70

def loopBody762_72 : HolLoopProg 64 :=
.seq loopBody762_67 loopBody762_71

def loopBody762_73 : HolLoopProg 64 :=
.mark loopBody762_72

def loopBody762_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody762_75 : HolLoopProg 64 :=
.mark loopBody762_74

def loopBody762_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody762_77 : HolLoopProg 64 :=
.mark loopBody762_76

def loopBody762_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody762_79 : HolLoopProg 64 :=
.mark loopBody762_78

def loopBody762_80 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 815) ([5, 6]) (some (5, loopBody762_79, loopBody762_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody762_81 : HolLoopProg 64 :=
.mark loopBody762_80

def loopBody762_82 : HolLoopProg 64 :=
.seq loopBody762_81 loopBody762_1

def loopBody762_83 : HolLoopProg 64 :=
.mark loopBody762_82

def loopBody762_84 : HolLoopProg 64 :=
.seq loopBody762_77 loopBody762_83

def loopBody762_85 : HolLoopProg 64 :=
.mark loopBody762_84

def loopBody762_86 : HolLoopProg 64 :=
.seq loopBody762_75 loopBody762_85

def loopBody762_87 : HolLoopProg 64 :=
.mark loopBody762_86

def loopBody762_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody762_89 : HolLoopProg 64 :=
.mark loopBody762_88

def loopBody762_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody762_91 : HolLoopProg 64 :=
.mark loopBody762_90

def loopBody762_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody762_93 : HolLoopProg 64 :=
.mark loopBody762_92

def loopBody762_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody762_91 loopBody762_93 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody762_95 : HolLoopProg 64 :=
.mark loopBody762_94

def loopBody762_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody762_97 : HolLoopProg 64 :=
.mark loopBody762_96

def loopBody762_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 10#64)

def loopBody762_99 : HolLoopProg 64 :=
.mark loopBody762_98

def loopBody762_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody762_101 : HolLoopProg 64 :=
.mark loopBody762_100

def loopBody762_102 : HolLoopProg 64 :=
.seq loopBody762_101 loopBody762_1

def loopBody762_103 : HolLoopProg 64 :=
.mark loopBody762_102

def loopBody762_104 : HolLoopProg 64 :=
.seq loopBody762_103 loopBody762_1

def loopBody762_105 : HolLoopProg 64 :=
.mark loopBody762_104

def loopBody762_106 : HolLoopProg 64 :=
.seq loopBody762_99 loopBody762_105

def loopBody762_107 : HolLoopProg 64 :=
.mark loopBody762_106

def loopBody762_108 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_107

def loopBody762_109 : HolLoopProg 64 :=
.mark loopBody762_108

def loopBody762_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8#64)

def loopBody762_111 : HolLoopProg 64 :=
.mark loopBody762_110

def loopBody762_112 : HolLoopProg 64 :=
.seq loopBody762_111 loopBody762_79

def loopBody762_113 : HolLoopProg 64 :=
.mark loopBody762_112

def loopBody762_114 : HolLoopProg 64 :=
.seq loopBody762_109 loopBody762_113

def loopBody762_115 : HolLoopProg 64 :=
.mark loopBody762_114

def loopBody762_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody762_115 loopBody762_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody762_117 : HolLoopProg 64 :=
.mark loopBody762_116

def loopBody762_118 : HolLoopProg 64 :=
.seq loopBody762_117 loopBody762_1

def loopBody762_119 : HolLoopProg 64 :=
.mark loopBody762_118

def loopBody762_120 : HolLoopProg 64 :=
.seq loopBody762_97 loopBody762_119

def loopBody762_121 : HolLoopProg 64 :=
.mark loopBody762_120

def loopBody762_122 : HolLoopProg 64 :=
.seq loopBody762_95 loopBody762_121

def loopBody762_123 : HolLoopProg 64 :=
.mark loopBody762_122

def loopBody762_124 : HolLoopProg 64 :=
.seq loopBody762_89 loopBody762_123

def loopBody762_125 : HolLoopProg 64 :=
.mark loopBody762_124

def loopBody762_126 : HolLoopProg 64 :=
.seq loopBody762_17 loopBody762_125

def loopBody762_127 : HolLoopProg 64 :=
.mark loopBody762_126

def loopBody762_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody762_129 : HolLoopProg 64 :=
.mark loopBody762_128

def loopBody762_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody762_131 : HolLoopProg 64 :=
.mark loopBody762_130

def loopBody762_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody762_133 : HolLoopProg 64 :=
.mark loopBody762_132

def loopBody762_134 : HolLoopProg 64 :=
.seq loopBody762_133 loopBody762_1

def loopBody762_135 : HolLoopProg 64 :=
.mark loopBody762_134

def loopBody762_136 : HolLoopProg 64 :=
.seq loopBody762_131 loopBody762_135

def loopBody762_137 : HolLoopProg 64 :=
.mark loopBody762_136

def loopBody762_138 : HolLoopProg 64 :=
.seq loopBody762_137 loopBody762_1

def loopBody762_139 : HolLoopProg 64 :=
.mark loopBody762_138

def loopBody762_140 : HolLoopProg 64 :=
.seq loopBody762_77 loopBody762_139

def loopBody762_141 : HolLoopProg 64 :=
.mark loopBody762_140

def loopBody762_142 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_141

def loopBody762_143 : HolLoopProg 64 :=
.mark loopBody762_142

def loopBody762_144 : HolLoopProg 64 :=
.seq loopBody762_129 loopBody762_143

def loopBody762_145 : HolLoopProg 64 :=
.mark loopBody762_144

def loopBody762_146 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_145

def loopBody762_147 : HolLoopProg 64 :=
.mark loopBody762_146

def loopBody762_148 : HolLoopProg 64 :=
.seq loopBody762_127 loopBody762_147

def loopBody762_149 : HolLoopProg 64 :=
.mark loopBody762_148

def loopBody762_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody762_151 : HolLoopProg 64 :=
.mark loopBody762_150

def loopBody762_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 128#64)

def loopBody762_153 : HolLoopProg 64 :=
.mark loopBody762_152

def loopBody762_154 : HolLoopProg 64 :=
.seq loopBody762_153 loopBody762_139

def loopBody762_155 : HolLoopProg 64 :=
.mark loopBody762_154

def loopBody762_156 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_155

def loopBody762_157 : HolLoopProg 64 :=
.mark loopBody762_156

def loopBody762_158 : HolLoopProg 64 :=
.seq loopBody762_151 loopBody762_157

def loopBody762_159 : HolLoopProg 64 :=
.mark loopBody762_158

def loopBody762_160 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_159

def loopBody762_161 : HolLoopProg 64 :=
.mark loopBody762_160

def loopBody762_162 : HolLoopProg 64 :=
.seq loopBody762_149 loopBody762_161

def loopBody762_163 : HolLoopProg 64 :=
.mark loopBody762_162

def loopBody762_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody762_165 : HolLoopProg 64 :=
.mark loopBody762_164

def loopBody762_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody762_167 : HolLoopProg 64 :=
.mark loopBody762_166

def loopBody762_168 : HolLoopProg 64 :=
.seq loopBody762_167 loopBody762_1

def loopBody762_169 : HolLoopProg 64 :=
.mark loopBody762_168

def loopBody762_170 : HolLoopProg 64 :=
.seq loopBody762_165 loopBody762_169

def loopBody762_171 : HolLoopProg 64 :=
.mark loopBody762_170

def loopBody762_172 : HolLoopProg 64 :=
.seq loopBody762_163 loopBody762_171

def loopBody762_173 : HolLoopProg 64 :=
.mark loopBody762_172

def loopBody762_174 : HolLoopProg 64 :=
.seq loopBody762_87 loopBody762_173

def loopBody762_175 : HolLoopProg 64 :=
.mark loopBody762_174

def loopBody762_176 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_175

def loopBody762_177 : HolLoopProg 64 :=
.mark loopBody762_176

def loopBody762_178 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_177

def loopBody762_179 : HolLoopProg 64 :=
.mark loopBody762_178

def loopBody762_180 : HolLoopProg 64 :=
.seq loopBody762_73 loopBody762_179

def loopBody762_181 : HolLoopProg 64 :=
.mark loopBody762_180

def loopBody762_182 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_181

def loopBody762_183 : HolLoopProg 64 :=
.mark loopBody762_182

def loopBody762_184 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_183

def loopBody762_185 : HolLoopProg 64 :=
.mark loopBody762_184

def loopBody762_186 : HolLoopProg 64 :=
.seq loopBody762_65 loopBody762_185

def loopBody762_187 : HolLoopProg 64 :=
.mark loopBody762_186

def loopBody762_188 : HolLoopProg 64 :=
.seq loopBody762_5 loopBody762_187

def loopBody762_189 : HolLoopProg 64 :=
.mark loopBody762_188

def loopBody762_190 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_189

def loopBody762_191 : HolLoopProg 64 :=
.mark loopBody762_190

def loopBody762_192 : HolLoopProg 64 :=
.seq loopBody762_3 loopBody762_191

def loopBody762_193 : HolLoopProg 64 :=
.mark loopBody762_192

def loopBody762_194 : HolLoopProg 64 :=
.seq loopBody762_1 loopBody762_193

def loopBody762_195 : HolLoopProg 64 :=
.mark loopBody762_194

def output762 : Nat × List Nat × HolLoopProg 64 :=
  (826, [], loopBody762_195)
end InitECandidate.Proofs.FrontendStages.Loop
