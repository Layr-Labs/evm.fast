import InitECandidate.Proofs.FrontendStages.Loop.Translate736
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody752_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody752_1 : HolLoopProg 64 :=
.mark loopBody752_0

def loopBody752_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody752_3 : HolLoopProg 64 :=
.mark loopBody752_2

def loopBody752_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody752_3, loopBody752_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody752_5 : HolLoopProg 64 :=
.mark loopBody752_4

def loopBody752_6 : HolLoopProg 64 :=
.seq loopBody752_5 loopBody752_1

def loopBody752_7 : HolLoopProg 64 :=
.mark loopBody752_6

def loopBody752_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 96#64)

def loopBody752_9 : HolLoopProg 64 :=
.mark loopBody752_8

def loopBody752_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody752_11 : HolLoopProg 64 :=
.mark loopBody752_10

def loopBody752_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody752_11, loopBody752_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody752_13 : HolLoopProg 64 :=
.mark loopBody752_12

def loopBody752_14 : HolLoopProg 64 :=
.seq loopBody752_13 loopBody752_1

def loopBody752_15 : HolLoopProg 64 :=
.mark loopBody752_14

def loopBody752_16 : HolLoopProg 64 :=
.seq loopBody752_9 loopBody752_15

def loopBody752_17 : HolLoopProg 64 :=
.mark loopBody752_16

def loopBody752_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 288#64)

def loopBody752_19 : HolLoopProg 64 :=
.mark loopBody752_18

def loopBody752_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody752_21 : HolLoopProg 64 :=
.mark loopBody752_20

def loopBody752_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody752_21, loopBody752_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody752_23 : HolLoopProg 64 :=
.mark loopBody752_22

def loopBody752_24 : HolLoopProg 64 :=
.seq loopBody752_23 loopBody752_1

def loopBody752_25 : HolLoopProg 64 :=
.mark loopBody752_24

def loopBody752_26 : HolLoopProg 64 :=
.seq loopBody752_19 loopBody752_25

def loopBody752_27 : HolLoopProg 64 :=
.mark loopBody752_26

def loopBody752_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody752_29 : HolLoopProg 64 :=
.mark loopBody752_28

def loopBody752_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody752_31 : HolLoopProg 64 :=
.mark loopBody752_30

def loopBody752_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody752_33 : HolLoopProg 64 :=
.mark loopBody752_32

