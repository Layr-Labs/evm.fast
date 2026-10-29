import InitECandidate.Proofs.FrontendStages.Loop.Translate439
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody455_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody455_1 : HolLoopProg 64 :=
.mark loopBody455_0

def loopBody455_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody455_3 : HolLoopProg 64 :=
.mark loopBody455_2

def loopBody455_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody455_3, loopBody455_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody455_5 : HolLoopProg 64 :=
.mark loopBody455_4

def loopBody455_6 : HolLoopProg 64 :=
.seq loopBody455_5 loopBody455_1

def loopBody455_7 : HolLoopProg 64 :=
.mark loopBody455_6

def loopBody455_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody455_9 : HolLoopProg 64 :=
.mark loopBody455_8

def loopBody455_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody455_9, loopBody455_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody455_11 : HolLoopProg 64 :=
.mark loopBody455_10

def loopBody455_12 : HolLoopProg 64 :=
.seq loopBody455_11 loopBody455_1

def loopBody455_13 : HolLoopProg 64 :=
.mark loopBody455_12

def loopBody455_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody455_15 : HolLoopProg 64 :=
.mark loopBody455_14

def loopBody455_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody455_17 : HolLoopProg 64 :=
.mark loopBody455_16

def loopBody455_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody455_17, loopBody455_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody455_19 : HolLoopProg 64 :=
.mark loopBody455_18

def loopBody455_20 : HolLoopProg 64 :=
.seq loopBody455_19 loopBody455_1

def loopBody455_21 : HolLoopProg 64 :=
.mark loopBody455_20

def loopBody455_22 : HolLoopProg 64 :=
.seq loopBody455_15 loopBody455_21

def loopBody455_23 : HolLoopProg 64 :=
.mark loopBody455_22

def loopBody455_24 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_23

def loopBody455_25 : HolLoopProg 64 :=
.mark loopBody455_24

def loopBody455_26 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_25

def loopBody455_27 : HolLoopProg 64 :=
.mark loopBody455_26

def loopBody455_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 1)

def loopBody455_29 : HolLoopProg 64 :=
.mark loopBody455_28

def loopBody455_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody455_31 : HolLoopProg 64 :=
.mark loopBody455_30

def loopBody455_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody455_33 : HolLoopProg 64 :=
.mark loopBody455_32

def loopBody455_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody455_35 : HolLoopProg 64 :=
.mark loopBody455_34

