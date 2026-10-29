import InitECandidate.Proofs.FrontendStages.Loop.Translate420
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody436_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody436_1 : HolLoopProg 64 :=
.mark loopBody436_0

def loopBody436_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody436_3 : HolLoopProg 64 :=
.mark loopBody436_2

def loopBody436_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody436_3, loopBody436_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody436_5 : HolLoopProg 64 :=
.mark loopBody436_4

def loopBody436_6 : HolLoopProg 64 :=
.seq loopBody436_5 loopBody436_1

def loopBody436_7 : HolLoopProg 64 :=
.mark loopBody436_6

def loopBody436_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody436_9 : HolLoopProg 64 :=
.mark loopBody436_8

def loopBody436_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody436_9, loopBody436_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody436_11 : HolLoopProg 64 :=
.mark loopBody436_10

def loopBody436_12 : HolLoopProg 64 :=
.seq loopBody436_11 loopBody436_1

def loopBody436_13 : HolLoopProg 64 :=
.mark loopBody436_12

def loopBody436_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 5#64)

def loopBody436_15 : HolLoopProg 64 :=
.mark loopBody436_14

def loopBody436_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody436_17 : HolLoopProg 64 :=
.mark loopBody436_16

def loopBody436_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody436_17, loopBody436_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody436_19 : HolLoopProg 64 :=
.mark loopBody436_18

def loopBody436_20 : HolLoopProg 64 :=
.seq loopBody436_19 loopBody436_1

def loopBody436_21 : HolLoopProg 64 :=
.mark loopBody436_20

def loopBody436_22 : HolLoopProg 64 :=
.seq loopBody436_15 loopBody436_21

def loopBody436_23 : HolLoopProg 64 :=
.mark loopBody436_22

def loopBody436_24 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_23

def loopBody436_25 : HolLoopProg 64 :=
.mark loopBody436_24

def loopBody436_26 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_25

def loopBody436_27 : HolLoopProg 64 :=
.mark loopBody436_26

def loopBody436_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody436_29 : HolLoopProg 64 :=
.mark loopBody436_28

def loopBody436_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody436_31 : HolLoopProg 64 :=
.mark loopBody436_30

def loopBody436_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody436_33 : HolLoopProg 64 :=
.mark loopBody436_32

def loopBody436_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody436_35 : HolLoopProg 64 :=
.mark loopBody436_34

def loopBody436_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody436_37 : HolLoopProg 64 :=
.mark loopBody436_36

def loopBody436_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody436_39 : HolLoopProg 64 :=
.mark loopBody436_38

def loopBody436_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody436_41 : HolLoopProg 64 :=
.mark loopBody436_40

def loopBody436_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 8)

def loopBody436_43 : HolLoopProg 64 :=
.mark loopBody436_42

def loopBody436_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody436_45 : HolLoopProg 64 :=
.mark loopBody436_44

def loopBody436_46 : HolLoopProg 64 :=
.call (some ([9, 10, 11, 12], Flapjack.Spt.ln)) (some 130) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody436_45, loopBody436_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody436_47 : HolLoopProg 64 :=
.mark loopBody436_46

def loopBody436_48 : HolLoopProg 64 :=
.seq loopBody436_47 loopBody436_1

def loopBody436_49 : HolLoopProg 64 :=
.mark loopBody436_48

def loopBody436_50 : HolLoopProg 64 :=
.seq loopBody436_43 loopBody436_49

def loopBody436_51 : HolLoopProg 64 :=
.mark loopBody436_50

def loopBody436_52 : HolLoopProg 64 :=
.seq loopBody436_41 loopBody436_51

def loopBody436_53 : HolLoopProg 64 :=
.mark loopBody436_52

def loopBody436_54 : HolLoopProg 64 :=
.seq loopBody436_39 loopBody436_53

def loopBody436_55 : HolLoopProg 64 :=
.mark loopBody436_54

def loopBody436_56 : HolLoopProg 64 :=
.seq loopBody436_37 loopBody436_55

def loopBody436_57 : HolLoopProg 64 :=
.mark loopBody436_56

def loopBody436_58 : HolLoopProg 64 :=
.seq loopBody436_35 loopBody436_57