def loopBody752_34 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 727) ([6, 7]) (some (6, loopBody752_33, loopBody752_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody752_35 : HolLoopProg 64 :=
.mark loopBody752_34

def loopBody752_36 : HolLoopProg 64 :=
.seq loopBody752_35 loopBody752_1

def loopBody752_37 : HolLoopProg 64 :=
.mark loopBody752_36

def loopBody752_38 : HolLoopProg 64 :=
.seq loopBody752_31 loopBody752_37

def loopBody752_39 : HolLoopProg 64 :=
.mark loopBody752_38

def loopBody752_40 : HolLoopProg 64 :=
.seq loopBody752_29 loopBody752_39

def loopBody752_41 : HolLoopProg 64 :=
.mark loopBody752_40

def loopBody752_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody752_43 : HolLoopProg 64 :=
.mark loopBody752_42

def loopBody752_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody752_45 : HolLoopProg 64 :=
.mark loopBody752_44

def loopBody752_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody752_47 : HolLoopProg 64 :=
.mark loopBody752_46

def loopBody752_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody752_49 : HolLoopProg 64 :=
.mark loopBody752_48

def loopBody752_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody752_47 loopBody752_49 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody752_51 : HolLoopProg 64 :=
.mark loopBody752_50

def loopBody752_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody752_53 : HolLoopProg 64 :=
.mark loopBody752_52

def loopBody752_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 64#64])

def loopBody752_55 : HolLoopProg 64 :=
.mark loopBody752_54

def loopBody752_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 48#64])

def loopBody752_57 : HolLoopProg 64 :=
.mark loopBody752_56

def loopBody752_58 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 727) ([6, 7]) (some (6, loopBody752_33, loopBody752_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody752_59 : HolLoopProg 64 :=
.mark loopBody752_58

def loopBody752_60 : HolLoopProg 64 :=
.seq loopBody752_59 loopBody752_1

def loopBody752_61 : HolLoopProg 64 :=
.mark loopBody752_60

def loopBody752_62 : HolLoopProg 64 :=
.seq loopBody752_57 loopBody752_61

def loopBody752_63 : HolLoopProg 64 :=
.mark loopBody752_62

def loopBody752_64 : HolLoopProg 64 :=
.seq loopBody752_55 loopBody752_63

def loopBody752_65 : HolLoopProg 64 :=
.mark loopBody752_64

def loopBody752_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody752_65 loopBody752_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody752_67 : HolLoopProg 64 :=
.mark loopBody752_66

def loopBody752_68 : HolLoopProg 64 :=
.seq loopBody752_67 loopBody752_1

def loopBody752_69 : HolLoopProg 64 :=
.mark loopBody752_68

def loopBody752_70 : HolLoopProg 64 :=
.seq loopBody752_53 loopBody752_69

def loopBody752_71 : HolLoopProg 64 :=
.mark loopBody752_70

def loopBody752_72 : HolLoopProg 64 :=
.seq loopBody752_51 loopBody752_71

def loopBody752_73 : HolLoopProg 64 :=
.mark loopBody752_72

def loopBody752_74 : HolLoopProg 64 :=
.seq loopBody752_45 loopBody752_73

def loopBody752_75 : HolLoopProg 64 :=
.mark loopBody752_74

def loopBody752_76 : HolLoopProg 64 :=
.seq loopBody752_43 loopBody752_75

def loopBody752_77 : HolLoopProg 64 :=
.mark loopBody752_76

def loopBody752_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody752_79 : HolLoopProg 64 :=
.mark loopBody752_78

def loopBody752_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody752_47 loopBody752_49 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody752_81 : HolLoopProg 64 :=
.mark loopBody752_80

def loopBody752_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody752_83 : HolLoopProg 64 :=
.mark loopBody752_82

def loopBody752_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody752_85 : HolLoopProg 64 :=
.mark loopBody752_84

def loopBody752_86 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody752_85, loopBody752_1, (Flapjack.Spt.ln)))

def loopBody752_87 : HolLoopProg 64 :=
.mark loopBody752_86

def loopBody752_88 : HolLoopProg 64 :=
.seq loopBody752_87 loopBody752_1

def loopBody752_89 : HolLoopProg 64 :=
.mark loopBody752_88

def loopBody752_90 : HolLoopProg 64 :=
.seq loopBody752_83 loopBody752_89

def loopBody752_91 : HolLoopProg 64 :=
.mark loopBody752_90

def loopBody752_92 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_91

def loopBody752_93 : HolLoopProg 64 :=
.mark loopBody752_92

def loopBody752_94 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_93

def loopBody752_95 : HolLoopProg 64 :=
.mark loopBody752_94

def loopBody752_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody752_97 : HolLoopProg 64 :=
.mark loopBody752_96

def loopBody752_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody752_99 : HolLoopProg 64 :=
.mark loopBody752_98

def loopBody752_100 : HolLoopProg 64 :=
.seq loopBody752_99 loopBody752_1

def loopBody752_101 : HolLoopProg 64 :=
.mark loopBody752_100

def loopBody752_102 : HolLoopProg 64 :=
.seq loopBody752_97 loopBody752_101

def loopBody752_103 : HolLoopProg 64 :=
.mark loopBody752_102

def loopBody752_104 : HolLoopProg 64 :=
.seq loopBody752_95 loopBody752_103

def loopBody752_105 : HolLoopProg 64 :=
.mark loopBody752_104

def loopBody752_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody752_105 loopBody752_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody752_107 : HolLoopProg 64 :=
.mark loopBody752_106

def loopBody752_108 : HolLoopProg 64 :=
.seq loopBody752_107 loopBody752_1

def loopBody752_109 : HolLoopProg 64 :=
.mark loopBody752_108

def loopBody752_110 : HolLoopProg 64 :=
.seq loopBody752_53 loopBody752_109

def loopBody752_111 : HolLoopProg 64 :=
.mark loopBody752_110

def loopBody752_112 : HolLoopProg 64 :=
.seq loopBody752_81 loopBody752_111

def loopBody752_113 : HolLoopProg 64 :=
.mark loopBody752_112

def loopBody752_114 : HolLoopProg 64 :=
.seq loopBody752_79 loopBody752_113

def loopBody752_115 : HolLoopProg 64 :=
.mark loopBody752_114

def loopBody752_116 : HolLoopProg 64 :=
.seq loopBody752_43 loopBody752_115

def loopBody752_117 : HolLoopProg 64 :=
.mark loopBody752_116

def loopBody752_118 : HolLoopProg 64 :=
.seq loopBody752_77 loopBody752_117

def loopBody752_119 : HolLoopProg 64 :=
.mark loopBody752_118

def loopBody752_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody752_121 : HolLoopProg 64 :=
.mark loopBody752_120

def loopBody752_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody752_123 : HolLoopProg 64 :=
.mark loopBody752_122

def loopBody752_124 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))) (some 804) ([7, 8]) (some (7, loopBody752_85, loopBody752_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))

def loopBody752_125 : HolLoopProg 64 :=
.mark loopBody752_124

def loopBody752_126 : HolLoopProg 64 :=
.seq loopBody752_125 loopBody752_1

