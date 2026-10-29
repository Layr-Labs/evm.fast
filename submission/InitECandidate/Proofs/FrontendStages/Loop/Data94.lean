import InitECandidate.Proofs.FrontendStages.Loop.Translate78
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody94_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody94_1 : HolLoopProg 64 :=
.mark loopBody94_0

def loopBody94_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 72#64]))

def loopBody94_3 : HolLoopProg 64 :=
.mark loopBody94_2

def loopBody94_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody94_5 : HolLoopProg 64 :=
.mark loopBody94_4

def loopBody94_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 200#64)

def loopBody94_7 : HolLoopProg 64 :=
.mark loopBody94_6

def loopBody94_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody94_9 : HolLoopProg 64 :=
.mark loopBody94_8

def loopBody94_10 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 78) ([5, 6]) (some (5, loopBody94_9, loopBody94_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody94_11 : HolLoopProg 64 :=
.mark loopBody94_10

def loopBody94_12 : HolLoopProg 64 :=
.seq loopBody94_11 loopBody94_1

def loopBody94_13 : HolLoopProg 64 :=
.mark loopBody94_12

def loopBody94_14 : HolLoopProg 64 :=
.seq loopBody94_7 loopBody94_13

def loopBody94_15 : HolLoopProg 64 :=
.mark loopBody94_14

def loopBody94_16 : HolLoopProg 64 :=
.seq loopBody94_5 loopBody94_15

def loopBody94_17 : HolLoopProg 64 :=
.mark loopBody94_16

def loopBody94_18 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_17

def loopBody94_19 : HolLoopProg 64 :=
.mark loopBody94_18

def loopBody94_20 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_19

def loopBody94_21 : HolLoopProg 64 :=
.mark loopBody94_20

def loopBody94_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody94_23 : HolLoopProg 64 :=
.mark loopBody94_22

def loopBody94_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody94_25 : HolLoopProg 64 :=
.mark loopBody94_24

def loopBody94_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 136#64])

def loopBody94_27 : HolLoopProg 64 :=
.mark loopBody94_26

def loopBody94_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody94_29 : HolLoopProg 64 :=
.mark loopBody94_28

def loopBody94_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody94_31 : HolLoopProg 64 :=
.mark loopBody94_30

def loopBody94_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.RegImm.reg 7) loopBody94_29 loopBody94_31 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody94_33 : HolLoopProg 64 :=
.mark loopBody94_32

def loopBody94_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody94_35 : HolLoopProg 64 :=
.mark loopBody94_34

def loopBody94_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody94_37 : HolLoopProg 64 :=
.mark loopBody94_36

def loopBody94_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody94_39 : HolLoopProg 64 :=
.mark loopBody94_38

def loopBody94_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody94_41 : HolLoopProg 64 :=
.mark loopBody94_40

def loopBody94_42 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 157) ([6, 7]) (some (6, loopBody94_41, loopBody94_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody94_43 : HolLoopProg 64 :=
.mark loopBody94_42

def loopBody94_44 : HolLoopProg 64 :=
.seq loopBody94_43 loopBody94_1

def loopBody94_45 : HolLoopProg 64 :=
.mark loopBody94_44

def loopBody94_46 : HolLoopProg 64 :=
.seq loopBody94_39 loopBody94_45

def loopBody94_47 : HolLoopProg 64 :=
.mark loopBody94_46

def loopBody94_48 : HolLoopProg 64 :=
.seq loopBody94_37 loopBody94_47

def loopBody94_49 : HolLoopProg 64 :=
.mark loopBody94_48

def loopBody94_50 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_49

def loopBody94_51 : HolLoopProg 64 :=
.mark loopBody94_50

def loopBody94_52 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_51

def loopBody94_53 : HolLoopProg 64 :=
.mark loopBody94_52

def loopBody94_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 136#64])

def loopBody94_55 : HolLoopProg 64 :=
.mark loopBody94_54

def loopBody94_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 5)

def loopBody94_57 : HolLoopProg 64 :=
.mark loopBody94_56

def loopBody94_58 : HolLoopProg 64 :=
.seq loopBody94_57 loopBody94_1

def loopBody94_59 : HolLoopProg 64 :=
.mark loopBody94_58

def loopBody94_60 : HolLoopProg 64 :=
.seq loopBody94_59 loopBody94_1

def loopBody94_61 : HolLoopProg 64 :=
.mark loopBody94_60

def loopBody94_62 : HolLoopProg 64 :=
.seq loopBody94_55 loopBody94_61

def loopBody94_63 : HolLoopProg 64 :=
.mark loopBody94_62

def loopBody94_64 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_63

def loopBody94_65 : HolLoopProg 64 :=
.mark loopBody94_64

def loopBody94_66 : HolLoopProg 64 :=
.seq loopBody94_53 loopBody94_65

def loopBody94_67 : HolLoopProg 64 :=
.mark loopBody94_66

def loopBody94_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody94_69 : HolLoopProg 64 :=
.mark loopBody94_68

def loopBody94_70 : HolLoopProg 64 :=
.seq loopBody94_67 loopBody94_69

def loopBody94_71 : HolLoopProg 64 :=
.mark loopBody94_70

def loopBody94_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody94_73 : HolLoopProg 64 :=
.mark loopBody94_72

def loopBody94_74 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody94_71 loopBody94_73 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody94_75 : HolLoopProg 64 :=
.mark loopBody94_74

def loopBody94_76 : HolLoopProg 64 :=
.seq loopBody94_75 loopBody94_1

def loopBody94_77 : HolLoopProg 64 :=
.mark loopBody94_76

def loopBody94_78 : HolLoopProg 64 :=
.seq loopBody94_35 loopBody94_77

def loopBody94_79 : HolLoopProg 64 :=
.mark loopBody94_78

def loopBody94_80 : HolLoopProg 64 :=
.seq loopBody94_33 loopBody94_79

def loopBody94_81 : HolLoopProg 64 :=
.mark loopBody94_80

def loopBody94_82 : HolLoopProg 64 :=
.seq loopBody94_27 loopBody94_81

def loopBody94_83 : HolLoopProg 64 :=
.mark loopBody94_82

def loopBody94_84 : HolLoopProg 64 :=
.seq loopBody94_25 loopBody94_83

def loopBody94_85 : HolLoopProg 64 :=
.mark loopBody94_84

def loopBody94_86 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody94_85 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody94_87 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 4])

