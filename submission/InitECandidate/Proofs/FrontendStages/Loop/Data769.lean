import InitECandidate.Proofs.FrontendStages.Loop.Translate753
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody769_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody769_1 : HolLoopProg 64 :=
.mark loopBody769_0

def loopBody769_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody769_3 : HolLoopProg 64 :=
.mark loopBody769_2

def loopBody769_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody769_5 : HolLoopProg 64 :=
.mark loopBody769_4

def loopBody769_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody769_7 : HolLoopProg 64 :=
.mark loopBody769_6

def loopBody769_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody769_9 : HolLoopProg 64 :=
.mark loopBody769_8

def loopBody769_10 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 465) ([4]) (some (4, loopBody769_9, loopBody769_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody769_11 : HolLoopProg 64 :=
.mark loopBody769_10

def loopBody769_12 : HolLoopProg 64 :=
.seq loopBody769_11 loopBody769_1

def loopBody769_13 : HolLoopProg 64 :=
.mark loopBody769_12

def loopBody769_14 : HolLoopProg 64 :=
.seq loopBody769_7 loopBody769_13

def loopBody769_15 : HolLoopProg 64 :=
.mark loopBody769_14

def loopBody769_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody769_17 : HolLoopProg 64 :=
.mark loopBody769_16

def loopBody769_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 120#64)

def loopBody769_19 : HolLoopProg 64 :=
.mark loopBody769_18

def loopBody769_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 7 7 5 6)

def loopBody769_21 : HolLoopProg 64 :=
.mark loopBody769_20

def loopBody769_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 600#64, Flapjack.HolLoopExp.var 7])

def loopBody769_23 : HolLoopProg 64 :=
.mark loopBody769_22

def loopBody769_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody769_25 : HolLoopProg 64 :=
.mark loopBody769_24

def loopBody769_26 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 470) ([8]) (some (5, loopBody769_25, loopBody769_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody769_27 : HolLoopProg 64 :=
.mark loopBody769_26

def loopBody769_28 : HolLoopProg 64 :=
.seq loopBody769_27 loopBody769_1

def loopBody769_29 : HolLoopProg 64 :=
.mark loopBody769_28

def loopBody769_30 : HolLoopProg 64 :=
.seq loopBody769_23 loopBody769_29

def loopBody769_31 : HolLoopProg 64 :=
.mark loopBody769_30

def loopBody769_32 : HolLoopProg 64 :=
.seq loopBody769_21 loopBody769_31

def loopBody769_33 : HolLoopProg 64 :=
.mark loopBody769_32

def loopBody769_34 : HolLoopProg 64 :=
.seq loopBody769_19 loopBody769_33

def loopBody769_35 : HolLoopProg 64 :=
.mark loopBody769_34

def loopBody769_36 : HolLoopProg 64 :=
.seq loopBody769_17 loopBody769_35

def loopBody769_37 : HolLoopProg 64 :=
.mark loopBody769_36

def loopBody769_38 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_37

def loopBody769_39 : HolLoopProg 64 :=
.mark loopBody769_38

def loopBody769_40 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_39

def loopBody769_41 : HolLoopProg 64 :=
.mark loopBody769_40

def loopBody769_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody769_43 : HolLoopProg 64 :=
.mark loopBody769_42

def loopBody769_44 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 68) ([5]) (some (5, loopBody769_25, loopBody769_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))

def loopBody769_45 : HolLoopProg 64 :=
.mark loopBody769_44

def loopBody769_46 : HolLoopProg 64 :=
.seq loopBody769_45 loopBody769_1

def loopBody769_47 : HolLoopProg 64 :=
.mark loopBody769_46

def loopBody769_48 : HolLoopProg 64 :=
.seq loopBody769_43 loopBody769_47

def loopBody769_49 : HolLoopProg 64 :=
.mark loopBody769_48

def loopBody769_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody769_51 : HolLoopProg 64 :=
.mark loopBody769_50

def loopBody769_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 12#64)

def loopBody769_53 : HolLoopProg 64 :=
.mark loopBody769_52

def loopBody769_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody769_55 : HolLoopProg 64 :=
.mark loopBody769_54

def loopBody769_56 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))) (some 78) ([6, 7]) (some (6, loopBody769_55, loopBody769_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))