def loopBody752_127 : HolLoopProg 64 :=
.mark loopBody752_126

def loopBody752_128 : HolLoopProg 64 :=
.seq loopBody752_123 loopBody752_127

def loopBody752_129 : HolLoopProg 64 :=
.mark loopBody752_128

def loopBody752_130 : HolLoopProg 64 :=
.seq loopBody752_121 loopBody752_129

def loopBody752_131 : HolLoopProg 64 :=
.mark loopBody752_130

def loopBody752_132 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_131

def loopBody752_133 : HolLoopProg 64 :=
.mark loopBody752_132

def loopBody752_134 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_133

def loopBody752_135 : HolLoopProg 64 :=
.mark loopBody752_134

def loopBody752_136 : HolLoopProg 64 :=
.seq loopBody752_119 loopBody752_135

def loopBody752_137 : HolLoopProg 64 :=
.mark loopBody752_136

def loopBody752_138 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody752_139 : HolLoopProg 64 :=
.mark loopBody752_138

def loopBody752_140 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 788) ([7, 8]) (some (7, loopBody752_85, loopBody752_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody752_141 : HolLoopProg 64 :=
.mark loopBody752_140

def loopBody752_142 : HolLoopProg 64 :=
.seq loopBody752_141 loopBody752_1

def loopBody752_143 : HolLoopProg 64 :=
.mark loopBody752_142

def loopBody752_144 : HolLoopProg 64 :=
.seq loopBody752_139 loopBody752_143

def loopBody752_145 : HolLoopProg 64 :=
.mark loopBody752_144

def loopBody752_146 : HolLoopProg 64 :=
.seq loopBody752_121 loopBody752_145

def loopBody752_147 : HolLoopProg 64 :=
.mark loopBody752_146

def loopBody752_148 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_147

def loopBody752_149 : HolLoopProg 64 :=
.mark loopBody752_148

def loopBody752_150 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_149

def loopBody752_151 : HolLoopProg 64 :=
.mark loopBody752_150

def loopBody752_152 : HolLoopProg 64 :=
.seq loopBody752_137 loopBody752_151

def loopBody752_153 : HolLoopProg 64 :=
.mark loopBody752_152

def loopBody752_154 : HolLoopProg 64 :=
.seq loopBody752_153 loopBody752_95

def loopBody752_155 : HolLoopProg 64 :=
.mark loopBody752_154

def loopBody752_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody752_157 : HolLoopProg 64 :=
.mark loopBody752_156

def loopBody752_158 : HolLoopProg 64 :=
.seq loopBody752_157 loopBody752_101

def loopBody752_159 : HolLoopProg 64 :=
.mark loopBody752_158

def loopBody752_160 : HolLoopProg 64 :=
.seq loopBody752_155 loopBody752_159

def loopBody752_161 : HolLoopProg 64 :=
.mark loopBody752_160

def loopBody752_162 : HolLoopProg 64 :=
.seq loopBody752_41 loopBody752_161

def loopBody752_163 : HolLoopProg 64 :=
.mark loopBody752_162

def loopBody752_164 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_163

def loopBody752_165 : HolLoopProg 64 :=
.mark loopBody752_164

def loopBody752_166 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_165

def loopBody752_167 : HolLoopProg 64 :=
.mark loopBody752_166

def loopBody752_168 : HolLoopProg 64 :=
.seq loopBody752_27 loopBody752_167

def loopBody752_169 : HolLoopProg 64 :=
.mark loopBody752_168

def loopBody752_170 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_169

def loopBody752_171 : HolLoopProg 64 :=
.mark loopBody752_170

def loopBody752_172 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_171

def loopBody752_173 : HolLoopProg 64 :=
.mark loopBody752_172

def loopBody752_174 : HolLoopProg 64 :=
.seq loopBody752_17 loopBody752_173

def loopBody752_175 : HolLoopProg 64 :=
.mark loopBody752_174

def loopBody752_176 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_175

def loopBody752_177 : HolLoopProg 64 :=
.mark loopBody752_176

def loopBody752_178 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_177

def loopBody752_179 : HolLoopProg 64 :=
.mark loopBody752_178

def loopBody752_180 : HolLoopProg 64 :=
.seq loopBody752_7 loopBody752_179

def loopBody752_181 : HolLoopProg 64 :=
.mark loopBody752_180

def loopBody752_182 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_181

def loopBody752_183 : HolLoopProg 64 :=
.mark loopBody752_182

def loopBody752_184 : HolLoopProg 64 :=
.seq loopBody752_1 loopBody752_183

def loopBody752_185 : HolLoopProg 64 :=
.mark loopBody752_184

def output752 : Nat × List Nat × HolLoopProg 64 :=
  (816, [0, 1], loopBody752_185)
end InitECandidate.Proofs.FrontendStages.Loop
