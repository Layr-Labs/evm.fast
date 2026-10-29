import InitECandidate.Proofs.FrontendStages.Loop.Translate648
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody664_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody664_1 : HolLoopProg 64 :=
.mark loopBody664_0

def loopBody664_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 0))

def loopBody664_3 : HolLoopProg 64 :=
.mark loopBody664_2

def loopBody664_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody664_5 : HolLoopProg 64 :=
.mark loopBody664_4

def loopBody664_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody664_7 : HolLoopProg 64 :=
.mark loopBody664_6

def loopBody664_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody664_9 : HolLoopProg 64 :=
.mark loopBody664_8

def loopBody664_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]))

def loopBody664_11 : HolLoopProg 64 :=
.mark loopBody664_10

def loopBody664_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody664_13 : HolLoopProg 64 :=
.mark loopBody664_12

def loopBody664_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody664_15 : HolLoopProg 64 :=
.mark loopBody664_14

def loopBody664_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody664_17 : HolLoopProg 64 :=
.mark loopBody664_16

def loopBody664_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody664_19 : HolLoopProg 64 :=
.mark loopBody664_18

def loopBody664_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody664_21 : HolLoopProg 64 :=
.mark loopBody664_20

def loopBody664_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 6)

def loopBody664_23 : HolLoopProg 64 :=
.mark loopBody664_22

def loopBody664_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 7)

def loopBody664_25 : HolLoopProg 64 :=
.mark loopBody664_24

def loopBody664_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 14

def loopBody664_27 : HolLoopProg 64 :=
.mark loopBody664_26

def loopBody664_28 : HolLoopProg 64 :=
.call (some ([8, 9, 10, 11, 12, 13], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 717) ([14, 15, 16, 17, 18, 19]) (some (14, loopBody664_27, loopBody664_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody664_29 : HolLoopProg 64 :=
.mark loopBody664_28

def loopBody664_30 : HolLoopProg 64 :=
.seq loopBody664_29 loopBody664_1

def loopBody664_31 : HolLoopProg 64 :=
.mark loopBody664_30

def loopBody664_32 : HolLoopProg 64 :=
.seq loopBody664_25 loopBody664_31

def loopBody664_33 : HolLoopProg 64 :=
.mark loopBody664_32

def loopBody664_34 : HolLoopProg 64 :=
.seq loopBody664_23 loopBody664_33

def loopBody664_35 : HolLoopProg 64 :=
.mark loopBody664_34

def loopBody664_36 : HolLoopProg 64 :=
.seq loopBody664_21 loopBody664_35

def loopBody664_37 : HolLoopProg 64 :=
.mark loopBody664_36

def loopBody664_38 : HolLoopProg 64 :=
.seq loopBody664_19 loopBody664_37

def loopBody664_39 : HolLoopProg 64 :=
.mark loopBody664_38

def loopBody664_40 : HolLoopProg 64 :=
.seq loopBody664_17 loopBody664_39

def loopBody664_41 : HolLoopProg 64 :=
.mark loopBody664_40

def loopBody664_42 : HolLoopProg 64 :=
.seq loopBody664_15 loopBody664_41

def loopBody664_43 : HolLoopProg 64 :=
.mark loopBody664_42

def loopBody664_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 1)

def loopBody664_45 : HolLoopProg 64 :=
.mark loopBody664_44

def loopBody664_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 16#64)

def loopBody664_47 : HolLoopProg 64 :=
.mark loopBody664_46

def loopBody664_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 15

def loopBody664_49 : HolLoopProg 64 :=
.mark loopBody664_48

def loopBody664_50 : HolLoopProg 64 :=
.call (some
  ([14],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))) (some 78) ([15, 16]) (some (15, loopBody664_49, loopBody664_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody664_51 : HolLoopProg 64 :=
.mark loopBody664_50

def loopBody664_52 : HolLoopProg 64 :=
.seq loopBody664_51 loopBody664_1

def loopBody664_53 : HolLoopProg 64 :=
.mark loopBody664_52

def loopBody664_54 : HolLoopProg 64 :=
.seq loopBody664_47 loopBody664_53

def loopBody664_55 : HolLoopProg 64 :=
.mark loopBody664_54

def loopBody664_56 : HolLoopProg 64 :=
.seq loopBody664_45 loopBody664_55

def loopBody664_57 : HolLoopProg 64 :=
.mark loopBody664_56

def loopBody664_58 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_57

def loopBody664_59 : HolLoopProg 64 :=
.mark loopBody664_58

def loopBody664_60 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_59

def loopBody664_61 : HolLoopProg 64 :=
.mark loopBody664_60

def loopBody664_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 8)

def loopBody664_63 : HolLoopProg 64 :=
.mark loopBody664_62

def loopBody664_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 9)

def loopBody664_65 : HolLoopProg 64 :=
.mark loopBody664_64

def loopBody664_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 10)