def loopBody94_88 : HolLoopProg 64 :=
.mark loopBody94_87

def loopBody94_89 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 80#64]))

def loopBody94_90 : HolLoopProg 64 :=
.mark loopBody94_89

def loopBody94_91 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 136#64)

def loopBody94_92 : HolLoopProg 64 :=
.mark loopBody94_91

def loopBody94_93 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody94_94 : HolLoopProg 64 :=
.mark loopBody94_93

def loopBody94_95 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))) (some 78) ([7, 8]) (some (7, loopBody94_94, loopBody94_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody94_96 : HolLoopProg 64 :=
.mark loopBody94_95

def loopBody94_97 : HolLoopProg 64 :=
.seq loopBody94_96 loopBody94_1

def loopBody94_98 : HolLoopProg 64 :=
.mark loopBody94_97

def loopBody94_99 : HolLoopProg 64 :=
.seq loopBody94_92 loopBody94_98

def loopBody94_100 : HolLoopProg 64 :=
.mark loopBody94_99

def loopBody94_101 : HolLoopProg 64 :=
.seq loopBody94_90 loopBody94_100

def loopBody94_102 : HolLoopProg 64 :=
.mark loopBody94_101

def loopBody94_103 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_102

def loopBody94_104 : HolLoopProg 64 :=
.mark loopBody94_103

def loopBody94_105 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_104

def loopBody94_106 : HolLoopProg 64 :=
.mark loopBody94_105

def loopBody94_107 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody94_108 : HolLoopProg 64 :=
.mark loopBody94_107

def loopBody94_109 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody94_110 : HolLoopProg 64 :=
.mark loopBody94_109

def loopBody94_111 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([7, 8, 9]) (some (7, loopBody94_94, loopBody94_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody94_112 : HolLoopProg 64 :=
.mark loopBody94_111

def loopBody94_113 : HolLoopProg 64 :=
.seq loopBody94_112 loopBody94_1

def loopBody94_114 : HolLoopProg 64 :=
.mark loopBody94_113

def loopBody94_115 : HolLoopProg 64 :=
.seq loopBody94_110 loopBody94_114

def loopBody94_116 : HolLoopProg 64 :=
.mark loopBody94_115

def loopBody94_117 : HolLoopProg 64 :=
.seq loopBody94_108 loopBody94_116

def loopBody94_118 : HolLoopProg 64 :=
.mark loopBody94_117

def loopBody94_119 : HolLoopProg 64 :=
.seq loopBody94_90 loopBody94_118

def loopBody94_120 : HolLoopProg 64 :=
.mark loopBody94_119

def loopBody94_121 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_120

def loopBody94_122 : HolLoopProg 64 :=
.mark loopBody94_121

def loopBody94_123 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_122

def loopBody94_124 : HolLoopProg 64 :=
.mark loopBody94_123

def loopBody94_125 : HolLoopProg 64 :=
.seq loopBody94_106 loopBody94_124

def loopBody94_126 : HolLoopProg 64 :=
.mark loopBody94_125

def loopBody94_127 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 80#64]),
      Flapjack.HolLoopExp.var 5])

def loopBody94_128 : HolLoopProg 64 :=
.mark loopBody94_127

def loopBody94_129 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody94_130 : HolLoopProg 64 :=
.mark loopBody94_129

def loopBody94_131 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 6 7

def loopBody94_132 : HolLoopProg 64 :=
.mark loopBody94_131

def loopBody94_133 : HolLoopProg 64 :=
.seq loopBody94_132 loopBody94_1

def loopBody94_134 : HolLoopProg 64 :=
.mark loopBody94_133

def loopBody94_135 : HolLoopProg 64 :=
.seq loopBody94_130 loopBody94_134

def loopBody94_136 : HolLoopProg 64 :=
.mark loopBody94_135

def loopBody94_137 : HolLoopProg 64 :=
.seq loopBody94_128 loopBody94_136

def loopBody94_138 : HolLoopProg 64 :=
.mark loopBody94_137

def loopBody94_139 : HolLoopProg 64 :=
.seq loopBody94_126 loopBody94_138

def loopBody94_140 : HolLoopProg 64 :=
.mark loopBody94_139

def loopBody94_141 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 80#64]),
      Flapjack.HolLoopExp.const 135#64])

def loopBody94_142 : HolLoopProg 64 :=
.mark loopBody94_141

def loopBody94_143 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody94_144 : HolLoopProg 64 :=
.mark loopBody94_143

def loopBody94_145 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 80#64]),
      Flapjack.HolLoopExp.const 135#64])

def loopBody94_146 : HolLoopProg 64 :=
.mark loopBody94_145

def loopBody94_147 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 6, Flapjack.HolLoopExp.const 128#64])

def loopBody94_148 : HolLoopProg 64 :=
.mark loopBody94_147

def loopBody94_149 : HolLoopProg 64 :=
Flapjack.HolLoopProg.storeByte 7 8

def loopBody94_150 : HolLoopProg 64 :=
.mark loopBody94_149

def loopBody94_151 : HolLoopProg 64 :=
.seq loopBody94_150 loopBody94_1

def loopBody94_152 : HolLoopProg 64 :=
.mark loopBody94_151

def loopBody94_153 : HolLoopProg 64 :=
.seq loopBody94_148 loopBody94_152

def loopBody94_154 : HolLoopProg 64 :=
.mark loopBody94_153

def loopBody94_155 : HolLoopProg 64 :=
.seq loopBody94_146 loopBody94_154

def loopBody94_156 : HolLoopProg 64 :=
.mark loopBody94_155

def loopBody94_157 : HolLoopProg 64 :=
.seq loopBody94_144 loopBody94_156

def loopBody94_158 : HolLoopProg 64 :=
.mark loopBody94_157

def loopBody94_159 : HolLoopProg 64 :=
.seq loopBody94_142 loopBody94_158

def loopBody94_160 : HolLoopProg 64 :=
.mark loopBody94_159

def loopBody94_161 : HolLoopProg 64 :=
.seq loopBody94_140 loopBody94_160

def loopBody94_162 : HolLoopProg 64 :=
.mark loopBody94_161

def loopBody94_163 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody94_164 : HolLoopProg 64 :=
.mark loopBody94_163

def loopBody94_165 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 80#64]))

def loopBody94_166 : HolLoopProg 64 :=
.mark loopBody94_165

def loopBody94_167 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 157) ([7, 8]) (some (7, loopBody94_94, loopBody94_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody94_168 : HolLoopProg 64 :=
.mark loopBody94_167

def loopBody94_169 : HolLoopProg 64 :=
.seq loopBody94_168 loopBody94_1

def loopBody94_170 : HolLoopProg 64 :=
.mark loopBody94_169

def loopBody94_171 : HolLoopProg 64 :=
.seq loopBody94_166 loopBody94_170

def loopBody94_172 : HolLoopProg 64 :=
.mark loopBody94_171

def loopBody94_173 : HolLoopProg 64 :=
.seq loopBody94_164 loopBody94_172

def loopBody94_174 : HolLoopProg 64 :=
.mark loopBody94_173

def loopBody94_175 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_174

def loopBody94_176 : HolLoopProg 64 :=
.mark loopBody94_175

def loopBody94_177 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_176

def loopBody94_178 : HolLoopProg 64 :=
.mark loopBody94_177

def loopBody94_179 : HolLoopProg 64 :=
.seq loopBody94_162 loopBody94_178

def loopBody94_180 : HolLoopProg 64 :=
.mark loopBody94_179

def loopBody94_181 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 7#64])

def loopBody94_182 : HolLoopProg 64 :=
.mark loopBody94_181

def loopBody94_183 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody94_184 : HolLoopProg 64 :=
.mark loopBody94_183

def loopBody94_185 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody94_186 : HolLoopProg 64 :=
.mark loopBody94_185

def loopBody94_187 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody94_130 loopBody94_186 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody94_188 : HolLoopProg 64 :=
.mark loopBody94_187

def loopBody94_189 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody94_190 : HolLoopProg 64 :=
.mark loopBody94_189

def loopBody94_191 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody94_192 : HolLoopProg 64 :=
.mark loopBody94_191

def loopBody94_193 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 3))

def loopBody94_194 : HolLoopProg 64 :=
.mark loopBody94_193

def loopBody94_195 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody94_196 : HolLoopProg 64 :=
.mark loopBody94_195

def loopBody94_197 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody94_198 : HolLoopProg 64 :=
.mark loopBody94_197

def loopBody94_199 : HolLoopProg 64 :=
.seq loopBody94_198 loopBody94_1

def loopBody94_200 : HolLoopProg 64 :=
.mark loopBody94_199

def loopBody94_201 : HolLoopProg 64 :=
.seq loopBody94_196 loopBody94_200

def loopBody94_202 : HolLoopProg 64 :=
.mark loopBody94_201

def loopBody94_203 : HolLoopProg 64 :=
.seq loopBody94_202 loopBody94_1

def loopBody94_204 : HolLoopProg 64 :=
.mark loopBody94_203

def loopBody94_205 : HolLoopProg 64 :=
.seq loopBody94_194 loopBody94_204

def loopBody94_206 : HolLoopProg 64 :=
.mark loopBody94_205

def loopBody94_207 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_206

def loopBody94_208 : HolLoopProg 64 :=
.mark loopBody94_207

def loopBody94_209 : HolLoopProg 64 :=
.seq loopBody94_192 loopBody94_208

def loopBody94_210 : HolLoopProg 64 :=
.mark loopBody94_209

def loopBody94_211 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_210

def loopBody94_212 : HolLoopProg 64 :=
.mark loopBody94_211

def loopBody94_213 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64])

