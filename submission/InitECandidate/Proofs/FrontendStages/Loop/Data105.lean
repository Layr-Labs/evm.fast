import InitECandidate.Proofs.FrontendStages.Loop.Translate89
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody105_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody105_1 : HolLoopProg 64 :=
.mark loopBody105_0

def loopBody105_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody105_3 : HolLoopProg 64 :=
.mark loopBody105_2

def loopBody105_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody105_5 : HolLoopProg 64 :=
.mark loopBody105_4

def loopBody105_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody105_7 : HolLoopProg 64 :=
.mark loopBody105_6

def loopBody105_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 167) ([3, 4]) (some (3, loopBody105_7, loopBody105_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody105_9 : HolLoopProg 64 :=
.mark loopBody105_8

def loopBody105_10 : HolLoopProg 64 :=
.seq loopBody105_9 loopBody105_1

def loopBody105_11 : HolLoopProg 64 :=
.mark loopBody105_10

def loopBody105_12 : HolLoopProg 64 :=
.seq loopBody105_5 loopBody105_11

def loopBody105_13 : HolLoopProg 64 :=
.mark loopBody105_12

def loopBody105_14 : HolLoopProg 64 :=
.seq loopBody105_3 loopBody105_13

def loopBody105_15 : HolLoopProg 64 :=
.mark loopBody105_14

def loopBody105_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 4#64))

def loopBody105_17 : HolLoopProg 64 :=
.mark loopBody105_16

def loopBody105_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody105_19 : HolLoopProg 64 :=
.mark loopBody105_18

def loopBody105_20 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody105_19, loopBody105_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody105_21 : HolLoopProg 64 :=
.mark loopBody105_20

def loopBody105_22 : HolLoopProg 64 :=
.seq loopBody105_21 loopBody105_1

def loopBody105_23 : HolLoopProg 64 :=
.mark loopBody105_22

def loopBody105_24 : HolLoopProg 64 :=
.seq loopBody105_17 loopBody105_23

def loopBody105_25 : HolLoopProg 64 :=
.mark loopBody105_24

def loopBody105_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody105_27 : HolLoopProg 64 :=
.mark loopBody105_26

def loopBody105_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody105_29 : HolLoopProg 64 :=
.mark loopBody105_28

def loopBody105_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody105_31 : HolLoopProg 64 :=
.mark loopBody105_30

def loopBody105_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody105_33 : HolLoopProg 64 :=
.mark loopBody105_32

def loopBody105_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody105_35 : HolLoopProg 64 :=
.mark loopBody105_34

def loopBody105_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody105_37 : HolLoopProg 64 :=
.mark loopBody105_36

def loopBody105_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody105_35 loopBody105_37 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody105_39 : HolLoopProg 64 :=
.mark loopBody105_38

def loopBody105_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody105_41 : HolLoopProg 64 :=
.mark loopBody105_40

def loopBody105_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 5])

def loopBody105_43 : HolLoopProg 64 :=
.mark loopBody105_42

def loopBody105_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody105_45 : HolLoopProg 64 :=
.mark loopBody105_44

def loopBody105_46 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 168) ([7]) (some (7, loopBody105_45, loopBody105_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody105_47 : HolLoopProg 64 :=
.mark loopBody105_46

def loopBody105_48 : HolLoopProg 64 :=
.seq loopBody105_47 loopBody105_1

def loopBody105_49 : HolLoopProg 64 :=
.mark loopBody105_48

def loopBody105_50 : HolLoopProg 64 :=
.seq loopBody105_43 loopBody105_49

def loopBody105_51 : HolLoopProg 64 :=
.mark loopBody105_50

def loopBody105_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64)])

def loopBody105_53 : HolLoopProg 64 :=
.mark loopBody105_52

def loopBody105_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 5])

def loopBody105_55 : HolLoopProg 64 :=
.mark loopBody105_54

def loopBody105_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody105_57 : HolLoopProg 64 :=
.mark loopBody105_56

def loopBody105_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 7) 9

def loopBody105_59 : HolLoopProg 64 :=
.mark loopBody105_58

