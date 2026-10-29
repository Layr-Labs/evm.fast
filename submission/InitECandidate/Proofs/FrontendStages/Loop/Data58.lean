import InitECandidate.Proofs.FrontendStages.Loop.Translate42
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody58_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody58_1 : HolLoopProg 64 :=
.mark loopBody58_0

def loopBody58_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody58_3 : HolLoopProg 64 :=
.mark loopBody58_2

def loopBody58_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4294901760#64])

def loopBody58_5 : HolLoopProg 64 :=
.mark loopBody58_4

def loopBody58_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody58_7 : HolLoopProg 64 :=
.mark loopBody58_6

def loopBody58_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody58_9 : HolLoopProg 64 :=
.mark loopBody58_8

def loopBody58_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody58_11 : HolLoopProg 64 :=
.mark loopBody58_10

def loopBody58_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody58_9 loopBody58_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody58_13 : HolLoopProg 64 :=
.mark loopBody58_12

def loopBody58_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody58_15 : HolLoopProg 64 :=
.mark loopBody58_14

def loopBody58_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64])

def loopBody58_17 : HolLoopProg 64 :=
.mark loopBody58_16

def loopBody58_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 2)

def loopBody58_19 : HolLoopProg 64 :=
.mark loopBody58_18

def loopBody58_20 : HolLoopProg 64 :=
.seq loopBody58_19 loopBody58_1

def loopBody58_21 : HolLoopProg 64 :=
.mark loopBody58_20

def loopBody58_22 : HolLoopProg 64 :=
.seq loopBody58_21 loopBody58_1

def loopBody58_23 : HolLoopProg 64 :=
.mark loopBody58_22

def loopBody58_24 : HolLoopProg 64 :=
.seq loopBody58_17 loopBody58_23

def loopBody58_25 : HolLoopProg 64 :=
.mark loopBody58_24

def loopBody58_26 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_25

def loopBody58_27 : HolLoopProg 64 :=
.mark loopBody58_26

def loopBody58_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 16#64))

def loopBody58_29 : HolLoopProg 64 :=
.mark loopBody58_28

def loopBody58_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 0 (Flapjack.HolLoopExp.var 2)

def loopBody58_31 : HolLoopProg 64 :=
.mark loopBody58_30

def loopBody58_32 : HolLoopProg 64 :=
.seq loopBody58_31 loopBody58_1

def loopBody58_33 : HolLoopProg 64 :=
.mark loopBody58_32

def loopBody58_34 : HolLoopProg 64 :=
.seq loopBody58_33 loopBody58_1

def loopBody58_35 : HolLoopProg 64 :=
.mark loopBody58_34

def loopBody58_36 : HolLoopProg 64 :=
.seq loopBody58_29 loopBody58_35

def loopBody58_37 : HolLoopProg 64 :=
.mark loopBody58_36

def loopBody58_38 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_37

def loopBody58_39 : HolLoopProg 64 :=
.mark loopBody58_38

def loopBody58_40 : HolLoopProg 64 :=
.seq loopBody58_27 loopBody58_39

def loopBody58_41 : HolLoopProg 64 :=
.mark loopBody58_40

def loopBody58_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody58_41 loopBody58_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody58_43 : HolLoopProg 64 :=
.mark loopBody58_42

def loopBody58_44 : HolLoopProg 64 :=
.seq loopBody58_43 loopBody58_1

def loopBody58_45 : HolLoopProg 64 :=
.mark loopBody58_44

def loopBody58_46 : HolLoopProg 64 :=
.seq loopBody58_15 loopBody58_45

def loopBody58_47 : HolLoopProg 64 :=
.mark loopBody58_46

def loopBody58_48 : HolLoopProg 64 :=
.seq loopBody58_13 loopBody58_47

def loopBody58_49 : HolLoopProg 64 :=
.mark loopBody58_48

def loopBody58_50 : HolLoopProg 64 :=
.seq loopBody58_7 loopBody58_49

def loopBody58_51 : HolLoopProg 64 :=
.mark loopBody58_50

def loopBody58_52 : HolLoopProg 64 :=
.seq loopBody58_5 loopBody58_51

def loopBody58_53 : HolLoopProg 64 :=
.mark loopBody58_52

def loopBody58_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4278190080#64])

def loopBody58_55 : HolLoopProg 64 :=
.mark loopBody58_54

def loopBody58_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64])

def loopBody58_57 : HolLoopProg 64 :=
.mark loopBody58_56

def loopBody58_58 : HolLoopProg 64 :=
.seq loopBody58_57 loopBody58_23

def loopBody58_59 : HolLoopProg 64 :=
.mark loopBody58_58

def loopBody58_60 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_59

def loopBody58_61 : HolLoopProg 64 :=
.mark loopBody58_60

def loopBody58_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 8#64))

def loopBody58_63 : HolLoopProg 64 :=
.mark loopBody58_62

def loopBody58_64 : HolLoopProg 64 :=
.seq loopBody58_63 loopBody58_35

