import InitECandidate.Proofs.FrontendStages.Loop.Translate376
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody392_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody392_1 : HolLoopProg 64 :=
.mark loopBody392_0

def loopBody392_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody392_3 : HolLoopProg 64 :=
.mark loopBody392_2

def loopBody392_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody392_5 : HolLoopProg 64 :=
.mark loopBody392_4

def loopBody392_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody392_7 : HolLoopProg 64 :=
.mark loopBody392_6

def loopBody392_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody392_5 loopBody392_7 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody392_9 : HolLoopProg 64 :=
.mark loopBody392_8

def loopBody392_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody392_11 : HolLoopProg 64 :=
.mark loopBody392_10

def loopBody392_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 1))

def loopBody392_13 : HolLoopProg 64 :=
.mark loopBody392_12

def loopBody392_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 0))

def loopBody392_15 : HolLoopProg 64 :=
.mark loopBody392_14

def loopBody392_16 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody392_5 loopBody392_7 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody392_17 : HolLoopProg 64 :=
.mark loopBody392_16

def loopBody392_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody392_19 : HolLoopProg 64 :=
.mark loopBody392_18

def loopBody392_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody392_21 : HolLoopProg 64 :=
.mark loopBody392_20

def loopBody392_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody392_23 : HolLoopProg 64 :=
.mark loopBody392_22

def loopBody392_24 : HolLoopProg 64 :=
.seq loopBody392_21 loopBody392_23

def loopBody392_25 : HolLoopProg 64 :=
.mark loopBody392_24

def loopBody392_26 : HolLoopProg 64 :=
.seq loopBody392_19 loopBody392_25

def loopBody392_27 : HolLoopProg 64 :=
.mark loopBody392_26

def loopBody392_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody392_27 loopBody392_23 (Flapjack.Spt.ln)

def loopBody392_29 : HolLoopProg 64 :=
.mark loopBody392_28

def loopBody392_30 : HolLoopProg 64 :=
.seq loopBody392_29 loopBody392_23

def loopBody392_31 : HolLoopProg 64 :=
.mark loopBody392_30

def loopBody392_32 : HolLoopProg 64 :=
.seq loopBody392_11 loopBody392_31

def loopBody392_33 : HolLoopProg 64 :=
.mark loopBody392_32

def loopBody392_34 : HolLoopProg 64 :=
.seq loopBody392_17 loopBody392_33

def loopBody392_35 : HolLoopProg 64 :=
.mark loopBody392_34

def loopBody392_36 : HolLoopProg 64 :=
.seq loopBody392_15 loopBody392_35

def loopBody392_37 : HolLoopProg 64 :=
.mark loopBody392_36

def loopBody392_38 : HolLoopProg 64 :=
.seq loopBody392_13 loopBody392_37

def loopBody392_39 : HolLoopProg 64 :=
.mark loopBody392_38

def loopBody392_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody392_41 : HolLoopProg 64 :=
.mark loopBody392_40

def loopBody392_42 : HolLoopProg 64 :=
.seq loopBody392_41 loopBody392_25

def loopBody392_43 : HolLoopProg 64 :=
.mark loopBody392_42

def loopBody392_44 : HolLoopProg 64 :=
.seq loopBody392_39 loopBody392_43

def loopBody392_45 : HolLoopProg 64 :=
.mark loopBody392_44

def loopBody392_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody392_45 loopBody392_23 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody392_47 : HolLoopProg 64 :=
.mark loopBody392_46

def loopBody392_48 : HolLoopProg 64 :=
.seq loopBody392_47 loopBody392_23

def loopBody392_49 : HolLoopProg 64 :=
.mark loopBody392_48

def loopBody392_50 : HolLoopProg 64 :=
.seq loopBody392_11 loopBody392_49

def loopBody392_51 : HolLoopProg 64 :=
.mark loopBody392_50

def loopBody392_52 : HolLoopProg 64 :=
.seq loopBody392_9 loopBody392_51

def loopBody392_53 : HolLoopProg 64 :=
.mark loopBody392_52

def loopBody392_54 : HolLoopProg 64 :=
.seq loopBody392_3 loopBody392_53

def loopBody392_55 : HolLoopProg 64 :=
.mark loopBody392_54

def loopBody392_56 : HolLoopProg 64 :=
.seq loopBody392_1 loopBody392_55

def loopBody392_57 : HolLoopProg 64 :=
.mark loopBody392_56

def loopBody392_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 20#64)

