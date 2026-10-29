import InitECandidate.Proofs.FrontendStages.Loop.Translate73
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody89_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody89_1 : HolLoopProg 64 :=
.mark loopBody89_0

def loopBody89_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 48#64]))

def loopBody89_3 : HolLoopProg 64 :=
.mark loopBody89_2

def loopBody89_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody89_5 : HolLoopProg 64 :=
.mark loopBody89_4

def loopBody89_6 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 150) ([4]) (some (4, loopBody89_5, loopBody89_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody89_7 : HolLoopProg 64 :=
.mark loopBody89_6

def loopBody89_8 : HolLoopProg 64 :=
.seq loopBody89_7 loopBody89_1

def loopBody89_9 : HolLoopProg 64 :=
.mark loopBody89_8

def loopBody89_10 : HolLoopProg 64 :=
.seq loopBody89_3 loopBody89_9

def loopBody89_11 : HolLoopProg 64 :=
.mark loopBody89_10

def loopBody89_12 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_11

def loopBody89_13 : HolLoopProg 64 :=
.mark loopBody89_12

def loopBody89_14 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_13

def loopBody89_15 : HolLoopProg 64 :=
.mark loopBody89_14

def loopBody89_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody89_17 : HolLoopProg 64 :=
.mark loopBody89_16

def loopBody89_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody89_19 : HolLoopProg 64 :=
.mark loopBody89_18

def loopBody89_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody89_21 : HolLoopProg 64 :=
.mark loopBody89_20

def loopBody89_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody89_23 : HolLoopProg 64 :=
.mark loopBody89_22

def loopBody89_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody89_25 : HolLoopProg 64 :=
.mark loopBody89_24

def loopBody89_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.RegImm.reg 6) loopBody89_23 loopBody89_25 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody89_27 : HolLoopProg 64 :=
.mark loopBody89_26

def loopBody89_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody89_29 : HolLoopProg 64 :=
.mark loopBody89_28

def loopBody89_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 48#64]))

def loopBody89_31 : HolLoopProg 64 :=
.mark loopBody89_30

def loopBody89_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody89_33 : HolLoopProg 64 :=
.mark loopBody89_32

def loopBody89_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody89_35 : HolLoopProg 64 :=
.mark loopBody89_34

def loopBody89_36 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 151) ([5, 6]) (some (5, loopBody89_35, loopBody89_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody89_37 : HolLoopProg 64 :=
.mark loopBody89_36

def loopBody89_38 : HolLoopProg 64 :=
.seq loopBody89_37 loopBody89_1

def loopBody89_39 : HolLoopProg 64 :=
.mark loopBody89_38

def loopBody89_40 : HolLoopProg 64 :=
.seq loopBody89_33 loopBody89_39

def loopBody89_41 : HolLoopProg 64 :=
.mark loopBody89_40

def loopBody89_42 : HolLoopProg 64 :=
.seq loopBody89_31 loopBody89_41

def loopBody89_43 : HolLoopProg 64 :=
.mark loopBody89_42

def loopBody89_44 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_43

def loopBody89_45 : HolLoopProg 64 :=
.mark loopBody89_44

def loopBody89_46 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_45

def loopBody89_47 : HolLoopProg 64 :=
.mark loopBody89_46

def loopBody89_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody89_49 : HolLoopProg 64 :=
.mark loopBody89_48

def loopBody89_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 4)

def loopBody89_51 : HolLoopProg 64 :=
.mark loopBody89_50

def loopBody89_52 : HolLoopProg 64 :=
.seq loopBody89_51 loopBody89_1

def loopBody89_53 : HolLoopProg 64 :=
.mark loopBody89_52

def loopBody89_54 : HolLoopProg 64 :=
.seq loopBody89_53 loopBody89_1

def loopBody89_55 : HolLoopProg 64 :=
.mark loopBody89_54

def loopBody89_56 : HolLoopProg 64 :=
.seq loopBody89_49 loopBody89_55

def loopBody89_57 : HolLoopProg 64 :=
.mark loopBody89_56

def loopBody89_58 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_57

def loopBody89_59 : HolLoopProg 64 :=
.mark loopBody89_58

def loopBody89_60 : HolLoopProg 64 :=
.seq loopBody89_47 loopBody89_59

def loopBody89_61 : HolLoopProg 64 :=
.mark loopBody89_60

def loopBody89_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody89_63 : HolLoopProg 64 :=
.mark loopBody89_62

def loopBody89_64 : HolLoopProg 64 :=
.seq loopBody89_61 loopBody89_63

def loopBody89_65 : HolLoopProg 64 :=
.mark loopBody89_64

def loopBody89_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody89_67 : HolLoopProg 64 :=
.mark loopBody89_66

def loopBody89_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody89_65 loopBody89_67 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody89_69 : HolLoopProg 64 :=
.mark loopBody89_68

def loopBody89_70 : HolLoopProg 64 :=
.seq loopBody89_69 loopBody89_1

def loopBody89_71 : HolLoopProg 64 :=
.mark loopBody89_70

def loopBody89_72 : HolLoopProg 64 :=
.seq loopBody89_29 loopBody89_71

def loopBody89_73 : HolLoopProg 64 :=
.mark loopBody89_72

def loopBody89_74 : HolLoopProg 64 :=
.seq loopBody89_27 loopBody89_73

def loopBody89_75 : HolLoopProg 64 :=
.mark loopBody89_74

def loopBody89_76 : HolLoopProg 64 :=
.seq loopBody89_21 loopBody89_75

def loopBody89_77 : HolLoopProg 64 :=
.mark loopBody89_76

def loopBody89_78 : HolLoopProg 64 :=
.seq loopBody89_19 loopBody89_77

def loopBody89_79 : HolLoopProg 64 :=
.mark loopBody89_78

def loopBody89_80 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody89_79 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody89_81 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3])

