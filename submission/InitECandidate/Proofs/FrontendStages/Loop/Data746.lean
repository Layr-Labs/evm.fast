import InitECandidate.Proofs.FrontendStages.Loop.Translate730
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody746_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody746_1 : HolLoopProg 64 :=
.mark loopBody746_0

def loopBody746_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody746_3 : HolLoopProg 64 :=
.mark loopBody746_2

def loopBody746_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody746_3, loopBody746_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody746_5 : HolLoopProg 64 :=
.mark loopBody746_4

def loopBody746_6 : HolLoopProg 64 :=
.seq loopBody746_5 loopBody746_1

def loopBody746_7 : HolLoopProg 64 :=
.mark loopBody746_6

def loopBody746_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 144#64)

def loopBody746_9 : HolLoopProg 64 :=
.mark loopBody746_8

def loopBody746_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody746_11 : HolLoopProg 64 :=
.mark loopBody746_10

def loopBody746_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody746_11, loopBody746_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody746_13 : HolLoopProg 64 :=
.mark loopBody746_12

def loopBody746_14 : HolLoopProg 64 :=
.seq loopBody746_13 loopBody746_1

def loopBody746_15 : HolLoopProg 64 :=
.mark loopBody746_14

def loopBody746_16 : HolLoopProg 64 :=
.seq loopBody746_9 loopBody746_15

def loopBody746_17 : HolLoopProg 64 :=
.mark loopBody746_16

def loopBody746_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 144#64)

def loopBody746_19 : HolLoopProg 64 :=
.mark loopBody746_18

def loopBody746_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody746_21 : HolLoopProg 64 :=
.mark loopBody746_20

def loopBody746_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody746_21, loopBody746_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody746_23 : HolLoopProg 64 :=
.mark loopBody746_22

def loopBody746_24 : HolLoopProg 64 :=
.seq loopBody746_23 loopBody746_1

def loopBody746_25 : HolLoopProg 64 :=
.mark loopBody746_24

def loopBody746_26 : HolLoopProg 64 :=
.seq loopBody746_19 loopBody746_25

def loopBody746_27 : HolLoopProg 64 :=
.mark loopBody746_26

def loopBody746_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody746_29 : HolLoopProg 64 :=
.mark loopBody746_28

def loopBody746_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody746_31 : HolLoopProg 64 :=
.mark loopBody746_30

def loopBody746_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody746_33 : HolLoopProg 64 :=
.mark loopBody746_32

