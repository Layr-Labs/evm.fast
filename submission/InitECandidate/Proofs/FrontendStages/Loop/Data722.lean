import InitECandidate.Proofs.FrontendStages.Loop.Translate706
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody722_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody722_1 : HolLoopProg 64 :=
.mark loopBody722_0

def loopBody722_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody722_3 : HolLoopProg 64 :=
.mark loopBody722_2

def loopBody722_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody722_3, loopBody722_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody722_5 : HolLoopProg 64 :=
.mark loopBody722_4

def loopBody722_6 : HolLoopProg 64 :=
.seq loopBody722_5 loopBody722_1

def loopBody722_7 : HolLoopProg 64 :=
.mark loopBody722_6

def loopBody722_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 96#64)

def loopBody722_9 : HolLoopProg 64 :=
.mark loopBody722_8

def loopBody722_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody722_11 : HolLoopProg 64 :=
.mark loopBody722_10

def loopBody722_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody722_11, loopBody722_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody722_13 : HolLoopProg 64 :=
.mark loopBody722_12

def loopBody722_14 : HolLoopProg 64 :=
.seq loopBody722_13 loopBody722_1

def loopBody722_15 : HolLoopProg 64 :=
.mark loopBody722_14

def loopBody722_16 : HolLoopProg 64 :=
.seq loopBody722_9 loopBody722_15

def loopBody722_17 : HolLoopProg 64 :=
.mark loopBody722_16

def loopBody722_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 96#64)

def loopBody722_19 : HolLoopProg 64 :=
.mark loopBody722_18

def loopBody722_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody722_21 : HolLoopProg 64 :=
.mark loopBody722_20

def loopBody722_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody722_21, loopBody722_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody722_23 : HolLoopProg 64 :=
.mark loopBody722_22

def loopBody722_24 : HolLoopProg 64 :=
.seq loopBody722_23 loopBody722_1

def loopBody722_25 : HolLoopProg 64 :=
.mark loopBody722_24

def loopBody722_26 : HolLoopProg 64 :=
.seq loopBody722_19 loopBody722_25

def loopBody722_27 : HolLoopProg 64 :=
.mark loopBody722_26

def loopBody722_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody722_29 : HolLoopProg 64 :=
.mark loopBody722_28

def loopBody722_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody722_31 : HolLoopProg 64 :=
.mark loopBody722_30

def loopBody722_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody722_33 : HolLoopProg 64 :=
.mark loopBody722_32

