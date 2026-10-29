import InitECandidate.Proofs.FrontendStages.Loop.Translate90
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody106_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody106_1 : HolLoopProg 64 :=
.mark loopBody106_0

def loopBody106_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody106_3 : HolLoopProg 64 :=
.mark loopBody106_2

def loopBody106_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody106_5 : HolLoopProg 64 :=
.mark loopBody106_4

def loopBody106_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody106_7 : HolLoopProg 64 :=
.mark loopBody106_6

def loopBody106_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody106_5 loopBody106_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody106_9 : HolLoopProg 64 :=
.mark loopBody106_8

def loopBody106_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody106_11 : HolLoopProg 64 :=
.mark loopBody106_10

def loopBody106_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody106_13 : HolLoopProg 64 :=
.mark loopBody106_12

def loopBody106_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 20#64)

def loopBody106_15 : HolLoopProg 64 :=
.mark loopBody106_14

def loopBody106_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody106_17 : HolLoopProg 64 :=
.mark loopBody106_16

def loopBody106_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 159) ([3]) (some (3, loopBody106_17, loopBody106_13, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody106_19 : HolLoopProg 64 :=
.mark loopBody106_18

def loopBody106_20 : HolLoopProg 64 :=
.seq loopBody106_19 loopBody106_13

def loopBody106_21 : HolLoopProg 64 :=
.mark loopBody106_20

def loopBody106_22 : HolLoopProg 64 :=
.seq loopBody106_15 loopBody106_21

def loopBody106_23 : HolLoopProg 64 :=
.mark loopBody106_22

def loopBody106_24 : HolLoopProg 64 :=
.seq loopBody106_13 loopBody106_23

def loopBody106_25 : HolLoopProg 64 :=
.mark loopBody106_24

def loopBody106_26 : HolLoopProg 64 :=
.seq loopBody106_13 loopBody106_25

def loopBody106_27 : HolLoopProg 64 :=
.mark loopBody106_26

def loopBody106_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody106_27 loopBody106_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody106_29 : HolLoopProg 64 :=
.mark loopBody106_28

def loopBody106_30 : HolLoopProg 64 :=
.seq loopBody106_29 loopBody106_13

def loopBody106_31 : HolLoopProg 64 :=
.mark loopBody106_30

def loopBody106_32 : HolLoopProg 64 :=
.seq loopBody106_11 loopBody106_31

def loopBody106_33 : HolLoopProg 64 :=
.mark loopBody106_32

def loopBody106_34 : HolLoopProg 64 :=
.seq loopBody106_9 loopBody106_33

def loopBody106_35 : HolLoopProg 64 :=
.mark loopBody106_34

def loopBody106_36 : HolLoopProg 64 :=
.seq loopBody106_3 loopBody106_35

def loopBody106_37 : HolLoopProg 64 :=
.mark loopBody106_36

def loopBody106_38 : HolLoopProg 64 :=
.seq loopBody106_1 loopBody106_37

def loopBody106_39 : HolLoopProg 64 :=
.mark loopBody106_38

def loopBody106_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody106_41 : HolLoopProg 64 :=
.mark loopBody106_40

def loopBody106_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody106_43 : HolLoopProg 64 :=
.mark loopBody106_42

def loopBody106_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody106_45 : HolLoopProg 64 :=
.mark loopBody106_44

def loopBody106_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody106_45 loopBody106_41 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody106_47 : HolLoopProg 64 :=
.mark loopBody106_46

def loopBody106_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody106_49 : HolLoopProg 64 :=
.mark loopBody106_48

def loopBody106_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody106_51 : HolLoopProg 64 :=
.mark loopBody106_50

def loopBody106_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody106_53 : HolLoopProg 64 :=
.mark loopBody106_52

def loopBody106_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody106_55 : HolLoopProg 64 :=
.mark loopBody106_54

def loopBody106_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody106_57 : HolLoopProg 64 :=
.mark loopBody106_56

def loopBody106_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody106_59 : HolLoopProg 64 :=
.mark loopBody106_58

def loopBody106_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody106_57 loopBody106_59 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody106_61 : HolLoopProg 64 :=
.mark loopBody106_60

def loopBody106_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody106_63 : HolLoopProg 64 :=
.mark loopBody106_62

def loopBody106_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody106_65 : HolLoopProg 64 :=
.mark loopBody106_64

def loopBody106_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody106_67 : HolLoopProg 64 :=
.mark loopBody106_66

def loopBody106_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody106_67 loopBody106_63 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln))

def loopBody106_69 : HolLoopProg 64 :=
.mark loopBody106_68

def loopBody106_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.var 13])

def loopBody106_71 : HolLoopProg 64 :=
.mark loopBody106_70

def loopBody106_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 21#64)

def loopBody106_73 : HolLoopProg 64 :=
.mark loopBody106_72

def loopBody106_74 : HolLoopProg 64 :=
.seq loopBody106_73 loopBody106_21

def loopBody106_75 : HolLoopProg 64 :=
.mark loopBody106_74

