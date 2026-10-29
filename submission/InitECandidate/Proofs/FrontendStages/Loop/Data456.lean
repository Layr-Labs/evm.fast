import InitECandidate.Proofs.FrontendStages.Loop.Translate440
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody456_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody456_1 : HolLoopProg 64 :=
.mark loopBody456_0

def loopBody456_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody456_3 : HolLoopProg 64 :=
.mark loopBody456_2

def loopBody456_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody456_3, loopBody456_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody456_5 : HolLoopProg 64 :=
.mark loopBody456_4

def loopBody456_6 : HolLoopProg 64 :=
.seq loopBody456_5 loopBody456_1

def loopBody456_7 : HolLoopProg 64 :=
.mark loopBody456_6

def loopBody456_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody456_9 : HolLoopProg 64 :=
.mark loopBody456_8

def loopBody456_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody456_9, loopBody456_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody456_11 : HolLoopProg 64 :=
.mark loopBody456_10

def loopBody456_12 : HolLoopProg 64 :=
.seq loopBody456_11 loopBody456_1

def loopBody456_13 : HolLoopProg 64 :=
.mark loopBody456_12

def loopBody456_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody456_15 : HolLoopProg 64 :=
.mark loopBody456_14

def loopBody456_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody456_17 : HolLoopProg 64 :=
.mark loopBody456_16

def loopBody456_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody456_17, loopBody456_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody456_19 : HolLoopProg 64 :=
.mark loopBody456_18

def loopBody456_20 : HolLoopProg 64 :=
.seq loopBody456_19 loopBody456_1

def loopBody456_21 : HolLoopProg 64 :=
.mark loopBody456_20

def loopBody456_22 : HolLoopProg 64 :=
.seq loopBody456_15 loopBody456_21

def loopBody456_23 : HolLoopProg 64 :=
.mark loopBody456_22

def loopBody456_24 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_23

def loopBody456_25 : HolLoopProg 64 :=
.mark loopBody456_24

def loopBody456_26 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_25

def loopBody456_27 : HolLoopProg 64 :=
.mark loopBody456_26

def loopBody456_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody456_29 : HolLoopProg 64 :=
.mark loopBody456_28

def loopBody456_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody456_31 : HolLoopProg 64 :=
.mark loopBody456_30

def loopBody456_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody456_33 : HolLoopProg 64 :=
.mark loopBody456_32

def loopBody456_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody456_35 : HolLoopProg 64 :=
.mark loopBody456_34