def loopBody89_82 : HolLoopProg 64 :=
.mark loopBody89_81

def loopBody89_83 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 56#64]))

def loopBody89_84 : HolLoopProg 64 :=
.mark loopBody89_83

def loopBody89_85 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 128#64)

def loopBody89_86 : HolLoopProg 64 :=
.mark loopBody89_85

def loopBody89_87 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody89_88 : HolLoopProg 64 :=
.mark loopBody89_87

def loopBody89_89 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 78) ([6, 7]) (some (6, loopBody89_88, loopBody89_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody89_90 : HolLoopProg 64 :=
.mark loopBody89_89

def loopBody89_91 : HolLoopProg 64 :=
.seq loopBody89_90 loopBody89_1

def loopBody89_92 : HolLoopProg 64 :=
.mark loopBody89_91

def loopBody89_93 : HolLoopProg 64 :=
.seq loopBody89_86 loopBody89_92

def loopBody89_94 : HolLoopProg 64 :=
.mark loopBody89_93

def loopBody89_95 : HolLoopProg 64 :=
.seq loopBody89_84 loopBody89_94

def loopBody89_96 : HolLoopProg 64 :=
.mark loopBody89_95

def loopBody89_97 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_96

def loopBody89_98 : HolLoopProg 64 :=
.mark loopBody89_97

def loopBody89_99 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_98

def loopBody89_100 : HolLoopProg 64 :=
.mark loopBody89_99

def loopBody89_101 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody89_102 : HolLoopProg 64 :=
.mark loopBody89_101

def loopBody89_103 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody89_104 : HolLoopProg 64 :=
.mark loopBody89_103

def loopBody89_105 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.ls PUnit.unit))) (some 77) ([6, 7, 8]) (some (6, loopBody89_88, loopBody89_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))))

def loopBody89_106 : HolLoopProg 64 :=
.mark loopBody89_105

def loopBody89_107 : HolLoopProg 64 :=
.seq loopBody89_106 loopBody89_1

def loopBody89_108 : HolLoopProg 64 :=
.mark loopBody89_107

def loopBody89_109 : HolLoopProg 64 :=
.seq loopBody89_104 loopBody89_108

def loopBody89_110 : HolLoopProg 64 :=
.mark loopBody89_109

def loopBody89_111 : HolLoopProg 64 :=
.seq loopBody89_102 loopBody89_110

def loopBody89_112 : HolLoopProg 64 :=
.mark loopBody89_111

def loopBody89_113 : HolLoopProg 64 :=
.seq loopBody89_84 loopBody89_112

def loopBody89_114 : HolLoopProg 64 :=
.mark loopBody89_113

def loopBody89_115 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_114

def loopBody89_116 : HolLoopProg 64 :=
.mark loopBody89_115

def loopBody89_117 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_116

def loopBody89_118 : HolLoopProg 64 :=
.mark loopBody89_117

