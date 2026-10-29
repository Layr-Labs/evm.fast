import InitECandidate.Proofs.FrontendStages.Loop.Translate348
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody364_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody364_1 : HolLoopProg 64 :=
.mark loopBody364_0

def loopBody364_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody364_3 : HolLoopProg 64 :=
.mark loopBody364_2

def loopBody364_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody364_5 : HolLoopProg 64 :=
.mark loopBody364_4

def loopBody364_6 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 407) ([6]) (some (6, loopBody364_5, loopBody364_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody364_7 : HolLoopProg 64 :=
.mark loopBody364_6

def loopBody364_8 : HolLoopProg 64 :=
.seq loopBody364_7 loopBody364_1

def loopBody364_9 : HolLoopProg 64 :=
.mark loopBody364_8

def loopBody364_10 : HolLoopProg 64 :=
.seq loopBody364_3 loopBody364_9

def loopBody364_11 : HolLoopProg 64 :=
.mark loopBody364_10

def loopBody364_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody364_13 : HolLoopProg 64 :=
.mark loopBody364_12

def loopBody364_14 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 395) ([6]) (some (6, loopBody364_5, loopBody364_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody364_15 : HolLoopProg 64 :=
.mark loopBody364_14

def loopBody364_16 : HolLoopProg 64 :=
.seq loopBody364_15 loopBody364_1

def loopBody364_17 : HolLoopProg 64 :=
.mark loopBody364_16

def loopBody364_18 : HolLoopProg 64 :=
.seq loopBody364_13 loopBody364_17

def loopBody364_19 : HolLoopProg 64 :=
.mark loopBody364_18

def loopBody364_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64]))

def loopBody364_21 : HolLoopProg 64 :=
.mark loopBody364_20

def loopBody364_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody364_23 : HolLoopProg 64 :=
.mark loopBody364_22

def loopBody364_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody364_25 : HolLoopProg 64 :=
.mark loopBody364_24

def loopBody364_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody364_27 : HolLoopProg 64 :=
.mark loopBody364_26

def loopBody364_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 1)

def loopBody364_29 : HolLoopProg 64 :=
.mark loopBody364_28

def loopBody364_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 2)

def loopBody364_31 : HolLoopProg 64 :=
.mark loopBody364_30

def loopBody364_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 3)

def loopBody364_33 : HolLoopProg 64 :=
.mark loopBody364_32

def loopBody364_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 4)

def loopBody364_35 : HolLoopProg 64 :=
.mark loopBody364_34

def loopBody364_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody364_37 : HolLoopProg 64 :=
.mark loopBody364_36

def loopBody364_38 : HolLoopProg 64 :=
.call (some
  ([6, 7, 8, 9],
    Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 116) ([10, 11, 12, 13, 14, 15, 16, 17]) (some (10, loopBody364_37, loopBody364_1, (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody364_39 : HolLoopProg 64 :=
.mark loopBody364_38

def loopBody364_40 : HolLoopProg 64 :=
.seq loopBody364_39 loopBody364_1

def loopBody364_41 : HolLoopProg 64 :=
.mark loopBody364_40

def loopBody364_42 : HolLoopProg 64 :=
.seq loopBody364_35 loopBody364_41

def loopBody364_43 : HolLoopProg 64 :=
.mark loopBody364_42

def loopBody364_44 : HolLoopProg 64 :=
.seq loopBody364_33 loopBody364_43

def loopBody364_45 : HolLoopProg 64 :=
.mark loopBody364_44

def loopBody364_46 : HolLoopProg 64 :=
.seq loopBody364_31 loopBody364_45

def loopBody364_47 : HolLoopProg 64 :=
.mark loopBody364_46

def loopBody364_48 : HolLoopProg 64 :=
.seq loopBody364_29 loopBody364_47

def loopBody364_49 : HolLoopProg 64 :=
.mark loopBody364_48

def loopBody364_50 : HolLoopProg 64 :=
.seq loopBody364_27 loopBody364_49

def loopBody364_51 : HolLoopProg 64 :=
.mark loopBody364_50

def loopBody364_52 : HolLoopProg 64 :=
.seq loopBody364_25 loopBody364_51

def loopBody364_53 : HolLoopProg 64 :=
.mark loopBody364_52

def loopBody364_54 : HolLoopProg 64 :=
.seq loopBody364_23 loopBody364_53

def loopBody364_55 : HolLoopProg 64 :=
.mark loopBody364_54

def loopBody364_56 : HolLoopProg 64 :=
.seq loopBody364_21 loopBody364_55

def loopBody364_57 : HolLoopProg 64 :=
.mark loopBody364_56

def loopBody364_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64])

def loopBody364_59 : HolLoopProg 64 :=
.mark loopBody364_58

def loopBody364_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody364_61 : HolLoopProg 64 :=
.mark loopBody364_60

def loopBody364_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 7)

def loopBody364_63 : HolLoopProg 64 :=
.mark loopBody364_62

def loopBody364_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 8)