def loopBody94_214 : HolLoopProg 64 :=
.mark loopBody94_213

def loopBody94_215 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64]))

def loopBody94_216 : HolLoopProg 64 :=
.mark loopBody94_215

def loopBody94_217 : HolLoopProg 64 :=
.seq loopBody94_216 loopBody94_204

def loopBody94_218 : HolLoopProg 64 :=
.mark loopBody94_217

def loopBody94_219 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_218

def loopBody94_220 : HolLoopProg 64 :=
.mark loopBody94_219

def loopBody94_221 : HolLoopProg 64 :=
.seq loopBody94_214 loopBody94_220

def loopBody94_222 : HolLoopProg 64 :=
.mark loopBody94_221

def loopBody94_223 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_222

def loopBody94_224 : HolLoopProg 64 :=
.mark loopBody94_223

def loopBody94_225 : HolLoopProg 64 :=
.seq loopBody94_212 loopBody94_224

def loopBody94_226 : HolLoopProg 64 :=
.mark loopBody94_225

def loopBody94_227 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 16#64])

def loopBody94_228 : HolLoopProg 64 :=
.mark loopBody94_227

def loopBody94_229 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 16#64]))

def loopBody94_230 : HolLoopProg 64 :=
.mark loopBody94_229

def loopBody94_231 : HolLoopProg 64 :=
.seq loopBody94_230 loopBody94_204

