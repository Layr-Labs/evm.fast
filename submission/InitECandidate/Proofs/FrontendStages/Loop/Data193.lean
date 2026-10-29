import InitECandidate.Proofs.FrontendStages.Loop.Translate177
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody193_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody193_1 : HolLoopProg 64 :=
.mark loopBody193_0

def loopBody193_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody193_3 : HolLoopProg 64 :=
.mark loopBody193_2

def loopBody193_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody193_3, loopBody193_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody193_5 : HolLoopProg 64 :=
.mark loopBody193_4

def loopBody193_6 : HolLoopProg 64 :=
.seq loopBody193_5 loopBody193_1

def loopBody193_7 : HolLoopProg 64 :=
.mark loopBody193_6

def loopBody193_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 128#64)

def loopBody193_9 : HolLoopProg 64 :=
.mark loopBody193_8

def loopBody193_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody193_11 : HolLoopProg 64 :=
.mark loopBody193_10

def loopBody193_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody193_11, loopBody193_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody193_13 : HolLoopProg 64 :=
.mark loopBody193_12

def loopBody193_14 : HolLoopProg 64 :=
.seq loopBody193_13 loopBody193_1

def loopBody193_15 : HolLoopProg 64 :=
.mark loopBody193_14

def loopBody193_16 : HolLoopProg 64 :=
.seq loopBody193_9 loopBody193_15

def loopBody193_17 : HolLoopProg 64 :=
.mark loopBody193_16

def loopBody193_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody193_19 : HolLoopProg 64 :=
.mark loopBody193_18

def loopBody193_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody193_21 : HolLoopProg 64 :=
.mark loopBody193_20

def loopBody193_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody193_23 : HolLoopProg 64 :=
.mark loopBody193_22

def loopBody193_24 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 244) ([5, 6]) (some (5, loopBody193_23, loopBody193_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody193_25 : HolLoopProg 64 :=
.mark loopBody193_24

def loopBody193_26 : HolLoopProg 64 :=
.seq loopBody193_25 loopBody193_1

def loopBody193_27 : HolLoopProg 64 :=
.mark loopBody193_26

def loopBody193_28 : HolLoopProg 64 :=
.seq loopBody193_21 loopBody193_27

def loopBody193_29 : HolLoopProg 64 :=
.mark loopBody193_28

def loopBody193_30 : HolLoopProg 64 :=
.seq loopBody193_19 loopBody193_29

def loopBody193_31 : HolLoopProg 64 :=
.mark loopBody193_30

def loopBody193_32 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_31

def loopBody193_33 : HolLoopProg 64 :=
.mark loopBody193_32

def loopBody193_34 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_33

def loopBody193_35 : HolLoopProg 64 :=
.mark loopBody193_34

def loopBody193_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody193_37 : HolLoopProg 64 :=
.mark loopBody193_36

def loopBody193_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody193_39 : HolLoopProg 64 :=
.mark loopBody193_38

def loopBody193_40 : HolLoopProg 64 :=
.seq loopBody193_39 loopBody193_27

def loopBody193_41 : HolLoopProg 64 :=
.mark loopBody193_40

def loopBody193_42 : HolLoopProg 64 :=
.seq loopBody193_37 loopBody193_41

def loopBody193_43 : HolLoopProg 64 :=
.mark loopBody193_42

def loopBody193_44 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_43

def loopBody193_45 : HolLoopProg 64 :=
.mark loopBody193_44

def loopBody193_46 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_45

def loopBody193_47 : HolLoopProg 64 :=
.mark loopBody193_46

def loopBody193_48 : HolLoopProg 64 :=
.seq loopBody193_35 loopBody193_47

def loopBody193_49 : HolLoopProg 64 :=
.mark loopBody193_48

def loopBody193_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64])

def loopBody193_51 : HolLoopProg 64 :=
.mark loopBody193_50

def loopBody193_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 20#64)

def loopBody193_53 : HolLoopProg 64 :=
.mark loopBody193_52

