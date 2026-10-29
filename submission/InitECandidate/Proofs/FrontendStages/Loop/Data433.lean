import InitECandidate.Proofs.FrontendStages.Loop.Translate417
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody433_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody433_1 : HolLoopProg 64 :=
.mark loopBody433_0

def loopBody433_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody433_3 : HolLoopProg 64 :=
.mark loopBody433_2

def loopBody433_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody433_3, loopBody433_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody433_5 : HolLoopProg 64 :=
.mark loopBody433_4

def loopBody433_6 : HolLoopProg 64 :=
.seq loopBody433_5 loopBody433_1

def loopBody433_7 : HolLoopProg 64 :=
.mark loopBody433_6

def loopBody433_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody433_9 : HolLoopProg 64 :=
.mark loopBody433_8

def loopBody433_10 : HolLoopProg 64 :=
.call (some
  ([5, 6, 7, 8],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 475) ([]) (some (9, loopBody433_9, loopBody433_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody433_11 : HolLoopProg 64 :=
.mark loopBody433_10

def loopBody433_12 : HolLoopProg 64 :=
.seq loopBody433_11 loopBody433_1

def loopBody433_13 : HolLoopProg 64 :=
.mark loopBody433_12

def loopBody433_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 3#64)

def loopBody433_15 : HolLoopProg 64 :=
.mark loopBody433_14

def loopBody433_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody433_17 : HolLoopProg 64 :=
.mark loopBody433_16

def loopBody433_18 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))) (some 470) ([10]) (some (10, loopBody433_17, loopBody433_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody433_19 : HolLoopProg 64 :=
.mark loopBody433_18

def loopBody433_20 : HolLoopProg 64 :=
.seq loopBody433_19 loopBody433_1

def loopBody433_21 : HolLoopProg 64 :=
.mark loopBody433_20

def loopBody433_22 : HolLoopProg 64 :=
.seq loopBody433_15 loopBody433_21

def loopBody433_23 : HolLoopProg 64 :=
.mark loopBody433_22

def loopBody433_24 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_23

def loopBody433_25 : HolLoopProg 64 :=
.mark loopBody433_24

def loopBody433_26 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_25

def loopBody433_27 : HolLoopProg 64 :=
.mark loopBody433_26

def loopBody433_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody433_29 : HolLoopProg 64 :=
.mark loopBody433_28

def loopBody433_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody433_31 : HolLoopProg 64 :=
.mark loopBody433_30

def loopBody433_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody433_33 : HolLoopProg 64 :=
.mark loopBody433_32

def loopBody433_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody433_35 : HolLoopProg 64 :=
.mark loopBody433_34

def loopBody433_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody433_37 : HolLoopProg 64 :=
.mark loopBody433_36

def loopBody433_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody433_39 : HolLoopProg 64 :=
.mark loopBody433_38

def loopBody433_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody433_41 : HolLoopProg 64 :=
.mark loopBody433_40

def loopBody433_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 8)

def loopBody433_43 : HolLoopProg 64 :=
.mark loopBody433_42

def loopBody433_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody433_45 : HolLoopProg 64 :=
.mark loopBody433_44

def loopBody433_46 : HolLoopProg 64 :=
.call (some ([9, 10, 11, 12], Flapjack.Spt.ln)) (some 116) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody433_45, loopBody433_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody433_47 : HolLoopProg 64 :=
.mark loopBody433_46

def loopBody433_48 : HolLoopProg 64 :=
.seq loopBody433_47 loopBody433_1

def loopBody433_49 : HolLoopProg 64 :=
.mark loopBody433_48

def loopBody433_50 : HolLoopProg 64 :=
.seq loopBody433_43 loopBody433_49

def loopBody433_51 : HolLoopProg 64 :=
.mark loopBody433_50

def loopBody433_52 : HolLoopProg 64 :=
.seq loopBody433_41 loopBody433_51

def loopBody433_53 : HolLoopProg 64 :=
.mark loopBody433_52

def loopBody433_54 : HolLoopProg 64 :=
.seq loopBody433_39 loopBody433_53

def loopBody433_55 : HolLoopProg 64 :=
.mark loopBody433_54

def loopBody433_56 : HolLoopProg 64 :=
.seq loopBody433_37 loopBody433_55

def loopBody433_57 : HolLoopProg 64 :=
.mark loopBody433_56

def loopBody433_58 : HolLoopProg 64 :=
.seq loopBody433_35 loopBody433_57

def loopBody433_59 : HolLoopProg 64 :=
.mark loopBody433_58

def loopBody433_60 : HolLoopProg 64 :=
.seq loopBody433_33 loopBody433_59

def loopBody433_61 : HolLoopProg 64 :=
.mark loopBody433_60

def loopBody433_62 : HolLoopProg 64 :=
.seq loopBody433_31 loopBody433_61

def loopBody433_63 : HolLoopProg 64 :=
.mark loopBody433_62

def loopBody433_64 : HolLoopProg 64 :=
.seq loopBody433_29 loopBody433_63

def loopBody433_65 : HolLoopProg 64 :=
.mark loopBody433_64

def loopBody433_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 9)