def loopBody722_34 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 740) ([6, 7]) (some (6, loopBody722_33, loopBody722_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody722_35 : HolLoopProg 64 :=
.mark loopBody722_34

def loopBody722_36 : HolLoopProg 64 :=
.seq loopBody722_35 loopBody722_1

def loopBody722_37 : HolLoopProg 64 :=
.mark loopBody722_36

def loopBody722_38 : HolLoopProg 64 :=
.seq loopBody722_31 loopBody722_37

def loopBody722_39 : HolLoopProg 64 :=
.mark loopBody722_38

def loopBody722_40 : HolLoopProg 64 :=
.seq loopBody722_29 loopBody722_39

def loopBody722_41 : HolLoopProg 64 :=
.mark loopBody722_40

def loopBody722_42 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_41

def loopBody722_43 : HolLoopProg 64 :=
.mark loopBody722_42

def loopBody722_44 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_43

def loopBody722_45 : HolLoopProg 64 :=
.mark loopBody722_44

def loopBody722_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody722_47 : HolLoopProg 64 :=
.mark loopBody722_46

def loopBody722_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody722_49 : HolLoopProg 64 :=
.mark loopBody722_48

def loopBody722_50 : HolLoopProg 64 :=
.seq loopBody722_49 loopBody722_37

def loopBody722_51 : HolLoopProg 64 :=
.mark loopBody722_50

def loopBody722_52 : HolLoopProg 64 :=
.seq loopBody722_47 loopBody722_51

def loopBody722_53 : HolLoopProg 64 :=
.mark loopBody722_52

def loopBody722_54 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_53

def loopBody722_55 : HolLoopProg 64 :=
.mark loopBody722_54

def loopBody722_56 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_55

def loopBody722_57 : HolLoopProg 64 :=
.mark loopBody722_56

def loopBody722_58 : HolLoopProg 64 :=
.seq loopBody722_45 loopBody722_57

def loopBody722_59 : HolLoopProg 64 :=
.mark loopBody722_58

def loopBody722_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody722_61 : HolLoopProg 64 :=
.mark loopBody722_60

def loopBody722_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody722_63 : HolLoopProg 64 :=
.mark loopBody722_62

def loopBody722_64 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 739) ([6, 7, 8]) (some (6, loopBody722_33, loopBody722_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody722_65 : HolLoopProg 64 :=
.mark loopBody722_64

def loopBody722_66 : HolLoopProg 64 :=
.seq loopBody722_65 loopBody722_1

def loopBody722_67 : HolLoopProg 64 :=
.mark loopBody722_66

def loopBody722_68 : HolLoopProg 64 :=
.seq loopBody722_63 loopBody722_67

def loopBody722_69 : HolLoopProg 64 :=
.mark loopBody722_68

def loopBody722_70 : HolLoopProg 64 :=
.seq loopBody722_61 loopBody722_69

def loopBody722_71 : HolLoopProg 64 :=
.mark loopBody722_70

def loopBody722_72 : HolLoopProg 64 :=
.seq loopBody722_47 loopBody722_71

def loopBody722_73 : HolLoopProg 64 :=
.mark loopBody722_72

def loopBody722_74 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_73

def loopBody722_75 : HolLoopProg 64 :=
.mark loopBody722_74

def loopBody722_76 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_75

def loopBody722_77 : HolLoopProg 64 :=
.mark loopBody722_76

def loopBody722_78 : HolLoopProg 64 :=
.seq loopBody722_59 loopBody722_77

def loopBody722_79 : HolLoopProg 64 :=
.mark loopBody722_78

def loopBody722_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 288#64])

def loopBody722_81 : HolLoopProg 64 :=
.mark loopBody722_80

def loopBody722_82 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 734) ([6, 7, 8]) (some (6, loopBody722_33, loopBody722_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody722_83 : HolLoopProg 64 :=
.mark loopBody722_82

def loopBody722_84 : HolLoopProg 64 :=
.seq loopBody722_83 loopBody722_1

def loopBody722_85 : HolLoopProg 64 :=
.mark loopBody722_84

def loopBody722_86 : HolLoopProg 64 :=
.seq loopBody722_81 loopBody722_85

def loopBody722_87 : HolLoopProg 64 :=
.mark loopBody722_86

def loopBody722_88 : HolLoopProg 64 :=
.seq loopBody722_61 loopBody722_87

def loopBody722_89 : HolLoopProg 64 :=
.mark loopBody722_88

def loopBody722_90 : HolLoopProg 64 :=
.seq loopBody722_47 loopBody722_89

def loopBody722_91 : HolLoopProg 64 :=
.mark loopBody722_90

def loopBody722_92 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_91

def loopBody722_93 : HolLoopProg 64 :=
.mark loopBody722_92

def loopBody722_94 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_93

def loopBody722_95 : HolLoopProg 64 :=
.mark loopBody722_94

def loopBody722_96 : HolLoopProg 64 :=
.seq loopBody722_79 loopBody722_95

def loopBody722_97 : HolLoopProg 64 :=
.mark loopBody722_96

def loopBody722_98 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 733) ([6, 7]) (some (6, loopBody722_33, loopBody722_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody722_99 : HolLoopProg 64 :=
.mark loopBody722_98

def loopBody722_100 : HolLoopProg 64 :=
.seq loopBody722_99 loopBody722_1

def loopBody722_101 : HolLoopProg 64 :=
.mark loopBody722_100

def loopBody722_102 : HolLoopProg 64 :=
.seq loopBody722_61 loopBody722_101

def loopBody722_103 : HolLoopProg 64 :=
.mark loopBody722_102

def loopBody722_104 : HolLoopProg 64 :=
.seq loopBody722_29 loopBody722_103

def loopBody722_105 : HolLoopProg 64 :=
.mark loopBody722_104

def loopBody722_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody722_107 : HolLoopProg 64 :=
.mark loopBody722_106

def loopBody722_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody722_109 : HolLoopProg 64 :=
.mark loopBody722_108

def loopBody722_110 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 70) ([7]) (some (7, loopBody722_109, loopBody722_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody722_111 : HolLoopProg 64 :=
.mark loopBody722_110

def loopBody722_112 : HolLoopProg 64 :=
.seq loopBody722_111 loopBody722_1

def loopBody722_113 : HolLoopProg 64 :=
.mark loopBody722_112

def loopBody722_114 : HolLoopProg 64 :=
.seq loopBody722_107 loopBody722_113

def loopBody722_115 : HolLoopProg 64 :=
.mark loopBody722_114

def loopBody722_116 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_115

def loopBody722_117 : HolLoopProg 64 :=
.mark loopBody722_116

def loopBody722_118 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_117

def loopBody722_119 : HolLoopProg 64 :=
.mark loopBody722_118

def loopBody722_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody722_121 : HolLoopProg 64 :=
.mark loopBody722_120

def loopBody722_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody722_123 : HolLoopProg 64 :=
.mark loopBody722_122

def loopBody722_124 : HolLoopProg 64 :=
.seq loopBody722_123 loopBody722_1

def loopBody722_125 : HolLoopProg 64 :=
.mark loopBody722_124

def loopBody722_126 : HolLoopProg 64 :=
.seq loopBody722_121 loopBody722_125

def loopBody722_127 : HolLoopProg 64 :=
.mark loopBody722_126

def loopBody722_128 : HolLoopProg 64 :=
.seq loopBody722_119 loopBody722_127

def loopBody722_129 : HolLoopProg 64 :=
.mark loopBody722_128

def loopBody722_130 : HolLoopProg 64 :=
.seq loopBody722_105 loopBody722_129

def loopBody722_131 : HolLoopProg 64 :=
.mark loopBody722_130

def loopBody722_132 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_131

def loopBody722_133 : HolLoopProg 64 :=
.mark loopBody722_132

def loopBody722_134 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_133

def loopBody722_135 : HolLoopProg 64 :=
.mark loopBody722_134

def loopBody722_136 : HolLoopProg 64 :=
.seq loopBody722_97 loopBody722_135

def loopBody722_137 : HolLoopProg 64 :=
.mark loopBody722_136

def loopBody722_138 : HolLoopProg 64 :=
.seq loopBody722_27 loopBody722_137

def loopBody722_139 : HolLoopProg 64 :=
.mark loopBody722_138

def loopBody722_140 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_139

def loopBody722_141 : HolLoopProg 64 :=
.mark loopBody722_140

def loopBody722_142 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_141

def loopBody722_143 : HolLoopProg 64 :=
.mark loopBody722_142

def loopBody722_144 : HolLoopProg 64 :=
.seq loopBody722_17 loopBody722_143

def loopBody722_145 : HolLoopProg 64 :=
.mark loopBody722_144

def loopBody722_146 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_145

def loopBody722_147 : HolLoopProg 64 :=
.mark loopBody722_146

def loopBody722_148 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_147

def loopBody722_149 : HolLoopProg 64 :=
.mark loopBody722_148

def loopBody722_150 : HolLoopProg 64 :=
.seq loopBody722_7 loopBody722_149

def loopBody722_151 : HolLoopProg 64 :=
.mark loopBody722_150

def loopBody722_152 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_151

def loopBody722_153 : HolLoopProg 64 :=
.mark loopBody722_152

def loopBody722_154 : HolLoopProg 64 :=
.seq loopBody722_1 loopBody722_153

def loopBody722_155 : HolLoopProg 64 :=
.mark loopBody722_154

def output722 : Nat × List Nat × HolLoopProg 64 :=
  (786, [0, 1], loopBody722_155)
end InitECandidate.Proofs.FrontendStages.Loop