def loopBody105_60 : HolLoopProg 64 :=
.seq loopBody105_59 loopBody105_1

def loopBody105_61 : HolLoopProg 64 :=
.mark loopBody105_60

def loopBody105_62 : HolLoopProg 64 :=
.seq loopBody105_57 loopBody105_61

def loopBody105_63 : HolLoopProg 64 :=
.mark loopBody105_62

def loopBody105_64 : HolLoopProg 64 :=
.seq loopBody105_63 loopBody105_1

def loopBody105_65 : HolLoopProg 64 :=
.mark loopBody105_64

def loopBody105_66 : HolLoopProg 64 :=
.seq loopBody105_55 loopBody105_65

def loopBody105_67 : HolLoopProg 64 :=
.mark loopBody105_66

def loopBody105_68 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_67

def loopBody105_69 : HolLoopProg 64 :=
.mark loopBody105_68

def loopBody105_70 : HolLoopProg 64 :=
.seq loopBody105_53 loopBody105_69

def loopBody105_71 : HolLoopProg 64 :=
.mark loopBody105_70

def loopBody105_72 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_71

def loopBody105_73 : HolLoopProg 64 :=
.mark loopBody105_72

def loopBody105_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64),
      Flapjack.HolLoopExp.const 8#64])

def loopBody105_75 : HolLoopProg 64 :=
.mark loopBody105_74

def loopBody105_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody105_77 : HolLoopProg 64 :=
.mark loopBody105_76

def loopBody105_78 : HolLoopProg 64 :=
.seq loopBody105_77 loopBody105_65

def loopBody105_79 : HolLoopProg 64 :=
.mark loopBody105_78

def loopBody105_80 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_79

def loopBody105_81 : HolLoopProg 64 :=
.mark loopBody105_80

def loopBody105_82 : HolLoopProg 64 :=
.seq loopBody105_75 loopBody105_81

def loopBody105_83 : HolLoopProg 64 :=
.mark loopBody105_82

def loopBody105_84 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_83

def loopBody105_85 : HolLoopProg 64 :=
.mark loopBody105_84

def loopBody105_86 : HolLoopProg 64 :=
.seq loopBody105_73 loopBody105_85

def loopBody105_87 : HolLoopProg 64 :=
.mark loopBody105_86

def loopBody105_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 6])

def loopBody105_89 : HolLoopProg 64 :=
.mark loopBody105_88

def loopBody105_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 7)

def loopBody105_91 : HolLoopProg 64 :=
.mark loopBody105_90

def loopBody105_92 : HolLoopProg 64 :=
.seq loopBody105_91 loopBody105_1

def loopBody105_93 : HolLoopProg 64 :=
.mark loopBody105_92

def loopBody105_94 : HolLoopProg 64 :=
.seq loopBody105_93 loopBody105_1

def loopBody105_95 : HolLoopProg 64 :=
.mark loopBody105_94

def loopBody105_96 : HolLoopProg 64 :=
.seq loopBody105_89 loopBody105_95

def loopBody105_97 : HolLoopProg 64 :=
.mark loopBody105_96

def loopBody105_98 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_97

def loopBody105_99 : HolLoopProg 64 :=
.mark loopBody105_98

def loopBody105_100 : HolLoopProg 64 :=
.seq loopBody105_87 loopBody105_99

def loopBody105_101 : HolLoopProg 64 :=
.mark loopBody105_100

def loopBody105_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody105_103 : HolLoopProg 64 :=
.mark loopBody105_102

def loopBody105_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 7)

def loopBody105_105 : HolLoopProg 64 :=
.mark loopBody105_104

def loopBody105_106 : HolLoopProg 64 :=
.seq loopBody105_105 loopBody105_1

def loopBody105_107 : HolLoopProg 64 :=
.mark loopBody105_106

def loopBody105_108 : HolLoopProg 64 :=
.seq loopBody105_107 loopBody105_1

def loopBody105_109 : HolLoopProg 64 :=
.mark loopBody105_108

def loopBody105_110 : HolLoopProg 64 :=
.seq loopBody105_103 loopBody105_109

def loopBody105_111 : HolLoopProg 64 :=
.mark loopBody105_110