def loopBody89_119 : HolLoopProg 64 :=
.seq loopBody89_100 loopBody89_118

def loopBody89_120 : HolLoopProg 64 :=
.mark loopBody89_119

def loopBody89_121 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 56#64]),
      Flapjack.HolLoopExp.var 4])

def loopBody89_122 : HolLoopProg 64 :=
.mark loopBody89_121

def loopBody89_123 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 128#64)

def loopBody89_124 : HolLoopProg 64 :=
.mark loopBody89_123

def loopBody89_125 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 5 6

def loopBody89_126 : HolLoopProg 64 :=
.mark loopBody89_125

def loopBody89_127 : HolLoopProg 64 :=
.seq loopBody89_126 loopBody89_1

def loopBody89_128 : HolLoopProg 64 :=
.mark loopBody89_127

def loopBody89_129 : HolLoopProg 64 :=
.seq loopBody89_124 loopBody89_128

def loopBody89_130 : HolLoopProg 64 :=
.mark loopBody89_129

def loopBody89_131 : HolLoopProg 64 :=
.seq loopBody89_122 loopBody89_130

def loopBody89_132 : HolLoopProg 64 :=
.mark loopBody89_131

def loopBody89_133 : HolLoopProg 64 :=
.seq loopBody89_120 loopBody89_132

def loopBody89_134 : HolLoopProg 64 :=
.mark loopBody89_133

def loopBody89_135 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 64#64)

def loopBody89_136 : HolLoopProg 64 :=
.mark loopBody89_135

def loopBody89_137 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody89_138 : HolLoopProg 64 :=
.mark loopBody89_137

def loopBody89_139 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 56#64)

def loopBody89_140 : HolLoopProg 64 :=
.mark loopBody89_139

def loopBody89_141 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody89_142 : HolLoopProg 64 :=
.mark loopBody89_141

def loopBody89_143 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody89_144 : HolLoopProg 64 :=
.mark loopBody89_143

def loopBody89_145 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 7 (Flapjack.RegImm.reg 8) loopBody89_142 loopBody89_144 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody89_146 : HolLoopProg 64 :=
.mark loopBody89_145

def loopBody89_147 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody89_148 : HolLoopProg 64 :=
.mark loopBody89_147

def loopBody89_149 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 128#64)

def loopBody89_150 : HolLoopProg 64 :=
.mark loopBody89_149

def loopBody89_151 : HolLoopProg 64 :=
.seq loopBody89_150 loopBody89_1

def loopBody89_152 : HolLoopProg 64 :=
.mark loopBody89_151

def loopBody89_153 : HolLoopProg 64 :=
.seq loopBody89_152 loopBody89_1

def loopBody89_154 : HolLoopProg 64 :=
.mark loopBody89_153

def loopBody89_155 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody89_154 loopBody89_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody89_156 : HolLoopProg 64 :=
.mark loopBody89_155

def loopBody89_157 : HolLoopProg 64 :=
.seq loopBody89_156 loopBody89_1

def loopBody89_158 : HolLoopProg 64 :=
.mark loopBody89_157

def loopBody89_159 : HolLoopProg 64 :=
.seq loopBody89_148 loopBody89_158

def loopBody89_160 : HolLoopProg 64 :=
.mark loopBody89_159

def loopBody89_161 : HolLoopProg 64 :=
.seq loopBody89_146 loopBody89_160

def loopBody89_162 : HolLoopProg 64 :=
.mark loopBody89_161

def loopBody89_163 : HolLoopProg 64 :=
.seq loopBody89_140 loopBody89_162

def loopBody89_164 : HolLoopProg 64 :=
.mark loopBody89_163

def loopBody89_165 : HolLoopProg 64 :=
.seq loopBody89_138 loopBody89_164

def loopBody89_166 : HolLoopProg 64 :=
.mark loopBody89_165

