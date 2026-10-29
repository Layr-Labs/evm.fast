import InitECandidate.Proofs.FrontendStages.Loop.Translate360
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody376_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody376_1 : HolLoopProg 64 :=
.mark loopBody376_0

def loopBody376_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody376_3 : HolLoopProg 64 :=
.mark loopBody376_2

def loopBody376_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody376_5 : HolLoopProg 64 :=
.mark loopBody376_4

def loopBody376_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody376_7 : HolLoopProg 64 :=
.mark loopBody376_6

def loopBody376_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody376_9 : HolLoopProg 64 :=
.mark loopBody376_8

def loopBody376_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody376_11 : HolLoopProg 64 :=
.mark loopBody376_10

def loopBody376_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody376_13 : HolLoopProg 64 :=
.mark loopBody376_12

def loopBody376_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody376_15 : HolLoopProg 64 :=
.mark loopBody376_14

def loopBody376_16 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.RegImm.reg 8) loopBody376_13 loopBody376_15 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody376_17 : HolLoopProg 64 :=
.mark loopBody376_16

def loopBody376_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody376_19 : HolLoopProg 64 :=
.mark loopBody376_18

def loopBody376_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody376_21 : HolLoopProg 64 :=
.mark loopBody376_20

def loopBody376_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody376_23 : HolLoopProg 64 :=
.mark loopBody376_22

def loopBody376_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 8 8 6 7)

def loopBody376_25 : HolLoopProg 64 :=
.mark loopBody376_24

def loopBody376_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 8]))

def loopBody376_27 : HolLoopProg 64 :=
.mark loopBody376_26

def loopBody376_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 2)

def loopBody376_29 : HolLoopProg 64 :=
.mark loopBody376_28

def loopBody376_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 1#64)

def loopBody376_31 : HolLoopProg 64 :=
.mark loopBody376_30

def loopBody376_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody376_33 : HolLoopProg 64 :=
.mark loopBody376_32

def loopBody376_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.RegImm.reg 11) loopBody376_31 loopBody376_33 (Flapjack.Spt.bs
  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.ls PUnit.unit))
  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody376_35 : HolLoopProg 64 :=
.mark loopBody376_34

def loopBody376_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 10)

def loopBody376_37 : HolLoopProg 64 :=
.mark loopBody376_36

def loopBody376_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 8])

def loopBody376_39 : HolLoopProg 64 :=
.mark loopBody376_38

def loopBody376_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody376_41 : HolLoopProg 64 :=
.mark loopBody376_40

def loopBody376_42 : HolLoopProg 64 :=
.seq loopBody376_41 loopBody376_1

def loopBody376_43 : HolLoopProg 64 :=
.mark loopBody376_42

def loopBody376_44 : HolLoopProg 64 :=
.seq loopBody376_39 loopBody376_43

def loopBody376_45 : HolLoopProg 64 :=
.mark loopBody376_44

def loopBody376_46 : HolLoopProg 64 :=
.seq loopBody376_25 loopBody376_45

def loopBody376_47 : HolLoopProg 64 :=
.mark loopBody376_46

def loopBody376_48 : HolLoopProg 64 :=
.seq loopBody376_23 loopBody376_47

def loopBody376_49 : HolLoopProg 64 :=
.mark loopBody376_48

def loopBody376_50 : HolLoopProg 64 :=
.seq loopBody376_21 loopBody376_49

def loopBody376_51 : HolLoopProg 64 :=
.mark loopBody376_50

def loopBody376_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.RegImm.imm 0#64) loopBody376_51 loopBody376_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody376_53 : HolLoopProg 64 :=
.mark loopBody376_52

def loopBody376_54 : HolLoopProg 64 :=
.seq loopBody376_53 loopBody376_1

def loopBody376_55 : HolLoopProg 64 :=
.mark loopBody376_54

def loopBody376_56 : HolLoopProg 64 :=
.seq loopBody376_37 loopBody376_55

def loopBody376_57 : HolLoopProg 64 :=
.mark loopBody376_56

def loopBody376_58 : HolLoopProg 64 :=
.seq loopBody376_35 loopBody376_57