def loopBody436_59 : HolLoopProg 64 :=
.mark loopBody436_58

def loopBody436_60 : HolLoopProg 64 :=
.seq loopBody436_33 loopBody436_59

def loopBody436_61 : HolLoopProg 64 :=
.mark loopBody436_60

def loopBody436_62 : HolLoopProg 64 :=
.seq loopBody436_31 loopBody436_61

def loopBody436_63 : HolLoopProg 64 :=
.mark loopBody436_62

def loopBody436_64 : HolLoopProg 64 :=
.seq loopBody436_29 loopBody436_63

def loopBody436_65 : HolLoopProg 64 :=
.mark loopBody436_64

def loopBody436_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody436_67 : HolLoopProg 64 :=
.mark loopBody436_66

def loopBody436_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody436_69 : HolLoopProg 64 :=
.mark loopBody436_68

def loopBody436_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody436_71 : HolLoopProg 64 :=
.mark loopBody436_70

def loopBody436_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody436_73 : HolLoopProg 64 :=
.mark loopBody436_72

def loopBody436_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody436_75 : HolLoopProg 64 :=
.mark loopBody436_74

def loopBody436_76 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 476) ([14, 15, 16, 17]) (some (14, loopBody436_75, loopBody436_1, (Flapjack.Spt.ln)))

def loopBody436_77 : HolLoopProg 64 :=
.mark loopBody436_76

def loopBody436_78 : HolLoopProg 64 :=
.seq loopBody436_77 loopBody436_1

def loopBody436_79 : HolLoopProg 64 :=
.mark loopBody436_78

def loopBody436_80 : HolLoopProg 64 :=
.seq loopBody436_73 loopBody436_79

def loopBody436_81 : HolLoopProg 64 :=
.mark loopBody436_80

def loopBody436_82 : HolLoopProg 64 :=
.seq loopBody436_71 loopBody436_81

def loopBody436_83 : HolLoopProg 64 :=
.mark loopBody436_82

def loopBody436_84 : HolLoopProg 64 :=
.seq loopBody436_69 loopBody436_83

def loopBody436_85 : HolLoopProg 64 :=
.mark loopBody436_84

def loopBody436_86 : HolLoopProg 64 :=
.seq loopBody436_67 loopBody436_85

def loopBody436_87 : HolLoopProg 64 :=
.mark loopBody436_86

def loopBody436_88 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_87

def loopBody436_89 : HolLoopProg 64 :=
.mark loopBody436_88

def loopBody436_90 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_89

def loopBody436_91 : HolLoopProg 64 :=
.mark loopBody436_90

def loopBody436_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody436_93 : HolLoopProg 64 :=
.mark loopBody436_92

def loopBody436_94 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 490) ([14]) (some (14, loopBody436_75, loopBody436_1, (Flapjack.Spt.ln)))

def loopBody436_95 : HolLoopProg 64 :=
.mark loopBody436_94

def loopBody436_96 : HolLoopProg 64 :=
.seq loopBody436_95 loopBody436_1

def loopBody436_97 : HolLoopProg 64 :=
.mark loopBody436_96

def loopBody436_98 : HolLoopProg 64 :=
.seq loopBody436_93 loopBody436_97

def loopBody436_99 : HolLoopProg 64 :=
.mark loopBody436_98

def loopBody436_100 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_99

def loopBody436_101 : HolLoopProg 64 :=
.mark loopBody436_100

def loopBody436_102 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_101

def loopBody436_103 : HolLoopProg 64 :=
.mark loopBody436_102

def loopBody436_104 : HolLoopProg 64 :=
.seq loopBody436_91 loopBody436_103

def loopBody436_105 : HolLoopProg 64 :=
.mark loopBody436_104

def loopBody436_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody436_107 : HolLoopProg 64 :=
.mark loopBody436_106

def loopBody436_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13]

def loopBody436_109 : HolLoopProg 64 :=
.mark loopBody436_108

def loopBody436_110 : HolLoopProg 64 :=
.seq loopBody436_109 loopBody436_1

def loopBody436_111 : HolLoopProg 64 :=
.mark loopBody436_110