def loopBody746_34 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 775) ([6, 7]) (some (6, loopBody746_33, loopBody746_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody746_35 : HolLoopProg 64 :=
.mark loopBody746_34

def loopBody746_36 : HolLoopProg 64 :=
.seq loopBody746_35 loopBody746_1

def loopBody746_37 : HolLoopProg 64 :=
.mark loopBody746_36

def loopBody746_38 : HolLoopProg 64 :=
.seq loopBody746_31 loopBody746_37

def loopBody746_39 : HolLoopProg 64 :=
.mark loopBody746_38

def loopBody746_40 : HolLoopProg 64 :=
.seq loopBody746_29 loopBody746_39

def loopBody746_41 : HolLoopProg 64 :=
.mark loopBody746_40

def loopBody746_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody746_43 : HolLoopProg 64 :=
.mark loopBody746_42

def loopBody746_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody746_45 : HolLoopProg 64 :=
.mark loopBody746_44

def loopBody746_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody746_47 : HolLoopProg 64 :=
.mark loopBody746_46

def loopBody746_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody746_49 : HolLoopProg 64 :=
.mark loopBody746_48

def loopBody746_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody746_47 loopBody746_49 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody746_51 : HolLoopProg 64 :=
.mark loopBody746_50

def loopBody746_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody746_53 : HolLoopProg 64 :=
.mark loopBody746_52

def loopBody746_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 128#64])

def loopBody746_55 : HolLoopProg 64 :=
.mark loopBody746_54

def loopBody746_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody746_57 : HolLoopProg 64 :=
.mark loopBody746_56

def loopBody746_58 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 775) ([6, 7]) (some (6, loopBody746_33, loopBody746_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody746_59 : HolLoopProg 64 :=
.mark loopBody746_58

def loopBody746_60 : HolLoopProg 64 :=
.seq loopBody746_59 loopBody746_1

def loopBody746_61 : HolLoopProg 64 :=
.mark loopBody746_60

def loopBody746_62 : HolLoopProg 64 :=
.seq loopBody746_57 loopBody746_61

def loopBody746_63 : HolLoopProg 64 :=
.mark loopBody746_62

def loopBody746_64 : HolLoopProg 64 :=
.seq loopBody746_55 loopBody746_63

def loopBody746_65 : HolLoopProg 64 :=
.mark loopBody746_64

def loopBody746_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody746_65 loopBody746_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody746_67 : HolLoopProg 64 :=
.mark loopBody746_66

def loopBody746_68 : HolLoopProg 64 :=
.seq loopBody746_67 loopBody746_1

def loopBody746_69 : HolLoopProg 64 :=
.mark loopBody746_68

def loopBody746_70 : HolLoopProg 64 :=
.seq loopBody746_53 loopBody746_69

def loopBody746_71 : HolLoopProg 64 :=
.mark loopBody746_70

def loopBody746_72 : HolLoopProg 64 :=
.seq loopBody746_51 loopBody746_71

def loopBody746_73 : HolLoopProg 64 :=
.mark loopBody746_72

def loopBody746_74 : HolLoopProg 64 :=
.seq loopBody746_45 loopBody746_73

def loopBody746_75 : HolLoopProg 64 :=
.mark loopBody746_74

def loopBody746_76 : HolLoopProg 64 :=
.seq loopBody746_43 loopBody746_75

def loopBody746_77 : HolLoopProg 64 :=
.mark loopBody746_76

def loopBody746_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody746_79 : HolLoopProg 64 :=
.mark loopBody746_78

def loopBody746_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody746_47 loopBody746_49 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody746_81 : HolLoopProg 64 :=
.mark loopBody746_80

def loopBody746_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody746_83 : HolLoopProg 64 :=
.mark loopBody746_82

def loopBody746_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody746_85 : HolLoopProg 64 :=
.mark loopBody746_84

def loopBody746_86 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody746_85, loopBody746_1, (Flapjack.Spt.ln)))

def loopBody746_87 : HolLoopProg 64 :=
.mark loopBody746_86

def loopBody746_88 : HolLoopProg 64 :=
.seq loopBody746_87 loopBody746_1

def loopBody746_89 : HolLoopProg 64 :=
.mark loopBody746_88

def loopBody746_90 : HolLoopProg 64 :=
.seq loopBody746_83 loopBody746_89

def loopBody746_91 : HolLoopProg 64 :=
.mark loopBody746_90

def loopBody746_92 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_91

def loopBody746_93 : HolLoopProg 64 :=
.mark loopBody746_92

def loopBody746_94 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_93

def loopBody746_95 : HolLoopProg 64 :=
.mark loopBody746_94

def loopBody746_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody746_97 : HolLoopProg 64 :=
.mark loopBody746_96

def loopBody746_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody746_99 : HolLoopProg 64 :=
.mark loopBody746_98

def loopBody746_100 : HolLoopProg 64 :=
.seq loopBody746_99 loopBody746_1

def loopBody746_101 : HolLoopProg 64 :=
.mark loopBody746_100

def loopBody746_102 : HolLoopProg 64 :=
.seq loopBody746_97 loopBody746_101

def loopBody746_103 : HolLoopProg 64 :=
.mark loopBody746_102

def loopBody746_104 : HolLoopProg 64 :=
.seq loopBody746_95 loopBody746_103

def loopBody746_105 : HolLoopProg 64 :=
.mark loopBody746_104

def loopBody746_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody746_105 loopBody746_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody746_107 : HolLoopProg 64 :=
.mark loopBody746_106

def loopBody746_108 : HolLoopProg 64 :=
.seq loopBody746_107 loopBody746_1

def loopBody746_109 : HolLoopProg 64 :=
.mark loopBody746_108

def loopBody746_110 : HolLoopProg 64 :=
.seq loopBody746_53 loopBody746_109

def loopBody746_111 : HolLoopProg 64 :=
.mark loopBody746_110

def loopBody746_112 : HolLoopProg 64 :=
.seq loopBody746_81 loopBody746_111

def loopBody746_113 : HolLoopProg 64 :=
.mark loopBody746_112

def loopBody746_114 : HolLoopProg 64 :=
.seq loopBody746_79 loopBody746_113

def loopBody746_115 : HolLoopProg 64 :=
.mark loopBody746_114

def loopBody746_116 : HolLoopProg 64 :=
.seq loopBody746_43 loopBody746_115

def loopBody746_117 : HolLoopProg 64 :=
.mark loopBody746_116

def loopBody746_118 : HolLoopProg 64 :=
.seq loopBody746_77 loopBody746_117

def loopBody746_119 : HolLoopProg 64 :=
.mark loopBody746_118

def loopBody746_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody746_121 : HolLoopProg 64 :=
.mark loopBody746_120

def loopBody746_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody746_123 : HolLoopProg 64 :=
.mark loopBody746_122

def loopBody746_124 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 771) ([7, 8, 9]) (some (7, loopBody746_85, loopBody746_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody746_125 : HolLoopProg 64 :=
.mark loopBody746_124

def loopBody746_126 : HolLoopProg 64 :=
.seq loopBody746_125 loopBody746_1

def loopBody746_127 : HolLoopProg 64 :=
.mark loopBody746_126

def loopBody746_128 : HolLoopProg 64 :=
.seq loopBody746_123 loopBody746_127

def loopBody746_129 : HolLoopProg 64 :=
.mark loopBody746_128

def loopBody746_130 : HolLoopProg 64 :=
.seq loopBody746_121 loopBody746_129

def loopBody746_131 : HolLoopProg 64 :=
.mark loopBody746_130

def loopBody746_132 : HolLoopProg 64 :=
.seq loopBody746_31 loopBody746_131

def loopBody746_133 : HolLoopProg 64 :=
.mark loopBody746_132

def loopBody746_134 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_133

def loopBody746_135 : HolLoopProg 64 :=
.mark loopBody746_134

def loopBody746_136 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_135

def loopBody746_137 : HolLoopProg 64 :=
.mark loopBody746_136

def loopBody746_138 : HolLoopProg 64 :=
.seq loopBody746_119 loopBody746_137

def loopBody746_139 : HolLoopProg 64 :=
.mark loopBody746_138

def loopBody746_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody746_141 : HolLoopProg 64 :=
.mark loopBody746_140

def loopBody746_142 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 776) ([7, 8]) (some (7, loopBody746_85, loopBody746_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody746_143 : HolLoopProg 64 :=
.mark loopBody746_142

def loopBody746_144 : HolLoopProg 64 :=
.seq loopBody746_143 loopBody746_1

def loopBody746_145 : HolLoopProg 64 :=
.mark loopBody746_144

def loopBody746_146 : HolLoopProg 64 :=
.seq loopBody746_141 loopBody746_145

def loopBody746_147 : HolLoopProg 64 :=
.mark loopBody746_146

def loopBody746_148 : HolLoopProg 64 :=
.seq loopBody746_31 loopBody746_147

def loopBody746_149 : HolLoopProg 64 :=
.mark loopBody746_148

def loopBody746_150 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_149

def loopBody746_151 : HolLoopProg 64 :=
.mark loopBody746_150

def loopBody746_152 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_151

def loopBody746_153 : HolLoopProg 64 :=
.mark loopBody746_152

def loopBody746_154 : HolLoopProg 64 :=
.seq loopBody746_139 loopBody746_153

def loopBody746_155 : HolLoopProg 64 :=
.mark loopBody746_154

def loopBody746_156 : HolLoopProg 64 :=
.seq loopBody746_155 loopBody746_95

def loopBody746_157 : HolLoopProg 64 :=
.mark loopBody746_156

def loopBody746_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody746_159 : HolLoopProg 64 :=
.mark loopBody746_158

def loopBody746_160 : HolLoopProg 64 :=
.seq loopBody746_159 loopBody746_101

def loopBody746_161 : HolLoopProg 64 :=
.mark loopBody746_160

def loopBody746_162 : HolLoopProg 64 :=
.seq loopBody746_157 loopBody746_161

def loopBody746_163 : HolLoopProg 64 :=
.mark loopBody746_162

def loopBody746_164 : HolLoopProg 64 :=
.seq loopBody746_41 loopBody746_163

def loopBody746_165 : HolLoopProg 64 :=
.mark loopBody746_164

def loopBody746_166 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_165

def loopBody746_167 : HolLoopProg 64 :=
.mark loopBody746_166

def loopBody746_168 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_167

def loopBody746_169 : HolLoopProg 64 :=
.mark loopBody746_168

def loopBody746_170 : HolLoopProg 64 :=
.seq loopBody746_27 loopBody746_169

def loopBody746_171 : HolLoopProg 64 :=
.mark loopBody746_170

def loopBody746_172 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_171

def loopBody746_173 : HolLoopProg 64 :=
.mark loopBody746_172

def loopBody746_174 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_173

def loopBody746_175 : HolLoopProg 64 :=
.mark loopBody746_174

def loopBody746_176 : HolLoopProg 64 :=
.seq loopBody746_17 loopBody746_175

def loopBody746_177 : HolLoopProg 64 :=
.mark loopBody746_176

def loopBody746_178 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_177

def loopBody746_179 : HolLoopProg 64 :=
.mark loopBody746_178

def loopBody746_180 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_179

def loopBody746_181 : HolLoopProg 64 :=
.mark loopBody746_180

def loopBody746_182 : HolLoopProg 64 :=
.seq loopBody746_7 loopBody746_181

def loopBody746_183 : HolLoopProg 64 :=
.mark loopBody746_182

def loopBody746_184 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_183

def loopBody746_185 : HolLoopProg 64 :=
.mark loopBody746_184

def loopBody746_186 : HolLoopProg 64 :=
.seq loopBody746_1 loopBody746_185

def loopBody746_187 : HolLoopProg 64 :=
.mark loopBody746_186

def output746 : Nat × List Nat × HolLoopProg 64 :=
  (810, [0, 1], loopBody746_187)
end InitECandidate.Proofs.FrontendStages.Loop