def loopBody664_67 : HolLoopProg 64 :=
.mark loopBody664_66

def loopBody664_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 11)

def loopBody664_69 : HolLoopProg 64 :=
.mark loopBody664_68

def loopBody664_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 12)

def loopBody664_71 : HolLoopProg 64 :=
.mark loopBody664_70

def loopBody664_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 13)

def loopBody664_73 : HolLoopProg 64 :=
.mark loopBody664_72

def loopBody664_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 16#64])

def loopBody664_75 : HolLoopProg 64 :=
.mark loopBody664_74

def loopBody664_76 : HolLoopProg 64 :=
.call (some ([14], Flapjack.Spt.ln)) (some 726) ([15, 16, 17, 18, 19, 20, 21]) (some (15, loopBody664_49, loopBody664_1, (Flapjack.Spt.ln)))

def loopBody664_77 : HolLoopProg 64 :=
.mark loopBody664_76

def loopBody664_78 : HolLoopProg 64 :=
.seq loopBody664_77 loopBody664_1

def loopBody664_79 : HolLoopProg 64 :=
.mark loopBody664_78

def loopBody664_80 : HolLoopProg 64 :=
.seq loopBody664_75 loopBody664_79

def loopBody664_81 : HolLoopProg 64 :=
.mark loopBody664_80

def loopBody664_82 : HolLoopProg 64 :=
.seq loopBody664_73 loopBody664_81

def loopBody664_83 : HolLoopProg 64 :=
.mark loopBody664_82

def loopBody664_84 : HolLoopProg 64 :=
.seq loopBody664_71 loopBody664_83

def loopBody664_85 : HolLoopProg 64 :=
.mark loopBody664_84

def loopBody664_86 : HolLoopProg 64 :=
.seq loopBody664_69 loopBody664_85

def loopBody664_87 : HolLoopProg 64 :=
.mark loopBody664_86

def loopBody664_88 : HolLoopProg 64 :=
.seq loopBody664_67 loopBody664_87

def loopBody664_89 : HolLoopProg 64 :=
.mark loopBody664_88

def loopBody664_90 : HolLoopProg 64 :=
.seq loopBody664_65 loopBody664_89

def loopBody664_91 : HolLoopProg 64 :=
.mark loopBody664_90

def loopBody664_92 : HolLoopProg 64 :=
.seq loopBody664_63 loopBody664_91

def loopBody664_93 : HolLoopProg 64 :=
.mark loopBody664_92

def loopBody664_94 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_93

def loopBody664_95 : HolLoopProg 64 :=
.mark loopBody664_94

def loopBody664_96 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_95

def loopBody664_97 : HolLoopProg 64 :=
.mark loopBody664_96

def loopBody664_98 : HolLoopProg 64 :=
.seq loopBody664_61 loopBody664_97

def loopBody664_99 : HolLoopProg 64 :=
.mark loopBody664_98

def loopBody664_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody664_101 : HolLoopProg 64 :=
.mark loopBody664_100

def loopBody664_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14]

def loopBody664_103 : HolLoopProg 64 :=
.mark loopBody664_102

def loopBody664_104 : HolLoopProg 64 :=
.seq loopBody664_103 loopBody664_1

def loopBody664_105 : HolLoopProg 64 :=
.mark loopBody664_104