def loopBody364_65 : HolLoopProg 64 :=
.mark loopBody364_64

def loopBody364_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody364_67 : HolLoopProg 64 :=
.mark loopBody364_66

def loopBody364_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 11)

def loopBody364_69 : HolLoopProg 64 :=
.mark loopBody364_68

def loopBody364_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 10) 15

def loopBody364_71 : HolLoopProg 64 :=
.mark loopBody364_70

def loopBody364_72 : HolLoopProg 64 :=
.seq loopBody364_71 loopBody364_1

def loopBody364_73 : HolLoopProg 64 :=
.mark loopBody364_72

def loopBody364_74 : HolLoopProg 64 :=
.seq loopBody364_69 loopBody364_73

def loopBody364_75 : HolLoopProg 64 :=
.mark loopBody364_74

def loopBody364_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 12)

def loopBody364_77 : HolLoopProg 64 :=
.mark loopBody364_76

def loopBody364_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 8#64]) 15

def loopBody364_79 : HolLoopProg 64 :=
.mark loopBody364_78

def loopBody364_80 : HolLoopProg 64 :=
.seq loopBody364_79 loopBody364_1

def loopBody364_81 : HolLoopProg 64 :=
.mark loopBody364_80

def loopBody364_82 : HolLoopProg 64 :=
.seq loopBody364_77 loopBody364_81

def loopBody364_83 : HolLoopProg 64 :=
.mark loopBody364_82

def loopBody364_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 13)

def loopBody364_85 : HolLoopProg 64 :=
.mark loopBody364_84

def loopBody364_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 16#64]) 15

def loopBody364_87 : HolLoopProg 64 :=
.mark loopBody364_86

def loopBody364_88 : HolLoopProg 64 :=
.seq loopBody364_87 loopBody364_1

def loopBody364_89 : HolLoopProg 64 :=
.mark loopBody364_88

def loopBody364_90 : HolLoopProg 64 :=
.seq loopBody364_85 loopBody364_89

def loopBody364_91 : HolLoopProg 64 :=
.mark loopBody364_90

def loopBody364_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 14)

def loopBody364_93 : HolLoopProg 64 :=
.mark loopBody364_92

def loopBody364_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.const 24#64]) 15

def loopBody364_95 : HolLoopProg 64 :=
.mark loopBody364_94

def loopBody364_96 : HolLoopProg 64 :=
.seq loopBody364_95 loopBody364_1

def loopBody364_97 : HolLoopProg 64 :=
.mark loopBody364_96

def loopBody364_98 : HolLoopProg 64 :=
.seq loopBody364_93 loopBody364_97

def loopBody364_99 : HolLoopProg 64 :=
.mark loopBody364_98

def loopBody364_100 : HolLoopProg 64 :=
.seq loopBody364_99 loopBody364_1

def loopBody364_101 : HolLoopProg 64 :=
.mark loopBody364_100

def loopBody364_102 : HolLoopProg 64 :=
.seq loopBody364_91 loopBody364_101

def loopBody364_103 : HolLoopProg 64 :=
.mark loopBody364_102

def loopBody364_104 : HolLoopProg 64 :=
.seq loopBody364_83 loopBody364_103

def loopBody364_105 : HolLoopProg 64 :=
.mark loopBody364_104

def loopBody364_106 : HolLoopProg 64 :=
.seq loopBody364_75 loopBody364_105

def loopBody364_107 : HolLoopProg 64 :=
.mark loopBody364_106

def loopBody364_108 : HolLoopProg 64 :=
.seq loopBody364_67 loopBody364_107

def loopBody364_109 : HolLoopProg 64 :=
.mark loopBody364_108

def loopBody364_110 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_109

def loopBody364_111 : HolLoopProg 64 :=
.mark loopBody364_110

def loopBody364_112 : HolLoopProg 64 :=
.seq loopBody364_65 loopBody364_111

def loopBody364_113 : HolLoopProg 64 :=
.mark loopBody364_112

def loopBody364_114 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_113

def loopBody364_115 : HolLoopProg 64 :=
.mark loopBody364_114

def loopBody364_116 : HolLoopProg 64 :=
.seq loopBody364_63 loopBody364_115

def loopBody364_117 : HolLoopProg 64 :=
.mark loopBody364_116

def loopBody364_118 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_117

def loopBody364_119 : HolLoopProg 64 :=
.mark loopBody364_118

def loopBody364_120 : HolLoopProg 64 :=
.seq loopBody364_61 loopBody364_119

def loopBody364_121 : HolLoopProg 64 :=
.mark loopBody364_120

def loopBody364_122 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_121

def loopBody364_123 : HolLoopProg 64 :=
.mark loopBody364_122

