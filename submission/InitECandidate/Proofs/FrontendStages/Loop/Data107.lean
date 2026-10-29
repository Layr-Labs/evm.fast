import InitECandidate.Proofs.FrontendStages.Loop.Translate91
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody107_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_1 : HolLoopProg 64 :=
.mark loopBody107_0

def loopBody107_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody107_3 : HolLoopProg 64 :=
.mark loopBody107_2

def loopBody107_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody107_5 : HolLoopProg 64 :=
.mark loopBody107_4

def loopBody107_6 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody107_5 loopBody107_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody107_7 : HolLoopProg 64 :=
.mark loopBody107_6

def loopBody107_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_9 : HolLoopProg 64 :=
.mark loopBody107_8

def loopBody107_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody107_11 : HolLoopProg 64 :=
.mark loopBody107_10

def loopBody107_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody107_13 : HolLoopProg 64 :=
.mark loopBody107_12

def loopBody107_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody107_13 loopBody107_9 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody107_15 : HolLoopProg 64 :=
.mark loopBody107_14

def loopBody107_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody107_17 : HolLoopProg 64 :=
.mark loopBody107_16

def loopBody107_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 9 9

def loopBody107_19 : HolLoopProg 64 :=
.mark loopBody107_18

def loopBody107_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody107_21 : HolLoopProg 64 :=
.mark loopBody107_20

def loopBody107_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_23 : HolLoopProg 64 :=
.mark loopBody107_22

def loopBody107_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 1#64)

def loopBody107_25 : HolLoopProg 64 :=
.mark loopBody107_24

def loopBody107_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_27 : HolLoopProg 64 :=
.mark loopBody107_26

def loopBody107_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.RegImm.reg 12) loopBody107_25 loopBody107_27 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody107_29 : HolLoopProg 64 :=
.mark loopBody107_28

def loopBody107_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_31 : HolLoopProg 64 :=
.mark loopBody107_30

def loopBody107_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 11)

def loopBody107_33 : HolLoopProg 64 :=
.mark loopBody107_32

def loopBody107_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody107_35 : HolLoopProg 64 :=
.mark loopBody107_34

def loopBody107_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 14 (Flapjack.RegImm.reg 15) loopBody107_35 loopBody107_31 (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit Flapjack.Spt.ln)
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody107_37 : HolLoopProg 64 :=
.mark loopBody107_36

def loopBody107_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 14])

def loopBody107_39 : HolLoopProg 64 :=
.mark loopBody107_38

def loopBody107_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody107_41 : HolLoopProg 64 :=
.mark loopBody107_40

def loopBody107_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 21#64)

def loopBody107_43 : HolLoopProg 64 :=
.mark loopBody107_42

def loopBody107_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody107_45 : HolLoopProg 64 :=
.mark loopBody107_44