def loopBody376_59 : HolLoopProg 64 :=
.mark loopBody376_58

def loopBody376_60 : HolLoopProg 64 :=
.seq loopBody376_29 loopBody376_59

def loopBody376_61 : HolLoopProg 64 :=
.mark loopBody376_60

def loopBody376_62 : HolLoopProg 64 :=
.seq loopBody376_27 loopBody376_61

def loopBody376_63 : HolLoopProg 64 :=
.mark loopBody376_62

def loopBody376_64 : HolLoopProg 64 :=
.seq loopBody376_25 loopBody376_63

def loopBody376_65 : HolLoopProg 64 :=
.mark loopBody376_64

def loopBody376_66 : HolLoopProg 64 :=
.seq loopBody376_23 loopBody376_65

def loopBody376_67 : HolLoopProg 64 :=
.mark loopBody376_66

def loopBody376_68 : HolLoopProg 64 :=
.seq loopBody376_21 loopBody376_67

def loopBody376_69 : HolLoopProg 64 :=
.mark loopBody376_68

def loopBody376_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody376_71 : HolLoopProg 64 :=
.mark loopBody376_70

def loopBody376_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody376_73 : HolLoopProg 64 :=
.mark loopBody376_72

def loopBody376_74 : HolLoopProg 64 :=
.seq loopBody376_73 loopBody376_1

def loopBody376_75 : HolLoopProg 64 :=
.mark loopBody376_74

def loopBody376_76 : HolLoopProg 64 :=
.seq loopBody376_75 loopBody376_1

def loopBody376_77 : HolLoopProg 64 :=
.mark loopBody376_76

def loopBody376_78 : HolLoopProg 64 :=
.seq loopBody376_71 loopBody376_77

def loopBody376_79 : HolLoopProg 64 :=
.mark loopBody376_78

def loopBody376_80 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_79

def loopBody376_81 : HolLoopProg 64 :=
.mark loopBody376_80

def loopBody376_82 : HolLoopProg 64 :=
.seq loopBody376_69 loopBody376_81

def loopBody376_83 : HolLoopProg 64 :=
.mark loopBody376_82

def loopBody376_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody376_85 : HolLoopProg 64 :=
.mark loopBody376_84

def loopBody376_86 : HolLoopProg 64 :=
.seq loopBody376_83 loopBody376_85

def loopBody376_87 : HolLoopProg 64 :=
.mark loopBody376_86

def loopBody376_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody376_89 : HolLoopProg 64 :=
.mark loopBody376_88

def loopBody376_90 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody376_87 loopBody376_89 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody376_91 : HolLoopProg 64 :=
.mark loopBody376_90

def loopBody376_92 : HolLoopProg 64 :=
.seq loopBody376_91 loopBody376_1

def loopBody376_93 : HolLoopProg 64 :=
.mark loopBody376_92

def loopBody376_94 : HolLoopProg 64 :=
.seq loopBody376_19 loopBody376_93

def loopBody376_95 : HolLoopProg 64 :=
.mark loopBody376_94

def loopBody376_96 : HolLoopProg 64 :=
.seq loopBody376_17 loopBody376_95

def loopBody376_97 : HolLoopProg 64 :=
.mark loopBody376_96

def loopBody376_98 : HolLoopProg 64 :=
.seq loopBody376_11 loopBody376_97

def loopBody376_99 : HolLoopProg 64 :=
.mark loopBody376_98

def loopBody376_100 : HolLoopProg 64 :=
.seq loopBody376_9 loopBody376_99

def loopBody376_101 : HolLoopProg 64 :=
.mark loopBody376_100

def loopBody376_102 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody376_101 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody376_103 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody376_104 : HolLoopProg 64 :=
.mark loopBody376_103

def loopBody376_105 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody376_106 : HolLoopProg 64 :=
.mark loopBody376_105

def loopBody376_107 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody376_108 : HolLoopProg 64 :=
.mark loopBody376_107

def loopBody376_109 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 437) ([7, 8]) (some (7, loopBody376_108, loopBody376_1, (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) Flapjack.Spt.ln)))