def loopBody364_124 : HolLoopProg 64 :=
.seq loopBody364_59 loopBody364_123

def loopBody364_125 : HolLoopProg 64 :=
.mark loopBody364_124

def loopBody364_126 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_125

def loopBody364_127 : HolLoopProg 64 :=
.mark loopBody364_126

def loopBody364_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 0)

def loopBody364_129 : HolLoopProg 64 :=
.mark loopBody364_128

def loopBody364_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 5)

def loopBody364_131 : HolLoopProg 64 :=
.mark loopBody364_130

def loopBody364_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 11

def loopBody364_133 : HolLoopProg 64 :=
.mark loopBody364_132

def loopBody364_134 : HolLoopProg 64 :=
.call (some ([10], Flapjack.Spt.ln)) (some 423) ([11, 12]) (some (11, loopBody364_133, loopBody364_1, (Flapjack.Spt.ln)))

def loopBody364_135 : HolLoopProg 64 :=
.mark loopBody364_134

def loopBody364_136 : HolLoopProg 64 :=
.seq loopBody364_135 loopBody364_1

def loopBody364_137 : HolLoopProg 64 :=
.mark loopBody364_136

def loopBody364_138 : HolLoopProg 64 :=
.seq loopBody364_131 loopBody364_137

def loopBody364_139 : HolLoopProg 64 :=
.mark loopBody364_138

def loopBody364_140 : HolLoopProg 64 :=
.seq loopBody364_129 loopBody364_139

def loopBody364_141 : HolLoopProg 64 :=
.mark loopBody364_140

def loopBody364_142 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_141

def loopBody364_143 : HolLoopProg 64 :=
.mark loopBody364_142

def loopBody364_144 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_143

def loopBody364_145 : HolLoopProg 64 :=
.mark loopBody364_144

def loopBody364_146 : HolLoopProg 64 :=
.seq loopBody364_127 loopBody364_145

def loopBody364_147 : HolLoopProg 64 :=
.mark loopBody364_146

def loopBody364_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody364_149 : HolLoopProg 64 :=
.mark loopBody364_148

def loopBody364_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [10]

def loopBody364_151 : HolLoopProg 64 :=
.mark loopBody364_150

def loopBody364_152 : HolLoopProg 64 :=
.seq loopBody364_151 loopBody364_1

def loopBody364_153 : HolLoopProg 64 :=
.mark loopBody364_152

def loopBody364_154 : HolLoopProg 64 :=
.seq loopBody364_149 loopBody364_153

def loopBody364_155 : HolLoopProg 64 :=
.mark loopBody364_154

def loopBody364_156 : HolLoopProg 64 :=
.seq loopBody364_147 loopBody364_155

def loopBody364_157 : HolLoopProg 64 :=
.mark loopBody364_156

def loopBody364_158 : HolLoopProg 64 :=
.seq loopBody364_57 loopBody364_157

def loopBody364_159 : HolLoopProg 64 :=
.mark loopBody364_158

def loopBody364_160 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_159

def loopBody364_161 : HolLoopProg 64 :=
.mark loopBody364_160

def loopBody364_162 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_161

def loopBody364_163 : HolLoopProg 64 :=
.mark loopBody364_162

def loopBody364_164 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_163

def loopBody364_165 : HolLoopProg 64 :=
.mark loopBody364_164

def loopBody364_166 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_165

def loopBody364_167 : HolLoopProg 64 :=
.mark loopBody364_166

def loopBody364_168 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_167

def loopBody364_169 : HolLoopProg 64 :=
.mark loopBody364_168

def loopBody364_170 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_169

def loopBody364_171 : HolLoopProg 64 :=
.mark loopBody364_170

def loopBody364_172 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_171

def loopBody364_173 : HolLoopProg 64 :=
.mark loopBody364_172

def loopBody364_174 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_173

def loopBody364_175 : HolLoopProg 64 :=
.mark loopBody364_174

def loopBody364_176 : HolLoopProg 64 :=
.seq loopBody364_19 loopBody364_175

def loopBody364_177 : HolLoopProg 64 :=
.mark loopBody364_176

def loopBody364_178 : HolLoopProg 64 :=
.seq loopBody364_11 loopBody364_177

def loopBody364_179 : HolLoopProg 64 :=
.mark loopBody364_178

def loopBody364_180 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_179

def loopBody364_181 : HolLoopProg 64 :=
.mark loopBody364_180

def loopBody364_182 : HolLoopProg 64 :=
.seq loopBody364_1 loopBody364_181

def loopBody364_183 : HolLoopProg 64 :=
.mark loopBody364_182

def output364 : Nat × List Nat × HolLoopProg 64 :=
  (428, [0, 1, 2, 3, 4], loopBody364_183)
end InitECandidate.Proofs.FrontendStages.Loop
