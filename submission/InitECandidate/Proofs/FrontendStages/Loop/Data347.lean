import InitECandidate.Proofs.FrontendStages.Loop.Translate331
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody347_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody347_1 : HolLoopProg 64 :=
.mark loopBody347_0

def loopBody347_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody347_3 : HolLoopProg 64 :=
.mark loopBody347_2

def loopBody347_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody347_5 : HolLoopProg 64 :=
.mark loopBody347_4

def loopBody347_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody347_7 : HolLoopProg 64 :=
.mark loopBody347_6

def loopBody347_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 187) ([3, 4]) (some (3, loopBody347_7, loopBody347_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody347_9 : HolLoopProg 64 :=
.mark loopBody347_8

def loopBody347_10 : HolLoopProg 64 :=
.seq loopBody347_9 loopBody347_1

def loopBody347_11 : HolLoopProg 64 :=
.mark loopBody347_10

def loopBody347_12 : HolLoopProg 64 :=
.seq loopBody347_5 loopBody347_11

def loopBody347_13 : HolLoopProg 64 :=
.mark loopBody347_12

def loopBody347_14 : HolLoopProg 64 :=
.seq loopBody347_3 loopBody347_13

def loopBody347_15 : HolLoopProg 64 :=
.mark loopBody347_14

def loopBody347_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody347_17 : HolLoopProg 64 :=
.mark loopBody347_16

def loopBody347_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody347_19 : HolLoopProg 64 :=
.mark loopBody347_18

def loopBody347_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody347_21 : HolLoopProg 64 :=
.mark loopBody347_20

def loopBody347_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody347_23 : HolLoopProg 64 :=
.mark loopBody347_22

def loopBody347_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody347_21 loopBody347_23 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody347_25 : HolLoopProg 64 :=
.mark loopBody347_24

def loopBody347_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody347_27 : HolLoopProg 64 :=
.mark loopBody347_26

def loopBody347_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody347_29 : HolLoopProg 64 :=
.mark loopBody347_28

def loopBody347_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody347_31 : HolLoopProg 64 :=
.mark loopBody347_30

def loopBody347_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3, 4, 5, 6]

def loopBody347_33 : HolLoopProg 64 :=
.mark loopBody347_32

def loopBody347_34 : HolLoopProg 64 :=
.seq loopBody347_33 loopBody347_1

def loopBody347_35 : HolLoopProg 64 :=
.mark loopBody347_34

def loopBody347_36 : HolLoopProg 64 :=
.seq loopBody347_31 loopBody347_35

def loopBody347_37 : HolLoopProg 64 :=
.mark loopBody347_36

def loopBody347_38 : HolLoopProg 64 :=
.seq loopBody347_19 loopBody347_37

def loopBody347_39 : HolLoopProg 64 :=
.mark loopBody347_38

def loopBody347_40 : HolLoopProg 64 :=
.seq loopBody347_23 loopBody347_39

def loopBody347_41 : HolLoopProg 64 :=
.mark loopBody347_40

def loopBody347_42 : HolLoopProg 64 :=
.seq loopBody347_29 loopBody347_41

def loopBody347_43 : HolLoopProg 64 :=
.mark loopBody347_42

def loopBody347_44 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody347_43 loopBody347_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody347_45 : HolLoopProg 64 :=
.mark loopBody347_44

def loopBody347_46 : HolLoopProg 64 :=
.seq loopBody347_45 loopBody347_1

def loopBody347_47 : HolLoopProg 64 :=
.mark loopBody347_46

def loopBody347_48 : HolLoopProg 64 :=
.seq loopBody347_27 loopBody347_47

def loopBody347_49 : HolLoopProg 64 :=
.mark loopBody347_48

def loopBody347_50 : HolLoopProg 64 :=
.seq loopBody347_25 loopBody347_49

def loopBody347_51 : HolLoopProg 64 :=
.mark loopBody347_50

def loopBody347_52 : HolLoopProg 64 :=
.seq loopBody347_19 loopBody347_51

def loopBody347_53 : HolLoopProg 64 :=
.mark loopBody347_52

def loopBody347_54 : HolLoopProg 64 :=
.seq loopBody347_17 loopBody347_53

def loopBody347_55 : HolLoopProg 64 :=
.mark loopBody347_54

def loopBody347_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 176#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody347_57 : HolLoopProg 64 :=
.mark loopBody347_56

def loopBody347_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody347_59 : HolLoopProg 64 :=
.mark loopBody347_58

def loopBody347_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody347_61 : HolLoopProg 64 :=
.mark loopBody347_60

def loopBody347_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody347_63 : HolLoopProg 64 :=
.mark loopBody347_62

def loopBody347_64 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 409) ([5, 6, 7]) (some (5, loopBody347_63, loopBody347_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody347_65 : HolLoopProg 64 :=
.mark loopBody347_64

def loopBody347_66 : HolLoopProg 64 :=
.seq loopBody347_65 loopBody347_1

def loopBody347_67 : HolLoopProg 64 :=
.mark loopBody347_66

def loopBody347_68 : HolLoopProg 64 :=
.seq loopBody347_61 loopBody347_67

def loopBody347_69 : HolLoopProg 64 :=
.mark loopBody347_68

def loopBody347_70 : HolLoopProg 64 :=
.seq loopBody347_59 loopBody347_69

def loopBody347_71 : HolLoopProg 64 :=
.mark loopBody347_70

def loopBody347_72 : HolLoopProg 64 :=
.seq loopBody347_57 loopBody347_71

def loopBody347_73 : HolLoopProg 64 :=
.mark loopBody347_72

def loopBody347_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody347_75 : HolLoopProg 64 :=
.mark loopBody347_74

def loopBody347_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody347_77 : HolLoopProg 64 :=
.mark loopBody347_76

def loopBody347_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody347_79 : HolLoopProg 64 :=
.mark loopBody347_78

def loopBody347_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody347_79 loopBody347_31 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody347_81 : HolLoopProg 64 :=
.mark loopBody347_80

def loopBody347_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody347_83 : HolLoopProg 64 :=
.mark loopBody347_82

def loopBody347_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 4))

