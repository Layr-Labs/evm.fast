import InitECandidate.Proofs.FrontendStages.Loop.Translate373
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody389_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody389_1 : HolLoopProg 64 :=
.mark loopBody389_0

def loopBody389_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 216#64]))

def loopBody389_3 : HolLoopProg 64 :=
.mark loopBody389_2

def loopBody389_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody389_5 : HolLoopProg 64 :=
.mark loopBody389_4

def loopBody389_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody389_7 : HolLoopProg 64 :=
.mark loopBody389_6

def loopBody389_8 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 186) ([5, 6]) (some (5, loopBody389_7, loopBody389_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody389_9 : HolLoopProg 64 :=
.mark loopBody389_8

def loopBody389_10 : HolLoopProg 64 :=
.seq loopBody389_9 loopBody389_1

def loopBody389_11 : HolLoopProg 64 :=
.mark loopBody389_10

def loopBody389_12 : HolLoopProg 64 :=
.seq loopBody389_5 loopBody389_11

def loopBody389_13 : HolLoopProg 64 :=
.mark loopBody389_12

def loopBody389_14 : HolLoopProg 64 :=
.seq loopBody389_3 loopBody389_13

def loopBody389_15 : HolLoopProg 64 :=
.mark loopBody389_14

def loopBody389_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody389_17 : HolLoopProg 64 :=
.mark loopBody389_16

def loopBody389_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody389_19 : HolLoopProg 64 :=
.mark loopBody389_18

def loopBody389_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody389_21 : HolLoopProg 64 :=
.mark loopBody389_20

def loopBody389_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody389_23 : HolLoopProg 64 :=
.mark loopBody389_22

def loopBody389_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody389_21 loopBody389_23 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.ls PUnit.unit))

def loopBody389_25 : HolLoopProg 64 :=
.mark loopBody389_24

def loopBody389_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody389_27 : HolLoopProg 64 :=
.mark loopBody389_26

def loopBody389_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody389_29 : HolLoopProg 64 :=
.mark loopBody389_28

def loopBody389_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody389_31 : HolLoopProg 64 :=
.mark loopBody389_30

def loopBody389_32 : HolLoopProg 64 :=
.seq loopBody389_31 loopBody389_1

def loopBody389_33 : HolLoopProg 64 :=
.mark loopBody389_32

def loopBody389_34 : HolLoopProg 64 :=
.seq loopBody389_29 loopBody389_33

def loopBody389_35 : HolLoopProg 64 :=
.mark loopBody389_34

def loopBody389_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody389_35 loopBody389_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody389_37 : HolLoopProg 64 :=
.mark loopBody389_36

def loopBody389_38 : HolLoopProg 64 :=
.seq loopBody389_37 loopBody389_1

def loopBody389_39 : HolLoopProg 64 :=
.mark loopBody389_38

def loopBody389_40 : HolLoopProg 64 :=
.seq loopBody389_27 loopBody389_39

def loopBody389_41 : HolLoopProg 64 :=
.mark loopBody389_40

def loopBody389_42 : HolLoopProg 64 :=
.seq loopBody389_25 loopBody389_41

def loopBody389_43 : HolLoopProg 64 :=
.mark loopBody389_42

def loopBody389_44 : HolLoopProg 64 :=
.seq loopBody389_19 loopBody389_43

def loopBody389_45 : HolLoopProg 64 :=
.mark loopBody389_44

def loopBody389_46 : HolLoopProg 64 :=
.seq loopBody389_17 loopBody389_45

def loopBody389_47 : HolLoopProg 64 :=
.mark loopBody389_46

def loopBody389_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 0#64]))

def loopBody389_49 : HolLoopProg 64 :=
.mark loopBody389_48

def loopBody389_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody389_51 : HolLoopProg 64 :=
.mark loopBody389_50

def loopBody389_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody389_53 : HolLoopProg 64 :=
.mark loopBody389_52

def loopBody389_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody389_55 : HolLoopProg 64 :=
.mark loopBody389_54

