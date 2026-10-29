import InitECandidate.Proofs.FrontendStages.Loop.Translate464
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody480_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody480_1 : HolLoopProg 64 :=
.mark loopBody480_0

def loopBody480_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3#64)

def loopBody480_3 : HolLoopProg 64 :=
.mark loopBody480_2

def loopBody480_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody480_5 : HolLoopProg 64 :=
.mark loopBody480_4

def loopBody480_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody480_5, loopBody480_1, (Flapjack.Spt.ln)))

def loopBody480_7 : HolLoopProg 64 :=
.mark loopBody480_6

def loopBody480_8 : HolLoopProg 64 :=
.seq loopBody480_7 loopBody480_1

def loopBody480_9 : HolLoopProg 64 :=
.mark loopBody480_8

def loopBody480_10 : HolLoopProg 64 :=
.seq loopBody480_3 loopBody480_9

def loopBody480_11 : HolLoopProg 64 :=
.mark loopBody480_10

def loopBody480_12 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_11

def loopBody480_13 : HolLoopProg 64 :=
.mark loopBody480_12

def loopBody480_14 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_13

def loopBody480_15 : HolLoopProg 64 :=
.mark loopBody480_14

def loopBody480_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 540) ([]) (some (2, loopBody480_5, loopBody480_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody480_17 : HolLoopProg 64 :=
.mark loopBody480_16

def loopBody480_18 : HolLoopProg 64 :=
.seq loopBody480_17 loopBody480_1

def loopBody480_19 : HolLoopProg 64 :=
.mark loopBody480_18

def loopBody480_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 81#64)

def loopBody480_21 : HolLoopProg 64 :=
.mark loopBody480_20

def loopBody480_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody480_23 : HolLoopProg 64 :=
.mark loopBody480_22

def loopBody480_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody480_25 : HolLoopProg 64 :=
.mark loopBody480_24

def loopBody480_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody480_27 : HolLoopProg 64 :=
.mark loopBody480_26

def loopBody480_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody480_25 loopBody480_27 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody480_29 : HolLoopProg 64 :=
.mark loopBody480_28

def loopBody480_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody480_31 : HolLoopProg 64 :=
.mark loopBody480_30

def loopBody480_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody480_33 : HolLoopProg 64 :=
.mark loopBody480_32

def loopBody480_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody480_35 : HolLoopProg 64 :=
.mark loopBody480_34

def loopBody480_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody480_35 loopBody480_31 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) (Flapjack.Spt.ls PUnit.unit))

def loopBody480_37 : HolLoopProg 64 :=
.mark loopBody480_36

def loopBody480_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody480_39 : HolLoopProg 64 :=
.mark loopBody480_38

def loopBody480_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 128#64)

def loopBody480_41 : HolLoopProg 64 :=
.mark loopBody480_40

def loopBody480_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody480_43 : HolLoopProg 64 :=
.mark loopBody480_42

def loopBody480_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody480_45 : HolLoopProg 64 :=
.mark loopBody480_44

def loopBody480_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody480_43 loopBody480_45 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))

def loopBody480_47 : HolLoopProg 64 :=
.mark loopBody480_46

def loopBody480_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody480_49 : HolLoopProg 64 :=
.mark loopBody480_48

def loopBody480_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 9)

def loopBody480_51 : HolLoopProg 64 :=
.mark loopBody480_50

def loopBody480_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody480_53 : HolLoopProg 64 :=
.mark loopBody480_52

def loopBody480_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.reg 13) loopBody480_53 loopBody480_49 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.ls PUnit.unit))

def loopBody480_55 : HolLoopProg 64 :=
.mark loopBody480_54

def loopBody480_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.var 12])

def loopBody480_57 : HolLoopProg 64 :=
.mark loopBody480_56

def loopBody480_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 10#64)

def loopBody480_59 : HolLoopProg 64 :=
.mark loopBody480_58

def loopBody480_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 2)

def loopBody480_61 : HolLoopProg 64 :=
.mark loopBody480_60

def loopBody480_62 : HolLoopProg 64 :=
.seq loopBody480_61 loopBody480_1

def loopBody480_63 : HolLoopProg 64 :=
.mark loopBody480_62

def loopBody480_64 : HolLoopProg 64 :=
.seq loopBody480_63 loopBody480_1

def loopBody480_65 : HolLoopProg 64 :=
.mark loopBody480_64

def loopBody480_66 : HolLoopProg 64 :=
.seq loopBody480_59 loopBody480_65

def loopBody480_67 : HolLoopProg 64 :=
.mark loopBody480_66

