import InitECandidate.Proofs.FrontendStages.Loop.Translate486
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody502_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody502_1 : HolLoopProg 64 :=
.mark loopBody502_0

def loopBody502_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody502_3 : HolLoopProg 64 :=
.mark loopBody502_2

def loopBody502_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody502_3, loopBody502_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody502_5 : HolLoopProg 64 :=
.mark loopBody502_4

def loopBody502_6 : HolLoopProg 64 :=
.seq loopBody502_5 loopBody502_1

def loopBody502_7 : HolLoopProg 64 :=
.mark loopBody502_6

def loopBody502_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody502_9 : HolLoopProg 64 :=
.mark loopBody502_8

def loopBody502_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody502_11 : HolLoopProg 64 :=
.mark loopBody502_10

def loopBody502_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody502_13 : HolLoopProg 64 :=
.mark loopBody502_12

def loopBody502_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody502_15 : HolLoopProg 64 :=
.mark loopBody502_14

def loopBody502_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody502_17 : HolLoopProg 64 :=
.mark loopBody502_16

def loopBody502_18 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 466) ([6, 7, 8, 9]) (some (6, loopBody502_17, loopBody502_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody502_19 : HolLoopProg 64 :=
.mark loopBody502_18

def loopBody502_20 : HolLoopProg 64 :=
.seq loopBody502_19 loopBody502_1

def loopBody502_21 : HolLoopProg 64 :=
.mark loopBody502_20

def loopBody502_22 : HolLoopProg 64 :=
.seq loopBody502_15 loopBody502_21

def loopBody502_23 : HolLoopProg 64 :=
.mark loopBody502_22

def loopBody502_24 : HolLoopProg 64 :=
.seq loopBody502_13 loopBody502_23

def loopBody502_25 : HolLoopProg 64 :=
.mark loopBody502_24

def loopBody502_26 : HolLoopProg 64 :=
.seq loopBody502_11 loopBody502_25

def loopBody502_27 : HolLoopProg 64 :=
.mark loopBody502_26

def loopBody502_28 : HolLoopProg 64 :=
.seq loopBody502_9 loopBody502_27

def loopBody502_29 : HolLoopProg 64 :=
.mark loopBody502_28

def loopBody502_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody502_31 : HolLoopProg 64 :=
.mark loopBody502_30

def loopBody502_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody502_33 : HolLoopProg 64 :=
.mark loopBody502_32

def loopBody502_34 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 495) ([7]) (some (7, loopBody502_33, loopBody502_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody502_35 : HolLoopProg 64 :=
.mark loopBody502_34

def loopBody502_36 : HolLoopProg 64 :=
.seq loopBody502_35 loopBody502_1

def loopBody502_37 : HolLoopProg 64 :=
.mark loopBody502_36

def loopBody502_38 : HolLoopProg 64 :=
.seq loopBody502_31 loopBody502_37

def loopBody502_39 : HolLoopProg 64 :=
.mark loopBody502_38

def loopBody502_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 100#64])

def loopBody502_41 : HolLoopProg 64 :=
.mark loopBody502_40

def loopBody502_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody502_43 : HolLoopProg 64 :=
.mark loopBody502_42

def loopBody502_44 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 470) ([8]) (some (8, loopBody502_43, loopBody502_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody502_45 : HolLoopProg 64 :=
.mark loopBody502_44

def loopBody502_46 : HolLoopProg 64 :=
.seq loopBody502_45 loopBody502_1

def loopBody502_47 : HolLoopProg 64 :=
.mark loopBody502_46

def loopBody502_48 : HolLoopProg 64 :=
.seq loopBody502_41 loopBody502_47

def loopBody502_49 : HolLoopProg 64 :=
.mark loopBody502_48

def loopBody502_50 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_49

def loopBody502_51 : HolLoopProg 64 :=
.mark loopBody502_50

def loopBody502_52 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_51

def loopBody502_53 : HolLoopProg 64 :=
.mark loopBody502_52

def loopBody502_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody502_55 : HolLoopProg 64 :=
.mark loopBody502_54

def loopBody502_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody502_57 : HolLoopProg 64 :=
.mark loopBody502_56

def loopBody502_58 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 496) ([8, 9]) (some (8, loopBody502_43, loopBody502_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody502_59 : HolLoopProg 64 :=
.mark loopBody502_58

def loopBody502_60 : HolLoopProg 64 :=
.seq loopBody502_59 loopBody502_1

def loopBody502_61 : HolLoopProg 64 :=
.mark loopBody502_60

def loopBody502_62 : HolLoopProg 64 :=
.seq loopBody502_57 loopBody502_61

def loopBody502_63 : HolLoopProg 64 :=
.mark loopBody502_62

def loopBody502_64 : HolLoopProg 64 :=
.seq loopBody502_55 loopBody502_63

def loopBody502_65 : HolLoopProg 64 :=
.mark loopBody502_64

def loopBody502_66 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_65

def loopBody502_67 : HolLoopProg 64 :=
.mark loopBody502_66

def loopBody502_68 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_67

def loopBody502_69 : HolLoopProg 64 :=
.mark loopBody502_68

def loopBody502_70 : HolLoopProg 64 :=
.seq loopBody502_53 loopBody502_69

def loopBody502_71 : HolLoopProg 64 :=
.mark loopBody502_70

def loopBody502_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody502_73 : HolLoopProg 64 :=
.mark loopBody502_72

def loopBody502_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody502_75 : HolLoopProg 64 :=
.mark loopBody502_74

def loopBody502_76 : HolLoopProg 64 :=
.call (some ([7, 8], Flapjack.Spt.ln)) (some 565) ([9]) (some (9, loopBody502_75, loopBody502_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)))

def loopBody502_77 : HolLoopProg 64 :=
.mark loopBody502_76

def loopBody502_78 : HolLoopProg 64 :=
.seq loopBody502_77 loopBody502_1

def loopBody502_79 : HolLoopProg 64 :=
.mark loopBody502_78

def loopBody502_80 : HolLoopProg 64 :=
.seq loopBody502_73 loopBody502_79

def loopBody502_81 : HolLoopProg 64 :=
.mark loopBody502_80

def loopBody502_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody502_83 : HolLoopProg 64 :=
.mark loopBody502_82

def loopBody502_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody502_85 : HolLoopProg 64 :=
.mark loopBody502_84

def loopBody502_86 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 477) ([10]) (some (10, loopBody502_85, loopBody502_1, (Flapjack.Spt.ln)))

def loopBody502_87 : HolLoopProg 64 :=
.mark loopBody502_86

def loopBody502_88 : HolLoopProg 64 :=
.seq loopBody502_87 loopBody502_1

def loopBody502_89 : HolLoopProg 64 :=
.mark loopBody502_88

def loopBody502_90 : HolLoopProg 64 :=
.seq loopBody502_83 loopBody502_89

def loopBody502_91 : HolLoopProg 64 :=
.mark loopBody502_90

def loopBody502_92 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_91

def loopBody502_93 : HolLoopProg 64 :=
.mark loopBody502_92

def loopBody502_94 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_93

def loopBody502_95 : HolLoopProg 64 :=
.mark loopBody502_94

def loopBody502_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody502_97 : HolLoopProg 64 :=
.mark loopBody502_96

def loopBody502_98 : HolLoopProg 64 :=
.call (some ([9], Flapjack.Spt.ln)) (some 490) ([10]) (some (10, loopBody502_85, loopBody502_1, (Flapjack.Spt.ln)))

def loopBody502_99 : HolLoopProg 64 :=
.mark loopBody502_98

def loopBody502_100 : HolLoopProg 64 :=
.seq loopBody502_99 loopBody502_1

def loopBody502_101 : HolLoopProg 64 :=
.mark loopBody502_100

def loopBody502_102 : HolLoopProg 64 :=
.seq loopBody502_97 loopBody502_101

def loopBody502_103 : HolLoopProg 64 :=
.mark loopBody502_102

def loopBody502_104 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_103

def loopBody502_105 : HolLoopProg 64 :=
.mark loopBody502_104

def loopBody502_106 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_105

def loopBody502_107 : HolLoopProg 64 :=
.mark loopBody502_106

def loopBody502_108 : HolLoopProg 64 :=
.seq loopBody502_95 loopBody502_107

def loopBody502_109 : HolLoopProg 64 :=
.mark loopBody502_108

def loopBody502_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody502_111 : HolLoopProg 64 :=
.mark loopBody502_110

def loopBody502_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody502_113 : HolLoopProg 64 :=
.mark loopBody502_112

def loopBody502_114 : HolLoopProg 64 :=
.seq loopBody502_113 loopBody502_1

def loopBody502_115 : HolLoopProg 64 :=
.mark loopBody502_114

def loopBody502_116 : HolLoopProg 64 :=
.seq loopBody502_111 loopBody502_115

def loopBody502_117 : HolLoopProg 64 :=
.mark loopBody502_116

def loopBody502_118 : HolLoopProg 64 :=
.seq loopBody502_109 loopBody502_117

def loopBody502_119 : HolLoopProg 64 :=
.mark loopBody502_118

def loopBody502_120 : HolLoopProg 64 :=
.seq loopBody502_81 loopBody502_119

def loopBody502_121 : HolLoopProg 64 :=
.mark loopBody502_120

def loopBody502_122 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_121

def loopBody502_123 : HolLoopProg 64 :=
.mark loopBody502_122

def loopBody502_124 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_123

def loopBody502_125 : HolLoopProg 64 :=
.mark loopBody502_124

def loopBody502_126 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_125

def loopBody502_127 : HolLoopProg 64 :=
.mark loopBody502_126

def loopBody502_128 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_127

def loopBody502_129 : HolLoopProg 64 :=
.mark loopBody502_128

def loopBody502_130 : HolLoopProg 64 :=
.seq loopBody502_71 loopBody502_129

def loopBody502_131 : HolLoopProg 64 :=
.mark loopBody502_130

def loopBody502_132 : HolLoopProg 64 :=
.seq loopBody502_39 loopBody502_131

def loopBody502_133 : HolLoopProg 64 :=
.mark loopBody502_132

def loopBody502_134 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_133

def loopBody502_135 : HolLoopProg 64 :=
.mark loopBody502_134

def loopBody502_136 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_135

def loopBody502_137 : HolLoopProg 64 :=
.mark loopBody502_136

def loopBody502_138 : HolLoopProg 64 :=
.seq loopBody502_29 loopBody502_137

def loopBody502_139 : HolLoopProg 64 :=
.mark loopBody502_138

def loopBody502_140 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_139

def loopBody502_141 : HolLoopProg 64 :=
.mark loopBody502_140

def loopBody502_142 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_141

def loopBody502_143 : HolLoopProg 64 :=
.mark loopBody502_142

def loopBody502_144 : HolLoopProg 64 :=
.seq loopBody502_7 loopBody502_143

def loopBody502_145 : HolLoopProg 64 :=
.mark loopBody502_144

def loopBody502_146 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_145

def loopBody502_147 : HolLoopProg 64 :=
.mark loopBody502_146

def loopBody502_148 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_147

def loopBody502_149 : HolLoopProg 64 :=
.mark loopBody502_148

def loopBody502_150 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_149

def loopBody502_151 : HolLoopProg 64 :=
.mark loopBody502_150

def loopBody502_152 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_151

def loopBody502_153 : HolLoopProg 64 :=
.mark loopBody502_152

def loopBody502_154 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_153

def loopBody502_155 : HolLoopProg 64 :=
.mark loopBody502_154

def loopBody502_156 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_155

def loopBody502_157 : HolLoopProg 64 :=
.mark loopBody502_156

def loopBody502_158 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_157

def loopBody502_159 : HolLoopProg 64 :=
.mark loopBody502_158

def loopBody502_160 : HolLoopProg 64 :=
.seq loopBody502_1 loopBody502_159

def loopBody502_161 : HolLoopProg 64 :=
.mark loopBody502_160

def output502 : Nat × List Nat × HolLoopProg 64 :=
  (566, [], loopBody502_161)
end InitECandidate.Proofs.FrontendStages.Loop