def loopBody769_57 : HolLoopProg 64 :=
.mark loopBody769_56

def loopBody769_58 : HolLoopProg 64 :=
.seq loopBody769_57 loopBody769_1

def loopBody769_59 : HolLoopProg 64 :=
.mark loopBody769_58

def loopBody769_60 : HolLoopProg 64 :=
.seq loopBody769_53 loopBody769_59

def loopBody769_61 : HolLoopProg 64 :=
.mark loopBody769_60

def loopBody769_62 : HolLoopProg 64 :=
.seq loopBody769_51 loopBody769_61

def loopBody769_63 : HolLoopProg 64 :=
.mark loopBody769_62

def loopBody769_64 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_63

def loopBody769_65 : HolLoopProg 64 :=
.mark loopBody769_64

def loopBody769_66 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_65

def loopBody769_67 : HolLoopProg 64 :=
.mark loopBody769_66

def loopBody769_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody769_69 : HolLoopProg 64 :=
.mark loopBody769_68

def loopBody769_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody769_71 : HolLoopProg 64 :=
.mark loopBody769_70

def loopBody769_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 12#64])

def loopBody769_73 : HolLoopProg 64 :=
.mark loopBody769_72

def loopBody769_74 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 631) ([6, 7, 8]) (some (6, loopBody769_55, loopBody769_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody769_75 : HolLoopProg 64 :=
.mark loopBody769_74

def loopBody769_76 : HolLoopProg 64 :=
.seq loopBody769_75 loopBody769_1

def loopBody769_77 : HolLoopProg 64 :=
.mark loopBody769_76

def loopBody769_78 : HolLoopProg 64 :=
.seq loopBody769_73 loopBody769_77

def loopBody769_79 : HolLoopProg 64 :=
.mark loopBody769_78

def loopBody769_80 : HolLoopProg 64 :=
.seq loopBody769_71 loopBody769_79

def loopBody769_81 : HolLoopProg 64 :=
.mark loopBody769_80

def loopBody769_82 : HolLoopProg 64 :=
.seq loopBody769_69 loopBody769_81

def loopBody769_83 : HolLoopProg 64 :=
.mark loopBody769_82

def loopBody769_84 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_83

def loopBody769_85 : HolLoopProg 64 :=
.mark loopBody769_84

def loopBody769_86 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_85

def loopBody769_87 : HolLoopProg 64 :=
.mark loopBody769_86

def loopBody769_88 : HolLoopProg 64 :=
.seq loopBody769_67 loopBody769_87

def loopBody769_89 : HolLoopProg 64 :=
.mark loopBody769_88

def loopBody769_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 120#64])

def loopBody769_91 : HolLoopProg 64 :=
.mark loopBody769_90

def loopBody769_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody769_93 : HolLoopProg 64 :=
.mark loopBody769_92

def loopBody769_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody769_95 : HolLoopProg 64 :=
.mark loopBody769_94

def loopBody769_96 : HolLoopProg 64 :=
.seq loopBody769_95 loopBody769_1

def loopBody769_97 : HolLoopProg 64 :=
.mark loopBody769_96

def loopBody769_98 : HolLoopProg 64 :=
.seq loopBody769_93 loopBody769_97

def loopBody769_99 : HolLoopProg 64 :=
.mark loopBody769_98

def loopBody769_100 : HolLoopProg 64 :=
.seq loopBody769_99 loopBody769_1

def loopBody769_101 : HolLoopProg 64 :=
.mark loopBody769_100

def loopBody769_102 : HolLoopProg 64 :=
.seq loopBody769_51 loopBody769_101

def loopBody769_103 : HolLoopProg 64 :=
.mark loopBody769_102

def loopBody769_104 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_103

def loopBody769_105 : HolLoopProg 64 :=
.mark loopBody769_104

def loopBody769_106 : HolLoopProg 64 :=
.seq loopBody769_91 loopBody769_105

def loopBody769_107 : HolLoopProg 64 :=
.mark loopBody769_106

def loopBody769_108 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_107

def loopBody769_109 : HolLoopProg 64 :=
.mark loopBody769_108

def loopBody769_110 : HolLoopProg 64 :=
.seq loopBody769_89 loopBody769_109

def loopBody769_111 : HolLoopProg 64 :=
.mark loopBody769_110

def loopBody769_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 128#64])

def loopBody769_113 : HolLoopProg 64 :=
.mark loopBody769_112

def loopBody769_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody769_115 : HolLoopProg 64 :=
.mark loopBody769_114

def loopBody769_116 : HolLoopProg 64 :=
.seq loopBody769_115 loopBody769_101

def loopBody769_117 : HolLoopProg 64 :=
.mark loopBody769_116

def loopBody769_118 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_117

def loopBody769_119 : HolLoopProg 64 :=
.mark loopBody769_118

def loopBody769_120 : HolLoopProg 64 :=
.seq loopBody769_113 loopBody769_119

def loopBody769_121 : HolLoopProg 64 :=
.mark loopBody769_120

def loopBody769_122 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_121

def loopBody769_123 : HolLoopProg 64 :=
.mark loopBody769_122

def loopBody769_124 : HolLoopProg 64 :=
.seq loopBody769_111 loopBody769_123

def loopBody769_125 : HolLoopProg 64 :=
.mark loopBody769_124

def loopBody769_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody769_127 : HolLoopProg 64 :=
.mark loopBody769_126

def loopBody769_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody769_129 : HolLoopProg 64 :=
.mark loopBody769_128

def loopBody769_130 : HolLoopProg 64 :=
.seq loopBody769_129 loopBody769_1

def loopBody769_131 : HolLoopProg 64 :=
.mark loopBody769_130

def loopBody769_132 : HolLoopProg 64 :=
.seq loopBody769_127 loopBody769_131

def loopBody769_133 : HolLoopProg 64 :=
.mark loopBody769_132

def loopBody769_134 : HolLoopProg 64 :=
.seq loopBody769_125 loopBody769_133

def loopBody769_135 : HolLoopProg 64 :=
.mark loopBody769_134

def loopBody769_136 : HolLoopProg 64 :=
.seq loopBody769_49 loopBody769_135

def loopBody769_137 : HolLoopProg 64 :=
.mark loopBody769_136

def loopBody769_138 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_137

def loopBody769_139 : HolLoopProg 64 :=
.mark loopBody769_138

def loopBody769_140 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_139

def loopBody769_141 : HolLoopProg 64 :=
.mark loopBody769_140

def loopBody769_142 : HolLoopProg 64 :=
.seq loopBody769_41 loopBody769_141

def loopBody769_143 : HolLoopProg 64 :=
.mark loopBody769_142

def loopBody769_144 : HolLoopProg 64 :=
.seq loopBody769_15 loopBody769_143

def loopBody769_145 : HolLoopProg 64 :=
.mark loopBody769_144

def loopBody769_146 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_145

def loopBody769_147 : HolLoopProg 64 :=
.mark loopBody769_146

def loopBody769_148 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_147

def loopBody769_149 : HolLoopProg 64 :=
.mark loopBody769_148

def loopBody769_150 : HolLoopProg 64 :=
.seq loopBody769_5 loopBody769_149

def loopBody769_151 : HolLoopProg 64 :=
.mark loopBody769_150

def loopBody769_152 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_151

def loopBody769_153 : HolLoopProg 64 :=
.mark loopBody769_152

def loopBody769_154 : HolLoopProg 64 :=
.seq loopBody769_3 loopBody769_153

def loopBody769_155 : HolLoopProg 64 :=
.mark loopBody769_154

def loopBody769_156 : HolLoopProg 64 :=
.seq loopBody769_1 loopBody769_155

def loopBody769_157 : HolLoopProg 64 :=
.mark loopBody769_156

def output769 : Nat × List Nat × HolLoopProg 64 :=
  (833, [], loopBody769_157)
end InitECandidate.Proofs.FrontendStages.Loop