def loopBody480_68 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_67

def loopBody480_69 : HolLoopProg 64 :=
.mark loopBody480_68

def loopBody480_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 8#64)

def loopBody480_71 : HolLoopProg 64 :=
.mark loopBody480_70

def loopBody480_72 : HolLoopProg 64 :=
.seq loopBody480_71 loopBody480_5

def loopBody480_73 : HolLoopProg 64 :=
.mark loopBody480_72

def loopBody480_74 : HolLoopProg 64 :=
.seq loopBody480_69 loopBody480_73

def loopBody480_75 : HolLoopProg 64 :=
.mark loopBody480_74

def loopBody480_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.imm 0#64) loopBody480_75 loopBody480_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody480_77 : HolLoopProg 64 :=
.mark loopBody480_76

def loopBody480_78 : HolLoopProg 64 :=
.seq loopBody480_77 loopBody480_1

def loopBody480_79 : HolLoopProg 64 :=
.mark loopBody480_78

def loopBody480_80 : HolLoopProg 64 :=
.seq loopBody480_57 loopBody480_79

def loopBody480_81 : HolLoopProg 64 :=
.mark loopBody480_80

def loopBody480_82 : HolLoopProg 64 :=
.seq loopBody480_55 loopBody480_81

def loopBody480_83 : HolLoopProg 64 :=
.mark loopBody480_82

def loopBody480_84 : HolLoopProg 64 :=
.seq loopBody480_51 loopBody480_83

def loopBody480_85 : HolLoopProg 64 :=
.mark loopBody480_84

def loopBody480_86 : HolLoopProg 64 :=
.seq loopBody480_49 loopBody480_85

def loopBody480_87 : HolLoopProg 64 :=
.mark loopBody480_86

def loopBody480_88 : HolLoopProg 64 :=
.seq loopBody480_47 loopBody480_87

def loopBody480_89 : HolLoopProg 64 :=
.mark loopBody480_88

def loopBody480_90 : HolLoopProg 64 :=
.seq loopBody480_41 loopBody480_89

def loopBody480_91 : HolLoopProg 64 :=
.mark loopBody480_90

def loopBody480_92 : HolLoopProg 64 :=
.seq loopBody480_39 loopBody480_91

def loopBody480_93 : HolLoopProg 64 :=
.mark loopBody480_92

def loopBody480_94 : HolLoopProg 64 :=
.seq loopBody480_37 loopBody480_93

def loopBody480_95 : HolLoopProg 64 :=
.mark loopBody480_94

def loopBody480_96 : HolLoopProg 64 :=
.seq loopBody480_33 loopBody480_95

def loopBody480_97 : HolLoopProg 64 :=
.mark loopBody480_96

def loopBody480_98 : HolLoopProg 64 :=
.seq loopBody480_31 loopBody480_97

def loopBody480_99 : HolLoopProg 64 :=
.mark loopBody480_98

def loopBody480_100 : HolLoopProg 64 :=
.seq loopBody480_29 loopBody480_99

def loopBody480_101 : HolLoopProg 64 :=
.mark loopBody480_100

def loopBody480_102 : HolLoopProg 64 :=
.seq loopBody480_23 loopBody480_101

def loopBody480_103 : HolLoopProg 64 :=
.mark loopBody480_102

def loopBody480_104 : HolLoopProg 64 :=
.seq loopBody480_21 loopBody480_103

def loopBody480_105 : HolLoopProg 64 :=
.mark loopBody480_104

def loopBody480_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 143#64])

def loopBody480_107 : HolLoopProg 64 :=
.mark loopBody480_106

def loopBody480_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 4#64))

def loopBody480_109 : HolLoopProg 64 :=
.mark loopBody480_108

def loopBody480_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 15#64])

def loopBody480_111 : HolLoopProg 64 :=
.mark loopBody480_110

def loopBody480_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody480_113 : HolLoopProg 64 :=
.mark loopBody480_112

def loopBody480_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody480_115 : HolLoopProg 64 :=
.mark loopBody480_114

def loopBody480_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody480_117 : HolLoopProg 64 :=
.mark loopBody480_116

def loopBody480_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody480_119 : HolLoopProg 64 :=
.mark loopBody480_118

def loopBody480_120 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody480_117 loopBody480_119 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody480_121 : HolLoopProg 64 :=
.mark loopBody480_120

def loopBody480_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody480_123 : HolLoopProg 64 :=
.mark loopBody480_122

def loopBody480_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody480_125 : HolLoopProg 64 :=
.mark loopBody480_124

