import InitECandidate.Proofs.FrontendStages.Loop.Translate213
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody229_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody229_1 : HolLoopProg 64 :=
.mark loopBody229_0

def loopBody229_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 4#64)

def loopBody229_3 : HolLoopProg 64 :=
.mark loopBody229_2

def loopBody229_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody229_5 : HolLoopProg 64 :=
.mark loopBody229_4

def loopBody229_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.const 2#64])

def loopBody229_7 : HolLoopProg 64 :=
.mark loopBody229_6

def loopBody229_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody229_9 : HolLoopProg 64 :=
.mark loopBody229_8

def loopBody229_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody229_11 : HolLoopProg 64 :=
.mark loopBody229_10

def loopBody229_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody229_9 loopBody229_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))

def loopBody229_13 : HolLoopProg 64 :=
.mark loopBody229_12

def loopBody229_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody229_15 : HolLoopProg 64 :=
.mark loopBody229_14

def loopBody229_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 1#64))

def loopBody229_17 : HolLoopProg 64 :=
.mark loopBody229_16

def loopBody229_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 3)

def loopBody229_19 : HolLoopProg 64 :=
.mark loopBody229_18

def loopBody229_20 : HolLoopProg 64 :=
.seq loopBody229_19 loopBody229_1

def loopBody229_21 : HolLoopProg 64 :=
.mark loopBody229_20

def loopBody229_22 : HolLoopProg 64 :=
.seq loopBody229_21 loopBody229_1

def loopBody229_23 : HolLoopProg 64 :=
.mark loopBody229_22

def loopBody229_24 : HolLoopProg 64 :=
.seq loopBody229_17 loopBody229_23

def loopBody229_25 : HolLoopProg 64 :=
.mark loopBody229_24

def loopBody229_26 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_25

def loopBody229_27 : HolLoopProg 64 :=
.mark loopBody229_26

def loopBody229_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody229_29 : HolLoopProg 64 :=
.mark loopBody229_28

def loopBody229_30 : HolLoopProg 64 :=
.seq loopBody229_27 loopBody229_29

def loopBody229_31 : HolLoopProg 64 :=
.mark loopBody229_30

def loopBody229_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody229_33 : HolLoopProg 64 :=
.mark loopBody229_32

def loopBody229_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody229_31 loopBody229_33 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody229_35 : HolLoopProg 64 :=
.mark loopBody229_34

def loopBody229_36 : HolLoopProg 64 :=
.seq loopBody229_35 loopBody229_1

def loopBody229_37 : HolLoopProg 64 :=
.mark loopBody229_36

def loopBody229_38 : HolLoopProg 64 :=
.seq loopBody229_15 loopBody229_37

def loopBody229_39 : HolLoopProg 64 :=
.mark loopBody229_38

def loopBody229_40 : HolLoopProg 64 :=
.seq loopBody229_13 loopBody229_39

def loopBody229_41 : HolLoopProg 64 :=
.mark loopBody229_40

def loopBody229_42 : HolLoopProg 64 :=
.seq loopBody229_7 loopBody229_41

def loopBody229_43 : HolLoopProg 64 :=
.mark loopBody229_42

def loopBody229_44 : HolLoopProg 64 :=
.seq loopBody229_5 loopBody229_43

def loopBody229_45 : HolLoopProg 64 :=
.mark loopBody229_44

def loopBody229_46 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody229_45 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody229_47 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody229_48 : HolLoopProg 64 :=
.mark loopBody229_47

def loopBody229_49 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody229_50 : HolLoopProg 64 :=
.mark loopBody229_49

def loopBody229_51 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody229_52 : HolLoopProg 64 :=
.mark loopBody229_51

