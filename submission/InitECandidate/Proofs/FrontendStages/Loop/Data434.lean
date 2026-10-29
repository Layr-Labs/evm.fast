import InitECandidate.Proofs.FrontendStages.Loop.Translate418
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody434_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody434_1 : HolLoopProg 64 :=
.mark loopBody434_0

def loopBody434_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody434_3 : HolLoopProg 64 :=
.mark loopBody434_2

def loopBody434_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody434_3, loopBody434_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody434_5 : HolLoopProg 64 :=
.mark loopBody434_4

def loopBody434_6 : HolLoopProg 64 :=
.seq loopBody434_5 loopBody434_1

def loopBody434_7 : HolLoopProg 64 :=
.mark loopBody434_6

def loopBody434_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody434_9 : HolLoopProg 64 :=
.mark loopBody434_8

def loopBody434_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody434_9, loopBody434_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody434_11 : HolLoopProg 64 :=
.mark loopBody434_10

def loopBody434_12 : HolLoopProg 64 :=
.seq loopBody434_11 loopBody434_1

def loopBody434_13 : HolLoopProg 64 :=
.mark loopBody434_12

def loopBody434_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 5#64)

def loopBody434_15 : HolLoopProg 64 :=
.mark loopBody434_14

def loopBody434_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody434_17 : HolLoopProg 64 :=
.mark loopBody434_16

def loopBody434_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody434_17, loopBody434_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody434_19 : HolLoopProg 64 :=
.mark loopBody434_18

def loopBody434_20 : HolLoopProg 64 :=
.seq loopBody434_19 loopBody434_1

def loopBody434_21 : HolLoopProg 64 :=
.mark loopBody434_20

def loopBody434_22 : HolLoopProg 64 :=
.seq loopBody434_15 loopBody434_21

def loopBody434_23 : HolLoopProg 64 :=
.mark loopBody434_22

def loopBody434_24 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_23

def loopBody434_25 : HolLoopProg 64 :=
.mark loopBody434_24

def loopBody434_26 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_25

def loopBody434_27 : HolLoopProg 64 :=
.mark loopBody434_26

def loopBody434_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody434_29 : HolLoopProg 64 :=
.mark loopBody434_28

def loopBody434_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody434_31 : HolLoopProg 64 :=
.mark loopBody434_30

def loopBody434_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody434_33 : HolLoopProg 64 :=
.mark loopBody434_32

def loopBody434_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody434_35 : HolLoopProg 64 :=
.mark loopBody434_34

def loopBody434_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody434_37 : HolLoopProg 64 :=
.mark loopBody434_36

def loopBody434_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody434_39 : HolLoopProg 64 :=
.mark loopBody434_38

def loopBody434_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody434_41 : HolLoopProg 64 :=
.mark loopBody434_40

def loopBody434_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 8)

def loopBody434_43 : HolLoopProg 64 :=
.mark loopBody434_42

def loopBody434_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody434_45 : HolLoopProg 64 :=
.mark loopBody434_44

def loopBody434_46 : HolLoopProg 64 :=
.call (some ([9, 10, 11, 12], Flapjack.Spt.ln)) (some 120) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody434_45, loopBody434_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody434_47 : HolLoopProg 64 :=
.mark loopBody434_46

def loopBody434_48 : HolLoopProg 64 :=
.seq loopBody434_47 loopBody434_1

def loopBody434_49 : HolLoopProg 64 :=
.mark loopBody434_48

def loopBody434_50 : HolLoopProg 64 :=
.seq loopBody434_43 loopBody434_49

def loopBody434_51 : HolLoopProg 64 :=
.mark loopBody434_50

def loopBody434_52 : HolLoopProg 64 :=
.seq loopBody434_41 loopBody434_51

def loopBody434_53 : HolLoopProg 64 :=
.mark loopBody434_52

def loopBody434_54 : HolLoopProg 64 :=
.seq loopBody434_39 loopBody434_53

def loopBody434_55 : HolLoopProg 64 :=
.mark loopBody434_54

def loopBody434_56 : HolLoopProg 64 :=
.seq loopBody434_37 loopBody434_55

def loopBody434_57 : HolLoopProg 64 :=
.mark loopBody434_56