def loopBody664_106 : HolLoopProg 64 :=
.seq loopBody664_101 loopBody664_105

def loopBody664_107 : HolLoopProg 64 :=
.mark loopBody664_106

def loopBody664_108 : HolLoopProg 64 :=
.seq loopBody664_99 loopBody664_107

def loopBody664_109 : HolLoopProg 64 :=
.mark loopBody664_108

def loopBody664_110 : HolLoopProg 64 :=
.seq loopBody664_43 loopBody664_109

def loopBody664_111 : HolLoopProg 64 :=
.mark loopBody664_110

def loopBody664_112 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_111

def loopBody664_113 : HolLoopProg 64 :=
.mark loopBody664_112

def loopBody664_114 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_113

def loopBody664_115 : HolLoopProg 64 :=
.mark loopBody664_114

def loopBody664_116 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_115

def loopBody664_117 : HolLoopProg 64 :=
.mark loopBody664_116

def loopBody664_118 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_117

def loopBody664_119 : HolLoopProg 64 :=
.mark loopBody664_118

def loopBody664_120 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_119

def loopBody664_121 : HolLoopProg 64 :=
.mark loopBody664_120

def loopBody664_122 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_121

def loopBody664_123 : HolLoopProg 64 :=
.mark loopBody664_122

def loopBody664_124 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_123

def loopBody664_125 : HolLoopProg 64 :=
.mark loopBody664_124

def loopBody664_126 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_125

def loopBody664_127 : HolLoopProg 64 :=
.mark loopBody664_126

def loopBody664_128 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_127

def loopBody664_129 : HolLoopProg 64 :=
.mark loopBody664_128

def loopBody664_130 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_129

def loopBody664_131 : HolLoopProg 64 :=
.mark loopBody664_130

def loopBody664_132 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_131

def loopBody664_133 : HolLoopProg 64 :=
.mark loopBody664_132

def loopBody664_134 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_133

def loopBody664_135 : HolLoopProg 64 :=
.mark loopBody664_134

def loopBody664_136 : HolLoopProg 64 :=
.seq loopBody664_13 loopBody664_135

def loopBody664_137 : HolLoopProg 64 :=
.mark loopBody664_136

def loopBody664_138 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_137

def loopBody664_139 : HolLoopProg 64 :=
.mark loopBody664_138

def loopBody664_140 : HolLoopProg 64 :=
.seq loopBody664_11 loopBody664_139

def loopBody664_141 : HolLoopProg 64 :=
.mark loopBody664_140

def loopBody664_142 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_141

def loopBody664_143 : HolLoopProg 64 :=
.mark loopBody664_142

def loopBody664_144 : HolLoopProg 64 :=
.seq loopBody664_9 loopBody664_143

def loopBody664_145 : HolLoopProg 64 :=
.mark loopBody664_144

def loopBody664_146 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_145

def loopBody664_147 : HolLoopProg 64 :=
.mark loopBody664_146

def loopBody664_148 : HolLoopProg 64 :=
.seq loopBody664_7 loopBody664_147

def loopBody664_149 : HolLoopProg 64 :=
.mark loopBody664_148

def loopBody664_150 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_149

def loopBody664_151 : HolLoopProg 64 :=
.mark loopBody664_150

def loopBody664_152 : HolLoopProg 64 :=
.seq loopBody664_5 loopBody664_151

def loopBody664_153 : HolLoopProg 64 :=
.mark loopBody664_152

def loopBody664_154 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_153

def loopBody664_155 : HolLoopProg 64 :=
.mark loopBody664_154

def loopBody664_156 : HolLoopProg 64 :=
.seq loopBody664_3 loopBody664_155

def loopBody664_157 : HolLoopProg 64 :=
.mark loopBody664_156

def loopBody664_158 : HolLoopProg 64 :=
.seq loopBody664_1 loopBody664_157

def loopBody664_159 : HolLoopProg 64 :=
.mark loopBody664_158

def output664 : Nat × List Nat × HolLoopProg 64 :=
  (728, [0, 1], loopBody664_159)
end InitECandidate.Proofs.FrontendStages.Loop
