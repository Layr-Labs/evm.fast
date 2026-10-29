import InitECandidate.Proofs.FrontendStages.Loop.Translate255
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody271_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody271_1 : HolLoopProg 64 :=
.mark loopBody271_0

def loopBody271_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody271_3 : HolLoopProg 64 :=
.mark loopBody271_2

def loopBody271_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody271_5 : HolLoopProg 64 :=
.mark loopBody271_4

def loopBody271_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody271_7 : HolLoopProg 64 :=
.mark loopBody271_6

def loopBody271_8 : HolLoopProg 64 :=
.call (some ([3, 4, 5, 6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 161) ([7, 8]) (some (7, loopBody271_7, loopBody271_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody271_9 : HolLoopProg 64 :=
.mark loopBody271_8

def loopBody271_10 : HolLoopProg 64 :=
.seq loopBody271_9 loopBody271_1

def loopBody271_11 : HolLoopProg 64 :=
.mark loopBody271_10

def loopBody271_12 : HolLoopProg 64 :=
.seq loopBody271_5 loopBody271_11

def loopBody271_13 : HolLoopProg 64 :=
.mark loopBody271_12

def loopBody271_14 : HolLoopProg 64 :=
.seq loopBody271_3 loopBody271_13

def loopBody271_15 : HolLoopProg 64 :=
.mark loopBody271_14

def loopBody271_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody271_17 : HolLoopProg 64 :=
.mark loopBody271_16

def loopBody271_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody271_19 : HolLoopProg 64 :=
.mark loopBody271_18

def loopBody271_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody271_21 : HolLoopProg 64 :=
.mark loopBody271_20

def loopBody271_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody271_23 : HolLoopProg 64 :=
.mark loopBody271_22

def loopBody271_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.reg 9) loopBody271_21 loopBody271_23 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_25 : HolLoopProg 64 :=
.mark loopBody271_24

def loopBody271_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody271_27 : HolLoopProg 64 :=
.mark loopBody271_26

def loopBody271_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 10#64)

def loopBody271_29 : HolLoopProg 64 :=
.mark loopBody271_28

def loopBody271_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 7)

def loopBody271_31 : HolLoopProg 64 :=
.mark loopBody271_30

def loopBody271_32 : HolLoopProg 64 :=
.seq loopBody271_31 loopBody271_1

def loopBody271_33 : HolLoopProg 64 :=
.mark loopBody271_32

def loopBody271_34 : HolLoopProg 64 :=
.seq loopBody271_33 loopBody271_1

def loopBody271_35 : HolLoopProg 64 :=
.mark loopBody271_34

def loopBody271_36 : HolLoopProg 64 :=
.seq loopBody271_29 loopBody271_35

def loopBody271_37 : HolLoopProg 64 :=
.mark loopBody271_36

def loopBody271_38 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_37

def loopBody271_39 : HolLoopProg 64 :=
.mark loopBody271_38

def loopBody271_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 6#64)

def loopBody271_41 : HolLoopProg 64 :=
.mark loopBody271_40

def loopBody271_42 : HolLoopProg 64 :=
.seq loopBody271_41 loopBody271_7

def loopBody271_43 : HolLoopProg 64 :=
.mark loopBody271_42

def loopBody271_44 : HolLoopProg 64 :=
.seq loopBody271_39 loopBody271_43

def loopBody271_45 : HolLoopProg 64 :=
.mark loopBody271_44

def loopBody271_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody271_45 loopBody271_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_47 : HolLoopProg 64 :=
.mark loopBody271_46

def loopBody271_48 : HolLoopProg 64 :=
.seq loopBody271_47 loopBody271_1

def loopBody271_49 : HolLoopProg 64 :=
.mark loopBody271_48

def loopBody271_50 : HolLoopProg 64 :=
.seq loopBody271_27 loopBody271_49

def loopBody271_51 : HolLoopProg 64 :=
.mark loopBody271_50

def loopBody271_52 : HolLoopProg 64 :=
.seq loopBody271_25 loopBody271_51

def loopBody271_53 : HolLoopProg 64 :=
.mark loopBody271_52

def loopBody271_54 : HolLoopProg 64 :=
.seq loopBody271_19 loopBody271_53

def loopBody271_55 : HolLoopProg 64 :=
.mark loopBody271_54

def loopBody271_56 : HolLoopProg 64 :=
.seq loopBody271_17 loopBody271_55

def loopBody271_57 : HolLoopProg 64 :=
.mark loopBody271_56

def loopBody271_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody271_59 : HolLoopProg 64 :=
.mark loopBody271_58

def loopBody271_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody271_21 loopBody271_23 (Flapjack.Spt.bn
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_61 : HolLoopProg 64 :=
.mark loopBody271_60

def loopBody271_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody271_63 : HolLoopProg 64 :=
.mark loopBody271_62

def loopBody271_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody271_65 : HolLoopProg 64 :=
.mark loopBody271_64

def loopBody271_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody271_67 : HolLoopProg 64 :=
.mark loopBody271_66

def loopBody271_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody271_69 : HolLoopProg 64 :=
.mark loopBody271_68

def loopBody271_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody271_71 : HolLoopProg 64 :=
.mark loopBody271_70

def loopBody271_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody271_71 loopBody271_19 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody271_73 : HolLoopProg 64 :=
.mark loopBody271_72

def loopBody271_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody271_75 : HolLoopProg 64 :=
.mark loopBody271_74

def loopBody271_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 11#64)

def loopBody271_77 : HolLoopProg 64 :=
.mark loopBody271_76

def loopBody271_78 : HolLoopProg 64 :=
.seq loopBody271_77 loopBody271_35

def loopBody271_79 : HolLoopProg 64 :=
.mark loopBody271_78

def loopBody271_80 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_79

def loopBody271_81 : HolLoopProg 64 :=
.mark loopBody271_80

def loopBody271_82 : HolLoopProg 64 :=
.seq loopBody271_81 loopBody271_43

def loopBody271_83 : HolLoopProg 64 :=
.mark loopBody271_82

def loopBody271_84 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody271_83 loopBody271_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_85 : HolLoopProg 64 :=
.mark loopBody271_84

def loopBody271_86 : HolLoopProg 64 :=
.seq loopBody271_85 loopBody271_1

def loopBody271_87 : HolLoopProg 64 :=
.mark loopBody271_86

def loopBody271_88 : HolLoopProg 64 :=
.seq loopBody271_75 loopBody271_87

def loopBody271_89 : HolLoopProg 64 :=
.mark loopBody271_88

def loopBody271_90 : HolLoopProg 64 :=
.seq loopBody271_73 loopBody271_89

def loopBody271_91 : HolLoopProg 64 :=
.mark loopBody271_90

def loopBody271_92 : HolLoopProg 64 :=
.seq loopBody271_69 loopBody271_91

def loopBody271_93 : HolLoopProg 64 :=
.mark loopBody271_92

def loopBody271_94 : HolLoopProg 64 :=
.seq loopBody271_67 loopBody271_93

def loopBody271_95 : HolLoopProg 64 :=
.mark loopBody271_94

def loopBody271_96 : HolLoopProg 64 :=
.seq loopBody271_65 loopBody271_95

def loopBody271_97 : HolLoopProg 64 :=
.mark loopBody271_96

def loopBody271_98 : HolLoopProg 64 :=
.seq loopBody271_63 loopBody271_97

def loopBody271_99 : HolLoopProg 64 :=
.mark loopBody271_98

def loopBody271_100 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody271_99 loopBody271_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_101 : HolLoopProg 64 :=
.mark loopBody271_100

def loopBody271_102 : HolLoopProg 64 :=
.seq loopBody271_101 loopBody271_1

def loopBody271_103 : HolLoopProg 64 :=
.mark loopBody271_102

def loopBody271_104 : HolLoopProg 64 :=
.seq loopBody271_27 loopBody271_103

def loopBody271_105 : HolLoopProg 64 :=
.mark loopBody271_104

def loopBody271_106 : HolLoopProg 64 :=
.seq loopBody271_61 loopBody271_105

def loopBody271_107 : HolLoopProg 64 :=
.mark loopBody271_106

def loopBody271_108 : HolLoopProg 64 :=
.seq loopBody271_59 loopBody271_107

def loopBody271_109 : HolLoopProg 64 :=
.mark loopBody271_108

def loopBody271_110 : HolLoopProg 64 :=
.seq loopBody271_23 loopBody271_109

def loopBody271_111 : HolLoopProg 64 :=
.mark loopBody271_110

def loopBody271_112 : HolLoopProg 64 :=
.seq loopBody271_57 loopBody271_111

def loopBody271_113 : HolLoopProg 64 :=
.mark loopBody271_112

def loopBody271_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody271_115 : HolLoopProg 64 :=
.mark loopBody271_114

def loopBody271_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.RegImm.reg 9) loopBody271_21 loopBody271_23 (Flapjack.Spt.bn
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_117 : HolLoopProg 64 :=
.mark loopBody271_116

def loopBody271_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 12#64)

def loopBody271_119 : HolLoopProg 64 :=
.mark loopBody271_118

def loopBody271_120 : HolLoopProg 64 :=
.seq loopBody271_119 loopBody271_35

def loopBody271_121 : HolLoopProg 64 :=
.mark loopBody271_120

def loopBody271_122 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_121

def loopBody271_123 : HolLoopProg 64 :=
.mark loopBody271_122

def loopBody271_124 : HolLoopProg 64 :=
.seq loopBody271_123 loopBody271_43

def loopBody271_125 : HolLoopProg 64 :=
.mark loopBody271_124

def loopBody271_126 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody271_125 loopBody271_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_127 : HolLoopProg 64 :=
.mark loopBody271_126

def loopBody271_128 : HolLoopProg 64 :=
.seq loopBody271_127 loopBody271_1

def loopBody271_129 : HolLoopProg 64 :=
.mark loopBody271_128

def loopBody271_130 : HolLoopProg 64 :=
.seq loopBody271_27 loopBody271_129

def loopBody271_131 : HolLoopProg 64 :=
.mark loopBody271_130

def loopBody271_132 : HolLoopProg 64 :=
.seq loopBody271_117 loopBody271_131

def loopBody271_133 : HolLoopProg 64 :=
.mark loopBody271_132

def loopBody271_134 : HolLoopProg 64 :=
.seq loopBody271_59 loopBody271_133

def loopBody271_135 : HolLoopProg 64 :=
.mark loopBody271_134

def loopBody271_136 : HolLoopProg 64 :=
.seq loopBody271_115 loopBody271_135

def loopBody271_137 : HolLoopProg 64 :=
.mark loopBody271_136

def loopBody271_138 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody271_137 loopBody271_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody271_139 : HolLoopProg 64 :=
.mark loopBody271_138

def loopBody271_140 : HolLoopProg 64 :=
.seq loopBody271_139 loopBody271_1

def loopBody271_141 : HolLoopProg 64 :=
.mark loopBody271_140

def loopBody271_142 : HolLoopProg 64 :=
.seq loopBody271_27 loopBody271_141

def loopBody271_143 : HolLoopProg 64 :=
.mark loopBody271_142

def loopBody271_144 : HolLoopProg 64 :=
.seq loopBody271_25 loopBody271_143

def loopBody271_145 : HolLoopProg 64 :=
.mark loopBody271_144

def loopBody271_146 : HolLoopProg 64 :=
.seq loopBody271_19 loopBody271_145

def loopBody271_147 : HolLoopProg 64 :=
.mark loopBody271_146

def loopBody271_148 : HolLoopProg 64 :=
.seq loopBody271_115 loopBody271_147

def loopBody271_149 : HolLoopProg 64 :=
.mark loopBody271_148

def loopBody271_150 : HolLoopProg 64 :=
.seq loopBody271_113 loopBody271_149

def loopBody271_151 : HolLoopProg 64 :=
.mark loopBody271_150

def loopBody271_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody271_153 : HolLoopProg 64 :=
.mark loopBody271_152

def loopBody271_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7, 8]

def loopBody271_155 : HolLoopProg 64 :=
.mark loopBody271_154

def loopBody271_156 : HolLoopProg 64 :=
.seq loopBody271_155 loopBody271_1

def loopBody271_157 : HolLoopProg 64 :=
.mark loopBody271_156

def loopBody271_158 : HolLoopProg 64 :=
.seq loopBody271_153 loopBody271_157

def loopBody271_159 : HolLoopProg 64 :=
.mark loopBody271_158

def loopBody271_160 : HolLoopProg 64 :=
.seq loopBody271_63 loopBody271_159

def loopBody271_161 : HolLoopProg 64 :=
.mark loopBody271_160

def loopBody271_162 : HolLoopProg 64 :=
.seq loopBody271_151 loopBody271_161

def loopBody271_163 : HolLoopProg 64 :=
.mark loopBody271_162

def loopBody271_164 : HolLoopProg 64 :=
.seq loopBody271_15 loopBody271_163

def loopBody271_165 : HolLoopProg 64 :=
.mark loopBody271_164

def loopBody271_166 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_165

def loopBody271_167 : HolLoopProg 64 :=
.mark loopBody271_166

def loopBody271_168 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_167

def loopBody271_169 : HolLoopProg 64 :=
.mark loopBody271_168

def loopBody271_170 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_169

def loopBody271_171 : HolLoopProg 64 :=
.mark loopBody271_170

def loopBody271_172 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_171

def loopBody271_173 : HolLoopProg 64 :=
.mark loopBody271_172

def loopBody271_174 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_173

def loopBody271_175 : HolLoopProg 64 :=
.mark loopBody271_174

def loopBody271_176 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_175

def loopBody271_177 : HolLoopProg 64 :=
.mark loopBody271_176

def loopBody271_178 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_177

def loopBody271_179 : HolLoopProg 64 :=
.mark loopBody271_178

def loopBody271_180 : HolLoopProg 64 :=
.seq loopBody271_1 loopBody271_179

def loopBody271_181 : HolLoopProg 64 :=
.mark loopBody271_180

def output271 : Nat × List Nat × HolLoopProg 64 :=
  (335, [0, 1, 2], loopBody271_181)
end InitECandidate.Proofs.FrontendStages.Loop