def loopBody434_58 : HolLoopProg 64 :=
.seq loopBody434_35 loopBody434_57

def loopBody434_59 : HolLoopProg 64 :=
.mark loopBody434_58

def loopBody434_60 : HolLoopProg 64 :=
.seq loopBody434_33 loopBody434_59

def loopBody434_61 : HolLoopProg 64 :=
.mark loopBody434_60

def loopBody434_62 : HolLoopProg 64 :=
.seq loopBody434_31 loopBody434_61

def loopBody434_63 : HolLoopProg 64 :=
.mark loopBody434_62

def loopBody434_64 : HolLoopProg 64 :=
.seq loopBody434_29 loopBody434_63

def loopBody434_65 : HolLoopProg 64 :=
.mark loopBody434_64

def loopBody434_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody434_67 : HolLoopProg 64 :=
.mark loopBody434_66

def loopBody434_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody434_69 : HolLoopProg 64 :=
.mark loopBody434_68

def loopBody434_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody434_71 : HolLoopProg 64 :=
.mark loopBody434_70

def loopBody434_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody434_73 : HolLoopProg 64 :=
.mark loopBody434_72

def loopBody434_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody434_75 : HolLoopProg 64 :=
.mark loopBody434_74

def loopBody434_76 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 476) ([14, 15, 16, 17]) (some (14, loopBody434_75, loopBody434_1, (Flapjack.Spt.ln)))

def loopBody434_77 : HolLoopProg 64 :=
.mark loopBody434_76

def loopBody434_78 : HolLoopProg 64 :=
.seq loopBody434_77 loopBody434_1

def loopBody434_79 : HolLoopProg 64 :=
.mark loopBody434_78

def loopBody434_80 : HolLoopProg 64 :=
.seq loopBody434_73 loopBody434_79

def loopBody434_81 : HolLoopProg 64 :=
.mark loopBody434_80

def loopBody434_82 : HolLoopProg 64 :=
.seq loopBody434_71 loopBody434_81

def loopBody434_83 : HolLoopProg 64 :=
.mark loopBody434_82

def loopBody434_84 : HolLoopProg 64 :=
.seq loopBody434_69 loopBody434_83

def loopBody434_85 : HolLoopProg 64 :=
.mark loopBody434_84

def loopBody434_86 : HolLoopProg 64 :=
.seq loopBody434_67 loopBody434_85

def loopBody434_87 : HolLoopProg 64 :=
.mark loopBody434_86

def loopBody434_88 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_87

def loopBody434_89 : HolLoopProg 64 :=
.mark loopBody434_88

def loopBody434_90 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_89

def loopBody434_91 : HolLoopProg 64 :=
.mark loopBody434_90

def loopBody434_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody434_93 : HolLoopProg 64 :=
.mark loopBody434_92

def loopBody434_94 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 490) ([14]) (some (14, loopBody434_75, loopBody434_1, (Flapjack.Spt.ln)))

def loopBody434_95 : HolLoopProg 64 :=
.mark loopBody434_94

def loopBody434_96 : HolLoopProg 64 :=
.seq loopBody434_95 loopBody434_1

def loopBody434_97 : HolLoopProg 64 :=
.mark loopBody434_96

def loopBody434_98 : HolLoopProg 64 :=
.seq loopBody434_93 loopBody434_97

def loopBody434_99 : HolLoopProg 64 :=
.mark loopBody434_98

def loopBody434_100 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_99

def loopBody434_101 : HolLoopProg 64 :=
.mark loopBody434_100

def loopBody434_102 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_101

def loopBody434_103 : HolLoopProg 64 :=
.mark loopBody434_102

def loopBody434_104 : HolLoopProg 64 :=
.seq loopBody434_91 loopBody434_103

def loopBody434_105 : HolLoopProg 64 :=
.mark loopBody434_104

def loopBody434_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody434_107 : HolLoopProg 64 :=
.mark loopBody434_106

def loopBody434_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13]

def loopBody434_109 : HolLoopProg 64 :=
.mark loopBody434_108

def loopBody434_110 : HolLoopProg 64 :=
.seq loopBody434_109 loopBody434_1

def loopBody434_111 : HolLoopProg 64 :=
.mark loopBody434_110