def loopBody89_167 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.op Flapjack.BinOp.add
        [Flapjack.HolLoopExp.load
            (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 56#64]),
          Flapjack.HolLoopExp.var 5],
      Flapjack.HolLoopExp.const 8#64])

def loopBody89_168 : HolLoopProg 64 :=
.mark loopBody89_167

def loopBody89_169 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 3#64))

def loopBody89_170 : HolLoopProg 64 :=
.mark loopBody89_169

def loopBody89_171 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody89_172 : HolLoopProg 64 :=
.mark loopBody89_171

def loopBody89_173 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 89) ([7, 8]) (some (7, loopBody89_172, loopBody89_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody89_174 : HolLoopProg 64 :=
.mark loopBody89_173

def loopBody89_175 : HolLoopProg 64 :=
.seq loopBody89_174 loopBody89_1

def loopBody89_176 : HolLoopProg 64 :=
.mark loopBody89_175

def loopBody89_177 : HolLoopProg 64 :=
.seq loopBody89_170 loopBody89_176

def loopBody89_178 : HolLoopProg 64 :=
.mark loopBody89_177

def loopBody89_179 : HolLoopProg 64 :=
.seq loopBody89_168 loopBody89_178

def loopBody89_180 : HolLoopProg 64 :=
.mark loopBody89_179

def loopBody89_181 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_180

def loopBody89_182 : HolLoopProg 64 :=
.mark loopBody89_181

def loopBody89_183 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_182

def loopBody89_184 : HolLoopProg 64 :=
.mark loopBody89_183

def loopBody89_185 : HolLoopProg 64 :=
.seq loopBody89_166 loopBody89_184

def loopBody89_186 : HolLoopProg 64 :=
.mark loopBody89_185

def loopBody89_187 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 48#64]))

def loopBody89_188 : HolLoopProg 64 :=
.mark loopBody89_187

def loopBody89_189 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 56#64]))

def loopBody89_190 : HolLoopProg 64 :=
.mark loopBody89_189

def loopBody89_191 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 151) ([7, 8]) (some (7, loopBody89_172, loopBody89_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody89_192 : HolLoopProg 64 :=
.mark loopBody89_191

def loopBody89_193 : HolLoopProg 64 :=
.seq loopBody89_192 loopBody89_1

def loopBody89_194 : HolLoopProg 64 :=
.mark loopBody89_193

def loopBody89_195 : HolLoopProg 64 :=
.seq loopBody89_190 loopBody89_194

def loopBody89_196 : HolLoopProg 64 :=
.mark loopBody89_195

def loopBody89_197 : HolLoopProg 64 :=
.seq loopBody89_188 loopBody89_196

def loopBody89_198 : HolLoopProg 64 :=
.mark loopBody89_197

def loopBody89_199 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_198

def loopBody89_200 : HolLoopProg 64 :=
.mark loopBody89_199

def loopBody89_201 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_200

def loopBody89_202 : HolLoopProg 64 :=
.mark loopBody89_201

def loopBody89_203 : HolLoopProg 64 :=
.seq loopBody89_186 loopBody89_202

def loopBody89_204 : HolLoopProg 64 :=
.mark loopBody89_203

def loopBody89_205 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 128#64)

def loopBody89_206 : HolLoopProg 64 :=
.mark loopBody89_205

def loopBody89_207 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody89_142 loopBody89_144 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody89_208 : HolLoopProg 64 :=
.mark loopBody89_207

def loopBody89_209 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 56#64]),
      Flapjack.HolLoopExp.const 64#64])

def loopBody89_210 : HolLoopProg 64 :=
.mark loopBody89_209

def loopBody89_211 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 151) ([7, 8]) (some (7, loopBody89_172, loopBody89_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody89_212 : HolLoopProg 64 :=
.mark loopBody89_211

def loopBody89_213 : HolLoopProg 64 :=
.seq loopBody89_212 loopBody89_1

def loopBody89_214 : HolLoopProg 64 :=
.mark loopBody89_213

def loopBody89_215 : HolLoopProg 64 :=
.seq loopBody89_210 loopBody89_214

def loopBody89_216 : HolLoopProg 64 :=
.mark loopBody89_215

def loopBody89_217 : HolLoopProg 64 :=
.seq loopBody89_188 loopBody89_216

def loopBody89_218 : HolLoopProg 64 :=
.mark loopBody89_217

def loopBody89_219 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_218

def loopBody89_220 : HolLoopProg 64 :=
.mark loopBody89_219

def loopBody89_221 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_220

def loopBody89_222 : HolLoopProg 64 :=
.mark loopBody89_221

def loopBody89_223 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody89_222 loopBody89_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody89_224 : HolLoopProg 64 :=
.mark loopBody89_223

def loopBody89_225 : HolLoopProg 64 :=
.seq loopBody89_224 loopBody89_1

def loopBody89_226 : HolLoopProg 64 :=
.mark loopBody89_225

def loopBody89_227 : HolLoopProg 64 :=
.seq loopBody89_148 loopBody89_226

def loopBody89_228 : HolLoopProg 64 :=
.mark loopBody89_227

def loopBody89_229 : HolLoopProg 64 :=
.seq loopBody89_208 loopBody89_228

def loopBody89_230 : HolLoopProg 64 :=
.mark loopBody89_229

def loopBody89_231 : HolLoopProg 64 :=
.seq loopBody89_206 loopBody89_230

def loopBody89_232 : HolLoopProg 64 :=
.mark loopBody89_231

def loopBody89_233 : HolLoopProg 64 :=
.seq loopBody89_29 loopBody89_232

def loopBody89_234 : HolLoopProg 64 :=
.mark loopBody89_233

def loopBody89_235 : HolLoopProg 64 :=
.seq loopBody89_204 loopBody89_234

def loopBody89_236 : HolLoopProg 64 :=
.mark loopBody89_235

def loopBody89_237 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody89_238 : HolLoopProg 64 :=
.mark loopBody89_237

def loopBody89_239 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 152) ([7, 8]) (some (7, loopBody89_172, loopBody89_1, (Flapjack.Spt.ln)))

def loopBody89_240 : HolLoopProg 64 :=
.mark loopBody89_239

def loopBody89_241 : HolLoopProg 64 :=
.seq loopBody89_240 loopBody89_1

def loopBody89_242 : HolLoopProg 64 :=
.mark loopBody89_241

def loopBody89_243 : HolLoopProg 64 :=
.seq loopBody89_238 loopBody89_242

def loopBody89_244 : HolLoopProg 64 :=
.mark loopBody89_243

def loopBody89_245 : HolLoopProg 64 :=
.seq loopBody89_188 loopBody89_244

def loopBody89_246 : HolLoopProg 64 :=
.mark loopBody89_245

def loopBody89_247 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_246

def loopBody89_248 : HolLoopProg 64 :=
.mark loopBody89_247

def loopBody89_249 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_248

def loopBody89_250 : HolLoopProg 64 :=
.mark loopBody89_249

def loopBody89_251 : HolLoopProg 64 :=
.seq loopBody89_236 loopBody89_250

def loopBody89_252 : HolLoopProg 64 :=
.mark loopBody89_251

def loopBody89_253 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody89_254 : HolLoopProg 64 :=
.mark loopBody89_253

def loopBody89_255 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody89_256 : HolLoopProg 64 :=
.mark loopBody89_255

def loopBody89_257 : HolLoopProg 64 :=
.seq loopBody89_256 loopBody89_1

def loopBody89_258 : HolLoopProg 64 :=
.mark loopBody89_257

def loopBody89_259 : HolLoopProg 64 :=
.seq loopBody89_254 loopBody89_258

def loopBody89_260 : HolLoopProg 64 :=
.mark loopBody89_259

def loopBody89_261 : HolLoopProg 64 :=
.seq loopBody89_252 loopBody89_260

def loopBody89_262 : HolLoopProg 64 :=
.mark loopBody89_261

def loopBody89_263 : HolLoopProg 64 :=
.seq loopBody89_136 loopBody89_262

def loopBody89_264 : HolLoopProg 64 :=
.mark loopBody89_263

def loopBody89_265 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_264

def loopBody89_266 : HolLoopProg 64 :=
.mark loopBody89_265

def loopBody89_267 : HolLoopProg 64 :=
.seq loopBody89_134 loopBody89_266

def loopBody89_268 : HolLoopProg 64 :=
.mark loopBody89_267

def loopBody89_269 : HolLoopProg 64 :=
.seq loopBody89_82 loopBody89_268

def loopBody89_270 : HolLoopProg 64 :=
.mark loopBody89_269

def loopBody89_271 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_270

def loopBody89_272 : HolLoopProg 64 :=
.mark loopBody89_271

def loopBody89_273 : HolLoopProg 64 :=
.seq loopBody89_80 loopBody89_272

def loopBody89_274 : HolLoopProg 64 :=
.seq loopBody89_17 loopBody89_273

def loopBody89_275 : HolLoopProg 64 :=
.seq loopBody89_1 loopBody89_274

def loopBody89_276 : HolLoopProg 64 :=
.seq loopBody89_15 loopBody89_275

def output89 : Nat × List Nat × HolLoopProg 64 :=
  (153, [0, 1, 2], loopBody89_276)
end InitECandidate.Proofs.FrontendStages.Loop