def loopBody94_232 : HolLoopProg 64 :=
.mark loopBody94_231

def loopBody94_233 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_232

def loopBody94_234 : HolLoopProg 64 :=
.mark loopBody94_233

def loopBody94_235 : HolLoopProg 64 :=
.seq loopBody94_228 loopBody94_234

def loopBody94_236 : HolLoopProg 64 :=
.mark loopBody94_235

def loopBody94_237 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_236

def loopBody94_238 : HolLoopProg 64 :=
.mark loopBody94_237

def loopBody94_239 : HolLoopProg 64 :=
.seq loopBody94_226 loopBody94_238

def loopBody94_240 : HolLoopProg 64 :=
.mark loopBody94_239

def loopBody94_241 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 24#64])

def loopBody94_242 : HolLoopProg 64 :=
.mark loopBody94_241

def loopBody94_243 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 24#64]))

def loopBody94_244 : HolLoopProg 64 :=
.mark loopBody94_243

def loopBody94_245 : HolLoopProg 64 :=
.seq loopBody94_244 loopBody94_204

def loopBody94_246 : HolLoopProg 64 :=
.mark loopBody94_245

def loopBody94_247 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_246

def loopBody94_248 : HolLoopProg 64 :=
.mark loopBody94_247

def loopBody94_249 : HolLoopProg 64 :=
.seq loopBody94_242 loopBody94_248

