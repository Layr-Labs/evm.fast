import InitECandidate.Proofs.FrontendStages.Loop.Translate422
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody438_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody438_1 : HolLoopProg 64 :=
.mark loopBody438_0

def loopBody438_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody438_3 : HolLoopProg 64 :=
.mark loopBody438_2

def loopBody438_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody438_3, loopBody438_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody438_5 : HolLoopProg 64 :=
.mark loopBody438_4

def loopBody438_6 : HolLoopProg 64 :=
.seq loopBody438_5 loopBody438_1

def loopBody438_7 : HolLoopProg 64 :=
.mark loopBody438_6

def loopBody438_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody438_9 : HolLoopProg 64 :=
.mark loopBody438_8

def loopBody438_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody438_9, loopBody438_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody438_11 : HolLoopProg 64 :=
.mark loopBody438_10

def loopBody438_12 : HolLoopProg 64 :=
.seq loopBody438_11 loopBody438_1

def loopBody438_13 : HolLoopProg 64 :=
.mark loopBody438_12

def loopBody438_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 5#64)

def loopBody438_15 : HolLoopProg 64 :=
.mark loopBody438_14

def loopBody438_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody438_17 : HolLoopProg 64 :=
.mark loopBody438_16

def loopBody438_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody438_17, loopBody438_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody438_19 : HolLoopProg 64 :=
.mark loopBody438_18

def loopBody438_20 : HolLoopProg 64 :=
.seq loopBody438_19 loopBody438_1

def loopBody438_21 : HolLoopProg 64 :=
.mark loopBody438_20

def loopBody438_22 : HolLoopProg 64 :=
.seq loopBody438_15 loopBody438_21

def loopBody438_23 : HolLoopProg 64 :=
.mark loopBody438_22

def loopBody438_24 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_23

def loopBody438_25 : HolLoopProg 64 :=
.mark loopBody438_24

def loopBody438_26 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_25

def loopBody438_27 : HolLoopProg 64 :=
.mark loopBody438_26

def loopBody438_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody438_29 : HolLoopProg 64 :=
.mark loopBody438_28

def loopBody438_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody438_31 : HolLoopProg 64 :=
.mark loopBody438_30

def loopBody438_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody438_33 : HolLoopProg 64 :=
.mark loopBody438_32

def loopBody438_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody438_35 : HolLoopProg 64 :=
.mark loopBody438_34

def loopBody438_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody438_37 : HolLoopProg 64 :=
.mark loopBody438_36

def loopBody438_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody438_39 : HolLoopProg 64 :=
.mark loopBody438_38

def loopBody438_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody438_41 : HolLoopProg 64 :=
.mark loopBody438_40

def loopBody438_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 8)

def loopBody438_43 : HolLoopProg 64 :=
.mark loopBody438_42

def loopBody438_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody438_45 : HolLoopProg 64 :=
.mark loopBody438_44

def loopBody438_46 : HolLoopProg 64 :=
.call (some ([9, 10, 11, 12], Flapjack.Spt.ln)) (some 131) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody438_45, loopBody438_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody438_47 : HolLoopProg 64 :=
.mark loopBody438_46

def loopBody438_48 : HolLoopProg 64 :=
.seq loopBody438_47 loopBody438_1

def loopBody438_49 : HolLoopProg 64 :=
.mark loopBody438_48

def loopBody438_50 : HolLoopProg 64 :=
.seq loopBody438_43 loopBody438_49

def loopBody438_51 : HolLoopProg 64 :=
.mark loopBody438_50

def loopBody438_52 : HolLoopProg 64 :=
.seq loopBody438_41 loopBody438_51

def loopBody438_53 : HolLoopProg 64 :=
.mark loopBody438_52

def loopBody438_54 : HolLoopProg 64 :=
.seq loopBody438_39 loopBody438_53

def loopBody438_55 : HolLoopProg 64 :=
.mark loopBody438_54

def loopBody438_56 : HolLoopProg 64 :=
.seq loopBody438_37 loopBody438_55

def loopBody438_57 : HolLoopProg 64 :=
.mark loopBody438_56

def loopBody438_58 : HolLoopProg 64 :=
.seq loopBody438_35 loopBody438_57