def loopBody436_112 : HolLoopProg 64 :=
.seq loopBody436_107 loopBody436_111

def loopBody436_113 : HolLoopProg 64 :=
.mark loopBody436_112

def loopBody436_114 : HolLoopProg 64 :=
.seq loopBody436_105 loopBody436_113

def loopBody436_115 : HolLoopProg 64 :=
.mark loopBody436_114

def loopBody436_116 : HolLoopProg 64 :=
.seq loopBody436_65 loopBody436_115

def loopBody436_117 : HolLoopProg 64 :=
.mark loopBody436_116

def loopBody436_118 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_117

def loopBody436_119 : HolLoopProg 64 :=
.mark loopBody436_118

def loopBody436_120 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_119

def loopBody436_121 : HolLoopProg 64 :=
.mark loopBody436_120

def loopBody436_122 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_121

def loopBody436_123 : HolLoopProg 64 :=
.mark loopBody436_122

def loopBody436_124 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_123

def loopBody436_125 : HolLoopProg 64 :=
.mark loopBody436_124

def loopBody436_126 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_125

def loopBody436_127 : HolLoopProg 64 :=
.mark loopBody436_126

def loopBody436_128 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_127

def loopBody436_129 : HolLoopProg 64 :=
.mark loopBody436_128

def loopBody436_130 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_129

def loopBody436_131 : HolLoopProg 64 :=
.mark loopBody436_130

def loopBody436_132 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_131

def loopBody436_133 : HolLoopProg 64 :=
.mark loopBody436_132

def loopBody436_134 : HolLoopProg 64 :=
.seq loopBody436_27 loopBody436_133

def loopBody436_135 : HolLoopProg 64 :=
.mark loopBody436_134

def loopBody436_136 : HolLoopProg 64 :=
.seq loopBody436_13 loopBody436_135

def loopBody436_137 : HolLoopProg 64 :=
.mark loopBody436_136

def loopBody436_138 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_137

def loopBody436_139 : HolLoopProg 64 :=
.mark loopBody436_138

def loopBody436_140 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_139

def loopBody436_141 : HolLoopProg 64 :=
.mark loopBody436_140

def loopBody436_142 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_141

def loopBody436_143 : HolLoopProg 64 :=
.mark loopBody436_142

def loopBody436_144 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_143

def loopBody436_145 : HolLoopProg 64 :=
.mark loopBody436_144

def loopBody436_146 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_145

def loopBody436_147 : HolLoopProg 64 :=
.mark loopBody436_146

def loopBody436_148 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_147

def loopBody436_149 : HolLoopProg 64 :=
.mark loopBody436_148

def loopBody436_150 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_149

def loopBody436_151 : HolLoopProg 64 :=
.mark loopBody436_150

def loopBody436_152 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_151

def loopBody436_153 : HolLoopProg 64 :=
.mark loopBody436_152

def loopBody436_154 : HolLoopProg 64 :=
.seq loopBody436_7 loopBody436_153

def loopBody436_155 : HolLoopProg 64 :=
.mark loopBody436_154

def loopBody436_156 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_155

def loopBody436_157 : HolLoopProg 64 :=
.mark loopBody436_156

def loopBody436_158 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_157

def loopBody436_159 : HolLoopProg 64 :=
.mark loopBody436_158

def loopBody436_160 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_159

def loopBody436_161 : HolLoopProg 64 :=
.mark loopBody436_160

def loopBody436_162 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_161

def loopBody436_163 : HolLoopProg 64 :=
.mark loopBody436_162

def loopBody436_164 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_163

def loopBody436_165 : HolLoopProg 64 :=
.mark loopBody436_164

def loopBody436_166 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_165

def loopBody436_167 : HolLoopProg 64 :=
.mark loopBody436_166

def loopBody436_168 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_167

def loopBody436_169 : HolLoopProg 64 :=
.mark loopBody436_168

def loopBody436_170 : HolLoopProg 64 :=
.seq loopBody436_1 loopBody436_169

def loopBody436_171 : HolLoopProg 64 :=
.mark loopBody436_170

def output436 : Nat × List Nat × HolLoopProg 64 :=
  (500, [], loopBody436_171)
end InitECandidate.Proofs.FrontendStages.Loop