def loopBody392_59 : HolLoopProg 64 :=
.mark loopBody392_58

def loopBody392_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody392_61 : HolLoopProg 64 :=
.mark loopBody392_60

def loopBody392_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 2#64)

def loopBody392_63 : HolLoopProg 64 :=
.mark loopBody392_62

def loopBody392_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody392_65 : HolLoopProg 64 :=
.mark loopBody392_64

def loopBody392_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody392_65 loopBody392_3 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody392_67 : HolLoopProg 64 :=
.mark loopBody392_66

def loopBody392_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody392_69 : HolLoopProg 64 :=
.mark loopBody392_68

def loopBody392_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 32#64)

def loopBody392_71 : HolLoopProg 64 :=
.mark loopBody392_70

def loopBody392_72 : HolLoopProg 64 :=
.seq loopBody392_71 loopBody392_23

def loopBody392_73 : HolLoopProg 64 :=
.mark loopBody392_72

def loopBody392_74 : HolLoopProg 64 :=
.seq loopBody392_73 loopBody392_23

def loopBody392_75 : HolLoopProg 64 :=
.mark loopBody392_74

def loopBody392_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody392_75 loopBody392_23 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody392_77 : HolLoopProg 64 :=
.mark loopBody392_76

def loopBody392_78 : HolLoopProg 64 :=
.seq loopBody392_77 loopBody392_23

def loopBody392_79 : HolLoopProg 64 :=
.mark loopBody392_78

def loopBody392_80 : HolLoopProg 64 :=
.seq loopBody392_69 loopBody392_79

def loopBody392_81 : HolLoopProg 64 :=
.mark loopBody392_80

def loopBody392_82 : HolLoopProg 64 :=
.seq loopBody392_67 loopBody392_81

def loopBody392_83 : HolLoopProg 64 :=
.mark loopBody392_82

def loopBody392_84 : HolLoopProg 64 :=
.seq loopBody392_63 loopBody392_83

def loopBody392_85 : HolLoopProg 64 :=
.mark loopBody392_84

def loopBody392_86 : HolLoopProg 64 :=
.seq loopBody392_61 loopBody392_85

def loopBody392_87 : HolLoopProg 64 :=
.mark loopBody392_86

def loopBody392_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody392_89 : HolLoopProg 64 :=
.mark loopBody392_88

def loopBody392_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody392_91 : HolLoopProg 64 :=
.mark loopBody392_90

def loopBody392_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody392_93 : HolLoopProg 64 :=
.mark loopBody392_92

def loopBody392_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.RegImm.reg 7) loopBody392_91 loopBody392_93 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody392_95 : HolLoopProg 64 :=
.mark loopBody392_94

def loopBody392_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody392_97 : HolLoopProg 64 :=
.mark loopBody392_96

def loopBody392_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody392_99 : HolLoopProg 64 :=
.mark loopBody392_98

def loopBody392_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 5 5

def loopBody392_101 : HolLoopProg 64 :=
.mark loopBody392_100

def loopBody392_102 : HolLoopProg 64 :=
.seq loopBody392_101 loopBody392_23

def loopBody392_103 : HolLoopProg 64 :=
.mark loopBody392_102

def loopBody392_104 : HolLoopProg 64 :=
.seq loopBody392_99 loopBody392_103

def loopBody392_105 : HolLoopProg 64 :=
.mark loopBody392_104

def loopBody392_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody392_107 : HolLoopProg 64 :=
.mark loopBody392_106

def loopBody392_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 4])

def loopBody392_109 : HolLoopProg 64 :=
.mark loopBody392_108

def loopBody392_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody392_111 : HolLoopProg 64 :=
.mark loopBody392_110

def loopBody392_112 : HolLoopProg 64 :=
.seq loopBody392_111 loopBody392_23

def loopBody392_113 : HolLoopProg 64 :=
.mark loopBody392_112

def loopBody392_114 : HolLoopProg 64 :=
.seq loopBody392_109 loopBody392_113

def loopBody392_115 : HolLoopProg 64 :=
.mark loopBody392_114

def loopBody392_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody392_117 : HolLoopProg 64 :=
.mark loopBody392_116

def loopBody392_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody392_119 : HolLoopProg 64 :=
.mark loopBody392_118

def loopBody392_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody392_121 : HolLoopProg 64 :=
.mark loopBody392_120

def loopBody392_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody392_123 : HolLoopProg 64 :=
.mark loopBody392_122

