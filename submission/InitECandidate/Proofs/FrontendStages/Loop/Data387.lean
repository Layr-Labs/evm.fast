import InitECandidate.Proofs.FrontendStages.Loop.Translate371
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody387_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody387_1 : HolLoopProg 64 :=
.mark loopBody387_0

def loopBody387_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody387_3 : HolLoopProg 64 :=
.mark loopBody387_2

def loopBody387_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody387_5 : HolLoopProg 64 :=
.mark loopBody387_4

def loopBody387_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody387_7 : HolLoopProg 64 :=
.mark loopBody387_6

def loopBody387_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody387_9 : HolLoopProg 64 :=
.mark loopBody387_8

def loopBody387_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody387_11 : HolLoopProg 64 :=
.mark loopBody387_10

def loopBody387_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody387_13 : HolLoopProg 64 :=
.mark loopBody387_12

def loopBody387_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody387_15 : HolLoopProg 64 :=
.mark loopBody387_14

def loopBody387_16 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody387_13 loopBody387_15 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody387_17 : HolLoopProg 64 :=
.mark loopBody387_16

def loopBody387_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody387_19 : HolLoopProg 64 :=
.mark loopBody387_18

def loopBody387_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody387_21 : HolLoopProg 64 :=
.mark loopBody387_20

def loopBody387_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody387_23 : HolLoopProg 64 :=
.mark loopBody387_22

def loopBody387_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 8 8 6 7)

def loopBody387_25 : HolLoopProg 64 :=
.mark loopBody387_24

def loopBody387_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 8]))

def loopBody387_27 : HolLoopProg 64 :=
.mark loopBody387_26

def loopBody387_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody387_29 : HolLoopProg 64 :=
.mark loopBody387_28

def loopBody387_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody387_31 : HolLoopProg 64 :=
.mark loopBody387_30

def loopBody387_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody387_33 : HolLoopProg 64 :=
.mark loopBody387_32

def loopBody387_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody387_31 loopBody387_33 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody387_35 : HolLoopProg 64 :=
.mark loopBody387_34

def loopBody387_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody387_37 : HolLoopProg 64 :=
.mark loopBody387_36

def loopBody387_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody387_39 : HolLoopProg 64 :=
.mark loopBody387_38

def loopBody387_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody387_13 loopBody387_15 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody387_41 : HolLoopProg 64 :=
.mark loopBody387_40

def loopBody387_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody387_43 : HolLoopProg 64 :=
.mark loopBody387_42

def loopBody387_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 9 9 7 8)

def loopBody387_45 : HolLoopProg 64 :=
.mark loopBody387_44

def loopBody387_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody387_47 : HolLoopProg 64 :=
.mark loopBody387_46

def loopBody387_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody387_49 : HolLoopProg 64 :=
.mark loopBody387_48

def loopBody387_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 12 12 10 11)

def loopBody387_51 : HolLoopProg 64 :=
.mark loopBody387_50

def loopBody387_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 9])

def loopBody387_53 : HolLoopProg 64 :=
.mark loopBody387_52

def loopBody387_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 12])

def loopBody387_55 : HolLoopProg 64 :=
.mark loopBody387_54

def loopBody387_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 1)

def loopBody387_57 : HolLoopProg 64 :=
.mark loopBody387_56

def loopBody387_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody387_59 : HolLoopProg 64 :=
.mark loopBody387_58