def loopBody347_85 : HolLoopProg 64 :=
.mark loopBody347_84

def loopBody347_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 8#64]))

def loopBody347_87 : HolLoopProg 64 :=
.mark loopBody347_86

def loopBody347_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 16#64]))

def loopBody347_89 : HolLoopProg 64 :=
.mark loopBody347_88

def loopBody347_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 24#64]))

def loopBody347_91 : HolLoopProg 64 :=
.mark loopBody347_90

def loopBody347_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody347_93 : HolLoopProg 64 :=
.mark loopBody347_92

def loopBody347_94 : HolLoopProg 64 :=
.seq loopBody347_93 loopBody347_1

def loopBody347_95 : HolLoopProg 64 :=
.mark loopBody347_94

def loopBody347_96 : HolLoopProg 64 :=
.seq loopBody347_91 loopBody347_95

def loopBody347_97 : HolLoopProg 64 :=
.mark loopBody347_96

def loopBody347_98 : HolLoopProg 64 :=
.seq loopBody347_89 loopBody347_97

def loopBody347_99 : HolLoopProg 64 :=
.mark loopBody347_98

def loopBody347_100 : HolLoopProg 64 :=
.seq loopBody347_87 loopBody347_99

def loopBody347_101 : HolLoopProg 64 :=
.mark loopBody347_100

def loopBody347_102 : HolLoopProg 64 :=
.seq loopBody347_85 loopBody347_101

def loopBody347_103 : HolLoopProg 64 :=
.mark loopBody347_102

def loopBody347_104 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody347_103 loopBody347_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody347_105 : HolLoopProg 64 :=
.mark loopBody347_104

def loopBody347_106 : HolLoopProg 64 :=
.seq loopBody347_105 loopBody347_1

def loopBody347_107 : HolLoopProg 64 :=
.mark loopBody347_106

def loopBody347_108 : HolLoopProg 64 :=
.seq loopBody347_83 loopBody347_107

def loopBody347_109 : HolLoopProg 64 :=
.mark loopBody347_108

def loopBody347_110 : HolLoopProg 64 :=
.seq loopBody347_81 loopBody347_109

def loopBody347_111 : HolLoopProg 64 :=
.mark loopBody347_110

def loopBody347_112 : HolLoopProg 64 :=
.seq loopBody347_77 loopBody347_111

def loopBody347_113 : HolLoopProg 64 :=
.mark loopBody347_112

def loopBody347_114 : HolLoopProg 64 :=
.seq loopBody347_75 loopBody347_113

def loopBody347_115 : HolLoopProg 64 :=
.mark loopBody347_114

def loopBody347_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody347_117 : HolLoopProg 64 :=
.mark loopBody347_116

