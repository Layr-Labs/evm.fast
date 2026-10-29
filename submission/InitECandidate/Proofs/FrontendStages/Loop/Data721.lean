import InitECandidate.Proofs.FrontendStages.Loop.Translate705
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody721_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody721_1 : HolLoopProg 64 :=
.mark loopBody721_0

def loopBody721_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody721_3 : HolLoopProg 64 :=
.mark loopBody721_2

def loopBody721_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody721_3, loopBody721_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody721_5 : HolLoopProg 64 :=
.mark loopBody721_4

def loopBody721_6 : HolLoopProg 64 :=
.seq loopBody721_5 loopBody721_1

def loopBody721_7 : HolLoopProg 64 :=
.mark loopBody721_6

def loopBody721_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 96#64)

def loopBody721_9 : HolLoopProg 64 :=
.mark loopBody721_8

def loopBody721_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody721_11 : HolLoopProg 64 :=
.mark loopBody721_10

def loopBody721_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody721_11, loopBody721_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody721_13 : HolLoopProg 64 :=
.mark loopBody721_12

def loopBody721_14 : HolLoopProg 64 :=
.seq loopBody721_13 loopBody721_1

def loopBody721_15 : HolLoopProg 64 :=
.mark loopBody721_14

def loopBody721_16 : HolLoopProg 64 :=
.seq loopBody721_9 loopBody721_15

def loopBody721_17 : HolLoopProg 64 :=
.mark loopBody721_16

def loopBody721_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody721_19 : HolLoopProg 64 :=
.mark loopBody721_18

def loopBody721_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody721_21 : HolLoopProg 64 :=
.mark loopBody721_20