def loopBody392_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody392_125 : HolLoopProg 64 :=
.mark loopBody392_124

def loopBody392_126 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.reg 11) loopBody392_123 loopBody392_125 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody392_127 : HolLoopProg 64 :=
.mark loopBody392_126

def loopBody392_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody392_129 : HolLoopProg 64 :=
.mark loopBody392_128

def loopBody392_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody392_131 : HolLoopProg 64 :=
.mark loopBody392_130

def loopBody392_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 6)

def loopBody392_133 : HolLoopProg 64 :=
.mark loopBody392_132

def loopBody392_134 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody392_123 loopBody392_125 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  Flapjack.Spt.ln)

def loopBody392_135 : HolLoopProg 64 :=
.mark loopBody392_134

def loopBody392_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody392_137 : HolLoopProg 64 :=
.mark loopBody392_136

def loopBody392_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody392_139 : HolLoopProg 64 :=
.mark loopBody392_138

def loopBody392_140 : HolLoopProg 64 :=
.seq loopBody392_139 loopBody392_23

def loopBody392_141 : HolLoopProg 64 :=
.mark loopBody392_140

def loopBody392_142 : HolLoopProg 64 :=
.seq loopBody392_137 loopBody392_141

def loopBody392_143 : HolLoopProg 64 :=
.mark loopBody392_142

def loopBody392_144 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody392_143 loopBody392_23 (Flapjack.Spt.ln)

def loopBody392_145 : HolLoopProg 64 :=
.mark loopBody392_144

def loopBody392_146 : HolLoopProg 64 :=
.seq loopBody392_145 loopBody392_23

def loopBody392_147 : HolLoopProg 64 :=
.mark loopBody392_146

def loopBody392_148 : HolLoopProg 64 :=
.seq loopBody392_129 loopBody392_147

def loopBody392_149 : HolLoopProg 64 :=
.mark loopBody392_148

def loopBody392_150 : HolLoopProg 64 :=
.seq loopBody392_135 loopBody392_149

def loopBody392_151 : HolLoopProg 64 :=
.mark loopBody392_150

def loopBody392_152 : HolLoopProg 64 :=
.seq loopBody392_133 loopBody392_151

def loopBody392_153 : HolLoopProg 64 :=
.mark loopBody392_152

def loopBody392_154 : HolLoopProg 64 :=
.seq loopBody392_131 loopBody392_153

def loopBody392_155 : HolLoopProg 64 :=
.mark loopBody392_154

def loopBody392_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody392_157 : HolLoopProg 64 :=
.mark loopBody392_156

def loopBody392_158 : HolLoopProg 64 :=
.seq loopBody392_157 loopBody392_141

def loopBody392_159 : HolLoopProg 64 :=
.mark loopBody392_158

def loopBody392_160 : HolLoopProg 64 :=
.seq loopBody392_155 loopBody392_159

def loopBody392_161 : HolLoopProg 64 :=
.mark loopBody392_160

def loopBody392_162 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody392_161 loopBody392_23 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody392_163 : HolLoopProg 64 :=
.mark loopBody392_162

def loopBody392_164 : HolLoopProg 64 :=
.seq loopBody392_163 loopBody392_23

def loopBody392_165 : HolLoopProg 64 :=
.mark loopBody392_164

def loopBody392_166 : HolLoopProg 64 :=
.seq loopBody392_129 loopBody392_165

def loopBody392_167 : HolLoopProg 64 :=
.mark loopBody392_166

def loopBody392_168 : HolLoopProg 64 :=
.seq loopBody392_127 loopBody392_167

def loopBody392_169 : HolLoopProg 64 :=
.mark loopBody392_168

def loopBody392_170 : HolLoopProg 64 :=
.seq loopBody392_121 loopBody392_169

def loopBody392_171 : HolLoopProg 64 :=
.mark loopBody392_170

def loopBody392_172 : HolLoopProg 64 :=
.seq loopBody392_119 loopBody392_171

def loopBody392_173 : HolLoopProg 64 :=
.mark loopBody392_172

def loopBody392_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody392_175 : HolLoopProg 64 :=
.mark loopBody392_174

def loopBody392_176 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 9)

def loopBody392_177 : HolLoopProg 64 :=
.mark loopBody392_176

def loopBody392_178 : HolLoopProg 64 :=
.seq loopBody392_177 loopBody392_23

def loopBody392_179 : HolLoopProg 64 :=
.mark loopBody392_178