def loopBody193_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody193_55 : HolLoopProg 64 :=
.mark loopBody193_54

def loopBody193_56 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 242) ([5, 6, 7]) (some (5, loopBody193_23, loopBody193_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody193_57 : HolLoopProg 64 :=
.mark loopBody193_56

def loopBody193_58 : HolLoopProg 64 :=
.seq loopBody193_57 loopBody193_1

def loopBody193_59 : HolLoopProg 64 :=
.mark loopBody193_58

def loopBody193_60 : HolLoopProg 64 :=
.seq loopBody193_55 loopBody193_59

def loopBody193_61 : HolLoopProg 64 :=
.mark loopBody193_60

def loopBody193_62 : HolLoopProg 64 :=
.seq loopBody193_53 loopBody193_61

def loopBody193_63 : HolLoopProg 64 :=
.mark loopBody193_62

def loopBody193_64 : HolLoopProg 64 :=
.seq loopBody193_51 loopBody193_63

def loopBody193_65 : HolLoopProg 64 :=
.mark loopBody193_64

def loopBody193_66 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_65

def loopBody193_67 : HolLoopProg 64 :=
.mark loopBody193_66

def loopBody193_68 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_67

def loopBody193_69 : HolLoopProg 64 :=
.mark loopBody193_68

def loopBody193_70 : HolLoopProg 64 :=
.seq loopBody193_49 loopBody193_69

def loopBody193_71 : HolLoopProg 64 :=
.mark loopBody193_70

def loopBody193_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 36#64])

def loopBody193_73 : HolLoopProg 64 :=
.mark loopBody193_72

def loopBody193_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 96#64])

def loopBody193_75 : HolLoopProg 64 :=
.mark loopBody193_74

def loopBody193_76 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 244) ([5, 6]) (some (5, loopBody193_23, loopBody193_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody193_77 : HolLoopProg 64 :=
.mark loopBody193_76

def loopBody193_78 : HolLoopProg 64 :=
.seq loopBody193_77 loopBody193_1

def loopBody193_79 : HolLoopProg 64 :=
.mark loopBody193_78

def loopBody193_80 : HolLoopProg 64 :=
.seq loopBody193_75 loopBody193_79

def loopBody193_81 : HolLoopProg 64 :=
.mark loopBody193_80

def loopBody193_82 : HolLoopProg 64 :=
.seq loopBody193_73 loopBody193_81

def loopBody193_83 : HolLoopProg 64 :=
.mark loopBody193_82

def loopBody193_84 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_83

def loopBody193_85 : HolLoopProg 64 :=
.mark loopBody193_84

def loopBody193_86 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_85

def loopBody193_87 : HolLoopProg 64 :=
.mark loopBody193_86

def loopBody193_88 : HolLoopProg 64 :=
.seq loopBody193_71 loopBody193_87

def loopBody193_89 : HolLoopProg 64 :=
.mark loopBody193_88

def loopBody193_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody193_91 : HolLoopProg 64 :=
.mark loopBody193_90

def loopBody193_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 4#64)

def loopBody193_93 : HolLoopProg 64 :=
.mark loopBody193_92

def loopBody193_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 4#64)

def loopBody193_95 : HolLoopProg 64 :=
.mark loopBody193_94

def loopBody193_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody193_97 : HolLoopProg 64 :=
.mark loopBody193_96

def loopBody193_98 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 235) ([5, 6, 7, 8]) (some (5, loopBody193_23, loopBody193_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody193_99 : HolLoopProg 64 :=
.mark loopBody193_98

def loopBody193_100 : HolLoopProg 64 :=
.seq loopBody193_99 loopBody193_1

def loopBody193_101 : HolLoopProg 64 :=
.mark loopBody193_100

def loopBody193_102 : HolLoopProg 64 :=
.seq loopBody193_97 loopBody193_101

def loopBody193_103 : HolLoopProg 64 :=
.mark loopBody193_102

def loopBody193_104 : HolLoopProg 64 :=
.seq loopBody193_95 loopBody193_103

def loopBody193_105 : HolLoopProg 64 :=
.mark loopBody193_104

def loopBody193_106 : HolLoopProg 64 :=
.seq loopBody193_93 loopBody193_105

def loopBody193_107 : HolLoopProg 64 :=
.mark loopBody193_106

def loopBody193_108 : HolLoopProg 64 :=
.seq loopBody193_91 loopBody193_107

def loopBody193_109 : HolLoopProg 64 :=
.mark loopBody193_108

def loopBody193_110 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_109

def loopBody193_111 : HolLoopProg 64 :=
.mark loopBody193_110

def loopBody193_112 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_111

def loopBody193_113 : HolLoopProg 64 :=
.mark loopBody193_112

def loopBody193_114 : HolLoopProg 64 :=
.seq loopBody193_89 loopBody193_113

def loopBody193_115 : HolLoopProg 64 :=
.mark loopBody193_114

def loopBody193_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody193_117 : HolLoopProg 64 :=
.mark loopBody193_116

def loopBody193_118 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody193_23, loopBody193_1, (Flapjack.Spt.ln)))

def loopBody193_119 : HolLoopProg 64 :=
.mark loopBody193_118

def loopBody193_120 : HolLoopProg 64 :=
.seq loopBody193_119 loopBody193_1

def loopBody193_121 : HolLoopProg 64 :=
.mark loopBody193_120

def loopBody193_122 : HolLoopProg 64 :=
.seq loopBody193_117 loopBody193_121

def loopBody193_123 : HolLoopProg 64 :=
.mark loopBody193_122

def loopBody193_124 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_123

def loopBody193_125 : HolLoopProg 64 :=
.mark loopBody193_124

def loopBody193_126 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_125

def loopBody193_127 : HolLoopProg 64 :=
.mark loopBody193_126

def loopBody193_128 : HolLoopProg 64 :=
.seq loopBody193_115 loopBody193_127

def loopBody193_129 : HolLoopProg 64 :=
.mark loopBody193_128

def loopBody193_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody193_131 : HolLoopProg 64 :=
.mark loopBody193_130

def loopBody193_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody193_133 : HolLoopProg 64 :=
.mark loopBody193_132

def loopBody193_134 : HolLoopProg 64 :=
.seq loopBody193_133 loopBody193_1

def loopBody193_135 : HolLoopProg 64 :=
.mark loopBody193_134

def loopBody193_136 : HolLoopProg 64 :=
.seq loopBody193_131 loopBody193_135

def loopBody193_137 : HolLoopProg 64 :=
.mark loopBody193_136

def loopBody193_138 : HolLoopProg 64 :=
.seq loopBody193_129 loopBody193_137

def loopBody193_139 : HolLoopProg 64 :=
.mark loopBody193_138

def loopBody193_140 : HolLoopProg 64 :=
.seq loopBody193_17 loopBody193_139

def loopBody193_141 : HolLoopProg 64 :=
.mark loopBody193_140

def loopBody193_142 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_141

def loopBody193_143 : HolLoopProg 64 :=
.mark loopBody193_142

def loopBody193_144 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_143

def loopBody193_145 : HolLoopProg 64 :=
.mark loopBody193_144

def loopBody193_146 : HolLoopProg 64 :=
.seq loopBody193_7 loopBody193_145

def loopBody193_147 : HolLoopProg 64 :=
.mark loopBody193_146

def loopBody193_148 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_147

def loopBody193_149 : HolLoopProg 64 :=
.mark loopBody193_148

def loopBody193_150 : HolLoopProg 64 :=
.seq loopBody193_1 loopBody193_149

def loopBody193_151 : HolLoopProg 64 :=
.mark loopBody193_150

def output193 : Nat × List Nat × HolLoopProg 64 :=
  (257, [0, 1], loopBody193_151)
end InitECandidate.Proofs.FrontendStages.Loop
