import InitECandidate.Proofs.FrontendStages.Loop.Translate441
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody457_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody457_1 : HolLoopProg 64 :=
.mark loopBody457_0

def loopBody457_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody457_3 : HolLoopProg 64 :=
.mark loopBody457_2

def loopBody457_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody457_3, loopBody457_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody457_5 : HolLoopProg 64 :=
.mark loopBody457_4

def loopBody457_6 : HolLoopProg 64 :=
.seq loopBody457_5 loopBody457_1

def loopBody457_7 : HolLoopProg 64 :=
.mark loopBody457_6

def loopBody457_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody457_9 : HolLoopProg 64 :=
.mark loopBody457_8

def loopBody457_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody457_9, loopBody457_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody457_11 : HolLoopProg 64 :=
.mark loopBody457_10

def loopBody457_12 : HolLoopProg 64 :=
.seq loopBody457_11 loopBody457_1

def loopBody457_13 : HolLoopProg 64 :=
.mark loopBody457_12

def loopBody457_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody457_15 : HolLoopProg 64 :=
.mark loopBody457_14

def loopBody457_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody457_17 : HolLoopProg 64 :=
.mark loopBody457_16

def loopBody457_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody457_17, loopBody457_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody457_19 : HolLoopProg 64 :=
.mark loopBody457_18

def loopBody457_20 : HolLoopProg 64 :=
.seq loopBody457_19 loopBody457_1

def loopBody457_21 : HolLoopProg 64 :=
.mark loopBody457_20

def loopBody457_22 : HolLoopProg 64 :=
.seq loopBody457_15 loopBody457_21

def loopBody457_23 : HolLoopProg 64 :=
.mark loopBody457_22

def loopBody457_24 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_23

def loopBody457_25 : HolLoopProg 64 :=
.mark loopBody457_24

def loopBody457_26 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_25

def loopBody457_27 : HolLoopProg 64 :=
.mark loopBody457_26

def loopBody457_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody457_29 : HolLoopProg 64 :=
.mark loopBody457_28

def loopBody457_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody457_31 : HolLoopProg 64 :=
.mark loopBody457_30

def loopBody457_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody457_33 : HolLoopProg 64 :=
.mark loopBody457_32

def loopBody457_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody457_35 : HolLoopProg 64 :=
.mark loopBody457_34