def loopBody433_67 : HolLoopProg 64 :=
.mark loopBody433_66

def loopBody433_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody433_69 : HolLoopProg 64 :=
.mark loopBody433_68

def loopBody433_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody433_71 : HolLoopProg 64 :=
.mark loopBody433_70

def loopBody433_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody433_73 : HolLoopProg 64 :=
.mark loopBody433_72

def loopBody433_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody433_75 : HolLoopProg 64 :=
.mark loopBody433_74

def loopBody433_76 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 476) ([14, 15, 16, 17]) (some (14, loopBody433_75, loopBody433_1, (Flapjack.Spt.ln)))

def loopBody433_77 : HolLoopProg 64 :=
.mark loopBody433_76

def loopBody433_78 : HolLoopProg 64 :=
.seq loopBody433_77 loopBody433_1

def loopBody433_79 : HolLoopProg 64 :=
.mark loopBody433_78

def loopBody433_80 : HolLoopProg 64 :=
.seq loopBody433_73 loopBody433_79

def loopBody433_81 : HolLoopProg 64 :=
.mark loopBody433_80

def loopBody433_82 : HolLoopProg 64 :=
.seq loopBody433_71 loopBody433_81

def loopBody433_83 : HolLoopProg 64 :=
.mark loopBody433_82

def loopBody433_84 : HolLoopProg 64 :=
.seq loopBody433_69 loopBody433_83

def loopBody433_85 : HolLoopProg 64 :=
.mark loopBody433_84

def loopBody433_86 : HolLoopProg 64 :=
.seq loopBody433_67 loopBody433_85

def loopBody433_87 : HolLoopProg 64 :=
.mark loopBody433_86

def loopBody433_88 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_87

def loopBody433_89 : HolLoopProg 64 :=
.mark loopBody433_88

def loopBody433_90 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_89

def loopBody433_91 : HolLoopProg 64 :=
.mark loopBody433_90

def loopBody433_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 1#64)

def loopBody433_93 : HolLoopProg 64 :=
.mark loopBody433_92

def loopBody433_94 : HolLoopProg 64 :=
.call (some ([13], Flapjack.Spt.ln)) (some 490) ([14]) (some (14, loopBody433_75, loopBody433_1, (Flapjack.Spt.ln)))

def loopBody433_95 : HolLoopProg 64 :=
.mark loopBody433_94

def loopBody433_96 : HolLoopProg 64 :=
.seq loopBody433_95 loopBody433_1

def loopBody433_97 : HolLoopProg 64 :=
.mark loopBody433_96

def loopBody433_98 : HolLoopProg 64 :=
.seq loopBody433_93 loopBody433_97

def loopBody433_99 : HolLoopProg 64 :=
.mark loopBody433_98

def loopBody433_100 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_99

def loopBody433_101 : HolLoopProg 64 :=
.mark loopBody433_100

def loopBody433_102 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_101

def loopBody433_103 : HolLoopProg 64 :=
.mark loopBody433_102

def loopBody433_104 : HolLoopProg 64 :=
.seq loopBody433_91 loopBody433_103

def loopBody433_105 : HolLoopProg 64 :=
.mark loopBody433_104

def loopBody433_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody433_107 : HolLoopProg 64 :=
.mark loopBody433_106

def loopBody433_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [13]

def loopBody433_109 : HolLoopProg 64 :=
.mark loopBody433_108

def loopBody433_110 : HolLoopProg 64 :=
.seq loopBody433_109 loopBody433_1