def loopBody376_110 : HolLoopProg 64 :=
.mark loopBody376_109

def loopBody376_111 : HolLoopProg 64 :=
.seq loopBody376_110 loopBody376_1

def loopBody376_112 : HolLoopProg 64 :=
.mark loopBody376_111

def loopBody376_113 : HolLoopProg 64 :=
.seq loopBody376_106 loopBody376_112

def loopBody376_114 : HolLoopProg 64 :=
.mark loopBody376_113

def loopBody376_115 : HolLoopProg 64 :=
.seq loopBody376_104 loopBody376_114

def loopBody376_116 : HolLoopProg 64 :=
.mark loopBody376_115

def loopBody376_117 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody376_118 : HolLoopProg 64 :=
.mark loopBody376_117

def loopBody376_119 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody376_120 : HolLoopProg 64 :=
.mark loopBody376_119

def loopBody376_121 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody376_122 : HolLoopProg 64 :=
.mark loopBody376_121

def loopBody376_123 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 7) 9

def loopBody376_124 : HolLoopProg 64 :=
.mark loopBody376_123

def loopBody376_125 : HolLoopProg 64 :=
.seq loopBody376_124 loopBody376_1

def loopBody376_126 : HolLoopProg 64 :=
.mark loopBody376_125

def loopBody376_127 : HolLoopProg 64 :=
.seq loopBody376_122 loopBody376_126

def loopBody376_128 : HolLoopProg 64 :=
.mark loopBody376_127

def loopBody376_129 : HolLoopProg 64 :=
.seq loopBody376_128 loopBody376_1

def loopBody376_130 : HolLoopProg 64 :=
.mark loopBody376_129

def loopBody376_131 : HolLoopProg 64 :=
.seq loopBody376_120 loopBody376_130

def loopBody376_132 : HolLoopProg 64 :=
.mark loopBody376_131

def loopBody376_133 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_132

def loopBody376_134 : HolLoopProg 64 :=
.mark loopBody376_133

def loopBody376_135 : HolLoopProg 64 :=
.seq loopBody376_118 loopBody376_134

def loopBody376_136 : HolLoopProg 64 :=
.mark loopBody376_135

def loopBody376_137 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_136

def loopBody376_138 : HolLoopProg 64 :=
.mark loopBody376_137

def loopBody376_139 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody376_140 : HolLoopProg 64 :=
.mark loopBody376_139

def loopBody376_141 : HolLoopProg 64 :=
.seq loopBody376_140 loopBody376_1

def loopBody376_142 : HolLoopProg 64 :=
.mark loopBody376_141

def loopBody376_143 : HolLoopProg 64 :=
.seq loopBody376_118 loopBody376_142

def loopBody376_144 : HolLoopProg 64 :=
.mark loopBody376_143

def loopBody376_145 : HolLoopProg 64 :=
.seq loopBody376_138 loopBody376_144

def loopBody376_146 : HolLoopProg 64 :=
.mark loopBody376_145

def loopBody376_147 : HolLoopProg 64 :=
.seq loopBody376_116 loopBody376_146

def loopBody376_148 : HolLoopProg 64 :=
.mark loopBody376_147

def loopBody376_149 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_148

def loopBody376_150 : HolLoopProg 64 :=
.mark loopBody376_149

def loopBody376_151 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_150

def loopBody376_152 : HolLoopProg 64 :=
.mark loopBody376_151

def loopBody376_153 : HolLoopProg 64 :=
.seq loopBody376_102 loopBody376_152

def loopBody376_154 : HolLoopProg 64 :=
.seq loopBody376_7 loopBody376_153

def loopBody376_155 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_154

def loopBody376_156 : HolLoopProg 64 :=
.seq loopBody376_5 loopBody376_155

def loopBody376_157 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_156

def loopBody376_158 : HolLoopProg 64 :=
.seq loopBody376_3 loopBody376_157

def loopBody376_159 : HolLoopProg 64 :=
.seq loopBody376_1 loopBody376_158

def output376 : Nat × List Nat × HolLoopProg 64 :=
  (440, [0, 1, 2], loopBody376_159)
end InitECandidate.Proofs.FrontendStages.Loop