def loopBody229_53 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 182) ([4, 5]) (some (4, loopBody229_52, loopBody229_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody229_54 : HolLoopProg 64 :=
.mark loopBody229_53

def loopBody229_55 : HolLoopProg 64 :=
.seq loopBody229_54 loopBody229_1

def loopBody229_56 : HolLoopProg 64 :=
.mark loopBody229_55

def loopBody229_57 : HolLoopProg 64 :=
.seq loopBody229_50 loopBody229_56

def loopBody229_58 : HolLoopProg 64 :=
.mark loopBody229_57

def loopBody229_59 : HolLoopProg 64 :=
.seq loopBody229_48 loopBody229_58

def loopBody229_60 : HolLoopProg 64 :=
.mark loopBody229_59

def loopBody229_61 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody229_62 : HolLoopProg 64 :=
.mark loopBody229_61

def loopBody229_63 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody229_64 : HolLoopProg 64 :=
.mark loopBody229_63

def loopBody229_65 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody229_66 : HolLoopProg 64 :=
.mark loopBody229_65

def loopBody229_67 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody229_64 loopBody229_66 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody229_68 : HolLoopProg 64 :=
.mark loopBody229_67

def loopBody229_69 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody229_70 : HolLoopProg 64 :=
.mark loopBody229_69

def loopBody229_71 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64)]))

def loopBody229_72 : HolLoopProg 64 :=
.mark loopBody229_71

def loopBody229_73 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.var 0,
        Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody229_74 : HolLoopProg 64 :=
.mark loopBody229_73

def loopBody229_75 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]))

def loopBody229_76 : HolLoopProg 64 :=
.mark loopBody229_75

def loopBody229_77 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody229_78 : HolLoopProg 64 :=
.mark loopBody229_77

def loopBody229_79 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 158) ([6, 7, 8]) (some (6, loopBody229_78, loopBody229_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody229_80 : HolLoopProg 64 :=
.mark loopBody229_79

def loopBody229_81 : HolLoopProg 64 :=
.seq loopBody229_80 loopBody229_1

def loopBody229_82 : HolLoopProg 64 :=
.mark loopBody229_81

def loopBody229_83 : HolLoopProg 64 :=
.seq loopBody229_76 loopBody229_82

def loopBody229_84 : HolLoopProg 64 :=
.mark loopBody229_83

def loopBody229_85 : HolLoopProg 64 :=
.seq loopBody229_74 loopBody229_84

def loopBody229_86 : HolLoopProg 64 :=
.mark loopBody229_85

def loopBody229_87 : HolLoopProg 64 :=
.seq loopBody229_72 loopBody229_86

def loopBody229_88 : HolLoopProg 64 :=
.mark loopBody229_87

def loopBody229_89 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_88

def loopBody229_90 : HolLoopProg 64 :=
.mark loopBody229_89

def loopBody229_91 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_90

def loopBody229_92 : HolLoopProg 64 :=
.mark loopBody229_91

def loopBody229_93 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody229_94 : HolLoopProg 64 :=
.mark loopBody229_93

def loopBody229_95 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]))

def loopBody229_96 : HolLoopProg 64 :=
.mark loopBody229_95

def loopBody229_97 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 0,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 4#64)])

def loopBody229_98 : HolLoopProg 64 :=
.mark loopBody229_97

