import InitECandidate.Proofs.FrontendStages.Loop.Translate781
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody797_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody797_1 : HolLoopProg 64 :=
.mark loopBody797_0

def loopBody797_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody797_3 : HolLoopProg 64 :=
.mark loopBody797_2

def loopBody797_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 387) ([]) (some (2, loopBody797_3, loopBody797_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody797_5 : HolLoopProg 64 :=
.mark loopBody797_4

def loopBody797_6 : HolLoopProg 64 :=
.seq loopBody797_5 loopBody797_1

def loopBody797_7 : HolLoopProg 64 :=
.mark loopBody797_6

def loopBody797_8 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_7

def loopBody797_9 : HolLoopProg 64 :=
.mark loopBody797_8

def loopBody797_10 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_9

def loopBody797_11 : HolLoopProg 64 :=
.mark loopBody797_10

def loopBody797_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody797_13 : HolLoopProg 64 :=
.mark loopBody797_12

def loopBody797_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody797_15 : HolLoopProg 64 :=
.mark loopBody797_14

def loopBody797_16 : HolLoopProg 64 :=
.call (some ([1, 2], Flapjack.Spt.ls PUnit.unit)) (some 565) ([3]) (some (3, loopBody797_15, loopBody797_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody797_17 : HolLoopProg 64 :=
.mark loopBody797_16

def loopBody797_18 : HolLoopProg 64 :=
.seq loopBody797_17 loopBody797_1

def loopBody797_19 : HolLoopProg 64 :=
.mark loopBody797_18

def loopBody797_20 : HolLoopProg 64 :=
.seq loopBody797_13 loopBody797_19

def loopBody797_21 : HolLoopProg 64 :=
.mark loopBody797_20

def loopBody797_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody797_23 : HolLoopProg 64 :=
.mark loopBody797_22

def loopBody797_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody797_25 : HolLoopProg 64 :=
.mark loopBody797_24

def loopBody797_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody797_27 : HolLoopProg 64 :=
.mark loopBody797_26

def loopBody797_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody797_29 : HolLoopProg 64 :=
.mark loopBody797_28

def loopBody797_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody797_27 loopBody797_29 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody797_31 : HolLoopProg 64 :=
.mark loopBody797_30

def loopBody797_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody797_33 : HolLoopProg 64 :=
.mark loopBody797_32

def loopBody797_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 70#64)

def loopBody797_35 : HolLoopProg 64 :=
.mark loopBody797_34

def loopBody797_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody797_37 : HolLoopProg 64 :=
.mark loopBody797_36

def loopBody797_38 : HolLoopProg 64 :=
.seq loopBody797_37 loopBody797_1

def loopBody797_39 : HolLoopProg 64 :=
.mark loopBody797_38

def loopBody797_40 : HolLoopProg 64 :=
.seq loopBody797_39 loopBody797_1

def loopBody797_41 : HolLoopProg 64 :=
.mark loopBody797_40

def loopBody797_42 : HolLoopProg 64 :=
.seq loopBody797_35 loopBody797_41

def loopBody797_43 : HolLoopProg 64 :=
.mark loopBody797_42

def loopBody797_44 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_43

def loopBody797_45 : HolLoopProg 64 :=
.mark loopBody797_44

def loopBody797_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 4#64)

def loopBody797_47 : HolLoopProg 64 :=
.mark loopBody797_46

def loopBody797_48 : HolLoopProg 64 :=
.seq loopBody797_47 loopBody797_15

def loopBody797_49 : HolLoopProg 64 :=
.mark loopBody797_48

def loopBody797_50 : HolLoopProg 64 :=
.seq loopBody797_45 loopBody797_49

def loopBody797_51 : HolLoopProg 64 :=
.mark loopBody797_50

def loopBody797_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody797_51 loopBody797_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody797_53 : HolLoopProg 64 :=
.mark loopBody797_52

def loopBody797_54 : HolLoopProg 64 :=
.seq loopBody797_53 loopBody797_1

def loopBody797_55 : HolLoopProg 64 :=
.mark loopBody797_54

def loopBody797_56 : HolLoopProg 64 :=
.seq loopBody797_33 loopBody797_55

def loopBody797_57 : HolLoopProg 64 :=
.mark loopBody797_56

def loopBody797_58 : HolLoopProg 64 :=
.seq loopBody797_31 loopBody797_57

def loopBody797_59 : HolLoopProg 64 :=
.mark loopBody797_58

def loopBody797_60 : HolLoopProg 64 :=
.seq loopBody797_25 loopBody797_59

def loopBody797_61 : HolLoopProg 64 :=
.mark loopBody797_60

def loopBody797_62 : HolLoopProg 64 :=
.seq loopBody797_23 loopBody797_61

def loopBody797_63 : HolLoopProg 64 :=
.mark loopBody797_62

def loopBody797_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 8#64)

def loopBody797_65 : HolLoopProg 64 :=
.mark loopBody797_64

def loopBody797_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody797_67 : HolLoopProg 64 :=
.mark loopBody797_66

def loopBody797_68 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ls PUnit.unit)) (some 68) ([4]) (some (4, loopBody797_67, loopBody797_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody797_69 : HolLoopProg 64 :=
.mark loopBody797_68

def loopBody797_70 : HolLoopProg 64 :=
.seq loopBody797_69 loopBody797_1

def loopBody797_71 : HolLoopProg 64 :=
.mark loopBody797_70

def loopBody797_72 : HolLoopProg 64 :=
.seq loopBody797_65 loopBody797_71

def loopBody797_73 : HolLoopProg 64 :=
.mark loopBody797_72

def loopBody797_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody797_75 : HolLoopProg 64 :=
.mark loopBody797_74

def loopBody797_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody797_77 : HolLoopProg 64 :=
.mark loopBody797_76

def loopBody797_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody797_79 : HolLoopProg 64 :=
.mark loopBody797_78

def loopBody797_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody797_81 : HolLoopProg 64 :=
.mark loopBody797_80

def loopBody797_82 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 860) ([5, 6, 7]) (some (5, loopBody797_81, loopBody797_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody797_83 : HolLoopProg 64 :=
.mark loopBody797_82

def loopBody797_84 : HolLoopProg 64 :=
.seq loopBody797_83 loopBody797_1

def loopBody797_85 : HolLoopProg 64 :=
.mark loopBody797_84

def loopBody797_86 : HolLoopProg 64 :=
.seq loopBody797_79 loopBody797_85

def loopBody797_87 : HolLoopProg 64 :=
.mark loopBody797_86

def loopBody797_88 : HolLoopProg 64 :=
.seq loopBody797_77 loopBody797_87

def loopBody797_89 : HolLoopProg 64 :=
.mark loopBody797_88

def loopBody797_90 : HolLoopProg 64 :=
.seq loopBody797_75 loopBody797_89

def loopBody797_91 : HolLoopProg 64 :=
.mark loopBody797_90

def loopBody797_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 32#64]))

def loopBody797_93 : HolLoopProg 64 :=
.mark loopBody797_92

def loopBody797_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody797_95 : HolLoopProg 64 :=
.mark loopBody797_94

def loopBody797_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody797_97 : HolLoopProg 64 :=
.mark loopBody797_96

def loopBody797_98 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody797_95 loopBody797_97 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody797_99 : HolLoopProg 64 :=
.mark loopBody797_98

def loopBody797_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody797_101 : HolLoopProg 64 :=
.mark loopBody797_100

def loopBody797_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 71#64)

def loopBody797_103 : HolLoopProg 64 :=
.mark loopBody797_102

def loopBody797_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody797_105 : HolLoopProg 64 :=
.mark loopBody797_104

def loopBody797_106 : HolLoopProg 64 :=
.seq loopBody797_105 loopBody797_1

def loopBody797_107 : HolLoopProg 64 :=
.mark loopBody797_106

def loopBody797_108 : HolLoopProg 64 :=
.seq loopBody797_107 loopBody797_1

def loopBody797_109 : HolLoopProg 64 :=
.mark loopBody797_108

def loopBody797_110 : HolLoopProg 64 :=
.seq loopBody797_103 loopBody797_109

def loopBody797_111 : HolLoopProg 64 :=
.mark loopBody797_110

def loopBody797_112 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_111

def loopBody797_113 : HolLoopProg 64 :=
.mark loopBody797_112

def loopBody797_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 4#64)

def loopBody797_115 : HolLoopProg 64 :=
.mark loopBody797_114

def loopBody797_116 : HolLoopProg 64 :=
.seq loopBody797_115 loopBody797_81

def loopBody797_117 : HolLoopProg 64 :=
.mark loopBody797_116

def loopBody797_118 : HolLoopProg 64 :=
.seq loopBody797_113 loopBody797_117

def loopBody797_119 : HolLoopProg 64 :=
.mark loopBody797_118

def loopBody797_120 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody797_119 loopBody797_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody797_121 : HolLoopProg 64 :=
.mark loopBody797_120

def loopBody797_122 : HolLoopProg 64 :=
.seq loopBody797_121 loopBody797_1

def loopBody797_123 : HolLoopProg 64 :=
.mark loopBody797_122

def loopBody797_124 : HolLoopProg 64 :=
.seq loopBody797_101 loopBody797_123

def loopBody797_125 : HolLoopProg 64 :=
.mark loopBody797_124

def loopBody797_126 : HolLoopProg 64 :=
.seq loopBody797_99 loopBody797_125

def loopBody797_127 : HolLoopProg 64 :=
.mark loopBody797_126

def loopBody797_128 : HolLoopProg 64 :=
.seq loopBody797_79 loopBody797_127

def loopBody797_129 : HolLoopProg 64 :=
.mark loopBody797_128

def loopBody797_130 : HolLoopProg 64 :=
.seq loopBody797_93 loopBody797_129

def loopBody797_131 : HolLoopProg 64 :=
.mark loopBody797_130

def loopBody797_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody797_133 : HolLoopProg 64 :=
.mark loopBody797_132

def loopBody797_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody797_135 : HolLoopProg 64 :=
.mark loopBody797_134

def loopBody797_136 : HolLoopProg 64 :=
.seq loopBody797_135 loopBody797_1

def loopBody797_137 : HolLoopProg 64 :=
.mark loopBody797_136

def loopBody797_138 : HolLoopProg 64 :=
.seq loopBody797_133 loopBody797_137

def loopBody797_139 : HolLoopProg 64 :=
.mark loopBody797_138

def loopBody797_140 : HolLoopProg 64 :=
.seq loopBody797_131 loopBody797_139

def loopBody797_141 : HolLoopProg 64 :=
.mark loopBody797_140

def loopBody797_142 : HolLoopProg 64 :=
.seq loopBody797_91 loopBody797_141

def loopBody797_143 : HolLoopProg 64 :=
.mark loopBody797_142

def loopBody797_144 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_143

def loopBody797_145 : HolLoopProg 64 :=
.mark loopBody797_144

def loopBody797_146 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_145

def loopBody797_147 : HolLoopProg 64 :=
.mark loopBody797_146

def loopBody797_148 : HolLoopProg 64 :=
.seq loopBody797_73 loopBody797_147

def loopBody797_149 : HolLoopProg 64 :=
.mark loopBody797_148

def loopBody797_150 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_149

def loopBody797_151 : HolLoopProg 64 :=
.mark loopBody797_150

def loopBody797_152 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_151

def loopBody797_153 : HolLoopProg 64 :=
.mark loopBody797_152

def loopBody797_154 : HolLoopProg 64 :=
.seq loopBody797_63 loopBody797_153

def loopBody797_155 : HolLoopProg 64 :=
.mark loopBody797_154

def loopBody797_156 : HolLoopProg 64 :=
.seq loopBody797_21 loopBody797_155

def loopBody797_157 : HolLoopProg 64 :=
.mark loopBody797_156

def loopBody797_158 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_157

def loopBody797_159 : HolLoopProg 64 :=
.mark loopBody797_158

def loopBody797_160 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_159

def loopBody797_161 : HolLoopProg 64 :=
.mark loopBody797_160

def loopBody797_162 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_161

def loopBody797_163 : HolLoopProg 64 :=
.mark loopBody797_162

def loopBody797_164 : HolLoopProg 64 :=
.seq loopBody797_1 loopBody797_163

def loopBody797_165 : HolLoopProg 64 :=
.mark loopBody797_164

def loopBody797_166 : HolLoopProg 64 :=
.seq loopBody797_11 loopBody797_165

def loopBody797_167 : HolLoopProg 64 :=
.mark loopBody797_166

def output797 : Nat × List Nat × HolLoopProg 64 :=
  (861, [0], loopBody797_167)
end InitECandidate.Proofs.FrontendStages.Loop