def loopBody721_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 779) ([5]) (some (5, loopBody721_21, loopBody721_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody721_23 : HolLoopProg 64 :=
.mark loopBody721_22

def loopBody721_24 : HolLoopProg 64 :=
.seq loopBody721_23 loopBody721_1

def loopBody721_25 : HolLoopProg 64 :=
.mark loopBody721_24

def loopBody721_26 : HolLoopProg 64 :=
.seq loopBody721_19 loopBody721_25

def loopBody721_27 : HolLoopProg 64 :=
.mark loopBody721_26

def loopBody721_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody721_29 : HolLoopProg 64 :=
.mark loopBody721_28

def loopBody721_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody721_31 : HolLoopProg 64 :=
.mark loopBody721_30

def loopBody721_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody721_33 : HolLoopProg 64 :=
.mark loopBody721_32

def loopBody721_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody721_35 : HolLoopProg 64 :=
.mark loopBody721_34

def loopBody721_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody721_33 loopBody721_35 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody721_37 : HolLoopProg 64 :=
.mark loopBody721_36

def loopBody721_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody721_39 : HolLoopProg 64 :=
.mark loopBody721_38

def loopBody721_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody721_41 : HolLoopProg 64 :=
.mark loopBody721_40

def loopBody721_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 192#64)

def loopBody721_43 : HolLoopProg 64 :=
.mark loopBody721_42

def loopBody721_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody721_45 : HolLoopProg 64 :=
.mark loopBody721_44

def loopBody721_46 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 78) ([6, 7]) (some (6, loopBody721_45, loopBody721_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody721_47 : HolLoopProg 64 :=
.mark loopBody721_46

def loopBody721_48 : HolLoopProg 64 :=
.seq loopBody721_47 loopBody721_1

def loopBody721_49 : HolLoopProg 64 :=
.mark loopBody721_48

def loopBody721_50 : HolLoopProg 64 :=
.seq loopBody721_43 loopBody721_49

def loopBody721_51 : HolLoopProg 64 :=
.mark loopBody721_50

def loopBody721_52 : HolLoopProg 64 :=
.seq loopBody721_41 loopBody721_51

def loopBody721_53 : HolLoopProg 64 :=
.mark loopBody721_52

def loopBody721_54 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_53

def loopBody721_55 : HolLoopProg 64 :=
.mark loopBody721_54

def loopBody721_56 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_55

def loopBody721_57 : HolLoopProg 64 :=
.mark loopBody721_56

def loopBody721_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody721_59 : HolLoopProg 64 :=
.mark loopBody721_58

def loopBody721_60 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 70) ([6]) (some (6, loopBody721_45, loopBody721_1, (Flapjack.Spt.ln)))

def loopBody721_61 : HolLoopProg 64 :=
.mark loopBody721_60

def loopBody721_62 : HolLoopProg 64 :=
.seq loopBody721_61 loopBody721_1

def loopBody721_63 : HolLoopProg 64 :=
.mark loopBody721_62

def loopBody721_64 : HolLoopProg 64 :=
.seq loopBody721_59 loopBody721_63

def loopBody721_65 : HolLoopProg 64 :=
.mark loopBody721_64

def loopBody721_66 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_65

def loopBody721_67 : HolLoopProg 64 :=
.mark loopBody721_66

def loopBody721_68 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_67

def loopBody721_69 : HolLoopProg 64 :=
.mark loopBody721_68

def loopBody721_70 : HolLoopProg 64 :=
.seq loopBody721_57 loopBody721_69

def loopBody721_71 : HolLoopProg 64 :=
.mark loopBody721_70

def loopBody721_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody721_73 : HolLoopProg 64 :=
.mark loopBody721_72

def loopBody721_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody721_75 : HolLoopProg 64 :=
.mark loopBody721_74

def loopBody721_76 : HolLoopProg 64 :=
.seq loopBody721_75 loopBody721_1

def loopBody721_77 : HolLoopProg 64 :=
.mark loopBody721_76

def loopBody721_78 : HolLoopProg 64 :=
.seq loopBody721_73 loopBody721_77

def loopBody721_79 : HolLoopProg 64 :=
.mark loopBody721_78

def loopBody721_80 : HolLoopProg 64 :=
.seq loopBody721_71 loopBody721_79

def loopBody721_81 : HolLoopProg 64 :=
.mark loopBody721_80

def loopBody721_82 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody721_81 loopBody721_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody721_83 : HolLoopProg 64 :=
.mark loopBody721_82

def loopBody721_84 : HolLoopProg 64 :=
.seq loopBody721_83 loopBody721_1

def loopBody721_85 : HolLoopProg 64 :=
.mark loopBody721_84

def loopBody721_86 : HolLoopProg 64 :=
.seq loopBody721_39 loopBody721_85

def loopBody721_87 : HolLoopProg 64 :=
.mark loopBody721_86

def loopBody721_88 : HolLoopProg 64 :=
.seq loopBody721_37 loopBody721_87

def loopBody721_89 : HolLoopProg 64 :=
.mark loopBody721_88

def loopBody721_90 : HolLoopProg 64 :=
.seq loopBody721_31 loopBody721_89

def loopBody721_91 : HolLoopProg 64 :=
.mark loopBody721_90

def loopBody721_92 : HolLoopProg 64 :=
.seq loopBody721_29 loopBody721_91

def loopBody721_93 : HolLoopProg 64 :=
.mark loopBody721_92

def loopBody721_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody721_95 : HolLoopProg 64 :=
.mark loopBody721_94

def loopBody721_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody721_97 : HolLoopProg 64 :=
.mark loopBody721_96

def loopBody721_98 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 743) ([6, 7]) (some (6, loopBody721_45, loopBody721_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody721_99 : HolLoopProg 64 :=
.mark loopBody721_98

def loopBody721_100 : HolLoopProg 64 :=
.seq loopBody721_99 loopBody721_1

def loopBody721_101 : HolLoopProg 64 :=
.mark loopBody721_100

def loopBody721_102 : HolLoopProg 64 :=
.seq loopBody721_97 loopBody721_101

def loopBody721_103 : HolLoopProg 64 :=
.mark loopBody721_102

def loopBody721_104 : HolLoopProg 64 :=
.seq loopBody721_95 loopBody721_103

def loopBody721_105 : HolLoopProg 64 :=
.mark loopBody721_104

def loopBody721_106 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_105

def loopBody721_107 : HolLoopProg 64 :=
.mark loopBody721_106

def loopBody721_108 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_107

def loopBody721_109 : HolLoopProg 64 :=
.mark loopBody721_108

def loopBody721_110 : HolLoopProg 64 :=
.seq loopBody721_93 loopBody721_109

def loopBody721_111 : HolLoopProg 64 :=
.mark loopBody721_110

def loopBody721_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody721_113 : HolLoopProg 64 :=
.mark loopBody721_112

def loopBody721_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody721_115 : HolLoopProg 64 :=
.mark loopBody721_114

def loopBody721_116 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 739) ([6, 7, 8]) (some (6, loopBody721_45, loopBody721_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody721_117 : HolLoopProg 64 :=
.mark loopBody721_116

def loopBody721_118 : HolLoopProg 64 :=
.seq loopBody721_117 loopBody721_1

def loopBody721_119 : HolLoopProg 64 :=
.mark loopBody721_118

def loopBody721_120 : HolLoopProg 64 :=
.seq loopBody721_115 loopBody721_119

def loopBody721_121 : HolLoopProg 64 :=
.mark loopBody721_120

def loopBody721_122 : HolLoopProg 64 :=
.seq loopBody721_113 loopBody721_121

def loopBody721_123 : HolLoopProg 64 :=
.mark loopBody721_122

def loopBody721_124 : HolLoopProg 64 :=
.seq loopBody721_41 loopBody721_123

def loopBody721_125 : HolLoopProg 64 :=
.mark loopBody721_124

def loopBody721_126 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_125

def loopBody721_127 : HolLoopProg 64 :=
.mark loopBody721_126

def loopBody721_128 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_127

def loopBody721_129 : HolLoopProg 64 :=
.mark loopBody721_128

def loopBody721_130 : HolLoopProg 64 :=
.seq loopBody721_111 loopBody721_129

def loopBody721_131 : HolLoopProg 64 :=
.mark loopBody721_130

def loopBody721_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody721_133 : HolLoopProg 64 :=
.mark loopBody721_132

def loopBody721_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64])

def loopBody721_135 : HolLoopProg 64 :=
.mark loopBody721_134

def loopBody721_136 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 739) ([6, 7, 8]) (some (6, loopBody721_45, loopBody721_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody721_137 : HolLoopProg 64 :=
.mark loopBody721_136

def loopBody721_138 : HolLoopProg 64 :=
.seq loopBody721_137 loopBody721_1

def loopBody721_139 : HolLoopProg 64 :=
.mark loopBody721_138

def loopBody721_140 : HolLoopProg 64 :=
.seq loopBody721_115 loopBody721_139

def loopBody721_141 : HolLoopProg 64 :=
.mark loopBody721_140

def loopBody721_142 : HolLoopProg 64 :=
.seq loopBody721_135 loopBody721_141

def loopBody721_143 : HolLoopProg 64 :=
.mark loopBody721_142

def loopBody721_144 : HolLoopProg 64 :=
.seq loopBody721_133 loopBody721_143

def loopBody721_145 : HolLoopProg 64 :=
.mark loopBody721_144

def loopBody721_146 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_145

def loopBody721_147 : HolLoopProg 64 :=
.mark loopBody721_146

def loopBody721_148 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_147

def loopBody721_149 : HolLoopProg 64 :=
.mark loopBody721_148

def loopBody721_150 : HolLoopProg 64 :=
.seq loopBody721_131 loopBody721_149

def loopBody721_151 : HolLoopProg 64 :=
.mark loopBody721_150

def loopBody721_152 : HolLoopProg 64 :=
.seq loopBody721_151 loopBody721_69

def loopBody721_153 : HolLoopProg 64 :=
.mark loopBody721_152

def loopBody721_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody721_155 : HolLoopProg 64 :=
.mark loopBody721_154

def loopBody721_156 : HolLoopProg 64 :=
.seq loopBody721_155 loopBody721_77

def loopBody721_157 : HolLoopProg 64 :=
.mark loopBody721_156

def loopBody721_158 : HolLoopProg 64 :=
.seq loopBody721_153 loopBody721_157

def loopBody721_159 : HolLoopProg 64 :=
.mark loopBody721_158

def loopBody721_160 : HolLoopProg 64 :=
.seq loopBody721_27 loopBody721_159

def loopBody721_161 : HolLoopProg 64 :=
.mark loopBody721_160

def loopBody721_162 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_161

def loopBody721_163 : HolLoopProg 64 :=
.mark loopBody721_162

def loopBody721_164 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_163

def loopBody721_165 : HolLoopProg 64 :=
.mark loopBody721_164

def loopBody721_166 : HolLoopProg 64 :=
.seq loopBody721_17 loopBody721_165

def loopBody721_167 : HolLoopProg 64 :=
.mark loopBody721_166

def loopBody721_168 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_167

def loopBody721_169 : HolLoopProg 64 :=
.mark loopBody721_168

def loopBody721_170 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_169

def loopBody721_171 : HolLoopProg 64 :=
.mark loopBody721_170

def loopBody721_172 : HolLoopProg 64 :=
.seq loopBody721_7 loopBody721_171

def loopBody721_173 : HolLoopProg 64 :=
.mark loopBody721_172

def loopBody721_174 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_173

def loopBody721_175 : HolLoopProg 64 :=
.mark loopBody721_174

def loopBody721_176 : HolLoopProg 64 :=
.seq loopBody721_1 loopBody721_175

def loopBody721_177 : HolLoopProg 64 :=
.mark loopBody721_176

def output721 : Nat × List Nat × HolLoopProg 64 :=
  (785, [0, 1], loopBody721_177)
end InitECandidate.Proofs.FrontendStages.Loop