def loopBody387_60 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([13, 14, 15]) (some (7, loopBody387_59, loopBody387_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody387_61 : HolLoopProg 64 :=
.mark loopBody387_60

def loopBody387_62 : HolLoopProg 64 :=
.seq loopBody387_61 loopBody387_1

def loopBody387_63 : HolLoopProg 64 :=
.mark loopBody387_62

def loopBody387_64 : HolLoopProg 64 :=
.seq loopBody387_57 loopBody387_63

def loopBody387_65 : HolLoopProg 64 :=
.mark loopBody387_64

def loopBody387_66 : HolLoopProg 64 :=
.seq loopBody387_55 loopBody387_65

def loopBody387_67 : HolLoopProg 64 :=
.mark loopBody387_66

def loopBody387_68 : HolLoopProg 64 :=
.seq loopBody387_53 loopBody387_67

def loopBody387_69 : HolLoopProg 64 :=
.mark loopBody387_68

def loopBody387_70 : HolLoopProg 64 :=
.seq loopBody387_51 loopBody387_69

def loopBody387_71 : HolLoopProg 64 :=
.mark loopBody387_70

def loopBody387_72 : HolLoopProg 64 :=
.seq loopBody387_49 loopBody387_71

def loopBody387_73 : HolLoopProg 64 :=
.mark loopBody387_72

def loopBody387_74 : HolLoopProg 64 :=
.seq loopBody387_47 loopBody387_73

def loopBody387_75 : HolLoopProg 64 :=
.mark loopBody387_74

def loopBody387_76 : HolLoopProg 64 :=
.seq loopBody387_45 loopBody387_75

def loopBody387_77 : HolLoopProg 64 :=
.mark loopBody387_76

def loopBody387_78 : HolLoopProg 64 :=
.seq loopBody387_43 loopBody387_77

def loopBody387_79 : HolLoopProg 64 :=
.mark loopBody387_78

def loopBody387_80 : HolLoopProg 64 :=
.seq loopBody387_9 loopBody387_79

def loopBody387_81 : HolLoopProg 64 :=
.mark loopBody387_80

def loopBody387_82 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_81

def loopBody387_83 : HolLoopProg 64 :=
.mark loopBody387_82

def loopBody387_84 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_83

def loopBody387_85 : HolLoopProg 64 :=
.mark loopBody387_84

def loopBody387_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody387_85 loopBody387_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody387_87 : HolLoopProg 64 :=
.mark loopBody387_86

def loopBody387_88 : HolLoopProg 64 :=
.seq loopBody387_87 loopBody387_1

def loopBody387_89 : HolLoopProg 64 :=
.mark loopBody387_88

def loopBody387_90 : HolLoopProg 64 :=
.seq loopBody387_19 loopBody387_89

def loopBody387_91 : HolLoopProg 64 :=
.mark loopBody387_90

def loopBody387_92 : HolLoopProg 64 :=
.seq loopBody387_41 loopBody387_91

def loopBody387_93 : HolLoopProg 64 :=
.mark loopBody387_92

def loopBody387_94 : HolLoopProg 64 :=
.seq loopBody387_39 loopBody387_93

def loopBody387_95 : HolLoopProg 64 :=
.mark loopBody387_94

def loopBody387_96 : HolLoopProg 64 :=
.seq loopBody387_9 loopBody387_95

def loopBody387_97 : HolLoopProg 64 :=
.mark loopBody387_96

def loopBody387_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody387_99 : HolLoopProg 64 :=
.mark loopBody387_98

def loopBody387_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody387_101 : HolLoopProg 64 :=
.mark loopBody387_100

def loopBody387_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody387_103 : HolLoopProg 64 :=
.mark loopBody387_102

def loopBody387_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody387_105 : HolLoopProg 64 :=
.mark loopBody387_104

def loopBody387_106 : HolLoopProg 64 :=
.seq loopBody387_105 loopBody387_1

def loopBody387_107 : HolLoopProg 64 :=
.mark loopBody387_106

def loopBody387_108 : HolLoopProg 64 :=
.seq loopBody387_103 loopBody387_107

def loopBody387_109 : HolLoopProg 64 :=
.mark loopBody387_108

def loopBody387_110 : HolLoopProg 64 :=
.seq loopBody387_109 loopBody387_1

def loopBody387_111 : HolLoopProg 64 :=
.mark loopBody387_110

def loopBody387_112 : HolLoopProg 64 :=
.seq loopBody387_101 loopBody387_111

def loopBody387_113 : HolLoopProg 64 :=
.mark loopBody387_112

def loopBody387_114 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_113

def loopBody387_115 : HolLoopProg 64 :=
.mark loopBody387_114

def loopBody387_116 : HolLoopProg 64 :=
.seq loopBody387_99 loopBody387_115

def loopBody387_117 : HolLoopProg 64 :=
.mark loopBody387_116

def loopBody387_118 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_117

def loopBody387_119 : HolLoopProg 64 :=
.mark loopBody387_118

def loopBody387_120 : HolLoopProg 64 :=
.seq loopBody387_97 loopBody387_119

def loopBody387_121 : HolLoopProg 64 :=
.mark loopBody387_120

def loopBody387_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody387_123 : HolLoopProg 64 :=
.mark loopBody387_122

def loopBody387_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody387_125 : HolLoopProg 64 :=
.mark loopBody387_124

def loopBody387_126 : HolLoopProg 64 :=
.seq loopBody387_125 loopBody387_1

def loopBody387_127 : HolLoopProg 64 :=
.mark loopBody387_126

def loopBody387_128 : HolLoopProg 64 :=
.seq loopBody387_123 loopBody387_127

def loopBody387_129 : HolLoopProg 64 :=
.mark loopBody387_128

def loopBody387_130 : HolLoopProg 64 :=
.seq loopBody387_121 loopBody387_129

def loopBody387_131 : HolLoopProg 64 :=
.mark loopBody387_130

def loopBody387_132 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody387_131 loopBody387_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody387_133 : HolLoopProg 64 :=
.mark loopBody387_132

def loopBody387_134 : HolLoopProg 64 :=
.seq loopBody387_133 loopBody387_1

def loopBody387_135 : HolLoopProg 64 :=
.mark loopBody387_134

def loopBody387_136 : HolLoopProg 64 :=
.seq loopBody387_37 loopBody387_135

def loopBody387_137 : HolLoopProg 64 :=
.mark loopBody387_136

def loopBody387_138 : HolLoopProg 64 :=
.seq loopBody387_35 loopBody387_137

def loopBody387_139 : HolLoopProg 64 :=
.mark loopBody387_138

def loopBody387_140 : HolLoopProg 64 :=
.seq loopBody387_29 loopBody387_139

def loopBody387_141 : HolLoopProg 64 :=
.mark loopBody387_140

def loopBody387_142 : HolLoopProg 64 :=
.seq loopBody387_27 loopBody387_141

def loopBody387_143 : HolLoopProg 64 :=
.mark loopBody387_142

def loopBody387_144 : HolLoopProg 64 :=
.seq loopBody387_25 loopBody387_143

def loopBody387_145 : HolLoopProg 64 :=
.mark loopBody387_144

def loopBody387_146 : HolLoopProg 64 :=
.seq loopBody387_23 loopBody387_145

def loopBody387_147 : HolLoopProg 64 :=
.mark loopBody387_146

def loopBody387_148 : HolLoopProg 64 :=
.seq loopBody387_21 loopBody387_147

def loopBody387_149 : HolLoopProg 64 :=
.mark loopBody387_148

def loopBody387_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody387_151 : HolLoopProg 64 :=
.mark loopBody387_150

def loopBody387_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody387_153 : HolLoopProg 64 :=
.mark loopBody387_152

def loopBody387_154 : HolLoopProg 64 :=
.seq loopBody387_153 loopBody387_1

def loopBody387_155 : HolLoopProg 64 :=
.mark loopBody387_154

def loopBody387_156 : HolLoopProg 64 :=
.seq loopBody387_155 loopBody387_1

def loopBody387_157 : HolLoopProg 64 :=
.mark loopBody387_156

def loopBody387_158 : HolLoopProg 64 :=
.seq loopBody387_151 loopBody387_157

def loopBody387_159 : HolLoopProg 64 :=
.mark loopBody387_158

def loopBody387_160 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_159

def loopBody387_161 : HolLoopProg 64 :=
.mark loopBody387_160

def loopBody387_162 : HolLoopProg 64 :=
.seq loopBody387_149 loopBody387_161

def loopBody387_163 : HolLoopProg 64 :=
.mark loopBody387_162

def loopBody387_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody387_165 : HolLoopProg 64 :=
.mark loopBody387_164

def loopBody387_166 : HolLoopProg 64 :=
.seq loopBody387_163 loopBody387_165

def loopBody387_167 : HolLoopProg 64 :=
.mark loopBody387_166

def loopBody387_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody387_169 : HolLoopProg 64 :=
.mark loopBody387_168

def loopBody387_170 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody387_167 loopBody387_169 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody387_171 : HolLoopProg 64 :=
.mark loopBody387_170

def loopBody387_172 : HolLoopProg 64 :=
.seq loopBody387_171 loopBody387_1

def loopBody387_173 : HolLoopProg 64 :=
.mark loopBody387_172

def loopBody387_174 : HolLoopProg 64 :=
.seq loopBody387_19 loopBody387_173

def loopBody387_175 : HolLoopProg 64 :=
.mark loopBody387_174

def loopBody387_176 : HolLoopProg 64 :=
.seq loopBody387_17 loopBody387_175

def loopBody387_177 : HolLoopProg 64 :=
.mark loopBody387_176

def loopBody387_178 : HolLoopProg 64 :=
.seq loopBody387_11 loopBody387_177

def loopBody387_179 : HolLoopProg 64 :=
.mark loopBody387_178

def loopBody387_180 : HolLoopProg 64 :=
.seq loopBody387_9 loopBody387_179

def loopBody387_181 : HolLoopProg 64 :=
.mark loopBody387_180

def loopBody387_182 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody387_181 (Flapjack.Spt.ln)

def loopBody387_183 : HolLoopProg 64 :=
.seq loopBody387_182 loopBody387_129

def loopBody387_184 : HolLoopProg 64 :=
.seq loopBody387_7 loopBody387_183

def loopBody387_185 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_184

def loopBody387_186 : HolLoopProg 64 :=
.seq loopBody387_5 loopBody387_185

def loopBody387_187 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_186

def loopBody387_188 : HolLoopProg 64 :=
.seq loopBody387_3 loopBody387_187

def loopBody387_189 : HolLoopProg 64 :=
.seq loopBody387_1 loopBody387_188

def output387 : Nat × List Nat × HolLoopProg 64 :=
  (451, [0, 1, 2], loopBody387_189)
end InitECandidate.Proofs.FrontendStages.Loop
