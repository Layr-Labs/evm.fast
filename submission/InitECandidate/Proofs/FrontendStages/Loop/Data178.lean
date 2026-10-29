import InitECandidate.Proofs.FrontendStages.Loop.Translate162
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody178_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody178_1 : HolLoopProg 64 :=
.mark loopBody178_0

def loopBody178_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody178_3 : HolLoopProg 64 :=
.mark loopBody178_2

def loopBody178_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody178_5 : HolLoopProg 64 :=
.mark loopBody178_4

def loopBody178_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody178_7 : HolLoopProg 64 :=
.mark loopBody178_6

def loopBody178_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 4 (Flapjack.RegImm.reg 5) loopBody178_5 loopBody178_7 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody178_9 : HolLoopProg 64 :=
.mark loopBody178_8

def loopBody178_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody178_11 : HolLoopProg 64 :=
.mark loopBody178_10

def loopBody178_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody178_13 : HolLoopProg 64 :=
.mark loopBody178_12

def loopBody178_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody178_15 : HolLoopProg 64 :=
.mark loopBody178_14

def loopBody178_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody178_17 : HolLoopProg 64 :=
.mark loopBody178_16

def loopBody178_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody178_19 : HolLoopProg 64 :=
.mark loopBody178_18