def loopBody229_99 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 192) ([6, 7, 8]) (some (6, loopBody229_78, loopBody229_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody229_100 : HolLoopProg 64 :=
.mark loopBody229_99

def loopBody229_101 : HolLoopProg 64 :=
.seq loopBody229_100 loopBody229_1

def loopBody229_102 : HolLoopProg 64 :=
.mark loopBody229_101

def loopBody229_103 : HolLoopProg 64 :=
.seq loopBody229_98 loopBody229_102

def loopBody229_104 : HolLoopProg 64 :=
.mark loopBody229_103

def loopBody229_105 : HolLoopProg 64 :=
.seq loopBody229_96 loopBody229_104

def loopBody229_106 : HolLoopProg 64 :=
.mark loopBody229_105

def loopBody229_107 : HolLoopProg 64 :=
.seq loopBody229_94 loopBody229_106

def loopBody229_108 : HolLoopProg 64 :=
.mark loopBody229_107

def loopBody229_109 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_108

def loopBody229_110 : HolLoopProg 64 :=
.mark loopBody229_109

def loopBody229_111 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_110

def loopBody229_112 : HolLoopProg 64 :=
.mark loopBody229_111

def loopBody229_113 : HolLoopProg 64 :=
.seq loopBody229_92 loopBody229_112

def loopBody229_114 : HolLoopProg 64 :=
.mark loopBody229_113

def loopBody229_115 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 1#64])

def loopBody229_116 : HolLoopProg 64 :=
.mark loopBody229_115

def loopBody229_117 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 5)

def loopBody229_118 : HolLoopProg 64 :=
.mark loopBody229_117

def loopBody229_119 : HolLoopProg 64 :=
.seq loopBody229_118 loopBody229_1

def loopBody229_120 : HolLoopProg 64 :=
.mark loopBody229_119

def loopBody229_121 : HolLoopProg 64 :=
.seq loopBody229_120 loopBody229_1

def loopBody229_122 : HolLoopProg 64 :=
.mark loopBody229_121

def loopBody229_123 : HolLoopProg 64 :=
.seq loopBody229_116 loopBody229_122

def loopBody229_124 : HolLoopProg 64 :=
.mark loopBody229_123

def loopBody229_125 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_124

def loopBody229_126 : HolLoopProg 64 :=
.mark loopBody229_125

def loopBody229_127 : HolLoopProg 64 :=
.seq loopBody229_114 loopBody229_126

def loopBody229_128 : HolLoopProg 64 :=
.mark loopBody229_127

def loopBody229_129 : HolLoopProg 64 :=
.seq loopBody229_128 loopBody229_29

def loopBody229_130 : HolLoopProg 64 :=
.mark loopBody229_129

def loopBody229_131 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody229_130 loopBody229_33 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody229_132 : HolLoopProg 64 :=
.mark loopBody229_131

def loopBody229_133 : HolLoopProg 64 :=
.seq loopBody229_132 loopBody229_1

def loopBody229_134 : HolLoopProg 64 :=
.mark loopBody229_133

def loopBody229_135 : HolLoopProg 64 :=
.seq loopBody229_70 loopBody229_134

def loopBody229_136 : HolLoopProg 64 :=
.mark loopBody229_135

def loopBody229_137 : HolLoopProg 64 :=
.seq loopBody229_68 loopBody229_136

def loopBody229_138 : HolLoopProg 64 :=
.mark loopBody229_137

def loopBody229_139 : HolLoopProg 64 :=
.seq loopBody229_62 loopBody229_138

def loopBody229_140 : HolLoopProg 64 :=
.mark loopBody229_139

def loopBody229_141 : HolLoopProg 64 :=
.seq loopBody229_15 loopBody229_140

def loopBody229_142 : HolLoopProg 64 :=
.mark loopBody229_141

def loopBody229_143 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody229_142 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody229_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody229_145 : HolLoopProg 64 :=
.mark loopBody229_144

def loopBody229_146 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody229_147 : HolLoopProg 64 :=
.mark loopBody229_146

def loopBody229_148 : HolLoopProg 64 :=
.seq loopBody229_147 loopBody229_1

def loopBody229_149 : HolLoopProg 64 :=
.mark loopBody229_148

def loopBody229_150 : HolLoopProg 64 :=
.seq loopBody229_145 loopBody229_149

def loopBody229_151 : HolLoopProg 64 :=
.mark loopBody229_150

def loopBody229_152 : HolLoopProg 64 :=
.seq loopBody229_143 loopBody229_151

def loopBody229_153 : HolLoopProg 64 :=
.seq loopBody229_11 loopBody229_152

def loopBody229_154 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_153

def loopBody229_155 : HolLoopProg 64 :=
.seq loopBody229_60 loopBody229_154

def loopBody229_156 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_155

def loopBody229_157 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_156

def loopBody229_158 : HolLoopProg 64 :=
.seq loopBody229_46 loopBody229_157

def loopBody229_159 : HolLoopProg 64 :=
.seq loopBody229_3 loopBody229_158

def loopBody229_160 : HolLoopProg 64 :=
.seq loopBody229_1 loopBody229_159

def output229 : Nat × List Nat × HolLoopProg 64 :=
  (293, [0, 1], loopBody229_160)
end InitECandidate.Proofs.FrontendStages.Loop