def loopBody94_250 : HolLoopProg 64 :=
.mark loopBody94_249

def loopBody94_251 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_250

def loopBody94_252 : HolLoopProg 64 :=
.mark loopBody94_251

def loopBody94_253 : HolLoopProg 64 :=
.seq loopBody94_240 loopBody94_252

def loopBody94_254 : HolLoopProg 64 :=
.mark loopBody94_253

def loopBody94_255 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody94_256 : HolLoopProg 64 :=
.mark loopBody94_255

def loopBody94_257 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody94_258 : HolLoopProg 64 :=
.mark loopBody94_257

def loopBody94_259 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 32#64)

def loopBody94_260 : HolLoopProg 64 :=
.mark loopBody94_259

def loopBody94_261 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 77) ([7, 8, 9]) (some (7, loopBody94_94, loopBody94_1, (Flapjack.Spt.ln)))

def loopBody94_262 : HolLoopProg 64 :=
.mark loopBody94_261

def loopBody94_263 : HolLoopProg 64 :=
.seq loopBody94_262 loopBody94_1

def loopBody94_264 : HolLoopProg 64 :=
.mark loopBody94_263

def loopBody94_265 : HolLoopProg 64 :=
.seq loopBody94_260 loopBody94_264

def loopBody94_266 : HolLoopProg 64 :=
.mark loopBody94_265