def loopBody392_180 : HolLoopProg 64 :=
.seq loopBody392_179 loopBody392_23

def loopBody392_181 : HolLoopProg 64 :=
.mark loopBody392_180

def loopBody392_182 : HolLoopProg 64 :=
.seq loopBody392_175 loopBody392_181

def loopBody392_183 : HolLoopProg 64 :=
.mark loopBody392_182

def loopBody392_184 : HolLoopProg 64 :=
.seq loopBody392_23 loopBody392_183

def loopBody392_185 : HolLoopProg 64 :=
.mark loopBody392_184

def loopBody392_186 : HolLoopProg 64 :=
.seq loopBody392_173 loopBody392_185

def loopBody392_187 : HolLoopProg 64 :=
.mark loopBody392_186

def loopBody392_188 : HolLoopProg 64 :=
.seq loopBody392_117 loopBody392_187

def loopBody392_189 : HolLoopProg 64 :=
.mark loopBody392_188

def loopBody392_190 : HolLoopProg 64 :=
.seq loopBody392_115 loopBody392_189

def loopBody392_191 : HolLoopProg 64 :=
.mark loopBody392_190

def loopBody392_192 : HolLoopProg 64 :=
.seq loopBody392_107 loopBody392_191

def loopBody392_193 : HolLoopProg 64 :=
.mark loopBody392_192

def loopBody392_194 : HolLoopProg 64 :=
.seq loopBody392_105 loopBody392_193

def loopBody392_195 : HolLoopProg 64 :=
.mark loopBody392_194

def loopBody392_196 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody392_197 : HolLoopProg 64 :=
.mark loopBody392_196

def loopBody392_198 : HolLoopProg 64 :=
.seq loopBody392_195 loopBody392_197

def loopBody392_199 : HolLoopProg 64 :=
.mark loopBody392_198

def loopBody392_200 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody392_201 : HolLoopProg 64 :=
.mark loopBody392_200

def loopBody392_202 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody392_199 loopBody392_201 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody392_203 : HolLoopProg 64 :=
.mark loopBody392_202

def loopBody392_204 : HolLoopProg 64 :=
.seq loopBody392_203 loopBody392_23

def loopBody392_205 : HolLoopProg 64 :=
.mark loopBody392_204

def loopBody392_206 : HolLoopProg 64 :=
.seq loopBody392_97 loopBody392_205

def loopBody392_207 : HolLoopProg 64 :=
.mark loopBody392_206

def loopBody392_208 : HolLoopProg 64 :=
.seq loopBody392_95 loopBody392_207

def loopBody392_209 : HolLoopProg 64 :=
.mark loopBody392_208

def loopBody392_210 : HolLoopProg 64 :=
.seq loopBody392_89 loopBody392_209

def loopBody392_211 : HolLoopProg 64 :=
.mark loopBody392_210

def loopBody392_212 : HolLoopProg 64 :=
.seq loopBody392_11 loopBody392_211

def loopBody392_213 : HolLoopProg 64 :=
.mark loopBody392_212

def loopBody392_214 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody392_213 (Flapjack.Spt.ln)

def loopBody392_215 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody392_216 : HolLoopProg 64 :=
.mark loopBody392_215

def loopBody392_217 : HolLoopProg 64 :=
.seq loopBody392_216 loopBody392_23

def loopBody392_218 : HolLoopProg 64 :=
.mark loopBody392_217

def loopBody392_219 : HolLoopProg 64 :=
.seq loopBody392_3 loopBody392_218

def loopBody392_220 : HolLoopProg 64 :=
.mark loopBody392_219

def loopBody392_221 : HolLoopProg 64 :=
.seq loopBody392_214 loopBody392_220

def loopBody392_222 : HolLoopProg 64 :=
.seq loopBody392_7 loopBody392_221

def loopBody392_223 : HolLoopProg 64 :=
.seq loopBody392_23 loopBody392_222

def loopBody392_224 : HolLoopProg 64 :=
.seq loopBody392_87 loopBody392_223

def loopBody392_225 : HolLoopProg 64 :=
.seq loopBody392_59 loopBody392_224

def loopBody392_226 : HolLoopProg 64 :=
.seq loopBody392_23 loopBody392_225

def loopBody392_227 : HolLoopProg 64 :=
.seq loopBody392_57 loopBody392_226

def output392 : Nat × List Nat × HolLoopProg 64 :=
  (456, [0, 1, 2], loopBody392_227)
end InitECandidate.Proofs.FrontendStages.Loop