def loopBody438_59 : HolLoopProg 64 :=
.mark loopBody438_58

def loopBody438_60 : HolLoopProg 64 :=
.seq loopBody438_33 loopBody438_59

def loopBody438_61 : HolLoopProg 64 :=
.mark loopBody438_60

def loopBody438_62 : HolLoopProg 64 :=
.seq loopBody438_31 loopBody438_61

def loopBody438_63 : HolLoopProg 64 :=
.mark loopBody438_62

def loopBody438_64 : HolLoopProg 64 :=
.seq loopBody438_29 loopBody438_63

def loopBody438_65 : HolLoopProg 64 :=
.mark loopBody438_64

def loopBody438_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody438_67 : HolLoopProg 64 :=
.mark loopBody438_66

def loopBody438_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody438_69 : HolLoopProg 64 :=
.mark loopBody438_68

def loopBody438_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody438_71 : HolLoopProg 64 :=
.mark loopBody438_70

def loopBody438_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody438_73 : HolLoopProg 64 :=
.mark loopBody438_72

def loopBody438_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody438_75 : HolLoopProg 64 :=
.mark loopBody438_74

def loopBody438_76 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 476) ([14, 15, 16, 17]) (some (14, loopBody438_75, loopBody438_1, (Flapjack.Spt.ln)))

def loopBody438_77 : HolLoopProg 64 :=
.mark loopBody438_76

def loopBody438_78 : HolLoopProg 64 :=
.seq loopBody438_77 loopBody438_1

def loopBody438_79 : HolLoopProg 64 :=
.mark loopBody438_78

def loopBody438_80 : HolLoopProg 64 :=
.seq loopBody438_73 loopBody438_79

def loopBody438_81 : HolLoopProg 64 :=
.mark loopBody438_80

def loopBody438_82 : HolLoopProg 64 :=
.seq loopBody438_71 loopBody438_81

def loopBody438_83 : HolLoopProg 64 :=
.mark loopBody438_82

def loopBody438_84 : HolLoopProg 64 :=
.seq loopBody438_69 loopBody438_83

def loopBody438_85 : HolLoopProg 64 :=
.mark loopBody438_84

def loopBody438_86 : HolLoopProg 64 :=
.seq loopBody438_67 loopBody438_85

def loopBody438_87 : HolLoopProg 64 :=
.mark loopBody438_86

def loopBody438_88 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_87

def loopBody438_89 : HolLoopProg 64 :=
.mark loopBody438_88

def loopBody438_90 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_89

def loopBody438_91 : HolLoopProg 64 :=
.mark loopBody438_90

def loopBody438_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody438_93 : HolLoopProg 64 :=
.mark loopBody438_92

def loopBody438_94 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 490) ([14]) (some (14, loopBody438_75, loopBody438_1, (Flapjack.Spt.ln)))

def loopBody438_95 : HolLoopProg 64 :=
.mark loopBody438_94

def loopBody438_96 : HolLoopProg 64 :=
.seq loopBody438_95 loopBody438_1

def loopBody438_97 : HolLoopProg 64 :=
.mark loopBody438_96

def loopBody438_98 : HolLoopProg 64 :=
.seq loopBody438_93 loopBody438_97

def loopBody438_99 : HolLoopProg 64 :=
.mark loopBody438_98

def loopBody438_100 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_99

def loopBody438_101 : HolLoopProg 64 :=
.mark loopBody438_100

def loopBody438_102 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_101

def loopBody438_103 : HolLoopProg 64 :=
.mark loopBody438_102

def loopBody438_104 : HolLoopProg 64 :=
.seq loopBody438_91 loopBody438_103

def loopBody438_105 : HolLoopProg 64 :=
.mark loopBody438_104

def loopBody438_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody438_107 : HolLoopProg 64 :=
.mark loopBody438_106

def loopBody438_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13]

def loopBody438_109 : HolLoopProg 64 :=
.mark loopBody438_108

def loopBody438_110 : HolLoopProg 64 :=
.seq loopBody438_109 loopBody438_1

def loopBody438_111 : HolLoopProg 64 :=
.mark loopBody438_110