def loopBody433_111 : HolLoopProg 64 :=
.mark loopBody433_110

def loopBody433_112 : HolLoopProg 64 :=
.seq loopBody433_107 loopBody433_111

def loopBody433_113 : HolLoopProg 64 :=
.mark loopBody433_112

def loopBody433_114 : HolLoopProg 64 :=
.seq loopBody433_105 loopBody433_113

def loopBody433_115 : HolLoopProg 64 :=
.mark loopBody433_114

def loopBody433_116 : HolLoopProg 64 :=
.seq loopBody433_65 loopBody433_115

def loopBody433_117 : HolLoopProg 64 :=
.mark loopBody433_116

def loopBody433_118 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_117

def loopBody433_119 : HolLoopProg 64 :=
.mark loopBody433_118

def loopBody433_120 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_119

def loopBody433_121 : HolLoopProg 64 :=
.mark loopBody433_120

def loopBody433_122 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_121

def loopBody433_123 : HolLoopProg 64 :=
.mark loopBody433_122

def loopBody433_124 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_123

def loopBody433_125 : HolLoopProg 64 :=
.mark loopBody433_124

def loopBody433_126 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_125

def loopBody433_127 : HolLoopProg 64 :=
.mark loopBody433_126

def loopBody433_128 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_127

def loopBody433_129 : HolLoopProg 64 :=
.mark loopBody433_128

def loopBody433_130 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_129

def loopBody433_131 : HolLoopProg 64 :=
.mark loopBody433_130

def loopBody433_132 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_131

def loopBody433_133 : HolLoopProg 64 :=
.mark loopBody433_132

def loopBody433_134 : HolLoopProg 64 :=
.seq loopBody433_27 loopBody433_133

def loopBody433_135 : HolLoopProg 64 :=
.mark loopBody433_134

def loopBody433_136 : HolLoopProg 64 :=
.seq loopBody433_13 loopBody433_135

def loopBody433_137 : HolLoopProg 64 :=
.mark loopBody433_136

def loopBody433_138 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_137

def loopBody433_139 : HolLoopProg 64 :=
.mark loopBody433_138

def loopBody433_140 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_139

def loopBody433_141 : HolLoopProg 64 :=
.mark loopBody433_140

def loopBody433_142 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_141

def loopBody433_143 : HolLoopProg 64 :=
.mark loopBody433_142

def loopBody433_144 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_143

def loopBody433_145 : HolLoopProg 64 :=
.mark loopBody433_144

def loopBody433_146 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_145

def loopBody433_147 : HolLoopProg 64 :=
.mark loopBody433_146

def loopBody433_148 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_147

def loopBody433_149 : HolLoopProg 64 :=
.mark loopBody433_148

def loopBody433_150 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_149

def loopBody433_151 : HolLoopProg 64 :=
.mark loopBody433_150

def loopBody433_152 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_151

def loopBody433_153 : HolLoopProg 64 :=
.mark loopBody433_152

def loopBody433_154 : HolLoopProg 64 :=
.seq loopBody433_7 loopBody433_153

def loopBody433_155 : HolLoopProg 64 :=
.mark loopBody433_154

def loopBody433_156 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_155

def loopBody433_157 : HolLoopProg 64 :=
.mark loopBody433_156

def loopBody433_158 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_157

def loopBody433_159 : HolLoopProg 64 :=
.mark loopBody433_158

def loopBody433_160 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_159

def loopBody433_161 : HolLoopProg 64 :=
.mark loopBody433_160

def loopBody433_162 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_161

def loopBody433_163 : HolLoopProg 64 :=
.mark loopBody433_162

def loopBody433_164 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_163

def loopBody433_165 : HolLoopProg 64 :=
.mark loopBody433_164

def loopBody433_166 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_165

def loopBody433_167 : HolLoopProg 64 :=
.mark loopBody433_166

def loopBody433_168 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_167

def loopBody433_169 : HolLoopProg 64 :=
.mark loopBody433_168

def loopBody433_170 : HolLoopProg 64 :=
.seq loopBody433_1 loopBody433_169

def loopBody433_171 : HolLoopProg 64 :=
.mark loopBody433_170

def output433 : Nat × List Nat × HolLoopProg 64 :=
  (497, [], loopBody433_171)
end InitECandidate.Proofs.FrontendStages.Loop