def loopBody94_267 : HolLoopProg 64 :=
.seq loopBody94_258 loopBody94_266

def loopBody94_268 : HolLoopProg 64 :=
.mark loopBody94_267

def loopBody94_269 : HolLoopProg 64 :=
.seq loopBody94_256 loopBody94_268

def loopBody94_270 : HolLoopProg 64 :=
.mark loopBody94_269

def loopBody94_271 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_270

def loopBody94_272 : HolLoopProg 64 :=
.mark loopBody94_271

def loopBody94_273 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_272

def loopBody94_274 : HolLoopProg 64 :=
.mark loopBody94_273

def loopBody94_275 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody94_254 loopBody94_274 (Flapjack.Spt.ln)

def loopBody94_276 : HolLoopProg 64 :=
.mark loopBody94_275

def loopBody94_277 : HolLoopProg 64 :=
.seq loopBody94_276 loopBody94_1

def loopBody94_278 : HolLoopProg 64 :=
.mark loopBody94_277

def loopBody94_279 : HolLoopProg 64 :=
.seq loopBody94_190 loopBody94_278

def loopBody94_280 : HolLoopProg 64 :=
.mark loopBody94_279

def loopBody94_281 : HolLoopProg 64 :=
.seq loopBody94_188 loopBody94_280

def loopBody94_282 : HolLoopProg 64 :=
.mark loopBody94_281

def loopBody94_283 : HolLoopProg 64 :=
.seq loopBody94_184 loopBody94_282

def loopBody94_284 : HolLoopProg 64 :=
.mark loopBody94_283

def loopBody94_285 : HolLoopProg 64 :=
.seq loopBody94_182 loopBody94_284

def loopBody94_286 : HolLoopProg 64 :=
.mark loopBody94_285

def loopBody94_287 : HolLoopProg 64 :=
.seq loopBody94_180 loopBody94_286

def loopBody94_288 : HolLoopProg 64 :=
.mark loopBody94_287

def loopBody94_289 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody94_290 : HolLoopProg 64 :=
.mark loopBody94_289

def loopBody94_291 : HolLoopProg 64 :=
.seq loopBody94_290 loopBody94_1

def loopBody94_292 : HolLoopProg 64 :=
.mark loopBody94_291

def loopBody94_293 : HolLoopProg 64 :=
.seq loopBody94_31 loopBody94_292

def loopBody94_294 : HolLoopProg 64 :=
.mark loopBody94_293

def loopBody94_295 : HolLoopProg 64 :=
.seq loopBody94_288 loopBody94_294

def loopBody94_296 : HolLoopProg 64 :=
.mark loopBody94_295

def loopBody94_297 : HolLoopProg 64 :=
.seq loopBody94_88 loopBody94_296

def loopBody94_298 : HolLoopProg 64 :=
.mark loopBody94_297

def loopBody94_299 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_298

def loopBody94_300 : HolLoopProg 64 :=
.mark loopBody94_299

def loopBody94_301 : HolLoopProg 64 :=
.seq loopBody94_86 loopBody94_300

def loopBody94_302 : HolLoopProg 64 :=
.seq loopBody94_23 loopBody94_301

def loopBody94_303 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_302

def loopBody94_304 : HolLoopProg 64 :=
.seq loopBody94_21 loopBody94_303

def loopBody94_305 : HolLoopProg 64 :=
.seq loopBody94_3 loopBody94_304

def loopBody94_306 : HolLoopProg 64 :=
.seq loopBody94_1 loopBody94_305

def output94 : Nat × List Nat × HolLoopProg 64 :=
  (158, [0, 1, 2], loopBody94_306)
end InitECandidate.Proofs.FrontendStages.Loop