def loopBody480_126 : HolLoopProg 64 :=
.seq loopBody480_125 loopBody480_1

def loopBody480_127 : HolLoopProg 64 :=
.mark loopBody480_126

def loopBody480_128 : HolLoopProg 64 :=
.seq loopBody480_127 loopBody480_1

def loopBody480_129 : HolLoopProg 64 :=
.mark loopBody480_128

def loopBody480_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody480_131 : HolLoopProg 64 :=
.mark loopBody480_130

def loopBody480_132 : HolLoopProg 64 :=
.seq loopBody480_131 loopBody480_1

def loopBody480_133 : HolLoopProg 64 :=
.mark loopBody480_132

def loopBody480_134 : HolLoopProg 64 :=
.seq loopBody480_133 loopBody480_1

def loopBody480_135 : HolLoopProg 64 :=
.mark loopBody480_134

def loopBody480_136 : HolLoopProg 64 :=
.seq loopBody480_129 loopBody480_135

def loopBody480_137 : HolLoopProg 64 :=
.mark loopBody480_136

def loopBody480_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody480_139 : HolLoopProg 64 :=
.mark loopBody480_138

def loopBody480_140 : HolLoopProg 64 :=
.seq loopBody480_139 loopBody480_1

def loopBody480_141 : HolLoopProg 64 :=
.mark loopBody480_140

def loopBody480_142 : HolLoopProg 64 :=
.seq loopBody480_141 loopBody480_1

def loopBody480_143 : HolLoopProg 64 :=
.mark loopBody480_142

def loopBody480_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 29#64, Flapjack.HolLoopExp.var 3])

def loopBody480_145 : HolLoopProg 64 :=
.mark loopBody480_144

def loopBody480_146 : HolLoopProg 64 :=
.seq loopBody480_145 loopBody480_1

def loopBody480_147 : HolLoopProg 64 :=
.mark loopBody480_146

def loopBody480_148 : HolLoopProg 64 :=
.seq loopBody480_147 loopBody480_1

def loopBody480_149 : HolLoopProg 64 :=
.mark loopBody480_148

def loopBody480_150 : HolLoopProg 64 :=
.seq loopBody480_143 loopBody480_149

def loopBody480_151 : HolLoopProg 64 :=
.mark loopBody480_150

def loopBody480_152 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody480_137 loopBody480_151 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody480_153 : HolLoopProg 64 :=
.mark loopBody480_152

def loopBody480_154 : HolLoopProg 64 :=
.seq loopBody480_153 loopBody480_1

def loopBody480_155 : HolLoopProg 64 :=
.mark loopBody480_154

def loopBody480_156 : HolLoopProg 64 :=
.seq loopBody480_123 loopBody480_155

def loopBody480_157 : HolLoopProg 64 :=
.mark loopBody480_156

def loopBody480_158 : HolLoopProg 64 :=
.seq loopBody480_121 loopBody480_157

def loopBody480_159 : HolLoopProg 64 :=
.mark loopBody480_158

def loopBody480_160 : HolLoopProg 64 :=
.seq loopBody480_115 loopBody480_159

def loopBody480_161 : HolLoopProg 64 :=
.mark loopBody480_160

def loopBody480_162 : HolLoopProg 64 :=
.seq loopBody480_113 loopBody480_161

def loopBody480_163 : HolLoopProg 64 :=
.mark loopBody480_162

def loopBody480_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody480_165 : HolLoopProg 64 :=
.mark loopBody480_164

def loopBody480_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody480_167 : HolLoopProg 64 :=
.mark loopBody480_166

def loopBody480_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody480_169 : HolLoopProg 64 :=
.mark loopBody480_168

