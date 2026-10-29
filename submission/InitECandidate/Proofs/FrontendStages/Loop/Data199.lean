import InitECandidate.Proofs.FrontendStages.Loop.Translate183
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody199_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody199_1 : HolLoopProg 64 :=
.mark loopBody199_0

def loopBody199_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody199_3 : HolLoopProg 64 :=
.mark loopBody199_2

def loopBody199_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody199_3, loopBody199_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody199_5 : HolLoopProg 64 :=
.mark loopBody199_4

def loopBody199_6 : HolLoopProg 64 :=
.seq loopBody199_5 loopBody199_1

def loopBody199_7 : HolLoopProg 64 :=
.mark loopBody199_6

def loopBody199_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 128#64)

def loopBody199_9 : HolLoopProg 64 :=
.mark loopBody199_8

def loopBody199_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody199_11 : HolLoopProg 64 :=
.mark loopBody199_10

def loopBody199_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody199_11, loopBody199_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody199_13 : HolLoopProg 64 :=
.mark loopBody199_12

def loopBody199_14 : HolLoopProg 64 :=
.seq loopBody199_13 loopBody199_1

def loopBody199_15 : HolLoopProg 64 :=
.mark loopBody199_14

def loopBody199_16 : HolLoopProg 64 :=
.seq loopBody199_9 loopBody199_15

def loopBody199_17 : HolLoopProg 64 :=
.mark loopBody199_16

def loopBody199_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody199_19 : HolLoopProg 64 :=
.mark loopBody199_18

def loopBody199_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 48#64)

def loopBody199_21 : HolLoopProg 64 :=
.mark loopBody199_20

def loopBody199_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody199_23 : HolLoopProg 64 :=
.mark loopBody199_22

def loopBody199_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody199_25 : HolLoopProg 64 :=
.mark loopBody199_24

def loopBody199_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 242) ([5, 6, 7]) (some (5, loopBody199_25, loopBody199_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody199_27 : HolLoopProg 64 :=
.mark loopBody199_26

def loopBody199_28 : HolLoopProg 64 :=
.seq loopBody199_27 loopBody199_1

def loopBody199_29 : HolLoopProg 64 :=
.mark loopBody199_28

def loopBody199_30 : HolLoopProg 64 :=
.seq loopBody199_23 loopBody199_29

def loopBody199_31 : HolLoopProg 64 :=
.mark loopBody199_30

def loopBody199_32 : HolLoopProg 64 :=
.seq loopBody199_21 loopBody199_31

def loopBody199_33 : HolLoopProg 64 :=
.mark loopBody199_32

def loopBody199_34 : HolLoopProg 64 :=
.seq loopBody199_19 loopBody199_33

def loopBody199_35 : HolLoopProg 64 :=
.mark loopBody199_34

def loopBody199_36 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_35

def loopBody199_37 : HolLoopProg 64 :=
.mark loopBody199_36

def loopBody199_38 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_37

def loopBody199_39 : HolLoopProg 64 :=
.mark loopBody199_38

def loopBody199_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody199_41 : HolLoopProg 64 :=
.mark loopBody199_40

def loopBody199_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64])

def loopBody199_43 : HolLoopProg 64 :=
.mark loopBody199_42

def loopBody199_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody199_45 : HolLoopProg 64 :=
.mark loopBody199_44