def loopBody106_76 : HolLoopProg 64 :=
.seq loopBody106_13 loopBody106_75

def loopBody106_77 : HolLoopProg 64 :=
.mark loopBody106_76

def loopBody106_78 : HolLoopProg 64 :=
.seq loopBody106_13 loopBody106_77

def loopBody106_79 : HolLoopProg 64 :=
.mark loopBody106_78

def loopBody106_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody106_79 loopBody106_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody106_81 : HolLoopProg 64 :=
.mark loopBody106_80

def loopBody106_82 : HolLoopProg 64 :=
.seq loopBody106_81 loopBody106_13

def loopBody106_83 : HolLoopProg 64 :=
.mark loopBody106_82

def loopBody106_84 : HolLoopProg 64 :=
.seq loopBody106_71 loopBody106_83

def loopBody106_85 : HolLoopProg 64 :=
.mark loopBody106_84

def loopBody106_86 : HolLoopProg 64 :=
.seq loopBody106_69 loopBody106_85

def loopBody106_87 : HolLoopProg 64 :=
.mark loopBody106_86

def loopBody106_88 : HolLoopProg 64 :=
.seq loopBody106_65 loopBody106_87

def loopBody106_89 : HolLoopProg 64 :=
.mark loopBody106_88

def loopBody106_90 : HolLoopProg 64 :=
.seq loopBody106_63 loopBody106_89

def loopBody106_91 : HolLoopProg 64 :=
.mark loopBody106_90

def loopBody106_92 : HolLoopProg 64 :=
.seq loopBody106_61 loopBody106_91

def loopBody106_93 : HolLoopProg 64 :=
.mark loopBody106_92

def loopBody106_94 : HolLoopProg 64 :=
.seq loopBody106_55 loopBody106_93

def loopBody106_95 : HolLoopProg 64 :=
.mark loopBody106_94

def loopBody106_96 : HolLoopProg 64 :=
.seq loopBody106_53 loopBody106_95

def loopBody106_97 : HolLoopProg 64 :=
.mark loopBody106_96

def loopBody106_98 : HolLoopProg 64 :=
.seq loopBody106_51 loopBody106_97

def loopBody106_99 : HolLoopProg 64 :=
.mark loopBody106_98

def loopBody106_100 : HolLoopProg 64 :=
.seq loopBody106_49 loopBody106_99

def loopBody106_101 : HolLoopProg 64 :=
.mark loopBody106_100

def loopBody106_102 : HolLoopProg 64 :=
.seq loopBody106_47 loopBody106_101

def loopBody106_103 : HolLoopProg 64 :=
.mark loopBody106_102

def loopBody106_104 : HolLoopProg 64 :=
.seq loopBody106_43 loopBody106_103

def loopBody106_105 : HolLoopProg 64 :=
.mark loopBody106_104

def loopBody106_106 : HolLoopProg 64 :=
.seq loopBody106_41 loopBody106_105

def loopBody106_107 : HolLoopProg 64 :=
.mark loopBody106_106

def loopBody106_108 : HolLoopProg 64 :=
.seq loopBody106_9 loopBody106_107

def loopBody106_109 : HolLoopProg 64 :=
.mark loopBody106_108

def loopBody106_110 : HolLoopProg 64 :=
.seq loopBody106_3 loopBody106_109

def loopBody106_111 : HolLoopProg 64 :=
.mark loopBody106_110

def loopBody106_112 : HolLoopProg 64 :=
.seq loopBody106_7 loopBody106_111

def loopBody106_113 : HolLoopProg 64 :=
.mark loopBody106_112

def loopBody106_114 : HolLoopProg 64 :=
.seq loopBody106_39 loopBody106_113

def loopBody106_115 : HolLoopProg 64 :=
.mark loopBody106_114

def loopBody106_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody106_117 : HolLoopProg 64 :=
.mark loopBody106_116

def loopBody106_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody106_119 : HolLoopProg 64 :=
.mark loopBody106_118

def loopBody106_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody106_121 : HolLoopProg 64 :=
.mark loopBody106_120

def loopBody106_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody106_123 : HolLoopProg 64 :=
.mark loopBody106_122

def loopBody106_124 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody106_121 loopBody106_123 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody106_125 : HolLoopProg 64 :=
.mark loopBody106_124

def loopBody106_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody106_127 : HolLoopProg 64 :=
.mark loopBody106_126

def loopBody106_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody106_129 : HolLoopProg 64 :=
.mark loopBody106_128

def loopBody106_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 4 4

def loopBody106_131 : HolLoopProg 64 :=
.mark loopBody106_130

def loopBody106_132 : HolLoopProg 64 :=
.seq loopBody106_131 loopBody106_13

def loopBody106_133 : HolLoopProg 64 :=
.mark loopBody106_132

def loopBody106_134 : HolLoopProg 64 :=
.seq loopBody106_129 loopBody106_133

def loopBody106_135 : HolLoopProg 64 :=
.mark loopBody106_134

def loopBody106_136 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.var 4])