def loopBody107_46 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 159) ([4]) (some (4, loopBody107_45, loopBody107_41, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody107_47 : HolLoopProg 64 :=
.mark loopBody107_46

def loopBody107_48 : HolLoopProg 64 :=
.seq loopBody107_47 loopBody107_41

def loopBody107_49 : HolLoopProg 64 :=
.mark loopBody107_48

def loopBody107_50 : HolLoopProg 64 :=
.seq loopBody107_43 loopBody107_49

def loopBody107_51 : HolLoopProg 64 :=
.mark loopBody107_50

def loopBody107_52 : HolLoopProg 64 :=
.seq loopBody107_41 loopBody107_51

def loopBody107_53 : HolLoopProg 64 :=
.mark loopBody107_52

def loopBody107_54 : HolLoopProg 64 :=
.seq loopBody107_41 loopBody107_53

def loopBody107_55 : HolLoopProg 64 :=
.mark loopBody107_54

def loopBody107_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 16 (Flapjack.RegImm.imm 0#64) loopBody107_55 loopBody107_41 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody107_57 : HolLoopProg 64 :=
.mark loopBody107_56

def loopBody107_58 : HolLoopProg 64 :=
.seq loopBody107_57 loopBody107_41

def loopBody107_59 : HolLoopProg 64 :=
.mark loopBody107_58

def loopBody107_60 : HolLoopProg 64 :=
.seq loopBody107_39 loopBody107_59

def loopBody107_61 : HolLoopProg 64 :=
.mark loopBody107_60

def loopBody107_62 : HolLoopProg 64 :=
.seq loopBody107_37 loopBody107_61

def loopBody107_63 : HolLoopProg 64 :=
.mark loopBody107_62

def loopBody107_64 : HolLoopProg 64 :=
.seq loopBody107_33 loopBody107_63

def loopBody107_65 : HolLoopProg 64 :=
.mark loopBody107_64

def loopBody107_66 : HolLoopProg 64 :=
.seq loopBody107_31 loopBody107_65

def loopBody107_67 : HolLoopProg 64 :=
.mark loopBody107_66

def loopBody107_68 : HolLoopProg 64 :=
.seq loopBody107_29 loopBody107_67

def loopBody107_69 : HolLoopProg 64 :=
.mark loopBody107_68

def loopBody107_70 : HolLoopProg 64 :=
.seq loopBody107_23 loopBody107_69

def loopBody107_71 : HolLoopProg 64 :=
.mark loopBody107_70

def loopBody107_72 : HolLoopProg 64 :=
.seq loopBody107_21 loopBody107_71

def loopBody107_73 : HolLoopProg 64 :=
.mark loopBody107_72

def loopBody107_74 : HolLoopProg 64 :=
.seq loopBody107_19 loopBody107_73

def loopBody107_75 : HolLoopProg 64 :=
.mark loopBody107_74

def loopBody107_76 : HolLoopProg 64 :=
.seq loopBody107_17 loopBody107_75

def loopBody107_77 : HolLoopProg 64 :=
.mark loopBody107_76

def loopBody107_78 : HolLoopProg 64 :=
.seq loopBody107_15 loopBody107_77

def loopBody107_79 : HolLoopProg 64 :=
.mark loopBody107_78

def loopBody107_80 : HolLoopProg 64 :=
.seq loopBody107_11 loopBody107_79

def loopBody107_81 : HolLoopProg 64 :=
.mark loopBody107_80

def loopBody107_82 : HolLoopProg 64 :=
.seq loopBody107_9 loopBody107_81

def loopBody107_83 : HolLoopProg 64 :=
.mark loopBody107_82

def loopBody107_84 : HolLoopProg 64 :=
.seq loopBody107_7 loopBody107_83

def loopBody107_85 : HolLoopProg 64 :=
.mark loopBody107_84

def loopBody107_86 : HolLoopProg 64 :=
.seq loopBody107_3 loopBody107_85

def loopBody107_87 : HolLoopProg 64 :=
.mark loopBody107_86

def loopBody107_88 : HolLoopProg 64 :=
.seq loopBody107_1 loopBody107_87

def loopBody107_89 : HolLoopProg 64 :=
.mark loopBody107_88

def loopBody107_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody107_91 : HolLoopProg 64 :=
.mark loopBody107_90

def loopBody107_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_93 : HolLoopProg 64 :=
.mark loopBody107_92

def loopBody107_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody107_5 loopBody107_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody107_95 : HolLoopProg 64 :=
.mark loopBody107_94

def loopBody107_96 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody107_13 loopBody107_9 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody107_97 : HolLoopProg 64 :=
.mark loopBody107_96

def loopBody107_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody107_99 : HolLoopProg 64 :=
.mark loopBody107_98

def loopBody107_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody107_101 : HolLoopProg 64 :=
.mark loopBody107_100

def loopBody107_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody107_103 : HolLoopProg 64 :=
.mark loopBody107_102

def loopBody107_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_105 : HolLoopProg 64 :=
.mark loopBody107_104

def loopBody107_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.RegImm.reg 11) loopBody107_103 loopBody107_105 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody107_107 : HolLoopProg 64 :=
.mark loopBody107_106

def loopBody107_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_109 : HolLoopProg 64 :=
.mark loopBody107_108

def loopBody107_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 10)

def loopBody107_111 : HolLoopProg 64 :=
.mark loopBody107_110

def loopBody107_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody107_113 : HolLoopProg 64 :=
.mark loopBody107_112

def loopBody107_114 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 13 (Flapjack.RegImm.reg 14) loopBody107_113 loopBody107_109 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody107_115 : HolLoopProg 64 :=
.mark loopBody107_114

def loopBody107_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.var 13])

def loopBody107_117 : HolLoopProg 64 :=
.mark loopBody107_116

def loopBody107_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 22#64)

def loopBody107_119 : HolLoopProg 64 :=
.mark loopBody107_118

def loopBody107_120 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 159) ([4]) (some (4, loopBody107_45, loopBody107_41, (Flapjack.Spt.ln)))

def loopBody107_121 : HolLoopProg 64 :=
.mark loopBody107_120

def loopBody107_122 : HolLoopProg 64 :=
.seq loopBody107_121 loopBody107_41

def loopBody107_123 : HolLoopProg 64 :=
.mark loopBody107_122