def loopBody199_46 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([5, 6, 7]) (some (5, loopBody199_25, loopBody199_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody199_47 : HolLoopProg 64 :=
.mark loopBody199_46

def loopBody199_48 : HolLoopProg 64 :=
.seq loopBody199_47 loopBody199_1

def loopBody199_49 : HolLoopProg 64 :=
.mark loopBody199_48

def loopBody199_50 : HolLoopProg 64 :=
.seq loopBody199_45 loopBody199_49

def loopBody199_51 : HolLoopProg 64 :=
.mark loopBody199_50

def loopBody199_52 : HolLoopProg 64 :=
.seq loopBody199_43 loopBody199_51

def loopBody199_53 : HolLoopProg 64 :=
.mark loopBody199_52

def loopBody199_54 : HolLoopProg 64 :=
.seq loopBody199_41 loopBody199_53

def loopBody199_55 : HolLoopProg 64 :=
.mark loopBody199_54

def loopBody199_56 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_55

def loopBody199_57 : HolLoopProg 64 :=
.mark loopBody199_56

def loopBody199_58 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_57

def loopBody199_59 : HolLoopProg 64 :=
.mark loopBody199_58

def loopBody199_60 : HolLoopProg 64 :=
.seq loopBody199_39 loopBody199_59

def loopBody199_61 : HolLoopProg 64 :=
.mark loopBody199_60

def loopBody199_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 80#64])

def loopBody199_63 : HolLoopProg 64 :=
.mark loopBody199_62

def loopBody199_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody199_65 : HolLoopProg 64 :=
.mark loopBody199_64

def loopBody199_66 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 244) ([5, 6]) (some (5, loopBody199_25, loopBody199_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody199_67 : HolLoopProg 64 :=
.mark loopBody199_66

def loopBody199_68 : HolLoopProg 64 :=
.seq loopBody199_67 loopBody199_1

def loopBody199_69 : HolLoopProg 64 :=
.mark loopBody199_68

def loopBody199_70 : HolLoopProg 64 :=
.seq loopBody199_65 loopBody199_69

def loopBody199_71 : HolLoopProg 64 :=
.mark loopBody199_70

def loopBody199_72 : HolLoopProg 64 :=
.seq loopBody199_63 loopBody199_71

def loopBody199_73 : HolLoopProg 64 :=
.mark loopBody199_72

def loopBody199_74 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_73

def loopBody199_75 : HolLoopProg 64 :=
.mark loopBody199_74

def loopBody199_76 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_75

def loopBody199_77 : HolLoopProg 64 :=
.mark loopBody199_76

def loopBody199_78 : HolLoopProg 64 :=
.seq loopBody199_61 loopBody199_77

def loopBody199_79 : HolLoopProg 64 :=
.mark loopBody199_78

def loopBody199_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64])

def loopBody199_81 : HolLoopProg 64 :=
.mark loopBody199_80

def loopBody199_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 96#64)

def loopBody199_83 : HolLoopProg 64 :=
.mark loopBody199_82

def loopBody199_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 96#64])

def loopBody199_85 : HolLoopProg 64 :=
.mark loopBody199_84

def loopBody199_86 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 242) ([5, 6, 7]) (some (5, loopBody199_25, loopBody199_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody199_87 : HolLoopProg 64 :=
.mark loopBody199_86

def loopBody199_88 : HolLoopProg 64 :=
.seq loopBody199_87 loopBody199_1

def loopBody199_89 : HolLoopProg 64 :=
.mark loopBody199_88

def loopBody199_90 : HolLoopProg 64 :=
.seq loopBody199_85 loopBody199_89

def loopBody199_91 : HolLoopProg 64 :=
.mark loopBody199_90

def loopBody199_92 : HolLoopProg 64 :=
.seq loopBody199_83 loopBody199_91

def loopBody199_93 : HolLoopProg 64 :=
.mark loopBody199_92

def loopBody199_94 : HolLoopProg 64 :=
.seq loopBody199_81 loopBody199_93

def loopBody199_95 : HolLoopProg 64 :=
.mark loopBody199_94

def loopBody199_96 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_95

def loopBody199_97 : HolLoopProg 64 :=
.mark loopBody199_96

def loopBody199_98 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_97

def loopBody199_99 : HolLoopProg 64 :=
.mark loopBody199_98

def loopBody199_100 : HolLoopProg 64 :=
.seq loopBody199_79 loopBody199_99

def loopBody199_101 : HolLoopProg 64 :=
.mark loopBody199_100

def loopBody199_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody199_103 : HolLoopProg 64 :=
.mark loopBody199_102

def loopBody199_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 4#64)

def loopBody199_105 : HolLoopProg 64 :=
.mark loopBody199_104

def loopBody199_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 4#64)

def loopBody199_107 : HolLoopProg 64 :=
.mark loopBody199_106

def loopBody199_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody199_109 : HolLoopProg 64 :=
.mark loopBody199_108

def loopBody199_110 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 235) ([5, 6, 7, 8]) (some (5, loopBody199_25, loopBody199_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody199_111 : HolLoopProg 64 :=
.mark loopBody199_110

def loopBody199_112 : HolLoopProg 64 :=
.seq loopBody199_111 loopBody199_1

def loopBody199_113 : HolLoopProg 64 :=
.mark loopBody199_112

def loopBody199_114 : HolLoopProg 64 :=
.seq loopBody199_109 loopBody199_113

def loopBody199_115 : HolLoopProg 64 :=
.mark loopBody199_114

def loopBody199_116 : HolLoopProg 64 :=
.seq loopBody199_107 loopBody199_115

def loopBody199_117 : HolLoopProg 64 :=
.mark loopBody199_116

def loopBody199_118 : HolLoopProg 64 :=
.seq loopBody199_105 loopBody199_117

def loopBody199_119 : HolLoopProg 64 :=
.mark loopBody199_118

def loopBody199_120 : HolLoopProg 64 :=
.seq loopBody199_103 loopBody199_119

def loopBody199_121 : HolLoopProg 64 :=
.mark loopBody199_120

def loopBody199_122 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_121

def loopBody199_123 : HolLoopProg 64 :=
.mark loopBody199_122

def loopBody199_124 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_123

def loopBody199_125 : HolLoopProg 64 :=
.mark loopBody199_124

def loopBody199_126 : HolLoopProg 64 :=
.seq loopBody199_101 loopBody199_125

def loopBody199_127 : HolLoopProg 64 :=
.mark loopBody199_126

def loopBody199_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody199_129 : HolLoopProg 64 :=
.mark loopBody199_128

def loopBody199_130 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody199_25, loopBody199_1, (Flapjack.Spt.ln)))

def loopBody199_131 : HolLoopProg 64 :=
.mark loopBody199_130

def loopBody199_132 : HolLoopProg 64 :=
.seq loopBody199_131 loopBody199_1

def loopBody199_133 : HolLoopProg 64 :=
.mark loopBody199_132

def loopBody199_134 : HolLoopProg 64 :=
.seq loopBody199_129 loopBody199_133

def loopBody199_135 : HolLoopProg 64 :=
.mark loopBody199_134

def loopBody199_136 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_135

def loopBody199_137 : HolLoopProg 64 :=
.mark loopBody199_136

def loopBody199_138 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_137

def loopBody199_139 : HolLoopProg 64 :=
.mark loopBody199_138

def loopBody199_140 : HolLoopProg 64 :=
.seq loopBody199_127 loopBody199_139

def loopBody199_141 : HolLoopProg 64 :=
.mark loopBody199_140

def loopBody199_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody199_143 : HolLoopProg 64 :=
.mark loopBody199_142

def loopBody199_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody199_145 : HolLoopProg 64 :=
.mark loopBody199_144

def loopBody199_146 : HolLoopProg 64 :=
.seq loopBody199_145 loopBody199_1

def loopBody199_147 : HolLoopProg 64 :=
.mark loopBody199_146

def loopBody199_148 : HolLoopProg 64 :=
.seq loopBody199_143 loopBody199_147

def loopBody199_149 : HolLoopProg 64 :=
.mark loopBody199_148

def loopBody199_150 : HolLoopProg 64 :=
.seq loopBody199_141 loopBody199_149

def loopBody199_151 : HolLoopProg 64 :=
.mark loopBody199_150

def loopBody199_152 : HolLoopProg 64 :=
.seq loopBody199_17 loopBody199_151

def loopBody199_153 : HolLoopProg 64 :=
.mark loopBody199_152

def loopBody199_154 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_153

def loopBody199_155 : HolLoopProg 64 :=
.mark loopBody199_154

def loopBody199_156 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_155

def loopBody199_157 : HolLoopProg 64 :=
.mark loopBody199_156

def loopBody199_158 : HolLoopProg 64 :=
.seq loopBody199_7 loopBody199_157

def loopBody199_159 : HolLoopProg 64 :=
.mark loopBody199_158

def loopBody199_160 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_159

def loopBody199_161 : HolLoopProg 64 :=
.mark loopBody199_160

def loopBody199_162 : HolLoopProg 64 :=
.seq loopBody199_1 loopBody199_161

def loopBody199_163 : HolLoopProg 64 :=
.mark loopBody199_162

def output199 : Nat × List Nat × HolLoopProg 64 :=
  (263, [0, 1], loopBody199_163)
end InitECandidate.Proofs.FrontendStages.Loop