def loopBody106_137 : HolLoopProg 64 :=
.mark loopBody106_136

def loopBody106_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 5)

def loopBody106_139 : HolLoopProg 64 :=
.mark loopBody106_138

def loopBody106_140 : HolLoopProg 64 :=
.seq loopBody106_139 loopBody106_13

def loopBody106_141 : HolLoopProg 64 :=
.mark loopBody106_140

def loopBody106_142 : HolLoopProg 64 :=
.seq loopBody106_141 loopBody106_13

def loopBody106_143 : HolLoopProg 64 :=
.mark loopBody106_142

def loopBody106_144 : HolLoopProg 64 :=
.seq loopBody106_137 loopBody106_143

def loopBody106_145 : HolLoopProg 64 :=
.mark loopBody106_144

def loopBody106_146 : HolLoopProg 64 :=
.seq loopBody106_135 loopBody106_145

def loopBody106_147 : HolLoopProg 64 :=
.mark loopBody106_146

def loopBody106_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody106_149 : HolLoopProg 64 :=
.mark loopBody106_148

def loopBody106_150 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 4)

def loopBody106_151 : HolLoopProg 64 :=
.mark loopBody106_150

def loopBody106_152 : HolLoopProg 64 :=
.seq loopBody106_151 loopBody106_13

def loopBody106_153 : HolLoopProg 64 :=
.mark loopBody106_152

def loopBody106_154 : HolLoopProg 64 :=
.seq loopBody106_153 loopBody106_13

def loopBody106_155 : HolLoopProg 64 :=
.mark loopBody106_154

def loopBody106_156 : HolLoopProg 64 :=
.seq loopBody106_149 loopBody106_155

def loopBody106_157 : HolLoopProg 64 :=
.mark loopBody106_156

def loopBody106_158 : HolLoopProg 64 :=
.seq loopBody106_13 loopBody106_157

def loopBody106_159 : HolLoopProg 64 :=
.mark loopBody106_158

def loopBody106_160 : HolLoopProg 64 :=
.seq loopBody106_147 loopBody106_159

def loopBody106_161 : HolLoopProg 64 :=
.mark loopBody106_160

def loopBody106_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody106_163 : HolLoopProg 64 :=
.mark loopBody106_162

def loopBody106_164 : HolLoopProg 64 :=
.seq loopBody106_161 loopBody106_163

def loopBody106_165 : HolLoopProg 64 :=
.mark loopBody106_164

def loopBody106_166 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody106_167 : HolLoopProg 64 :=
.mark loopBody106_166

def loopBody106_168 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody106_165 loopBody106_167 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody106_169 : HolLoopProg 64 :=
.mark loopBody106_168

def loopBody106_170 : HolLoopProg 64 :=
.seq loopBody106_169 loopBody106_13

def loopBody106_171 : HolLoopProg 64 :=
.mark loopBody106_170

def loopBody106_172 : HolLoopProg 64 :=
.seq loopBody106_127 loopBody106_171

def loopBody106_173 : HolLoopProg 64 :=
.mark loopBody106_172

def loopBody106_174 : HolLoopProg 64 :=
.seq loopBody106_125 loopBody106_173

def loopBody106_175 : HolLoopProg 64 :=
.mark loopBody106_174

def loopBody106_176 : HolLoopProg 64 :=
.seq loopBody106_119 loopBody106_175

def loopBody106_177 : HolLoopProg 64 :=
.mark loopBody106_176

def loopBody106_178 : HolLoopProg 64 :=
.seq loopBody106_11 loopBody106_177

def loopBody106_179 : HolLoopProg 64 :=
.mark loopBody106_178

def loopBody106_180 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody106_179 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody106_181 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody106_182 : HolLoopProg 64 :=
.mark loopBody106_181

def loopBody106_183 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody106_184 : HolLoopProg 64 :=
.mark loopBody106_183

def loopBody106_185 : HolLoopProg 64 :=
.seq loopBody106_184 loopBody106_13

def loopBody106_186 : HolLoopProg 64 :=
.mark loopBody106_185

def loopBody106_187 : HolLoopProg 64 :=
.seq loopBody106_182 loopBody106_186

def loopBody106_188 : HolLoopProg 64 :=
.mark loopBody106_187

def loopBody106_189 : HolLoopProg 64 :=
.seq loopBody106_180 loopBody106_188

def loopBody106_190 : HolLoopProg 64 :=
.seq loopBody106_7 loopBody106_189

def loopBody106_191 : HolLoopProg 64 :=
.seq loopBody106_13 loopBody106_190

def loopBody106_192 : HolLoopProg 64 :=
.seq loopBody106_117 loopBody106_191

def loopBody106_193 : HolLoopProg 64 :=
.seq loopBody106_13 loopBody106_192

def loopBody106_194 : HolLoopProg 64 :=
.seq loopBody106_115 loopBody106_193

def output106 : Nat × List Nat × HolLoopProg 64 :=
  (170, [0, 1], loopBody106_194)
end InitECandidate.Proofs.FrontendStages.Loop