def loopBody347_118 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 396) ([6]) (some (6, loopBody347_117, loopBody347_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody347_119 : HolLoopProg 64 :=
.mark loopBody347_118

def loopBody347_120 : HolLoopProg 64 :=
.seq loopBody347_119 loopBody347_1

def loopBody347_121 : HolLoopProg 64 :=
.mark loopBody347_120

def loopBody347_122 : HolLoopProg 64 :=
.seq loopBody347_59 loopBody347_121

def loopBody347_123 : HolLoopProg 64 :=
.mark loopBody347_122

def loopBody347_124 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_123

def loopBody347_125 : HolLoopProg 64 :=
.mark loopBody347_124

def loopBody347_126 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_125

def loopBody347_127 : HolLoopProg 64 :=
.mark loopBody347_126

def loopBody347_128 : HolLoopProg 64 :=
.seq loopBody347_115 loopBody347_127

def loopBody347_129 : HolLoopProg 64 :=
.mark loopBody347_128

def loopBody347_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody347_131 : HolLoopProg 64 :=
.mark loopBody347_130

def loopBody347_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody347_133 : HolLoopProg 64 :=
.mark loopBody347_132

def loopBody347_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody347_135 : HolLoopProg 64 :=
.mark loopBody347_134

def loopBody347_136 : HolLoopProg 64 :=
.call (some ([5, 6, 7, 8], Flapjack.Spt.ln)) (some 401) ([9, 10]) (some (9, loopBody347_135, loopBody347_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody347_137 : HolLoopProg 64 :=
.mark loopBody347_136

def loopBody347_138 : HolLoopProg 64 :=
.seq loopBody347_137 loopBody347_1

def loopBody347_139 : HolLoopProg 64 :=
.mark loopBody347_138

def loopBody347_140 : HolLoopProg 64 :=
.seq loopBody347_133 loopBody347_139

def loopBody347_141 : HolLoopProg 64 :=
.mark loopBody347_140

def loopBody347_142 : HolLoopProg 64 :=
.seq loopBody347_131 loopBody347_141

def loopBody347_143 : HolLoopProg 64 :=
.mark loopBody347_142

def loopBody347_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody347_145 : HolLoopProg 64 :=
.mark loopBody347_144

def loopBody347_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody347_147 : HolLoopProg 64 :=
.mark loopBody347_146

def loopBody347_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody347_149 : HolLoopProg 64 :=
.mark loopBody347_148

def loopBody347_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 8)

def loopBody347_151 : HolLoopProg 64 :=
.mark loopBody347_150

def loopBody347_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9, 10, 11, 12]

def loopBody347_153 : HolLoopProg 64 :=
.mark loopBody347_152

def loopBody347_154 : HolLoopProg 64 :=
.seq loopBody347_153 loopBody347_1

def loopBody347_155 : HolLoopProg 64 :=
.mark loopBody347_154

def loopBody347_156 : HolLoopProg 64 :=
.seq loopBody347_151 loopBody347_155

def loopBody347_157 : HolLoopProg 64 :=
.mark loopBody347_156

def loopBody347_158 : HolLoopProg 64 :=
.seq loopBody347_149 loopBody347_157

def loopBody347_159 : HolLoopProg 64 :=
.mark loopBody347_158

def loopBody347_160 : HolLoopProg 64 :=
.seq loopBody347_147 loopBody347_159

def loopBody347_161 : HolLoopProg 64 :=
.mark loopBody347_160

def loopBody347_162 : HolLoopProg 64 :=
.seq loopBody347_145 loopBody347_161

def loopBody347_163 : HolLoopProg 64 :=
.mark loopBody347_162

def loopBody347_164 : HolLoopProg 64 :=
.seq loopBody347_143 loopBody347_163

def loopBody347_165 : HolLoopProg 64 :=
.mark loopBody347_164

def loopBody347_166 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_165

def loopBody347_167 : HolLoopProg 64 :=
.mark loopBody347_166

def loopBody347_168 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_167

def loopBody347_169 : HolLoopProg 64 :=
.mark loopBody347_168

def loopBody347_170 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_169

def loopBody347_171 : HolLoopProg 64 :=
.mark loopBody347_170

def loopBody347_172 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_171

def loopBody347_173 : HolLoopProg 64 :=
.mark loopBody347_172

def loopBody347_174 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_173

def loopBody347_175 : HolLoopProg 64 :=
.mark loopBody347_174

def loopBody347_176 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_175

def loopBody347_177 : HolLoopProg 64 :=
.mark loopBody347_176

def loopBody347_178 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_177

def loopBody347_179 : HolLoopProg 64 :=
.mark loopBody347_178

def loopBody347_180 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_179

def loopBody347_181 : HolLoopProg 64 :=
.mark loopBody347_180

def loopBody347_182 : HolLoopProg 64 :=
.seq loopBody347_129 loopBody347_181

def loopBody347_183 : HolLoopProg 64 :=
.mark loopBody347_182

def loopBody347_184 : HolLoopProg 64 :=
.seq loopBody347_73 loopBody347_183

def loopBody347_185 : HolLoopProg 64 :=
.mark loopBody347_184

def loopBody347_186 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_185

def loopBody347_187 : HolLoopProg 64 :=
.mark loopBody347_186

def loopBody347_188 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_187

def loopBody347_189 : HolLoopProg 64 :=
.mark loopBody347_188

def loopBody347_190 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_189

def loopBody347_191 : HolLoopProg 64 :=
.mark loopBody347_190

def loopBody347_192 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_191

def loopBody347_193 : HolLoopProg 64 :=
.mark loopBody347_192

def loopBody347_194 : HolLoopProg 64 :=
.seq loopBody347_55 loopBody347_193

def loopBody347_195 : HolLoopProg 64 :=
.mark loopBody347_194

def loopBody347_196 : HolLoopProg 64 :=
.seq loopBody347_15 loopBody347_195

def loopBody347_197 : HolLoopProg 64 :=
.mark loopBody347_196

def loopBody347_198 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_197

def loopBody347_199 : HolLoopProg 64 :=
.mark loopBody347_198

def loopBody347_200 : HolLoopProg 64 :=
.seq loopBody347_1 loopBody347_199

def loopBody347_201 : HolLoopProg 64 :=
.mark loopBody347_200

def output347 : Nat × List Nat × HolLoopProg 64 :=
  (411, [0, 1], loopBody347_201)
end InitECandidate.Proofs.FrontendStages.Loop
