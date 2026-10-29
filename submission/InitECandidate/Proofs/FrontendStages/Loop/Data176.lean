import InitECandidate.Proofs.FrontendStages.Loop.Translate160
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody176_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody176_1 : HolLoopProg 64 :=
.mark loopBody176_0

def loopBody176_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody176_3 : HolLoopProg 64 :=
.mark loopBody176_2

def loopBody176_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody176_3, loopBody176_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody176_5 : HolLoopProg 64 :=
.mark loopBody176_4

def loopBody176_6 : HolLoopProg 64 :=
.seq loopBody176_5 loopBody176_1

def loopBody176_7 : HolLoopProg 64 :=
.mark loopBody176_6

def loopBody176_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 64#64)

def loopBody176_9 : HolLoopProg 64 :=
.mark loopBody176_8

def loopBody176_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody176_11 : HolLoopProg 64 :=
.mark loopBody176_10

def loopBody176_12 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody176_11, loopBody176_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody176_13 : HolLoopProg 64 :=
.mark loopBody176_12

def loopBody176_14 : HolLoopProg 64 :=
.seq loopBody176_13 loopBody176_1

def loopBody176_15 : HolLoopProg 64 :=
.mark loopBody176_14

def loopBody176_16 : HolLoopProg 64 :=
.seq loopBody176_9 loopBody176_15

def loopBody176_17 : HolLoopProg 64 :=
.mark loopBody176_16

def loopBody176_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody176_19 : HolLoopProg 64 :=
.mark loopBody176_18

def loopBody176_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody176_21 : HolLoopProg 64 :=
.mark loopBody176_20

def loopBody176_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody176_23 : HolLoopProg 64 :=
.mark loopBody176_22

def loopBody176_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody176_25 : HolLoopProg 64 :=
.mark loopBody176_24