def loopBody480_170 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 93) ([8, 9]) (some (8, loopBody480_169, loopBody480_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody480_171 : HolLoopProg 64 :=
.mark loopBody480_170

def loopBody480_172 : HolLoopProg 64 :=
.seq loopBody480_171 loopBody480_1

def loopBody480_173 : HolLoopProg 64 :=
.mark loopBody480_172

def loopBody480_174 : HolLoopProg 64 :=
.seq loopBody480_167 loopBody480_173

def loopBody480_175 : HolLoopProg 64 :=
.mark loopBody480_174

def loopBody480_176 : HolLoopProg 64 :=
.seq loopBody480_165 loopBody480_175

def loopBody480_177 : HolLoopProg 64 :=
.mark loopBody480_176

def loopBody480_178 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody480_179 : HolLoopProg 64 :=
.mark loopBody480_178

def loopBody480_180 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody480_181 : HolLoopProg 64 :=
.mark loopBody480_180

def loopBody480_182 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody480_43 loopBody480_45 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody480_183 : HolLoopProg 64 :=
.mark loopBody480_182

def loopBody480_184 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody480_185 : HolLoopProg 64 :=
.mark loopBody480_184

def loopBody480_186 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 2#64)

def loopBody480_187 : HolLoopProg 64 :=
.mark loopBody480_186

def loopBody480_188 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 8)

def loopBody480_189 : HolLoopProg 64 :=
.mark loopBody480_188

def loopBody480_190 : HolLoopProg 64 :=
.seq loopBody480_189 loopBody480_1

def loopBody480_191 : HolLoopProg 64 :=
.mark loopBody480_190

def loopBody480_192 : HolLoopProg 64 :=
.seq loopBody480_191 loopBody480_1

def loopBody480_193 : HolLoopProg 64 :=
.mark loopBody480_192

def loopBody480_194 : HolLoopProg 64 :=
.seq loopBody480_187 loopBody480_193

def loopBody480_195 : HolLoopProg 64 :=
.mark loopBody480_194

def loopBody480_196 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_195

def loopBody480_197 : HolLoopProg 64 :=
.mark loopBody480_196

def loopBody480_198 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 8#64)

def loopBody480_199 : HolLoopProg 64 :=
.mark loopBody480_198

def loopBody480_200 : HolLoopProg 64 :=
.seq loopBody480_199 loopBody480_169

def loopBody480_201 : HolLoopProg 64 :=
.mark loopBody480_200

def loopBody480_202 : HolLoopProg 64 :=
.seq loopBody480_197 loopBody480_201

def loopBody480_203 : HolLoopProg 64 :=
.mark loopBody480_202

def loopBody480_204 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody480_203 loopBody480_1 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody480_205 : HolLoopProg 64 :=
.mark loopBody480_204

def loopBody480_206 : HolLoopProg 64 :=
.seq loopBody480_205 loopBody480_1

def loopBody480_207 : HolLoopProg 64 :=
.mark loopBody480_206

def loopBody480_208 : HolLoopProg 64 :=
.seq loopBody480_185 loopBody480_207

def loopBody480_209 : HolLoopProg 64 :=
.mark loopBody480_208

def loopBody480_210 : HolLoopProg 64 :=
.seq loopBody480_183 loopBody480_209

def loopBody480_211 : HolLoopProg 64 :=
.mark loopBody480_210

def loopBody480_212 : HolLoopProg 64 :=
.seq loopBody480_181 loopBody480_211

def loopBody480_213 : HolLoopProg 64 :=
.mark loopBody480_212

def loopBody480_214 : HolLoopProg 64 :=
.seq loopBody480_179 loopBody480_213

def loopBody480_215 : HolLoopProg 64 :=
.mark loopBody480_214

def loopBody480_216 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody480_217 : HolLoopProg 64 :=
.mark loopBody480_216

def loopBody480_218 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody480_219 : HolLoopProg 64 :=
.mark loopBody480_218

def loopBody480_220 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody480_221 : HolLoopProg 64 :=
.mark loopBody480_220

def loopBody480_222 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 538) ([9, 10]) (some (9, loopBody480_221, loopBody480_1, (Flapjack.Spt.ln)))

def loopBody480_223 : HolLoopProg 64 :=
.mark loopBody480_222

def loopBody480_224 : HolLoopProg 64 :=
.seq loopBody480_223 loopBody480_1

def loopBody480_225 : HolLoopProg 64 :=
.mark loopBody480_224

def loopBody480_226 : HolLoopProg 64 :=
.seq loopBody480_219 loopBody480_225

def loopBody480_227 : HolLoopProg 64 :=
.mark loopBody480_226

def loopBody480_228 : HolLoopProg 64 :=
.seq loopBody480_217 loopBody480_227

def loopBody480_229 : HolLoopProg 64 :=
.mark loopBody480_228

def loopBody480_230 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_229

def loopBody480_231 : HolLoopProg 64 :=
.mark loopBody480_230

def loopBody480_232 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_231

def loopBody480_233 : HolLoopProg 64 :=
.mark loopBody480_232

def loopBody480_234 : HolLoopProg 64 :=
.seq loopBody480_215 loopBody480_233

def loopBody480_235 : HolLoopProg 64 :=
.mark loopBody480_234

def loopBody480_236 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 2#64)

def loopBody480_237 : HolLoopProg 64 :=
.mark loopBody480_236

def loopBody480_238 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 490) ([9]) (some (9, loopBody480_221, loopBody480_1, (Flapjack.Spt.ln)))