def loopBody455_36 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 462) ([10, 11, 12, 13]) (some (10, loopBody455_17, loopBody455_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody455_37 : HolLoopProg 64 :=
.mark loopBody455_36

def loopBody455_38 : HolLoopProg 64 :=
.seq loopBody455_37 loopBody455_1

def loopBody455_39 : HolLoopProg 64 :=
.mark loopBody455_38

def loopBody455_40 : HolLoopProg 64 :=
.seq loopBody455_35 loopBody455_39

def loopBody455_41 : HolLoopProg 64 :=
.mark loopBody455_40

def loopBody455_42 : HolLoopProg 64 :=
.seq loopBody455_33 loopBody455_41

def loopBody455_43 : HolLoopProg 64 :=
.mark loopBody455_42

def loopBody455_44 : HolLoopProg 64 :=
.seq loopBody455_31 loopBody455_43

def loopBody455_45 : HolLoopProg 64 :=
.mark loopBody455_44

def loopBody455_46 : HolLoopProg 64 :=
.seq loopBody455_29 loopBody455_45

def loopBody455_47 : HolLoopProg 64 :=
.mark loopBody455_46

def loopBody455_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody455_49 : HolLoopProg 64 :=
.mark loopBody455_48

def loopBody455_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody455_51 : HolLoopProg 64 :=
.mark loopBody455_50

def loopBody455_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody455_53 : HolLoopProg 64 :=
.mark loopBody455_52

def loopBody455_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody455_55 : HolLoopProg 64 :=
.mark loopBody455_54

def loopBody455_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 9)

def loopBody455_57 : HolLoopProg 64 :=
.mark loopBody455_56

def loopBody455_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody455_59 : HolLoopProg 64 :=
.mark loopBody455_58

def loopBody455_60 : HolLoopProg 64 :=
.call (some ([10, 11, 12, 13], Flapjack.Spt.ln)) (some 141) ([14, 15, 16, 17, 18]) (some (14, loopBody455_59, loopBody455_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody455_61 : HolLoopProg 64 :=
.mark loopBody455_60

def loopBody455_62 : HolLoopProg 64 :=
.seq loopBody455_61 loopBody455_1

def loopBody455_63 : HolLoopProg 64 :=
.mark loopBody455_62

def loopBody455_64 : HolLoopProg 64 :=
.seq loopBody455_57 loopBody455_63

def loopBody455_65 : HolLoopProg 64 :=
.mark loopBody455_64

def loopBody455_66 : HolLoopProg 64 :=
.seq loopBody455_55 loopBody455_65

def loopBody455_67 : HolLoopProg 64 :=
.mark loopBody455_66

def loopBody455_68 : HolLoopProg 64 :=
.seq loopBody455_53 loopBody455_67

def loopBody455_69 : HolLoopProg 64 :=
.mark loopBody455_68

def loopBody455_70 : HolLoopProg 64 :=
.seq loopBody455_51 loopBody455_69

def loopBody455_71 : HolLoopProg 64 :=
.mark loopBody455_70

def loopBody455_72 : HolLoopProg 64 :=
.seq loopBody455_49 loopBody455_71

def loopBody455_73 : HolLoopProg 64 :=
.mark loopBody455_72

def loopBody455_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody455_75 : HolLoopProg 64 :=
.mark loopBody455_74

def loopBody455_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody455_77 : HolLoopProg 64 :=
.mark loopBody455_76

def loopBody455_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody455_79 : HolLoopProg 64 :=
.mark loopBody455_78

def loopBody455_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody455_81 : HolLoopProg 64 :=
.mark loopBody455_80

def loopBody455_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 15

def loopBody455_83 : HolLoopProg 64 :=
.mark loopBody455_82

def loopBody455_84 : HolLoopProg 64 :=
.call (some ([14], Flapjack.Spt.ln)) (some 476) ([15, 16, 17, 18]) (some (15, loopBody455_83, loopBody455_1, (Flapjack.Spt.ln)))

def loopBody455_85 : HolLoopProg 64 :=
.mark loopBody455_84

def loopBody455_86 : HolLoopProg 64 :=
.seq loopBody455_85 loopBody455_1

def loopBody455_87 : HolLoopProg 64 :=
.mark loopBody455_86

def loopBody455_88 : HolLoopProg 64 :=
.seq loopBody455_81 loopBody455_87

def loopBody455_89 : HolLoopProg 64 :=
.mark loopBody455_88

def loopBody455_90 : HolLoopProg 64 :=
.seq loopBody455_79 loopBody455_89

def loopBody455_91 : HolLoopProg 64 :=
.mark loopBody455_90

def loopBody455_92 : HolLoopProg 64 :=
.seq loopBody455_77 loopBody455_91

def loopBody455_93 : HolLoopProg 64 :=
.mark loopBody455_92

def loopBody455_94 : HolLoopProg 64 :=
.seq loopBody455_75 loopBody455_93

def loopBody455_95 : HolLoopProg 64 :=
.mark loopBody455_94

def loopBody455_96 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_95

def loopBody455_97 : HolLoopProg 64 :=
.mark loopBody455_96

def loopBody455_98 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_97

def loopBody455_99 : HolLoopProg 64 :=
.mark loopBody455_98

def loopBody455_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody455_101 : HolLoopProg 64 :=
.mark loopBody455_100

def loopBody455_102 : HolLoopProg 64 :=
.call (some ([14], Flapjack.Spt.ln)) (some 490) ([15]) (some (15, loopBody455_83, loopBody455_1, (Flapjack.Spt.ln)))

def loopBody455_103 : HolLoopProg 64 :=
.mark loopBody455_102

def loopBody455_104 : HolLoopProg 64 :=
.seq loopBody455_103 loopBody455_1

def loopBody455_105 : HolLoopProg 64 :=
.mark loopBody455_104

def loopBody455_106 : HolLoopProg 64 :=
.seq loopBody455_101 loopBody455_105

def loopBody455_107 : HolLoopProg 64 :=
.mark loopBody455_106

def loopBody455_108 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_107

def loopBody455_109 : HolLoopProg 64 :=
.mark loopBody455_108

def loopBody455_110 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_109

def loopBody455_111 : HolLoopProg 64 :=
.mark loopBody455_110

def loopBody455_112 : HolLoopProg 64 :=
.seq loopBody455_99 loopBody455_111

def loopBody455_113 : HolLoopProg 64 :=
.mark loopBody455_112

def loopBody455_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody455_115 : HolLoopProg 64 :=
.mark loopBody455_114

def loopBody455_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14]

def loopBody455_117 : HolLoopProg 64 :=
.mark loopBody455_116

def loopBody455_118 : HolLoopProg 64 :=
.seq loopBody455_117 loopBody455_1

def loopBody455_119 : HolLoopProg 64 :=
.mark loopBody455_118

def loopBody455_120 : HolLoopProg 64 :=
.seq loopBody455_115 loopBody455_119

def loopBody455_121 : HolLoopProg 64 :=
.mark loopBody455_120

def loopBody455_122 : HolLoopProg 64 :=
.seq loopBody455_113 loopBody455_121

def loopBody455_123 : HolLoopProg 64 :=
.mark loopBody455_122

def loopBody455_124 : HolLoopProg 64 :=
.seq loopBody455_73 loopBody455_123

def loopBody455_125 : HolLoopProg 64 :=
.mark loopBody455_124

def loopBody455_126 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_125

def loopBody455_127 : HolLoopProg 64 :=
.mark loopBody455_126

def loopBody455_128 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_127

def loopBody455_129 : HolLoopProg 64 :=
.mark loopBody455_128

def loopBody455_130 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_129

def loopBody455_131 : HolLoopProg 64 :=
.mark loopBody455_130

def loopBody455_132 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_131

def loopBody455_133 : HolLoopProg 64 :=
.mark loopBody455_132

def loopBody455_134 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_133

def loopBody455_135 : HolLoopProg 64 :=
.mark loopBody455_134

def loopBody455_136 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_135

def loopBody455_137 : HolLoopProg 64 :=
.mark loopBody455_136

def loopBody455_138 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_137

def loopBody455_139 : HolLoopProg 64 :=
.mark loopBody455_138

def loopBody455_140 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_139

def loopBody455_141 : HolLoopProg 64 :=
.mark loopBody455_140

def loopBody455_142 : HolLoopProg 64 :=
.seq loopBody455_47 loopBody455_141

def loopBody455_143 : HolLoopProg 64 :=
.mark loopBody455_142

def loopBody455_144 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_143

def loopBody455_145 : HolLoopProg 64 :=
.mark loopBody455_144

def loopBody455_146 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_145

def loopBody455_147 : HolLoopProg 64 :=
.mark loopBody455_146

def loopBody455_148 : HolLoopProg 64 :=
.seq loopBody455_27 loopBody455_147

def loopBody455_149 : HolLoopProg 64 :=
.mark loopBody455_148

def loopBody455_150 : HolLoopProg 64 :=
.seq loopBody455_13 loopBody455_149

def loopBody455_151 : HolLoopProg 64 :=
.mark loopBody455_150

def loopBody455_152 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_151

def loopBody455_153 : HolLoopProg 64 :=
.mark loopBody455_152

def loopBody455_154 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_153

def loopBody455_155 : HolLoopProg 64 :=
.mark loopBody455_154

def loopBody455_156 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_155

def loopBody455_157 : HolLoopProg 64 :=
.mark loopBody455_156

def loopBody455_158 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_157

def loopBody455_159 : HolLoopProg 64 :=
.mark loopBody455_158

def loopBody455_160 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_159

def loopBody455_161 : HolLoopProg 64 :=
.mark loopBody455_160

def loopBody455_162 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_161

def loopBody455_163 : HolLoopProg 64 :=
.mark loopBody455_162

def loopBody455_164 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_163

def loopBody455_165 : HolLoopProg 64 :=
.mark loopBody455_164

def loopBody455_166 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_165

def loopBody455_167 : HolLoopProg 64 :=
.mark loopBody455_166

def loopBody455_168 : HolLoopProg 64 :=
.seq loopBody455_7 loopBody455_167

def loopBody455_169 : HolLoopProg 64 :=
.mark loopBody455_168

def loopBody455_170 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_169

def loopBody455_171 : HolLoopProg 64 :=
.mark loopBody455_170

def loopBody455_172 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_171

def loopBody455_173 : HolLoopProg 64 :=
.mark loopBody455_172

def loopBody455_174 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_173

def loopBody455_175 : HolLoopProg 64 :=
.mark loopBody455_174

def loopBody455_176 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_175

def loopBody455_177 : HolLoopProg 64 :=
.mark loopBody455_176

def loopBody455_178 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_177

def loopBody455_179 : HolLoopProg 64 :=
.mark loopBody455_178

def loopBody455_180 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_179

def loopBody455_181 : HolLoopProg 64 :=
.mark loopBody455_180

def loopBody455_182 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_181

def loopBody455_183 : HolLoopProg 64 :=
.mark loopBody455_182

def loopBody455_184 : HolLoopProg 64 :=
.seq loopBody455_1 loopBody455_183

def loopBody455_185 : HolLoopProg 64 :=
.mark loopBody455_184

def output455 : Nat × List Nat × HolLoopProg 64 :=
  (519, [], loopBody455_185)
end InitECandidate.Proofs.FrontendStages.Loop