def loopBody457_36 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 462) ([10, 11, 12, 13]) (some (10, loopBody457_17, loopBody457_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody457_37 : HolLoopProg 64 :=
.mark loopBody457_36

def loopBody457_38 : HolLoopProg 64 :=
.seq loopBody457_37 loopBody457_1

def loopBody457_39 : HolLoopProg 64 :=
.mark loopBody457_38

def loopBody457_40 : HolLoopProg 64 :=
.seq loopBody457_35 loopBody457_39

def loopBody457_41 : HolLoopProg 64 :=
.mark loopBody457_40

def loopBody457_42 : HolLoopProg 64 :=
.seq loopBody457_33 loopBody457_41

def loopBody457_43 : HolLoopProg 64 :=
.mark loopBody457_42

def loopBody457_44 : HolLoopProg 64 :=
.seq loopBody457_31 loopBody457_43

def loopBody457_45 : HolLoopProg 64 :=
.mark loopBody457_44

def loopBody457_46 : HolLoopProg 64 :=
.seq loopBody457_29 loopBody457_45

def loopBody457_47 : HolLoopProg 64 :=
.mark loopBody457_46

def loopBody457_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody457_49 : HolLoopProg 64 :=
.mark loopBody457_48

def loopBody457_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody457_51 : HolLoopProg 64 :=
.mark loopBody457_50

def loopBody457_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody457_53 : HolLoopProg 64 :=
.mark loopBody457_52

def loopBody457_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody457_55 : HolLoopProg 64 :=
.mark loopBody457_54

def loopBody457_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 9)

def loopBody457_57 : HolLoopProg 64 :=
.mark loopBody457_56

def loopBody457_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody457_59 : HolLoopProg 64 :=
.mark loopBody457_58

def loopBody457_60 : HolLoopProg 64 :=
.call (some ([10, 11, 12, 13], Flapjack.Spt.ln)) (some 143) ([14, 15, 16, 17, 18]) (some (14, loopBody457_59, loopBody457_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody457_61 : HolLoopProg 64 :=
.mark loopBody457_60

def loopBody457_62 : HolLoopProg 64 :=
.seq loopBody457_61 loopBody457_1

def loopBody457_63 : HolLoopProg 64 :=
.mark loopBody457_62

def loopBody457_64 : HolLoopProg 64 :=
.seq loopBody457_57 loopBody457_63

def loopBody457_65 : HolLoopProg 64 :=
.mark loopBody457_64

def loopBody457_66 : HolLoopProg 64 :=
.seq loopBody457_55 loopBody457_65

def loopBody457_67 : HolLoopProg 64 :=
.mark loopBody457_66

def loopBody457_68 : HolLoopProg 64 :=
.seq loopBody457_53 loopBody457_67

def loopBody457_69 : HolLoopProg 64 :=
.mark loopBody457_68

def loopBody457_70 : HolLoopProg 64 :=
.seq loopBody457_51 loopBody457_69

def loopBody457_71 : HolLoopProg 64 :=
.mark loopBody457_70

def loopBody457_72 : HolLoopProg 64 :=
.seq loopBody457_49 loopBody457_71

def loopBody457_73 : HolLoopProg 64 :=
.mark loopBody457_72

def loopBody457_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody457_75 : HolLoopProg 64 :=
.mark loopBody457_74

def loopBody457_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody457_77 : HolLoopProg 64 :=
.mark loopBody457_76

def loopBody457_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody457_79 : HolLoopProg 64 :=
.mark loopBody457_78

def loopBody457_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody457_81 : HolLoopProg 64 :=
.mark loopBody457_80

def loopBody457_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 15

def loopBody457_83 : HolLoopProg 64 :=
.mark loopBody457_82

def loopBody457_84 : HolLoopProg 64 :=
.call (some ([14], Flapjack.Spt.ln)) (some 476) ([15, 16, 17, 18]) (some (15, loopBody457_83, loopBody457_1, (Flapjack.Spt.ln)))

def loopBody457_85 : HolLoopProg 64 :=
.mark loopBody457_84

def loopBody457_86 : HolLoopProg 64 :=
.seq loopBody457_85 loopBody457_1

def loopBody457_87 : HolLoopProg 64 :=
.mark loopBody457_86

def loopBody457_88 : HolLoopProg 64 :=
.seq loopBody457_81 loopBody457_87

def loopBody457_89 : HolLoopProg 64 :=
.mark loopBody457_88

def loopBody457_90 : HolLoopProg 64 :=
.seq loopBody457_79 loopBody457_89

def loopBody457_91 : HolLoopProg 64 :=
.mark loopBody457_90

def loopBody457_92 : HolLoopProg 64 :=
.seq loopBody457_77 loopBody457_91

def loopBody457_93 : HolLoopProg 64 :=
.mark loopBody457_92

def loopBody457_94 : HolLoopProg 64 :=
.seq loopBody457_75 loopBody457_93

def loopBody457_95 : HolLoopProg 64 :=
.mark loopBody457_94

def loopBody457_96 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_95

def loopBody457_97 : HolLoopProg 64 :=
.mark loopBody457_96

def loopBody457_98 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_97

def loopBody457_99 : HolLoopProg 64 :=
.mark loopBody457_98

def loopBody457_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody457_101 : HolLoopProg 64 :=
.mark loopBody457_100

def loopBody457_102 : HolLoopProg 64 :=
.call (some ([14], Flapjack.Spt.ln)) (some 490) ([15]) (some (15, loopBody457_83, loopBody457_1, (Flapjack.Spt.ln)))

def loopBody457_103 : HolLoopProg 64 :=
.mark loopBody457_102

def loopBody457_104 : HolLoopProg 64 :=
.seq loopBody457_103 loopBody457_1

def loopBody457_105 : HolLoopProg 64 :=
.mark loopBody457_104

def loopBody457_106 : HolLoopProg 64 :=
.seq loopBody457_101 loopBody457_105

def loopBody457_107 : HolLoopProg 64 :=
.mark loopBody457_106

def loopBody457_108 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_107

def loopBody457_109 : HolLoopProg 64 :=
.mark loopBody457_108

def loopBody457_110 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_109

def loopBody457_111 : HolLoopProg 64 :=
.mark loopBody457_110

def loopBody457_112 : HolLoopProg 64 :=
.seq loopBody457_99 loopBody457_111

def loopBody457_113 : HolLoopProg 64 :=
.mark loopBody457_112

def loopBody457_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody457_115 : HolLoopProg 64 :=
.mark loopBody457_114

def loopBody457_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14]

def loopBody457_117 : HolLoopProg 64 :=
.mark loopBody457_116

def loopBody457_118 : HolLoopProg 64 :=
.seq loopBody457_117 loopBody457_1

def loopBody457_119 : HolLoopProg 64 :=
.mark loopBody457_118

def loopBody457_120 : HolLoopProg 64 :=
.seq loopBody457_115 loopBody457_119

def loopBody457_121 : HolLoopProg 64 :=
.mark loopBody457_120

def loopBody457_122 : HolLoopProg 64 :=
.seq loopBody457_113 loopBody457_121

def loopBody457_123 : HolLoopProg 64 :=
.mark loopBody457_122

def loopBody457_124 : HolLoopProg 64 :=
.seq loopBody457_73 loopBody457_123

def loopBody457_125 : HolLoopProg 64 :=
.mark loopBody457_124

def loopBody457_126 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_125

def loopBody457_127 : HolLoopProg 64 :=
.mark loopBody457_126

def loopBody457_128 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_127

def loopBody457_129 : HolLoopProg 64 :=
.mark loopBody457_128

def loopBody457_130 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_129

def loopBody457_131 : HolLoopProg 64 :=
.mark loopBody457_130

def loopBody457_132 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_131

def loopBody457_133 : HolLoopProg 64 :=
.mark loopBody457_132

def loopBody457_134 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_133

def loopBody457_135 : HolLoopProg 64 :=
.mark loopBody457_134

def loopBody457_136 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_135

def loopBody457_137 : HolLoopProg 64 :=
.mark loopBody457_136

def loopBody457_138 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_137

def loopBody457_139 : HolLoopProg 64 :=
.mark loopBody457_138

def loopBody457_140 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_139

def loopBody457_141 : HolLoopProg 64 :=
.mark loopBody457_140

def loopBody457_142 : HolLoopProg 64 :=
.seq loopBody457_47 loopBody457_141

def loopBody457_143 : HolLoopProg 64 :=
.mark loopBody457_142

def loopBody457_144 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_143

def loopBody457_145 : HolLoopProg 64 :=
.mark loopBody457_144

def loopBody457_146 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_145

def loopBody457_147 : HolLoopProg 64 :=
.mark loopBody457_146

def loopBody457_148 : HolLoopProg 64 :=
.seq loopBody457_27 loopBody457_147

def loopBody457_149 : HolLoopProg 64 :=
.mark loopBody457_148

def loopBody457_150 : HolLoopProg 64 :=
.seq loopBody457_13 loopBody457_149

def loopBody457_151 : HolLoopProg 64 :=
.mark loopBody457_150

def loopBody457_152 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_151

def loopBody457_153 : HolLoopProg 64 :=
.mark loopBody457_152

def loopBody457_154 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_153

def loopBody457_155 : HolLoopProg 64 :=
.mark loopBody457_154

def loopBody457_156 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_155

def loopBody457_157 : HolLoopProg 64 :=
.mark loopBody457_156

def loopBody457_158 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_157

def loopBody457_159 : HolLoopProg 64 :=
.mark loopBody457_158

def loopBody457_160 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_159

def loopBody457_161 : HolLoopProg 64 :=
.mark loopBody457_160

def loopBody457_162 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_161

def loopBody457_163 : HolLoopProg 64 :=
.mark loopBody457_162

def loopBody457_164 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_163

def loopBody457_165 : HolLoopProg 64 :=
.mark loopBody457_164

def loopBody457_166 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_165

def loopBody457_167 : HolLoopProg 64 :=
.mark loopBody457_166

def loopBody457_168 : HolLoopProg 64 :=
.seq loopBody457_7 loopBody457_167

def loopBody457_169 : HolLoopProg 64 :=
.mark loopBody457_168

def loopBody457_170 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_169

def loopBody457_171 : HolLoopProg 64 :=
.mark loopBody457_170

def loopBody457_172 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_171

def loopBody457_173 : HolLoopProg 64 :=
.mark loopBody457_172

def loopBody457_174 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_173

def loopBody457_175 : HolLoopProg 64 :=
.mark loopBody457_174

def loopBody457_176 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_175

def loopBody457_177 : HolLoopProg 64 :=
.mark loopBody457_176

def loopBody457_178 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_177

def loopBody457_179 : HolLoopProg 64 :=
.mark loopBody457_178

def loopBody457_180 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_179

def loopBody457_181 : HolLoopProg 64 :=
.mark loopBody457_180

def loopBody457_182 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_181

def loopBody457_183 : HolLoopProg 64 :=
.mark loopBody457_182

def loopBody457_184 : HolLoopProg 64 :=
.seq loopBody457_1 loopBody457_183

def loopBody457_185 : HolLoopProg 64 :=
.mark loopBody457_184

def output457 : Nat × List Nat × HolLoopProg 64 :=
  (521, [], loopBody457_185)
end InitECandidate.Proofs.FrontendStages.Loop