def loopBody107_124 : HolLoopProg 64 :=
.seq loopBody107_119 loopBody107_123

def loopBody107_125 : HolLoopProg 64 :=
.mark loopBody107_124

def loopBody107_126 : HolLoopProg 64 :=
.seq loopBody107_41 loopBody107_125

def loopBody107_127 : HolLoopProg 64 :=
.mark loopBody107_126

def loopBody107_128 : HolLoopProg 64 :=
.seq loopBody107_41 loopBody107_127

def loopBody107_129 : HolLoopProg 64 :=
.mark loopBody107_128

def loopBody107_130 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.imm 0#64) loopBody107_129 loopBody107_41 (Flapjack.Spt.ln)

def loopBody107_131 : HolLoopProg 64 :=
.mark loopBody107_130

def loopBody107_132 : HolLoopProg 64 :=
.seq loopBody107_131 loopBody107_41

def loopBody107_133 : HolLoopProg 64 :=
.mark loopBody107_132

def loopBody107_134 : HolLoopProg 64 :=
.seq loopBody107_117 loopBody107_133

def loopBody107_135 : HolLoopProg 64 :=
.mark loopBody107_134

def loopBody107_136 : HolLoopProg 64 :=
.seq loopBody107_115 loopBody107_135

def loopBody107_137 : HolLoopProg 64 :=
.mark loopBody107_136

def loopBody107_138 : HolLoopProg 64 :=
.seq loopBody107_111 loopBody107_137

def loopBody107_139 : HolLoopProg 64 :=
.mark loopBody107_138

def loopBody107_140 : HolLoopProg 64 :=
.seq loopBody107_109 loopBody107_139

def loopBody107_141 : HolLoopProg 64 :=
.mark loopBody107_140

def loopBody107_142 : HolLoopProg 64 :=
.seq loopBody107_107 loopBody107_141

def loopBody107_143 : HolLoopProg 64 :=
.mark loopBody107_142

def loopBody107_144 : HolLoopProg 64 :=
.seq loopBody107_101 loopBody107_143

def loopBody107_145 : HolLoopProg 64 :=
.mark loopBody107_144

def loopBody107_146 : HolLoopProg 64 :=
.seq loopBody107_99 loopBody107_145

def loopBody107_147 : HolLoopProg 64 :=
.mark loopBody107_146

def loopBody107_148 : HolLoopProg 64 :=
.seq loopBody107_97 loopBody107_147

def loopBody107_149 : HolLoopProg 64 :=
.mark loopBody107_148

def loopBody107_150 : HolLoopProg 64 :=
.seq loopBody107_11 loopBody107_149

def loopBody107_151 : HolLoopProg 64 :=
.mark loopBody107_150

def loopBody107_152 : HolLoopProg 64 :=
.seq loopBody107_9 loopBody107_151

def loopBody107_153 : HolLoopProg 64 :=
.mark loopBody107_152

def loopBody107_154 : HolLoopProg 64 :=
.seq loopBody107_95 loopBody107_153

def loopBody107_155 : HolLoopProg 64 :=
.mark loopBody107_154

def loopBody107_156 : HolLoopProg 64 :=
.seq loopBody107_93 loopBody107_155

def loopBody107_157 : HolLoopProg 64 :=
.mark loopBody107_156

def loopBody107_158 : HolLoopProg 64 :=
.seq loopBody107_91 loopBody107_157

def loopBody107_159 : HolLoopProg 64 :=
.mark loopBody107_158

def loopBody107_160 : HolLoopProg 64 :=
.seq loopBody107_89 loopBody107_159

def loopBody107_161 : HolLoopProg 64 :=
.mark loopBody107_160

def loopBody107_162 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody107_163 : HolLoopProg 64 :=
.mark loopBody107_162

def loopBody107_164 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody107_165 : HolLoopProg 64 :=
.mark loopBody107_164

def loopBody107_166 : HolLoopProg 64 :=
.seq loopBody107_165 loopBody107_41

def loopBody107_167 : HolLoopProg 64 :=
.mark loopBody107_166

def loopBody107_168 : HolLoopProg 64 :=
.seq loopBody107_163 loopBody107_167

def loopBody107_169 : HolLoopProg 64 :=
.mark loopBody107_168

def loopBody107_170 : HolLoopProg 64 :=
.seq loopBody107_161 loopBody107_169

def loopBody107_171 : HolLoopProg 64 :=
.mark loopBody107_170

def output107 : Nat × List Nat × HolLoopProg 64 :=
  (171, [0, 1, 2], loopBody107_171)
end InitECandidate.Proofs.FrontendStages.Loop