def loopBody480_239 : HolLoopProg 64 :=
.mark loopBody480_238

def loopBody480_240 : HolLoopProg 64 :=
.seq loopBody480_239 loopBody480_1

def loopBody480_241 : HolLoopProg 64 :=
.mark loopBody480_240

def loopBody480_242 : HolLoopProg 64 :=
.seq loopBody480_237 loopBody480_241

def loopBody480_243 : HolLoopProg 64 :=
.mark loopBody480_242

def loopBody480_244 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_243

def loopBody480_245 : HolLoopProg 64 :=
.mark loopBody480_244

def loopBody480_246 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_245

def loopBody480_247 : HolLoopProg 64 :=
.mark loopBody480_246

def loopBody480_248 : HolLoopProg 64 :=
.seq loopBody480_235 loopBody480_247

def loopBody480_249 : HolLoopProg 64 :=
.mark loopBody480_248

def loopBody480_250 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody480_251 : HolLoopProg 64 :=
.mark loopBody480_250

def loopBody480_252 : HolLoopProg 64 :=
.seq loopBody480_251 loopBody480_1

def loopBody480_253 : HolLoopProg 64 :=
.mark loopBody480_252

def loopBody480_254 : HolLoopProg 64 :=
.seq loopBody480_119 loopBody480_253

def loopBody480_255 : HolLoopProg 64 :=
.mark loopBody480_254

def loopBody480_256 : HolLoopProg 64 :=
.seq loopBody480_249 loopBody480_255

def loopBody480_257 : HolLoopProg 64 :=
.mark loopBody480_256

def loopBody480_258 : HolLoopProg 64 :=
.seq loopBody480_177 loopBody480_257

def loopBody480_259 : HolLoopProg 64 :=
.mark loopBody480_258

def loopBody480_260 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_259

def loopBody480_261 : HolLoopProg 64 :=
.mark loopBody480_260

def loopBody480_262 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_261

def loopBody480_263 : HolLoopProg 64 :=
.mark loopBody480_262

def loopBody480_264 : HolLoopProg 64 :=
.seq loopBody480_163 loopBody480_263

def loopBody480_265 : HolLoopProg 64 :=
.mark loopBody480_264

def loopBody480_266 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_265

def loopBody480_267 : HolLoopProg 64 :=
.mark loopBody480_266

def loopBody480_268 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_267

def loopBody480_269 : HolLoopProg 64 :=
.mark loopBody480_268

def loopBody480_270 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_269

def loopBody480_271 : HolLoopProg 64 :=
.mark loopBody480_270

def loopBody480_272 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_271

def loopBody480_273 : HolLoopProg 64 :=
.mark loopBody480_272

def loopBody480_274 : HolLoopProg 64 :=
.seq loopBody480_111 loopBody480_273

def loopBody480_275 : HolLoopProg 64 :=
.mark loopBody480_274

def loopBody480_276 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_275

def loopBody480_277 : HolLoopProg 64 :=
.mark loopBody480_276

def loopBody480_278 : HolLoopProg 64 :=
.seq loopBody480_109 loopBody480_277

def loopBody480_279 : HolLoopProg 64 :=
.mark loopBody480_278

def loopBody480_280 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_279

def loopBody480_281 : HolLoopProg 64 :=
.mark loopBody480_280

def loopBody480_282 : HolLoopProg 64 :=
.seq loopBody480_107 loopBody480_281

def loopBody480_283 : HolLoopProg 64 :=
.mark loopBody480_282

def loopBody480_284 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_283

def loopBody480_285 : HolLoopProg 64 :=
.mark loopBody480_284

def loopBody480_286 : HolLoopProg 64 :=
.seq loopBody480_105 loopBody480_285

def loopBody480_287 : HolLoopProg 64 :=
.mark loopBody480_286

def loopBody480_288 : HolLoopProg 64 :=
.seq loopBody480_19 loopBody480_287

def loopBody480_289 : HolLoopProg 64 :=
.mark loopBody480_288

def loopBody480_290 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_289

def loopBody480_291 : HolLoopProg 64 :=
.mark loopBody480_290

def loopBody480_292 : HolLoopProg 64 :=
.seq loopBody480_1 loopBody480_291

def loopBody480_293 : HolLoopProg 64 :=
.mark loopBody480_292

def loopBody480_294 : HolLoopProg 64 :=
.seq loopBody480_15 loopBody480_293

def loopBody480_295 : HolLoopProg 64 :=
.mark loopBody480_294

def output480 : Nat × List Nat × HolLoopProg 64 :=
  (544, [], loopBody480_295)
end InitECandidate.Proofs.FrontendStages.Loop
