import InitECandidate.Proofs.FrontendStages.Loop.Translate252
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody268_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody268_1 : HolLoopProg 64 :=
.mark loopBody268_0

def loopBody268_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody268_3 : HolLoopProg 64 :=
.mark loopBody268_2

def loopBody268_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody268_3, loopBody268_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody268_5 : HolLoopProg 64 :=
.mark loopBody268_4

def loopBody268_6 : HolLoopProg 64 :=
.seq loopBody268_5 loopBody268_1

def loopBody268_7 : HolLoopProg 64 :=
.mark loopBody268_6

def loopBody268_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody268_9 : HolLoopProg 64 :=
.mark loopBody268_8

def loopBody268_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody268_11 : HolLoopProg 64 :=
.mark loopBody268_10

def loopBody268_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody268_13 : HolLoopProg 64 :=
.mark loopBody268_12

def loopBody268_14 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 308) ([5, 6]) (some (5, loopBody268_13, loopBody268_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody268_15 : HolLoopProg 64 :=
.mark loopBody268_14

def loopBody268_16 : HolLoopProg 64 :=
.seq loopBody268_15 loopBody268_1

def loopBody268_17 : HolLoopProg 64 :=
.mark loopBody268_16

def loopBody268_18 : HolLoopProg 64 :=
.seq loopBody268_11 loopBody268_17

def loopBody268_19 : HolLoopProg 64 :=
.mark loopBody268_18

def loopBody268_20 : HolLoopProg 64 :=
.seq loopBody268_9 loopBody268_19

def loopBody268_21 : HolLoopProg 64 :=
.mark loopBody268_20

def loopBody268_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody268_23 : HolLoopProg 64 :=
.mark loopBody268_22

def loopBody268_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody268_25 : HolLoopProg 64 :=
.mark loopBody268_24

def loopBody268_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody268_27 : HolLoopProg 64 :=
.mark loopBody268_26

def loopBody268_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody268_29 : HolLoopProg 64 :=
.mark loopBody268_28

def loopBody268_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody268_27 loopBody268_29 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody268_31 : HolLoopProg 64 :=
.mark loopBody268_30

def loopBody268_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody268_33 : HolLoopProg 64 :=
.mark loopBody268_32

def loopBody268_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 160#64]))

def loopBody268_35 : HolLoopProg 64 :=
.mark loopBody268_34

def loopBody268_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody268_37 : HolLoopProg 64 :=
.mark loopBody268_36

def loopBody268_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody268_39 : HolLoopProg 64 :=
.mark loopBody268_38

def loopBody268_40 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 177) ([7, 8]) (some (7, loopBody268_39, loopBody268_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody268_41 : HolLoopProg 64 :=
.mark loopBody268_40

def loopBody268_42 : HolLoopProg 64 :=
.seq loopBody268_41 loopBody268_1

def loopBody268_43 : HolLoopProg 64 :=
.mark loopBody268_42

def loopBody268_44 : HolLoopProg 64 :=
.seq loopBody268_37 loopBody268_43

def loopBody268_45 : HolLoopProg 64 :=
.mark loopBody268_44

def loopBody268_46 : HolLoopProg 64 :=
.seq loopBody268_35 loopBody268_45

def loopBody268_47 : HolLoopProg 64 :=
.mark loopBody268_46

def loopBody268_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody268_49 : HolLoopProg 64 :=
.mark loopBody268_48

def loopBody268_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 160#64]))

def loopBody268_51 : HolLoopProg 64 :=
.mark loopBody268_50

def loopBody268_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody268_53 : HolLoopProg 64 :=
.mark loopBody268_52

def loopBody268_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody268_55 : HolLoopProg 64 :=
.mark loopBody268_54

def loopBody268_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody268_57 : HolLoopProg 64 :=
.mark loopBody268_56

def loopBody268_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody268_59 : HolLoopProg 64 :=
.mark loopBody268_58

def loopBody268_60 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 320) ([8, 9, 10, 11, 12]) (some (8, loopBody268_59, loopBody268_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody268_61 : HolLoopProg 64 :=
.mark loopBody268_60

def loopBody268_62 : HolLoopProg 64 :=
.seq loopBody268_61 loopBody268_1

def loopBody268_63 : HolLoopProg 64 :=
.mark loopBody268_62

def loopBody268_64 : HolLoopProg 64 :=
.seq loopBody268_57 loopBody268_63

def loopBody268_65 : HolLoopProg 64 :=
.mark loopBody268_64

def loopBody268_66 : HolLoopProg 64 :=
.seq loopBody268_55 loopBody268_65

def loopBody268_67 : HolLoopProg 64 :=
.mark loopBody268_66

def loopBody268_68 : HolLoopProg 64 :=
.seq loopBody268_53 loopBody268_67

def loopBody268_69 : HolLoopProg 64 :=
.mark loopBody268_68

def loopBody268_70 : HolLoopProg 64 :=
.seq loopBody268_51 loopBody268_69

def loopBody268_71 : HolLoopProg 64 :=
.mark loopBody268_70

def loopBody268_72 : HolLoopProg 64 :=
.seq loopBody268_49 loopBody268_71

def loopBody268_73 : HolLoopProg 64 :=
.mark loopBody268_72

def loopBody268_74 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_73

def loopBody268_75 : HolLoopProg 64 :=
.mark loopBody268_74

def loopBody268_76 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_75

def loopBody268_77 : HolLoopProg 64 :=
.mark loopBody268_76

def loopBody268_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody268_79 : HolLoopProg 64 :=
.mark loopBody268_78

def loopBody268_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 7)

def loopBody268_81 : HolLoopProg 64 :=
.mark loopBody268_80

def loopBody268_82 : HolLoopProg 64 :=
.seq loopBody268_81 loopBody268_1

def loopBody268_83 : HolLoopProg 64 :=
.mark loopBody268_82

def loopBody268_84 : HolLoopProg 64 :=
.seq loopBody268_83 loopBody268_1

def loopBody268_85 : HolLoopProg 64 :=
.mark loopBody268_84

def loopBody268_86 : HolLoopProg 64 :=
.seq loopBody268_79 loopBody268_85

def loopBody268_87 : HolLoopProg 64 :=
.mark loopBody268_86

def loopBody268_88 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_87

def loopBody268_89 : HolLoopProg 64 :=
.mark loopBody268_88

def loopBody268_90 : HolLoopProg 64 :=
.seq loopBody268_77 loopBody268_89

def loopBody268_91 : HolLoopProg 64 :=
.mark loopBody268_90

def loopBody268_92 : HolLoopProg 64 :=
.seq loopBody268_47 loopBody268_91

def loopBody268_93 : HolLoopProg 64 :=
.mark loopBody268_92

def loopBody268_94 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_93

def loopBody268_95 : HolLoopProg 64 :=
.mark loopBody268_94

def loopBody268_96 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_95

def loopBody268_97 : HolLoopProg 64 :=
.mark loopBody268_96

def loopBody268_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody268_99 : HolLoopProg 64 :=
.mark loopBody268_98

def loopBody268_100 : HolLoopProg 64 :=
.seq loopBody268_97 loopBody268_99

def loopBody268_101 : HolLoopProg 64 :=
.mark loopBody268_100

def loopBody268_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody268_103 : HolLoopProg 64 :=
.mark loopBody268_102

def loopBody268_104 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody268_101 loopBody268_103 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody268_105 : HolLoopProg 64 :=
.mark loopBody268_104

def loopBody268_106 : HolLoopProg 64 :=
.seq loopBody268_105 loopBody268_1

def loopBody268_107 : HolLoopProg 64 :=
.mark loopBody268_106

def loopBody268_108 : HolLoopProg 64 :=
.seq loopBody268_33 loopBody268_107

def loopBody268_109 : HolLoopProg 64 :=
.mark loopBody268_108

def loopBody268_110 : HolLoopProg 64 :=
.seq loopBody268_31 loopBody268_109

def loopBody268_111 : HolLoopProg 64 :=
.mark loopBody268_110

def loopBody268_112 : HolLoopProg 64 :=
.seq loopBody268_25 loopBody268_111

def loopBody268_113 : HolLoopProg 64 :=
.mark loopBody268_112

def loopBody268_114 : HolLoopProg 64 :=
.seq loopBody268_23 loopBody268_113

def loopBody268_115 : HolLoopProg 64 :=
.mark loopBody268_114

def loopBody268_116 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody268_115 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody268_117 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody268_118 : HolLoopProg 64 :=
.mark loopBody268_117

def loopBody268_119 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody268_120 : HolLoopProg 64 :=
.mark loopBody268_119

def loopBody268_121 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 331) ([7, 8]) (some (7, loopBody268_39, loopBody268_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody268_122 : HolLoopProg 64 :=
.mark loopBody268_121

def loopBody268_123 : HolLoopProg 64 :=
.seq loopBody268_122 loopBody268_1

def loopBody268_124 : HolLoopProg 64 :=
.mark loopBody268_123

def loopBody268_125 : HolLoopProg 64 :=
.seq loopBody268_120 loopBody268_124

def loopBody268_126 : HolLoopProg 64 :=
.mark loopBody268_125

def loopBody268_127 : HolLoopProg 64 :=
.seq loopBody268_118 loopBody268_126

def loopBody268_128 : HolLoopProg 64 :=
.mark loopBody268_127

def loopBody268_129 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_128

def loopBody268_130 : HolLoopProg 64 :=
.mark loopBody268_129

def loopBody268_131 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_130

def loopBody268_132 : HolLoopProg 64 :=
.mark loopBody268_131

def loopBody268_133 : HolLoopProg 64 :=
.seq loopBody268_116 loopBody268_132

def loopBody268_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody268_135 : HolLoopProg 64 :=
.mark loopBody268_134

def loopBody268_136 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody268_39, loopBody268_1, (Flapjack.Spt.ln)))

def loopBody268_137 : HolLoopProg 64 :=
.mark loopBody268_136

def loopBody268_138 : HolLoopProg 64 :=
.seq loopBody268_137 loopBody268_1

def loopBody268_139 : HolLoopProg 64 :=
.mark loopBody268_138

def loopBody268_140 : HolLoopProg 64 :=
.seq loopBody268_135 loopBody268_139

def loopBody268_141 : HolLoopProg 64 :=
.mark loopBody268_140

def loopBody268_142 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_141

def loopBody268_143 : HolLoopProg 64 :=
.mark loopBody268_142

def loopBody268_144 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_143

def loopBody268_145 : HolLoopProg 64 :=
.mark loopBody268_144

def loopBody268_146 : HolLoopProg 64 :=
.seq loopBody268_133 loopBody268_145

def loopBody268_147 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody268_148 : HolLoopProg 64 :=
.mark loopBody268_147

def loopBody268_149 : HolLoopProg 64 :=
.seq loopBody268_148 loopBody268_1

def loopBody268_150 : HolLoopProg 64 :=
.mark loopBody268_149

def loopBody268_151 : HolLoopProg 64 :=
.seq loopBody268_11 loopBody268_150

def loopBody268_152 : HolLoopProg 64 :=
.mark loopBody268_151

def loopBody268_153 : HolLoopProg 64 :=
.seq loopBody268_146 loopBody268_152

def loopBody268_154 : HolLoopProg 64 :=
.seq loopBody268_9 loopBody268_153

def loopBody268_155 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_154

def loopBody268_156 : HolLoopProg 64 :=
.seq loopBody268_21 loopBody268_155

def loopBody268_157 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_156

def loopBody268_158 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_157

def loopBody268_159 : HolLoopProg 64 :=
.seq loopBody268_7 loopBody268_158

def loopBody268_160 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_159

def loopBody268_161 : HolLoopProg 64 :=
.seq loopBody268_1 loopBody268_160

def output268 : Nat × List Nat × HolLoopProg 64 :=
  (332, [0, 1, 2], loopBody268_161)
end InitECandidate.Proofs.FrontendStages.Loop