def loopBody58_65 : HolLoopProg 64 :=
.mark loopBody58_64

def loopBody58_66 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_65

def loopBody58_67 : HolLoopProg 64 :=
.mark loopBody58_66

def loopBody58_68 : HolLoopProg 64 :=
.seq loopBody58_61 loopBody58_67

def loopBody58_69 : HolLoopProg 64 :=
.mark loopBody58_68

def loopBody58_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody58_69 loopBody58_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody58_71 : HolLoopProg 64 :=
.mark loopBody58_70

def loopBody58_72 : HolLoopProg 64 :=
.seq loopBody58_71 loopBody58_1

def loopBody58_73 : HolLoopProg 64 :=
.mark loopBody58_72

def loopBody58_74 : HolLoopProg 64 :=
.seq loopBody58_15 loopBody58_73

def loopBody58_75 : HolLoopProg 64 :=
.mark loopBody58_74

def loopBody58_76 : HolLoopProg 64 :=
.seq loopBody58_13 loopBody58_75

def loopBody58_77 : HolLoopProg 64 :=
.mark loopBody58_76

def loopBody58_78 : HolLoopProg 64 :=
.seq loopBody58_7 loopBody58_77

def loopBody58_79 : HolLoopProg 64 :=
.mark loopBody58_78

def loopBody58_80 : HolLoopProg 64 :=
.seq loopBody58_55 loopBody58_79

def loopBody58_81 : HolLoopProg 64 :=
.mark loopBody58_80

def loopBody58_82 : HolLoopProg 64 :=
.seq loopBody58_53 loopBody58_81

def loopBody58_83 : HolLoopProg 64 :=
.mark loopBody58_82

def loopBody58_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4026531840#64])

def loopBody58_85 : HolLoopProg 64 :=
.mark loopBody58_84

def loopBody58_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 4#64])

def loopBody58_87 : HolLoopProg 64 :=
.mark loopBody58_86

def loopBody58_88 : HolLoopProg 64 :=
.seq loopBody58_87 loopBody58_23

def loopBody58_89 : HolLoopProg 64 :=
.mark loopBody58_88

def loopBody58_90 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_89

def loopBody58_91 : HolLoopProg 64 :=
.mark loopBody58_90

def loopBody58_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 4#64))

def loopBody58_93 : HolLoopProg 64 :=
.mark loopBody58_92

def loopBody58_94 : HolLoopProg 64 :=
.seq loopBody58_93 loopBody58_35

def loopBody58_95 : HolLoopProg 64 :=
.mark loopBody58_94

def loopBody58_96 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_95

def loopBody58_97 : HolLoopProg 64 :=
.mark loopBody58_96

def loopBody58_98 : HolLoopProg 64 :=
.seq loopBody58_91 loopBody58_97

def loopBody58_99 : HolLoopProg 64 :=
.mark loopBody58_98

def loopBody58_100 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody58_99 loopBody58_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody58_101 : HolLoopProg 64 :=
.mark loopBody58_100

def loopBody58_102 : HolLoopProg 64 :=
.seq loopBody58_101 loopBody58_1

def loopBody58_103 : HolLoopProg 64 :=
.mark loopBody58_102

def loopBody58_104 : HolLoopProg 64 :=
.seq loopBody58_15 loopBody58_103

def loopBody58_105 : HolLoopProg 64 :=
.mark loopBody58_104

def loopBody58_106 : HolLoopProg 64 :=
.seq loopBody58_13 loopBody58_105

def loopBody58_107 : HolLoopProg 64 :=
.mark loopBody58_106

def loopBody58_108 : HolLoopProg 64 :=
.seq loopBody58_7 loopBody58_107

def loopBody58_109 : HolLoopProg 64 :=
.mark loopBody58_108

def loopBody58_110 : HolLoopProg 64 :=
.seq loopBody58_85 loopBody58_109

def loopBody58_111 : HolLoopProg 64 :=
.mark loopBody58_110

def loopBody58_112 : HolLoopProg 64 :=
.seq loopBody58_83 loopBody58_111

def loopBody58_113 : HolLoopProg 64 :=
.mark loopBody58_112

def loopBody58_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3221225472#64])

def loopBody58_115 : HolLoopProg 64 :=
.mark loopBody58_114

def loopBody58_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 2#64])

def loopBody58_117 : HolLoopProg 64 :=
.mark loopBody58_116

def loopBody58_118 : HolLoopProg 64 :=
.seq loopBody58_117 loopBody58_23

def loopBody58_119 : HolLoopProg 64 :=
.mark loopBody58_118

def loopBody58_120 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_119

def loopBody58_121 : HolLoopProg 64 :=
.mark loopBody58_120

def loopBody58_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 2#64))

def loopBody58_123 : HolLoopProg 64 :=
.mark loopBody58_122

def loopBody58_124 : HolLoopProg 64 :=
.seq loopBody58_123 loopBody58_35