def loopBody438_112 : HolLoopProg 64 :=
.seq loopBody438_107 loopBody438_111

def loopBody438_113 : HolLoopProg 64 :=
.mark loopBody438_112

def loopBody438_114 : HolLoopProg 64 :=
.seq loopBody438_105 loopBody438_113

def loopBody438_115 : HolLoopProg 64 :=
.mark loopBody438_114

def loopBody438_116 : HolLoopProg 64 :=
.seq loopBody438_65 loopBody438_115

def loopBody438_117 : HolLoopProg 64 :=
.mark loopBody438_116

def loopBody438_118 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_117

def loopBody438_119 : HolLoopProg 64 :=
.mark loopBody438_118

def loopBody438_120 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_119

def loopBody438_121 : HolLoopProg 64 :=
.mark loopBody438_120

def loopBody438_122 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_121

def loopBody438_123 : HolLoopProg 64 :=
.mark loopBody438_122

def loopBody438_124 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_123

def loopBody438_125 : HolLoopProg 64 :=
.mark loopBody438_124

def loopBody438_126 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_125

def loopBody438_127 : HolLoopProg 64 :=
.mark loopBody438_126

def loopBody438_128 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_127

def loopBody438_129 : HolLoopProg 64 :=
.mark loopBody438_128

def loopBody438_130 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_129

def loopBody438_131 : HolLoopProg 64 :=
.mark loopBody438_130

def loopBody438_132 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_131

def loopBody438_133 : HolLoopProg 64 :=
.mark loopBody438_132

def loopBody438_134 : HolLoopProg 64 :=
.seq loopBody438_27 loopBody438_133

def loopBody438_135 : HolLoopProg 64 :=
.mark loopBody438_134

def loopBody438_136 : HolLoopProg 64 :=
.seq loopBody438_13 loopBody438_135

def loopBody438_137 : HolLoopProg 64 :=
.mark loopBody438_136

def loopBody438_138 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_137

def loopBody438_139 : HolLoopProg 64 :=
.mark loopBody438_138

def loopBody438_140 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_139

def loopBody438_141 : HolLoopProg 64 :=
.mark loopBody438_140

def loopBody438_142 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_141

def loopBody438_143 : HolLoopProg 64 :=
.mark loopBody438_142

def loopBody438_144 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_143

def loopBody438_145 : HolLoopProg 64 :=
.mark loopBody438_144

def loopBody438_146 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_145

def loopBody438_147 : HolLoopProg 64 :=
.mark loopBody438_146

def loopBody438_148 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_147

def loopBody438_149 : HolLoopProg 64 :=
.mark loopBody438_148

def loopBody438_150 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_149

def loopBody438_151 : HolLoopProg 64 :=
.mark loopBody438_150

def loopBody438_152 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_151

def loopBody438_153 : HolLoopProg 64 :=
.mark loopBody438_152

def loopBody438_154 : HolLoopProg 64 :=
.seq loopBody438_7 loopBody438_153

def loopBody438_155 : HolLoopProg 64 :=
.mark loopBody438_154

def loopBody438_156 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_155

def loopBody438_157 : HolLoopProg 64 :=
.mark loopBody438_156

def loopBody438_158 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_157

def loopBody438_159 : HolLoopProg 64 :=
.mark loopBody438_158

def loopBody438_160 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_159

def loopBody438_161 : HolLoopProg 64 :=
.mark loopBody438_160

def loopBody438_162 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_161

def loopBody438_163 : HolLoopProg 64 :=
.mark loopBody438_162

def loopBody438_164 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_163

def loopBody438_165 : HolLoopProg 64 :=
.mark loopBody438_164

def loopBody438_166 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_165

def loopBody438_167 : HolLoopProg 64 :=
.mark loopBody438_166

def loopBody438_168 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_167

def loopBody438_169 : HolLoopProg 64 :=
.mark loopBody438_168

def loopBody438_170 : HolLoopProg 64 :=
.seq loopBody438_1 loopBody438_169

def loopBody438_171 : HolLoopProg 64 :=
.mark loopBody438_170

def output438 : Nat × List Nat × HolLoopProg 64 :=
  (502, [], loopBody438_171)
end InitECandidate.Proofs.FrontendStages.Loop