def loopBody456_36 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 462) ([10, 11, 12, 13]) (some (10, loopBody456_17, loopBody456_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody456_37 : HolLoopProg 64 :=
.mark loopBody456_36

def loopBody456_38 : HolLoopProg 64 :=
.seq loopBody456_37 loopBody456_1

def loopBody456_39 : HolLoopProg 64 :=
.mark loopBody456_38

def loopBody456_40 : HolLoopProg 64 :=
.seq loopBody456_35 loopBody456_39

def loopBody456_41 : HolLoopProg 64 :=
.mark loopBody456_40

def loopBody456_42 : HolLoopProg 64 :=
.seq loopBody456_33 loopBody456_41

def loopBody456_43 : HolLoopProg 64 :=
.mark loopBody456_42

def loopBody456_44 : HolLoopProg 64 :=
.seq loopBody456_31 loopBody456_43

def loopBody456_45 : HolLoopProg 64 :=
.mark loopBody456_44

def loopBody456_46 : HolLoopProg 64 :=
.seq loopBody456_29 loopBody456_45

def loopBody456_47 : HolLoopProg 64 :=
.mark loopBody456_46

def loopBody456_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody456_49 : HolLoopProg 64 :=
.mark loopBody456_48

def loopBody456_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody456_51 : HolLoopProg 64 :=
.mark loopBody456_50

def loopBody456_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody456_53 : HolLoopProg 64 :=
.mark loopBody456_52

def loopBody456_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody456_55 : HolLoopProg 64 :=
.mark loopBody456_54

def loopBody456_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 9)

def loopBody456_57 : HolLoopProg 64 :=
.mark loopBody456_56

def loopBody456_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody456_59 : HolLoopProg 64 :=
.mark loopBody456_58

def loopBody456_60 : HolLoopProg 64 :=
.call (some ([10, 11, 12, 13], Flapjack.Spt.ln)) (some 142) ([14, 15, 16, 17, 18]) (some (14, loopBody456_59, loopBody456_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody456_61 : HolLoopProg 64 :=
.mark loopBody456_60

def loopBody456_62 : HolLoopProg 64 :=
.seq loopBody456_61 loopBody456_1

def loopBody456_63 : HolLoopProg 64 :=
.mark loopBody456_62

def loopBody456_64 : HolLoopProg 64 :=
.seq loopBody456_57 loopBody456_63

def loopBody456_65 : HolLoopProg 64 :=
.mark loopBody456_64

def loopBody456_66 : HolLoopProg 64 :=
.seq loopBody456_55 loopBody456_65

def loopBody456_67 : HolLoopProg 64 :=
.mark loopBody456_66

def loopBody456_68 : HolLoopProg 64 :=
.seq loopBody456_53 loopBody456_67

def loopBody456_69 : HolLoopProg 64 :=
.mark loopBody456_68

def loopBody456_70 : HolLoopProg 64 :=
.seq loopBody456_51 loopBody456_69

def loopBody456_71 : HolLoopProg 64 :=
.mark loopBody456_70

def loopBody456_72 : HolLoopProg 64 :=
.seq loopBody456_49 loopBody456_71

def loopBody456_73 : HolLoopProg 64 :=
.mark loopBody456_72

def loopBody456_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody456_75 : HolLoopProg 64 :=
.mark loopBody456_74

def loopBody456_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody456_77 : HolLoopProg 64 :=
.mark loopBody456_76

def loopBody456_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody456_79 : HolLoopProg 64 :=
.mark loopBody456_78

def loopBody456_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody456_81 : HolLoopProg 64 :=
.mark loopBody456_80

def loopBody456_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 15

def loopBody456_83 : HolLoopProg 64 :=
.mark loopBody456_82

def loopBody456_84 : HolLoopProg 64 :=
.call (some ([14], Flapjack.Spt.ln)) (some 476) ([15, 16, 17, 18]) (some (15, loopBody456_83, loopBody456_1, (Flapjack.Spt.ln)))

def loopBody456_85 : HolLoopProg 64 :=
.mark loopBody456_84

def loopBody456_86 : HolLoopProg 64 :=
.seq loopBody456_85 loopBody456_1

def loopBody456_87 : HolLoopProg 64 :=
.mark loopBody456_86

def loopBody456_88 : HolLoopProg 64 :=
.seq loopBody456_81 loopBody456_87

def loopBody456_89 : HolLoopProg 64 :=
.mark loopBody456_88

def loopBody456_90 : HolLoopProg 64 :=
.seq loopBody456_79 loopBody456_89

def loopBody456_91 : HolLoopProg 64 :=
.mark loopBody456_90

def loopBody456_92 : HolLoopProg 64 :=
.seq loopBody456_77 loopBody456_91

def loopBody456_93 : HolLoopProg 64 :=
.mark loopBody456_92

def loopBody456_94 : HolLoopProg 64 :=
.seq loopBody456_75 loopBody456_93

def loopBody456_95 : HolLoopProg 64 :=
.mark loopBody456_94

def loopBody456_96 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_95

def loopBody456_97 : HolLoopProg 64 :=
.mark loopBody456_96

def loopBody456_98 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_97

def loopBody456_99 : HolLoopProg 64 :=
.mark loopBody456_98

def loopBody456_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody456_101 : HolLoopProg 64 :=
.mark loopBody456_100

def loopBody456_102 : HolLoopProg 64 :=
.call (some ([14], Flapjack.Spt.ln)) (some 490) ([15]) (some (15, loopBody456_83, loopBody456_1, (Flapjack.Spt.ln)))

def loopBody456_103 : HolLoopProg 64 :=
.mark loopBody456_102

def loopBody456_104 : HolLoopProg 64 :=
.seq loopBody456_103 loopBody456_1

def loopBody456_105 : HolLoopProg 64 :=
.mark loopBody456_104

def loopBody456_106 : HolLoopProg 64 :=
.seq loopBody456_101 loopBody456_105

def loopBody456_107 : HolLoopProg 64 :=
.mark loopBody456_106

def loopBody456_108 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_107

def loopBody456_109 : HolLoopProg 64 :=
.mark loopBody456_108

def loopBody456_110 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_109

def loopBody456_111 : HolLoopProg 64 :=
.mark loopBody456_110

def loopBody456_112 : HolLoopProg 64 :=
.seq loopBody456_99 loopBody456_111

def loopBody456_113 : HolLoopProg 64 :=
.mark loopBody456_112

def loopBody456_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody456_115 : HolLoopProg 64 :=
.mark loopBody456_114

def loopBody456_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14]

def loopBody456_117 : HolLoopProg 64 :=
.mark loopBody456_116

def loopBody456_118 : HolLoopProg 64 :=
.seq loopBody456_117 loopBody456_1

def loopBody456_119 : HolLoopProg 64 :=
.mark loopBody456_118

def loopBody456_120 : HolLoopProg 64 :=
.seq loopBody456_115 loopBody456_119

def loopBody456_121 : HolLoopProg 64 :=
.mark loopBody456_120

def loopBody456_122 : HolLoopProg 64 :=
.seq loopBody456_113 loopBody456_121

def loopBody456_123 : HolLoopProg 64 :=
.mark loopBody456_122

def loopBody456_124 : HolLoopProg 64 :=
.seq loopBody456_73 loopBody456_123

def loopBody456_125 : HolLoopProg 64 :=
.mark loopBody456_124

def loopBody456_126 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_125

def loopBody456_127 : HolLoopProg 64 :=
.mark loopBody456_126

def loopBody456_128 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_127

def loopBody456_129 : HolLoopProg 64 :=
.mark loopBody456_128

def loopBody456_130 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_129

def loopBody456_131 : HolLoopProg 64 :=
.mark loopBody456_130

def loopBody456_132 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_131

def loopBody456_133 : HolLoopProg 64 :=
.mark loopBody456_132

def loopBody456_134 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_133

def loopBody456_135 : HolLoopProg 64 :=
.mark loopBody456_134

def loopBody456_136 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_135

def loopBody456_137 : HolLoopProg 64 :=
.mark loopBody456_136

def loopBody456_138 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_137

def loopBody456_139 : HolLoopProg 64 :=
.mark loopBody456_138

def loopBody456_140 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_139

def loopBody456_141 : HolLoopProg 64 :=
.mark loopBody456_140

def loopBody456_142 : HolLoopProg 64 :=
.seq loopBody456_47 loopBody456_141

def loopBody456_143 : HolLoopProg 64 :=
.mark loopBody456_142

def loopBody456_144 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_143

def loopBody456_145 : HolLoopProg 64 :=
.mark loopBody456_144

def loopBody456_146 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_145

def loopBody456_147 : HolLoopProg 64 :=
.mark loopBody456_146

def loopBody456_148 : HolLoopProg 64 :=
.seq loopBody456_27 loopBody456_147

def loopBody456_149 : HolLoopProg 64 :=
.mark loopBody456_148

def loopBody456_150 : HolLoopProg 64 :=
.seq loopBody456_13 loopBody456_149

def loopBody456_151 : HolLoopProg 64 :=
.mark loopBody456_150

def loopBody456_152 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_151

def loopBody456_153 : HolLoopProg 64 :=
.mark loopBody456_152

def loopBody456_154 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_153

def loopBody456_155 : HolLoopProg 64 :=
.mark loopBody456_154

def loopBody456_156 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_155

def loopBody456_157 : HolLoopProg 64 :=
.mark loopBody456_156

def loopBody456_158 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_157

def loopBody456_159 : HolLoopProg 64 :=
.mark loopBody456_158

def loopBody456_160 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_159

def loopBody456_161 : HolLoopProg 64 :=
.mark loopBody456_160

def loopBody456_162 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_161

def loopBody456_163 : HolLoopProg 64 :=
.mark loopBody456_162

def loopBody456_164 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_163

def loopBody456_165 : HolLoopProg 64 :=
.mark loopBody456_164

def loopBody456_166 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_165

def loopBody456_167 : HolLoopProg 64 :=
.mark loopBody456_166

def loopBody456_168 : HolLoopProg 64 :=
.seq loopBody456_7 loopBody456_167

def loopBody456_169 : HolLoopProg 64 :=
.mark loopBody456_168

def loopBody456_170 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_169

def loopBody456_171 : HolLoopProg 64 :=
.mark loopBody456_170

def loopBody456_172 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_171

def loopBody456_173 : HolLoopProg 64 :=
.mark loopBody456_172

def loopBody456_174 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_173

def loopBody456_175 : HolLoopProg 64 :=
.mark loopBody456_174

def loopBody456_176 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_175

def loopBody456_177 : HolLoopProg 64 :=
.mark loopBody456_176

def loopBody456_178 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_177

def loopBody456_179 : HolLoopProg 64 :=
.mark loopBody456_178

def loopBody456_180 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_179

def loopBody456_181 : HolLoopProg 64 :=
.mark loopBody456_180

def loopBody456_182 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_181

def loopBody456_183 : HolLoopProg 64 :=
.mark loopBody456_182

def loopBody456_184 : HolLoopProg 64 :=
.seq loopBody456_1 loopBody456_183

def loopBody456_185 : HolLoopProg 64 :=
.mark loopBody456_184

def output456 : Nat × List Nat × HolLoopProg 64 :=
  (520, [], loopBody456_185)
end InitECandidate.Proofs.FrontendStages.Loop