def loopBody178_20 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 78) ([4, 5]) (some (4, loopBody178_19, loopBody178_13, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody178_21 : HolLoopProg 64 :=
.mark loopBody178_20

def loopBody178_22 : HolLoopProg 64 :=
.seq loopBody178_21 loopBody178_13

def loopBody178_23 : HolLoopProg 64 :=
.mark loopBody178_22

def loopBody178_24 : HolLoopProg 64 :=
.seq loopBody178_17 loopBody178_23

def loopBody178_25 : HolLoopProg 64 :=
.mark loopBody178_24

def loopBody178_26 : HolLoopProg 64 :=
.seq loopBody178_15 loopBody178_25

def loopBody178_27 : HolLoopProg 64 :=
.mark loopBody178_26

def loopBody178_28 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_27

def loopBody178_29 : HolLoopProg 64 :=
.mark loopBody178_28

def loopBody178_30 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_29

def loopBody178_31 : HolLoopProg 64 :=
.mark loopBody178_30

def loopBody178_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody178_33 : HolLoopProg 64 :=
.mark loopBody178_32

def loopBody178_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody178_35 : HolLoopProg 64 :=
.mark loopBody178_34

def loopBody178_36 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 77) ([4, 5, 6]) (some (4, loopBody178_19, loopBody178_13, (Flapjack.Spt.ln)))

def loopBody178_37 : HolLoopProg 64 :=
.mark loopBody178_36

def loopBody178_38 : HolLoopProg 64 :=
.seq loopBody178_37 loopBody178_13

def loopBody178_39 : HolLoopProg 64 :=
.mark loopBody178_38

def loopBody178_40 : HolLoopProg 64 :=
.seq loopBody178_35 loopBody178_39

def loopBody178_41 : HolLoopProg 64 :=
.mark loopBody178_40

def loopBody178_42 : HolLoopProg 64 :=
.seq loopBody178_33 loopBody178_41

def loopBody178_43 : HolLoopProg 64 :=
.mark loopBody178_42

def loopBody178_44 : HolLoopProg 64 :=
.seq loopBody178_15 loopBody178_43

def loopBody178_45 : HolLoopProg 64 :=
.mark loopBody178_44

def loopBody178_46 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_45

def loopBody178_47 : HolLoopProg 64 :=
.mark loopBody178_46

def loopBody178_48 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_47

def loopBody178_49 : HolLoopProg 64 :=
.mark loopBody178_48

def loopBody178_50 : HolLoopProg 64 :=
.seq loopBody178_31 loopBody178_49

def loopBody178_51 : HolLoopProg 64 :=
.mark loopBody178_50

def loopBody178_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody178_53 : HolLoopProg 64 :=
.mark loopBody178_52

def loopBody178_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody178_55 : HolLoopProg 64 :=
.mark loopBody178_54

def loopBody178_56 : HolLoopProg 64 :=
.seq loopBody178_55 loopBody178_13

def loopBody178_57 : HolLoopProg 64 :=
.mark loopBody178_56

def loopBody178_58 : HolLoopProg 64 :=
.seq loopBody178_53 loopBody178_57

def loopBody178_59 : HolLoopProg 64 :=
.mark loopBody178_58

def loopBody178_60 : HolLoopProg 64 :=
.seq loopBody178_51 loopBody178_59

def loopBody178_61 : HolLoopProg 64 :=
.mark loopBody178_60

def loopBody178_62 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody178_61 loopBody178_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody178_63 : HolLoopProg 64 :=
.mark loopBody178_62

def loopBody178_64 : HolLoopProg 64 :=
.seq loopBody178_63 loopBody178_13

def loopBody178_65 : HolLoopProg 64 :=
.mark loopBody178_64

def loopBody178_66 : HolLoopProg 64 :=
.seq loopBody178_11 loopBody178_65

def loopBody178_67 : HolLoopProg 64 :=
.mark loopBody178_66

def loopBody178_68 : HolLoopProg 64 :=
.seq loopBody178_9 loopBody178_67

def loopBody178_69 : HolLoopProg 64 :=
.mark loopBody178_68

def loopBody178_70 : HolLoopProg 64 :=
.seq loopBody178_3 loopBody178_69

def loopBody178_71 : HolLoopProg 64 :=
.mark loopBody178_70

def loopBody178_72 : HolLoopProg 64 :=
.seq loopBody178_1 loopBody178_71

def loopBody178_73 : HolLoopProg 64 :=
.mark loopBody178_72

def loopBody178_74 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody178_19, loopBody178_13, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody178_75 : HolLoopProg 64 :=
.mark loopBody178_74

def loopBody178_76 : HolLoopProg 64 :=
.seq loopBody178_75 loopBody178_13

def loopBody178_77 : HolLoopProg 64 :=
.mark loopBody178_76

def loopBody178_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody178_79 : HolLoopProg 64 :=
.mark loopBody178_78

def loopBody178_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody178_81 : HolLoopProg 64 :=
.mark loopBody178_80

def loopBody178_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody178_83 : HolLoopProg 64 :=
.mark loopBody178_82

def loopBody178_84 : HolLoopProg 64 :=
.call (some
  ([4, 5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 241) ([6, 7]) (some (6, loopBody178_83, loopBody178_13, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody178_85 : HolLoopProg 64 :=
.mark loopBody178_84

def loopBody178_86 : HolLoopProg 64 :=
.seq loopBody178_85 loopBody178_13

def loopBody178_87 : HolLoopProg 64 :=
.mark loopBody178_86

def loopBody178_88 : HolLoopProg 64 :=
.seq loopBody178_81 loopBody178_87

def loopBody178_89 : HolLoopProg 64 :=
.mark loopBody178_88

def loopBody178_90 : HolLoopProg 64 :=
.seq loopBody178_79 loopBody178_89

def loopBody178_91 : HolLoopProg 64 :=
.mark loopBody178_90

def loopBody178_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody178_93 : HolLoopProg 64 :=
.mark loopBody178_92

def loopBody178_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody178_95 : HolLoopProg 64 :=
.mark loopBody178_94

def loopBody178_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody178_97 : HolLoopProg 64 :=
.mark loopBody178_96

def loopBody178_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody178_99 : HolLoopProg 64 :=
.mark loopBody178_98

def loopBody178_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody178_101 : HolLoopProg 64 :=
.mark loopBody178_100

def loopBody178_102 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 235) ([7, 8, 9, 10]) (some (7, loopBody178_101, loopBody178_13, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody178_103 : HolLoopProg 64 :=
.mark loopBody178_102

def loopBody178_104 : HolLoopProg 64 :=
.seq loopBody178_103 loopBody178_13

def loopBody178_105 : HolLoopProg 64 :=
.mark loopBody178_104

def loopBody178_106 : HolLoopProg 64 :=
.seq loopBody178_99 loopBody178_105

def loopBody178_107 : HolLoopProg 64 :=
.mark loopBody178_106

def loopBody178_108 : HolLoopProg 64 :=
.seq loopBody178_97 loopBody178_107

def loopBody178_109 : HolLoopProg 64 :=
.mark loopBody178_108

def loopBody178_110 : HolLoopProg 64 :=
.seq loopBody178_95 loopBody178_109

def loopBody178_111 : HolLoopProg 64 :=
.mark loopBody178_110

def loopBody178_112 : HolLoopProg 64 :=
.seq loopBody178_93 loopBody178_111

def loopBody178_113 : HolLoopProg 64 :=
.mark loopBody178_112

def loopBody178_114 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_113

def loopBody178_115 : HolLoopProg 64 :=
.mark loopBody178_114

def loopBody178_116 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_115

def loopBody178_117 : HolLoopProg 64 :=
.mark loopBody178_116

def loopBody178_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody178_119 : HolLoopProg 64 :=
.mark loopBody178_118

def loopBody178_120 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody178_101, loopBody178_13, (Flapjack.Spt.ln)))

def loopBody178_121 : HolLoopProg 64 :=
.mark loopBody178_120

def loopBody178_122 : HolLoopProg 64 :=
.seq loopBody178_121 loopBody178_13

def loopBody178_123 : HolLoopProg 64 :=
.mark loopBody178_122

def loopBody178_124 : HolLoopProg 64 :=
.seq loopBody178_119 loopBody178_123

def loopBody178_125 : HolLoopProg 64 :=
.mark loopBody178_124

def loopBody178_126 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_125

def loopBody178_127 : HolLoopProg 64 :=
.mark loopBody178_126

def loopBody178_128 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_127

def loopBody178_129 : HolLoopProg 64 :=
.mark loopBody178_128

def loopBody178_130 : HolLoopProg 64 :=
.seq loopBody178_117 loopBody178_129

def loopBody178_131 : HolLoopProg 64 :=
.mark loopBody178_130

def loopBody178_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody178_133 : HolLoopProg 64 :=
.mark loopBody178_132

def loopBody178_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody178_135 : HolLoopProg 64 :=
.mark loopBody178_134

def loopBody178_136 : HolLoopProg 64 :=
.seq loopBody178_135 loopBody178_13

def loopBody178_137 : HolLoopProg 64 :=
.mark loopBody178_136

def loopBody178_138 : HolLoopProg 64 :=
.seq loopBody178_133 loopBody178_137

def loopBody178_139 : HolLoopProg 64 :=
.mark loopBody178_138

def loopBody178_140 : HolLoopProg 64 :=
.seq loopBody178_131 loopBody178_139

def loopBody178_141 : HolLoopProg 64 :=
.mark loopBody178_140

def loopBody178_142 : HolLoopProg 64 :=
.seq loopBody178_91 loopBody178_141

def loopBody178_143 : HolLoopProg 64 :=
.mark loopBody178_142

def loopBody178_144 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_143

def loopBody178_145 : HolLoopProg 64 :=
.mark loopBody178_144

def loopBody178_146 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_145

def loopBody178_147 : HolLoopProg 64 :=
.mark loopBody178_146

def loopBody178_148 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_147

def loopBody178_149 : HolLoopProg 64 :=
.mark loopBody178_148

def loopBody178_150 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_149

def loopBody178_151 : HolLoopProg 64 :=
.mark loopBody178_150

def loopBody178_152 : HolLoopProg 64 :=
.seq loopBody178_77 loopBody178_151

def loopBody178_153 : HolLoopProg 64 :=
.mark loopBody178_152

def loopBody178_154 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_153

def loopBody178_155 : HolLoopProg 64 :=
.mark loopBody178_154

def loopBody178_156 : HolLoopProg 64 :=
.seq loopBody178_13 loopBody178_155

def loopBody178_157 : HolLoopProg 64 :=
.mark loopBody178_156

def loopBody178_158 : HolLoopProg 64 :=
.seq loopBody178_73 loopBody178_157

def loopBody178_159 : HolLoopProg 64 :=
.mark loopBody178_158

def output178 : Nat × List Nat × HolLoopProg 64 :=
  (242, [0, 1, 2], loopBody178_159)
end InitECandidate.Proofs.FrontendStages.Loop