def loopBody105_112 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_111

def loopBody105_113 : HolLoopProg 64 :=
.mark loopBody105_112

def loopBody105_114 : HolLoopProg 64 :=
.seq loopBody105_101 loopBody105_113

def loopBody105_115 : HolLoopProg 64 :=
.mark loopBody105_114

def loopBody105_116 : HolLoopProg 64 :=
.seq loopBody105_51 loopBody105_115

def loopBody105_117 : HolLoopProg 64 :=
.mark loopBody105_116

def loopBody105_118 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_117

def loopBody105_119 : HolLoopProg 64 :=
.mark loopBody105_118

def loopBody105_120 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_119

def loopBody105_121 : HolLoopProg 64 :=
.mark loopBody105_120

def loopBody105_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody105_123 : HolLoopProg 64 :=
.mark loopBody105_122

def loopBody105_124 : HolLoopProg 64 :=
.seq loopBody105_121 loopBody105_123

def loopBody105_125 : HolLoopProg 64 :=
.mark loopBody105_124

def loopBody105_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody105_127 : HolLoopProg 64 :=
.mark loopBody105_126

def loopBody105_128 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody105_125 loopBody105_127 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody105_129 : HolLoopProg 64 :=
.mark loopBody105_128

def loopBody105_130 : HolLoopProg 64 :=
.seq loopBody105_129 loopBody105_1

def loopBody105_131 : HolLoopProg 64 :=
.mark loopBody105_130

def loopBody105_132 : HolLoopProg 64 :=
.seq loopBody105_41 loopBody105_131

def loopBody105_133 : HolLoopProg 64 :=
.mark loopBody105_132

def loopBody105_134 : HolLoopProg 64 :=
.seq loopBody105_39 loopBody105_133

def loopBody105_135 : HolLoopProg 64 :=
.mark loopBody105_134

def loopBody105_136 : HolLoopProg 64 :=
.seq loopBody105_33 loopBody105_135

def loopBody105_137 : HolLoopProg 64 :=
.mark loopBody105_136

def loopBody105_138 : HolLoopProg 64 :=
.seq loopBody105_31 loopBody105_137

def loopBody105_139 : HolLoopProg 64 :=
.mark loopBody105_138

def loopBody105_140 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody105_139 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody105_141 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody105_142 : HolLoopProg 64 :=
.mark loopBody105_141

def loopBody105_143 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody105_144 : HolLoopProg 64 :=
.mark loopBody105_143

def loopBody105_145 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7]

def loopBody105_146 : HolLoopProg 64 :=
.mark loopBody105_145

def loopBody105_147 : HolLoopProg 64 :=
.seq loopBody105_146 loopBody105_1

def loopBody105_148 : HolLoopProg 64 :=
.mark loopBody105_147

def loopBody105_149 : HolLoopProg 64 :=
.seq loopBody105_144 loopBody105_148

def loopBody105_150 : HolLoopProg 64 :=
.mark loopBody105_149

def loopBody105_151 : HolLoopProg 64 :=
.seq loopBody105_142 loopBody105_150

def loopBody105_152 : HolLoopProg 64 :=
.mark loopBody105_151

def loopBody105_153 : HolLoopProg 64 :=
.seq loopBody105_140 loopBody105_152

def loopBody105_154 : HolLoopProg 64 :=
.seq loopBody105_29 loopBody105_153

def loopBody105_155 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_154

def loopBody105_156 : HolLoopProg 64 :=
.seq loopBody105_27 loopBody105_155

def loopBody105_157 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_156

def loopBody105_158 : HolLoopProg 64 :=
.seq loopBody105_25 loopBody105_157

def loopBody105_159 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_158

def loopBody105_160 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_159

def loopBody105_161 : HolLoopProg 64 :=
.seq loopBody105_15 loopBody105_160

def loopBody105_162 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_161

def loopBody105_163 : HolLoopProg 64 :=
.seq loopBody105_1 loopBody105_162

def output105 : Nat × List Nat × HolLoopProg 64 :=
  (169, [0, 1], loopBody105_163)
end InitECandidate.Proofs.FrontendStages.Loop