def loopBody389_56 : HolLoopProg 64 :=
.call (some
  ([6, 7],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))) (some 186) ([8, 9]) (some (8, loopBody389_55, loopBody389_1, (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody389_57 : HolLoopProg 64 :=
.mark loopBody389_56

def loopBody389_58 : HolLoopProg 64 :=
.seq loopBody389_57 loopBody389_1

def loopBody389_59 : HolLoopProg 64 :=
.mark loopBody389_58

def loopBody389_60 : HolLoopProg 64 :=
.seq loopBody389_53 loopBody389_59

def loopBody389_61 : HolLoopProg 64 :=
.mark loopBody389_60

def loopBody389_62 : HolLoopProg 64 :=
.seq loopBody389_51 loopBody389_61

def loopBody389_63 : HolLoopProg 64 :=
.mark loopBody389_62

def loopBody389_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody389_65 : HolLoopProg 64 :=
.mark loopBody389_64

def loopBody389_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody389_67 : HolLoopProg 64 :=
.mark loopBody389_66

def loopBody389_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody389_69 : HolLoopProg 64 :=
.mark loopBody389_68

def loopBody389_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody389_71 : HolLoopProg 64 :=
.mark loopBody389_70

def loopBody389_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody389_69 loopBody389_71 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody389_73 : HolLoopProg 64 :=
.mark loopBody389_72

def loopBody389_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody389_75 : HolLoopProg 64 :=
.mark loopBody389_74

def loopBody389_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody389_77 : HolLoopProg 64 :=
.mark loopBody389_76

def loopBody389_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody389_79 : HolLoopProg 64 :=
.mark loopBody389_78

def loopBody389_80 : HolLoopProg 64 :=
.seq loopBody389_79 loopBody389_1

def loopBody389_81 : HolLoopProg 64 :=
.mark loopBody389_80

def loopBody389_82 : HolLoopProg 64 :=
.seq loopBody389_77 loopBody389_81

def loopBody389_83 : HolLoopProg 64 :=
.mark loopBody389_82

def loopBody389_84 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody389_83 loopBody389_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody389_85 : HolLoopProg 64 :=
.mark loopBody389_84

def loopBody389_86 : HolLoopProg 64 :=
.seq loopBody389_85 loopBody389_1

def loopBody389_87 : HolLoopProg 64 :=
.mark loopBody389_86

def loopBody389_88 : HolLoopProg 64 :=
.seq loopBody389_75 loopBody389_87

def loopBody389_89 : HolLoopProg 64 :=
.mark loopBody389_88

def loopBody389_90 : HolLoopProg 64 :=
.seq loopBody389_73 loopBody389_89

def loopBody389_91 : HolLoopProg 64 :=
.mark loopBody389_90

def loopBody389_92 : HolLoopProg 64 :=
.seq loopBody389_67 loopBody389_91

def loopBody389_93 : HolLoopProg 64 :=
.mark loopBody389_92

def loopBody389_94 : HolLoopProg 64 :=
.seq loopBody389_65 loopBody389_93

def loopBody389_95 : HolLoopProg 64 :=
.mark loopBody389_94

def loopBody389_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody389_97 : HolLoopProg 64 :=
.mark loopBody389_96

def loopBody389_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 40#64)

def loopBody389_99 : HolLoopProg 64 :=
.mark loopBody389_98

def loopBody389_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody389_101 : HolLoopProg 64 :=
.mark loopBody389_100

def loopBody389_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody389_103 : HolLoopProg 64 :=
.mark loopBody389_102

def loopBody389_104 : HolLoopProg 64 :=
.call (some
  ([8],
    Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 451) ([9, 10, 11]) (some (9, loopBody389_103, loopBody389_1, (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody389_105 : HolLoopProg 64 :=
.mark loopBody389_104

def loopBody389_106 : HolLoopProg 64 :=
.seq loopBody389_105 loopBody389_1

def loopBody389_107 : HolLoopProg 64 :=
.mark loopBody389_106

def loopBody389_108 : HolLoopProg 64 :=
.seq loopBody389_101 loopBody389_107

def loopBody389_109 : HolLoopProg 64 :=
.mark loopBody389_108

def loopBody389_110 : HolLoopProg 64 :=
.seq loopBody389_99 loopBody389_109

def loopBody389_111 : HolLoopProg 64 :=
.mark loopBody389_110

def loopBody389_112 : HolLoopProg 64 :=
.seq loopBody389_97 loopBody389_111

def loopBody389_113 : HolLoopProg 64 :=
.mark loopBody389_112

def loopBody389_114 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_113

def loopBody389_115 : HolLoopProg 64 :=
.mark loopBody389_114

def loopBody389_116 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_115

def loopBody389_117 : HolLoopProg 64 :=
.mark loopBody389_116

def loopBody389_118 : HolLoopProg 64 :=
.seq loopBody389_95 loopBody389_117

def loopBody389_119 : HolLoopProg 64 :=
.mark loopBody389_118

def loopBody389_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 8#64]))

def loopBody389_121 : HolLoopProg 64 :=
.mark loopBody389_120

def loopBody389_122 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody389_69 loopBody389_71 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))

def loopBody389_123 : HolLoopProg 64 :=
.mark loopBody389_122

def loopBody389_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody389_125 : HolLoopProg 64 :=
.mark loopBody389_124

def loopBody389_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody389_127 : HolLoopProg 64 :=
.mark loopBody389_126

def loopBody389_128 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.ln)) (some 193) ([9, 10]) (some (9, loopBody389_103, loopBody389_1, (Flapjack.Spt.ln)))

def loopBody389_129 : HolLoopProg 64 :=
.mark loopBody389_128

def loopBody389_130 : HolLoopProg 64 :=
.seq loopBody389_129 loopBody389_1

def loopBody389_131 : HolLoopProg 64 :=
.mark loopBody389_130

def loopBody389_132 : HolLoopProg 64 :=
.seq loopBody389_127 loopBody389_131

def loopBody389_133 : HolLoopProg 64 :=
.mark loopBody389_132

def loopBody389_134 : HolLoopProg 64 :=
.seq loopBody389_125 loopBody389_133

def loopBody389_135 : HolLoopProg 64 :=
.mark loopBody389_134

def loopBody389_136 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_135

def loopBody389_137 : HolLoopProg 64 :=
.mark loopBody389_136

def loopBody389_138 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_137

def loopBody389_139 : HolLoopProg 64 :=
.mark loopBody389_138

def loopBody389_140 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody389_139 loopBody389_1 (Flapjack.Spt.ln)

def loopBody389_141 : HolLoopProg 64 :=
.mark loopBody389_140

def loopBody389_142 : HolLoopProg 64 :=
.seq loopBody389_141 loopBody389_1

def loopBody389_143 : HolLoopProg 64 :=
.mark loopBody389_142

def loopBody389_144 : HolLoopProg 64 :=
.seq loopBody389_75 loopBody389_143

def loopBody389_145 : HolLoopProg 64 :=
.mark loopBody389_144

def loopBody389_146 : HolLoopProg 64 :=
.seq loopBody389_123 loopBody389_145

def loopBody389_147 : HolLoopProg 64 :=
.mark loopBody389_146

def loopBody389_148 : HolLoopProg 64 :=
.seq loopBody389_67 loopBody389_147

def loopBody389_149 : HolLoopProg 64 :=
.mark loopBody389_148

def loopBody389_150 : HolLoopProg 64 :=
.seq loopBody389_121 loopBody389_149

def loopBody389_151 : HolLoopProg 64 :=
.mark loopBody389_150

def loopBody389_152 : HolLoopProg 64 :=
.seq loopBody389_119 loopBody389_151

def loopBody389_153 : HolLoopProg 64 :=
.mark loopBody389_152

def loopBody389_154 : HolLoopProg 64 :=
.seq loopBody389_153 loopBody389_83

def loopBody389_155 : HolLoopProg 64 :=
.mark loopBody389_154

def loopBody389_156 : HolLoopProg 64 :=
.seq loopBody389_63 loopBody389_155

def loopBody389_157 : HolLoopProg 64 :=
.mark loopBody389_156

def loopBody389_158 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_157

def loopBody389_159 : HolLoopProg 64 :=
.mark loopBody389_158

def loopBody389_160 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_159

def loopBody389_161 : HolLoopProg 64 :=
.mark loopBody389_160

def loopBody389_162 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_161

def loopBody389_163 : HolLoopProg 64 :=
.mark loopBody389_162

def loopBody389_164 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_163

def loopBody389_165 : HolLoopProg 64 :=
.mark loopBody389_164

def loopBody389_166 : HolLoopProg 64 :=
.seq loopBody389_49 loopBody389_165

def loopBody389_167 : HolLoopProg 64 :=
.mark loopBody389_166

def loopBody389_168 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_167

def loopBody389_169 : HolLoopProg 64 :=
.mark loopBody389_168

def loopBody389_170 : HolLoopProg 64 :=
.seq loopBody389_47 loopBody389_169

def loopBody389_171 : HolLoopProg 64 :=
.mark loopBody389_170

def loopBody389_172 : HolLoopProg 64 :=
.seq loopBody389_15 loopBody389_171

def loopBody389_173 : HolLoopProg 64 :=
.mark loopBody389_172

def loopBody389_174 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_173

def loopBody389_175 : HolLoopProg 64 :=
.mark loopBody389_174

def loopBody389_176 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_175

def loopBody389_177 : HolLoopProg 64 :=
.mark loopBody389_176

def loopBody389_178 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_177

def loopBody389_179 : HolLoopProg 64 :=
.mark loopBody389_178

def loopBody389_180 : HolLoopProg 64 :=
.seq loopBody389_1 loopBody389_179

def loopBody389_181 : HolLoopProg 64 :=
.mark loopBody389_180

def output389 : Nat × List Nat × HolLoopProg 64 :=
  (453, [0, 1, 2], loopBody389_181)
end InitECandidate.Proofs.FrontendStages.Loop