def loopBody58_125 : HolLoopProg 64 :=
.mark loopBody58_124

def loopBody58_126 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_125

def loopBody58_127 : HolLoopProg 64 :=
.mark loopBody58_126

def loopBody58_128 : HolLoopProg 64 :=
.seq loopBody58_121 loopBody58_127

def loopBody58_129 : HolLoopProg 64 :=
.mark loopBody58_128

def loopBody58_130 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody58_129 loopBody58_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody58_131 : HolLoopProg 64 :=
.mark loopBody58_130

def loopBody58_132 : HolLoopProg 64 :=
.seq loopBody58_131 loopBody58_1

def loopBody58_133 : HolLoopProg 64 :=
.mark loopBody58_132

def loopBody58_134 : HolLoopProg 64 :=
.seq loopBody58_15 loopBody58_133

def loopBody58_135 : HolLoopProg 64 :=
.mark loopBody58_134

def loopBody58_136 : HolLoopProg 64 :=
.seq loopBody58_13 loopBody58_135

def loopBody58_137 : HolLoopProg 64 :=
.mark loopBody58_136

def loopBody58_138 : HolLoopProg 64 :=
.seq loopBody58_7 loopBody58_137

def loopBody58_139 : HolLoopProg 64 :=
.mark loopBody58_138

def loopBody58_140 : HolLoopProg 64 :=
.seq loopBody58_115 loopBody58_139

def loopBody58_141 : HolLoopProg 64 :=
.mark loopBody58_140

def loopBody58_142 : HolLoopProg 64 :=
.seq loopBody58_113 loopBody58_141

def loopBody58_143 : HolLoopProg 64 :=
.mark loopBody58_142

def loopBody58_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2147483648#64])

def loopBody58_145 : HolLoopProg 64 :=
.mark loopBody58_144

def loopBody58_146 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody58_9 loopBody58_11 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody58_147 : HolLoopProg 64 :=
.mark loopBody58_146

def loopBody58_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody58_149 : HolLoopProg 64 :=
.mark loopBody58_148

def loopBody58_150 : HolLoopProg 64 :=
.seq loopBody58_149 loopBody58_23

def loopBody58_151 : HolLoopProg 64 :=
.mark loopBody58_150

def loopBody58_152 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_151

def loopBody58_153 : HolLoopProg 64 :=
.mark loopBody58_152

def loopBody58_154 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody58_153 loopBody58_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody58_155 : HolLoopProg 64 :=
.mark loopBody58_154

def loopBody58_156 : HolLoopProg 64 :=
.seq loopBody58_155 loopBody58_1

def loopBody58_157 : HolLoopProg 64 :=
.mark loopBody58_156

def loopBody58_158 : HolLoopProg 64 :=
.seq loopBody58_15 loopBody58_157

def loopBody58_159 : HolLoopProg 64 :=
.mark loopBody58_158

def loopBody58_160 : HolLoopProg 64 :=
.seq loopBody58_147 loopBody58_159

def loopBody58_161 : HolLoopProg 64 :=
.mark loopBody58_160

def loopBody58_162 : HolLoopProg 64 :=
.seq loopBody58_7 loopBody58_161

def loopBody58_163 : HolLoopProg 64 :=
.mark loopBody58_162

def loopBody58_164 : HolLoopProg 64 :=
.seq loopBody58_145 loopBody58_163

def loopBody58_165 : HolLoopProg 64 :=
.mark loopBody58_164

def loopBody58_166 : HolLoopProg 64 :=
.seq loopBody58_143 loopBody58_165

def loopBody58_167 : HolLoopProg 64 :=
.mark loopBody58_166

def loopBody58_168 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody58_169 : HolLoopProg 64 :=
.mark loopBody58_168

def loopBody58_170 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody58_171 : HolLoopProg 64 :=
.mark loopBody58_170

def loopBody58_172 : HolLoopProg 64 :=
.seq loopBody58_171 loopBody58_1

def loopBody58_173 : HolLoopProg 64 :=
.mark loopBody58_172

def loopBody58_174 : HolLoopProg 64 :=
.seq loopBody58_169 loopBody58_173

def loopBody58_175 : HolLoopProg 64 :=
.mark loopBody58_174

def loopBody58_176 : HolLoopProg 64 :=
.seq loopBody58_167 loopBody58_175

def loopBody58_177 : HolLoopProg 64 :=
.mark loopBody58_176

def loopBody58_178 : HolLoopProg 64 :=
.seq loopBody58_3 loopBody58_177

def loopBody58_179 : HolLoopProg 64 :=
.mark loopBody58_178

def loopBody58_180 : HolLoopProg 64 :=
.seq loopBody58_1 loopBody58_179

def loopBody58_181 : HolLoopProg 64 :=
.mark loopBody58_180

def output58 : Nat × List Nat × HolLoopProg 64 :=
  (122, [0], loopBody58_181)
end InitECandidate.Proofs.FrontendStages.Loop