def loopBody434_112 : HolLoopProg 64 :=
.seq loopBody434_107 loopBody434_111

def loopBody434_113 : HolLoopProg 64 :=
.mark loopBody434_112

def loopBody434_114 : HolLoopProg 64 :=
.seq loopBody434_105 loopBody434_113

def loopBody434_115 : HolLoopProg 64 :=
.mark loopBody434_114

def loopBody434_116 : HolLoopProg 64 :=
.seq loopBody434_65 loopBody434_115

def loopBody434_117 : HolLoopProg 64 :=
.mark loopBody434_116

def loopBody434_118 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_117

def loopBody434_119 : HolLoopProg 64 :=
.mark loopBody434_118

def loopBody434_120 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_119

def loopBody434_121 : HolLoopProg 64 :=
.mark loopBody434_120

def loopBody434_122 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_121

def loopBody434_123 : HolLoopProg 64 :=
.mark loopBody434_122

def loopBody434_124 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_123

def loopBody434_125 : HolLoopProg 64 :=
.mark loopBody434_124

def loopBody434_126 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_125

def loopBody434_127 : HolLoopProg 64 :=
.mark loopBody434_126

def loopBody434_128 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_127

def loopBody434_129 : HolLoopProg 64 :=
.mark loopBody434_128

def loopBody434_130 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_129

def loopBody434_131 : HolLoopProg 64 :=
.mark loopBody434_130

def loopBody434_132 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_131

def loopBody434_133 : HolLoopProg 64 :=
.mark loopBody434_132

def loopBody434_134 : HolLoopProg 64 :=
.seq loopBody434_27 loopBody434_133

def loopBody434_135 : HolLoopProg 64 :=
.mark loopBody434_134

def loopBody434_136 : HolLoopProg 64 :=
.seq loopBody434_13 loopBody434_135

def loopBody434_137 : HolLoopProg 64 :=
.mark loopBody434_136

def loopBody434_138 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_137

def loopBody434_139 : HolLoopProg 64 :=
.mark loopBody434_138

def loopBody434_140 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_139

def loopBody434_141 : HolLoopProg 64 :=
.mark loopBody434_140

def loopBody434_142 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_141

def loopBody434_143 : HolLoopProg 64 :=
.mark loopBody434_142

def loopBody434_144 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_143

def loopBody434_145 : HolLoopProg 64 :=
.mark loopBody434_144

def loopBody434_146 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_145

def loopBody434_147 : HolLoopProg 64 :=
.mark loopBody434_146

def loopBody434_148 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_147

def loopBody434_149 : HolLoopProg 64 :=
.mark loopBody434_148

def loopBody434_150 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_149

def loopBody434_151 : HolLoopProg 64 :=
.mark loopBody434_150

def loopBody434_152 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_151

def loopBody434_153 : HolLoopProg 64 :=
.mark loopBody434_152

def loopBody434_154 : HolLoopProg 64 :=
.seq loopBody434_7 loopBody434_153

def loopBody434_155 : HolLoopProg 64 :=
.mark loopBody434_154

def loopBody434_156 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_155

def loopBody434_157 : HolLoopProg 64 :=
.mark loopBody434_156

def loopBody434_158 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_157

def loopBody434_159 : HolLoopProg 64 :=
.mark loopBody434_158

def loopBody434_160 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_159

def loopBody434_161 : HolLoopProg 64 :=
.mark loopBody434_160

def loopBody434_162 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_161

def loopBody434_163 : HolLoopProg 64 :=
.mark loopBody434_162

def loopBody434_164 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_163

def loopBody434_165 : HolLoopProg 64 :=
.mark loopBody434_164

def loopBody434_166 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_165

def loopBody434_167 : HolLoopProg 64 :=
.mark loopBody434_166

def loopBody434_168 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_167

def loopBody434_169 : HolLoopProg 64 :=
.mark loopBody434_168

def loopBody434_170 : HolLoopProg 64 :=
.seq loopBody434_1 loopBody434_169

def loopBody434_171 : HolLoopProg 64 :=
.mark loopBody434_170

def output434 : Nat × List Nat × HolLoopProg 64 :=
  (498, [], loopBody434_171)
end InitECandidate.Proofs.FrontendStages.Loop