def loopBody176_26 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 237) ([6, 7, 8]) (some (6, loopBody176_25, loopBody176_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody176_27 : HolLoopProg 64 :=
.mark loopBody176_26

def loopBody176_28 : HolLoopProg 64 :=
.seq loopBody176_27 loopBody176_1

def loopBody176_29 : HolLoopProg 64 :=
.mark loopBody176_28

def loopBody176_30 : HolLoopProg 64 :=
.seq loopBody176_23 loopBody176_29

def loopBody176_31 : HolLoopProg 64 :=
.mark loopBody176_30

def loopBody176_32 : HolLoopProg 64 :=
.seq loopBody176_21 loopBody176_31

def loopBody176_33 : HolLoopProg 64 :=
.mark loopBody176_32

def loopBody176_34 : HolLoopProg 64 :=
.seq loopBody176_19 loopBody176_33

def loopBody176_35 : HolLoopProg 64 :=
.mark loopBody176_34

def loopBody176_36 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_35

def loopBody176_37 : HolLoopProg 64 :=
.mark loopBody176_36

def loopBody176_38 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_37

def loopBody176_39 : HolLoopProg 64 :=
.mark loopBody176_38

def loopBody176_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 32#64])

def loopBody176_41 : HolLoopProg 64 :=
.mark loopBody176_40

def loopBody176_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody176_43 : HolLoopProg 64 :=
.mark loopBody176_42

def loopBody176_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 32#64)

def loopBody176_45 : HolLoopProg 64 :=
.mark loopBody176_44

def loopBody176_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody176_47 : HolLoopProg 64 :=
.mark loopBody176_46

def loopBody176_48 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 78) ([7, 8]) (some (7, loopBody176_47, loopBody176_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody176_49 : HolLoopProg 64 :=
.mark loopBody176_48

def loopBody176_50 : HolLoopProg 64 :=
.seq loopBody176_49 loopBody176_1

def loopBody176_51 : HolLoopProg 64 :=
.mark loopBody176_50

def loopBody176_52 : HolLoopProg 64 :=
.seq loopBody176_45 loopBody176_51

def loopBody176_53 : HolLoopProg 64 :=
.mark loopBody176_52

def loopBody176_54 : HolLoopProg 64 :=
.seq loopBody176_43 loopBody176_53

def loopBody176_55 : HolLoopProg 64 :=
.mark loopBody176_54

def loopBody176_56 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_55

def loopBody176_57 : HolLoopProg 64 :=
.mark loopBody176_56

def loopBody176_58 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_57

def loopBody176_59 : HolLoopProg 64 :=
.mark loopBody176_58

def loopBody176_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody176_61 : HolLoopProg 64 :=
.mark loopBody176_60

def loopBody176_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody176_63 : HolLoopProg 64 :=
.mark loopBody176_62

def loopBody176_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody176_65 : HolLoopProg 64 :=
.mark loopBody176_64

def loopBody176_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody176_67 : HolLoopProg 64 :=
.mark loopBody176_66

def loopBody176_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody176_69 : HolLoopProg 64 :=
.mark loopBody176_68

def loopBody176_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 8 (Flapjack.RegImm.reg 9) loopBody176_67 loopBody176_69 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody176_71 : HolLoopProg 64 :=
.mark loopBody176_70

def loopBody176_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 8)

def loopBody176_73 : HolLoopProg 64 :=
.mark loopBody176_72

def loopBody176_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 5,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 3#64)])

def loopBody176_75 : HolLoopProg 64 :=
.mark loopBody176_74

def loopBody176_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 7 7

def loopBody176_77 : HolLoopProg 64 :=
.mark loopBody176_76

def loopBody176_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 5,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 3#64)])

def loopBody176_79 : HolLoopProg 64 :=
.mark loopBody176_78

def loopBody176_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 7,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.const 1#64)
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 7#64])])

def loopBody176_81 : HolLoopProg 64 :=
.mark loopBody176_80

def loopBody176_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 8 9

def loopBody176_83 : HolLoopProg 64 :=
.mark loopBody176_82

def loopBody176_84 : HolLoopProg 64 :=
.seq loopBody176_83 loopBody176_1

def loopBody176_85 : HolLoopProg 64 :=
.mark loopBody176_84

def loopBody176_86 : HolLoopProg 64 :=
.seq loopBody176_81 loopBody176_85

def loopBody176_87 : HolLoopProg 64 :=
.mark loopBody176_86

def loopBody176_88 : HolLoopProg 64 :=
.seq loopBody176_79 loopBody176_87

def loopBody176_89 : HolLoopProg 64 :=
.mark loopBody176_88

def loopBody176_90 : HolLoopProg 64 :=
.seq loopBody176_77 loopBody176_89

def loopBody176_91 : HolLoopProg 64 :=
.mark loopBody176_90

def loopBody176_92 : HolLoopProg 64 :=
.seq loopBody176_75 loopBody176_91

def loopBody176_93 : HolLoopProg 64 :=
.mark loopBody176_92

def loopBody176_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 1#64])

def loopBody176_95 : HolLoopProg 64 :=
.mark loopBody176_94

def loopBody176_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 7)

def loopBody176_97 : HolLoopProg 64 :=
.mark loopBody176_96

def loopBody176_98 : HolLoopProg 64 :=
.seq loopBody176_97 loopBody176_1

def loopBody176_99 : HolLoopProg 64 :=
.mark loopBody176_98

def loopBody176_100 : HolLoopProg 64 :=
.seq loopBody176_99 loopBody176_1

def loopBody176_101 : HolLoopProg 64 :=
.mark loopBody176_100

def loopBody176_102 : HolLoopProg 64 :=
.seq loopBody176_95 loopBody176_101

def loopBody176_103 : HolLoopProg 64 :=
.mark loopBody176_102

def loopBody176_104 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_103

def loopBody176_105 : HolLoopProg 64 :=
.mark loopBody176_104

def loopBody176_106 : HolLoopProg 64 :=
.seq loopBody176_93 loopBody176_105

def loopBody176_107 : HolLoopProg 64 :=
.mark loopBody176_106

def loopBody176_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody176_109 : HolLoopProg 64 :=
.mark loopBody176_108

def loopBody176_110 : HolLoopProg 64 :=
.seq loopBody176_107 loopBody176_109

def loopBody176_111 : HolLoopProg 64 :=
.mark loopBody176_110

def loopBody176_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody176_113 : HolLoopProg 64 :=
.mark loopBody176_112

def loopBody176_114 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.RegImm.imm 0#64) loopBody176_111 loopBody176_113 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody176_115 : HolLoopProg 64 :=
.mark loopBody176_114

def loopBody176_116 : HolLoopProg 64 :=
.seq loopBody176_115 loopBody176_1

def loopBody176_117 : HolLoopProg 64 :=
.mark loopBody176_116

def loopBody176_118 : HolLoopProg 64 :=
.seq loopBody176_73 loopBody176_117

def loopBody176_119 : HolLoopProg 64 :=
.mark loopBody176_118

def loopBody176_120 : HolLoopProg 64 :=
.seq loopBody176_71 loopBody176_119

def loopBody176_121 : HolLoopProg 64 :=
.mark loopBody176_120

def loopBody176_122 : HolLoopProg 64 :=
.seq loopBody176_65 loopBody176_121

def loopBody176_123 : HolLoopProg 64 :=
.mark loopBody176_122

def loopBody176_124 : HolLoopProg 64 :=
.seq loopBody176_63 loopBody176_123

def loopBody176_125 : HolLoopProg 64 :=
.mark loopBody176_124

def loopBody176_126 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody176_125 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody176_127 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody176_128 : HolLoopProg 64 :=
.mark loopBody176_127

def loopBody176_129 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody176_130 : HolLoopProg 64 :=
.mark loopBody176_129

def loopBody176_131 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody176_132 : HolLoopProg 64 :=
.mark loopBody176_131

def loopBody176_133 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 154) ([8, 9, 10]) (some (8, loopBody176_132, loopBody176_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody176_134 : HolLoopProg 64 :=
.mark loopBody176_133

def loopBody176_135 : HolLoopProg 64 :=
.seq loopBody176_134 loopBody176_1

def loopBody176_136 : HolLoopProg 64 :=
.mark loopBody176_135

def loopBody176_137 : HolLoopProg 64 :=
.seq loopBody176_130 loopBody176_136

def loopBody176_138 : HolLoopProg 64 :=
.mark loopBody176_137

def loopBody176_139 : HolLoopProg 64 :=
.seq loopBody176_128 loopBody176_138

def loopBody176_140 : HolLoopProg 64 :=
.mark loopBody176_139

def loopBody176_141 : HolLoopProg 64 :=
.seq loopBody176_23 loopBody176_140

def loopBody176_142 : HolLoopProg 64 :=
.mark loopBody176_141

def loopBody176_143 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_142

def loopBody176_144 : HolLoopProg 64 :=
.mark loopBody176_143

def loopBody176_145 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_144

def loopBody176_146 : HolLoopProg 64 :=
.mark loopBody176_145

def loopBody176_147 : HolLoopProg 64 :=
.seq loopBody176_126 loopBody176_146

def loopBody176_148 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody176_149 : HolLoopProg 64 :=
.mark loopBody176_148

def loopBody176_150 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 70) ([8]) (some (8, loopBody176_132, loopBody176_1, (Flapjack.Spt.ln)))

def loopBody176_151 : HolLoopProg 64 :=
.mark loopBody176_150

def loopBody176_152 : HolLoopProg 64 :=
.seq loopBody176_151 loopBody176_1

def loopBody176_153 : HolLoopProg 64 :=
.mark loopBody176_152

def loopBody176_154 : HolLoopProg 64 :=
.seq loopBody176_149 loopBody176_153

def loopBody176_155 : HolLoopProg 64 :=
.mark loopBody176_154

def loopBody176_156 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_155

def loopBody176_157 : HolLoopProg 64 :=
.mark loopBody176_156

def loopBody176_158 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_157

def loopBody176_159 : HolLoopProg 64 :=
.mark loopBody176_158

def loopBody176_160 : HolLoopProg 64 :=
.seq loopBody176_147 loopBody176_159

def loopBody176_161 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody176_162 : HolLoopProg 64 :=
.mark loopBody176_161

def loopBody176_163 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody176_164 : HolLoopProg 64 :=
.mark loopBody176_163

def loopBody176_165 : HolLoopProg 64 :=
.seq loopBody176_164 loopBody176_1

def loopBody176_166 : HolLoopProg 64 :=
.mark loopBody176_165

def loopBody176_167 : HolLoopProg 64 :=
.seq loopBody176_162 loopBody176_166

def loopBody176_168 : HolLoopProg 64 :=
.mark loopBody176_167

def loopBody176_169 : HolLoopProg 64 :=
.seq loopBody176_160 loopBody176_168

def loopBody176_170 : HolLoopProg 64 :=
.seq loopBody176_61 loopBody176_169

def loopBody176_171 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_170

def loopBody176_172 : HolLoopProg 64 :=
.seq loopBody176_59 loopBody176_171

def loopBody176_173 : HolLoopProg 64 :=
.seq loopBody176_41 loopBody176_172

def loopBody176_174 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_173

def loopBody176_175 : HolLoopProg 64 :=
.seq loopBody176_39 loopBody176_174

def loopBody176_176 : HolLoopProg 64 :=
.seq loopBody176_17 loopBody176_175

def loopBody176_177 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_176

def loopBody176_178 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_177

def loopBody176_179 : HolLoopProg 64 :=
.seq loopBody176_7 loopBody176_178

def loopBody176_180 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_179

def loopBody176_181 : HolLoopProg 64 :=
.seq loopBody176_1 loopBody176_180

def output176 : Nat × List Nat × HolLoopProg 64 :=
  (240, [0, 1, 2], loopBody176_181)
end InitECandidate.Proofs.FrontendStages.Loop
