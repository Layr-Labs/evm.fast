import InitECandidate.Proofs.FrontendStages.Loop.Translate335
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody351_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody351_1 : HolLoopProg 64 :=
.mark loopBody351_0

def loopBody351_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody351_3 : HolLoopProg 64 :=
.mark loopBody351_2

def loopBody351_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody351_5 : HolLoopProg 64 :=
.mark loopBody351_4

def loopBody351_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 407) ([2]) (some (2, loopBody351_5, loopBody351_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody351_7 : HolLoopProg 64 :=
.mark loopBody351_6

def loopBody351_8 : HolLoopProg 64 :=
.seq loopBody351_7 loopBody351_1

def loopBody351_9 : HolLoopProg 64 :=
.mark loopBody351_8

def loopBody351_10 : HolLoopProg 64 :=
.seq loopBody351_3 loopBody351_9

def loopBody351_11 : HolLoopProg 64 :=
.mark loopBody351_10

def loopBody351_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 0#64]))

def loopBody351_13 : HolLoopProg 64 :=
.mark loopBody351_12

def loopBody351_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody351_15 : HolLoopProg 64 :=
.mark loopBody351_14

def loopBody351_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody351_17 : HolLoopProg 64 :=
.mark loopBody351_16

def loopBody351_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody351_19 : HolLoopProg 64 :=
.mark loopBody351_18

def loopBody351_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody351_17 loopBody351_19 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody351_21 : HolLoopProg 64 :=
.mark loopBody351_20

def loopBody351_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody351_23 : HolLoopProg 64 :=
.mark loopBody351_22

def loopBody351_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody351_25 : HolLoopProg 64 :=
.mark loopBody351_24

def loopBody351_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody351_27 : HolLoopProg 64 :=
.mark loopBody351_26

def loopBody351_28 : HolLoopProg 64 :=
.seq loopBody351_27 loopBody351_1

def loopBody351_29 : HolLoopProg 64 :=
.mark loopBody351_28

def loopBody351_30 : HolLoopProg 64 :=
.seq loopBody351_25 loopBody351_29

def loopBody351_31 : HolLoopProg 64 :=
.mark loopBody351_30

def loopBody351_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody351_31 loopBody351_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody351_33 : HolLoopProg 64 :=
.mark loopBody351_32

def loopBody351_34 : HolLoopProg 64 :=
.seq loopBody351_33 loopBody351_1

def loopBody351_35 : HolLoopProg 64 :=
.mark loopBody351_34

def loopBody351_36 : HolLoopProg 64 :=
.seq loopBody351_23 loopBody351_35

def loopBody351_37 : HolLoopProg 64 :=
.mark loopBody351_36

def loopBody351_38 : HolLoopProg 64 :=
.seq loopBody351_21 loopBody351_37

def loopBody351_39 : HolLoopProg 64 :=
.mark loopBody351_38

def loopBody351_40 : HolLoopProg 64 :=
.seq loopBody351_15 loopBody351_39

def loopBody351_41 : HolLoopProg 64 :=
.mark loopBody351_40

def loopBody351_42 : HolLoopProg 64 :=
.seq loopBody351_13 loopBody351_41

def loopBody351_43 : HolLoopProg 64 :=
.mark loopBody351_42

def loopBody351_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64]))

def loopBody351_45 : HolLoopProg 64 :=
.mark loopBody351_44

def loopBody351_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 136#64]))

def loopBody351_47 : HolLoopProg 64 :=
.mark loopBody351_46

def loopBody351_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody351_49 : HolLoopProg 64 :=
.mark loopBody351_48

def loopBody351_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody351_51 : HolLoopProg 64 :=
.mark loopBody351_50

def loopBody351_52 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 79) ([3, 4, 5]) (some (3, loopBody351_51, loopBody351_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody351_53 : HolLoopProg 64 :=
.mark loopBody351_52

def loopBody351_54 : HolLoopProg 64 :=
.seq loopBody351_53 loopBody351_1

def loopBody351_55 : HolLoopProg 64 :=
.mark loopBody351_54

def loopBody351_56 : HolLoopProg 64 :=
.seq loopBody351_49 loopBody351_55

def loopBody351_57 : HolLoopProg 64 :=
.mark loopBody351_56

def loopBody351_58 : HolLoopProg 64 :=
.seq loopBody351_47 loopBody351_57

def loopBody351_59 : HolLoopProg 64 :=
.mark loopBody351_58

def loopBody351_60 : HolLoopProg 64 :=
.seq loopBody351_45 loopBody351_59

def loopBody351_61 : HolLoopProg 64 :=
.mark loopBody351_60

def loopBody351_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody351_63 : HolLoopProg 64 :=
.mark loopBody351_62

def loopBody351_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody351_65 : HolLoopProg 64 :=
.mark loopBody351_64

def loopBody351_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody351_67 : HolLoopProg 64 :=
.mark loopBody351_66

def loopBody351_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody351_67 loopBody351_15 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody351_69 : HolLoopProg 64 :=
.mark loopBody351_68

def loopBody351_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody351_71 : HolLoopProg 64 :=
.mark loopBody351_70

def loopBody351_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody351_73 : HolLoopProg 64 :=
.mark loopBody351_72

def loopBody351_74 : HolLoopProg 64 :=
.seq loopBody351_73 loopBody351_1

def loopBody351_75 : HolLoopProg 64 :=
.mark loopBody351_74

def loopBody351_76 : HolLoopProg 64 :=
.seq loopBody351_19 loopBody351_75

def loopBody351_77 : HolLoopProg 64 :=
.mark loopBody351_76

def loopBody351_78 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody351_77 loopBody351_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody351_79 : HolLoopProg 64 :=
.mark loopBody351_78

def loopBody351_80 : HolLoopProg 64 :=
.seq loopBody351_79 loopBody351_1

def loopBody351_81 : HolLoopProg 64 :=
.mark loopBody351_80

def loopBody351_82 : HolLoopProg 64 :=
.seq loopBody351_71 loopBody351_81

def loopBody351_83 : HolLoopProg 64 :=
.mark loopBody351_82

def loopBody351_84 : HolLoopProg 64 :=
.seq loopBody351_69 loopBody351_83

def loopBody351_85 : HolLoopProg 64 :=
.mark loopBody351_84

def loopBody351_86 : HolLoopProg 64 :=
.seq loopBody351_65 loopBody351_85

def loopBody351_87 : HolLoopProg 64 :=
.mark loopBody351_86

def loopBody351_88 : HolLoopProg 64 :=
.seq loopBody351_63 loopBody351_87

def loopBody351_89 : HolLoopProg 64 :=
.mark loopBody351_88

def loopBody351_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody351_91 : HolLoopProg 64 :=
.mark loopBody351_90

def loopBody351_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody351_93 : HolLoopProg 64 :=
.mark loopBody351_92

def loopBody351_94 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 414) ([4]) (some (4, loopBody351_93, loopBody351_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody351_95 : HolLoopProg 64 :=
.mark loopBody351_94

def loopBody351_96 : HolLoopProg 64 :=
.seq loopBody351_95 loopBody351_1

def loopBody351_97 : HolLoopProg 64 :=
.mark loopBody351_96

def loopBody351_98 : HolLoopProg 64 :=
.seq loopBody351_91 loopBody351_97

def loopBody351_99 : HolLoopProg 64 :=
.mark loopBody351_98

def loopBody351_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody351_101 : HolLoopProg 64 :=
.mark loopBody351_100

def loopBody351_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody351_103 : HolLoopProg 64 :=
.mark loopBody351_102

def loopBody351_104 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody351_103 loopBody351_65 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody351_105 : HolLoopProg 64 :=
.mark loopBody351_104

def loopBody351_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody351_107 : HolLoopProg 64 :=
.mark loopBody351_106

def loopBody351_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody351_109 : HolLoopProg 64 :=
.mark loopBody351_108

def loopBody351_110 : HolLoopProg 64 :=
.seq loopBody351_109 loopBody351_1

def loopBody351_111 : HolLoopProg 64 :=
.mark loopBody351_110

def loopBody351_112 : HolLoopProg 64 :=
.seq loopBody351_15 loopBody351_111

def loopBody351_113 : HolLoopProg 64 :=
.mark loopBody351_112

def loopBody351_114 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody351_113 loopBody351_1 (Flapjack.Spt.ln)

def loopBody351_115 : HolLoopProg 64 :=
.mark loopBody351_114

def loopBody351_116 : HolLoopProg 64 :=
.seq loopBody351_115 loopBody351_1

def loopBody351_117 : HolLoopProg 64 :=
.mark loopBody351_116

def loopBody351_118 : HolLoopProg 64 :=
.seq loopBody351_107 loopBody351_117

def loopBody351_119 : HolLoopProg 64 :=
.mark loopBody351_118

def loopBody351_120 : HolLoopProg 64 :=
.seq loopBody351_105 loopBody351_119

def loopBody351_121 : HolLoopProg 64 :=
.mark loopBody351_120

def loopBody351_122 : HolLoopProg 64 :=
.seq loopBody351_101 loopBody351_121

def loopBody351_123 : HolLoopProg 64 :=
.mark loopBody351_122

def loopBody351_124 : HolLoopProg 64 :=
.seq loopBody351_23 loopBody351_123

def loopBody351_125 : HolLoopProg 64 :=
.mark loopBody351_124

def loopBody351_126 : HolLoopProg 64 :=
.seq loopBody351_67 loopBody351_111

def loopBody351_127 : HolLoopProg 64 :=
.mark loopBody351_126

def loopBody351_128 : HolLoopProg 64 :=
.seq loopBody351_125 loopBody351_127

def loopBody351_129 : HolLoopProg 64 :=
.mark loopBody351_128

def loopBody351_130 : HolLoopProg 64 :=
.seq loopBody351_99 loopBody351_129

def loopBody351_131 : HolLoopProg 64 :=
.mark loopBody351_130

def loopBody351_132 : HolLoopProg 64 :=
.seq loopBody351_1 loopBody351_131

def loopBody351_133 : HolLoopProg 64 :=
.mark loopBody351_132

def loopBody351_134 : HolLoopProg 64 :=
.seq loopBody351_1 loopBody351_133

def loopBody351_135 : HolLoopProg 64 :=
.mark loopBody351_134

def loopBody351_136 : HolLoopProg 64 :=
.seq loopBody351_89 loopBody351_135

def loopBody351_137 : HolLoopProg 64 :=
.mark loopBody351_136

def loopBody351_138 : HolLoopProg 64 :=
.seq loopBody351_61 loopBody351_137

def loopBody351_139 : HolLoopProg 64 :=
.mark loopBody351_138

def loopBody351_140 : HolLoopProg 64 :=
.seq loopBody351_1 loopBody351_139

def loopBody351_141 : HolLoopProg 64 :=
.mark loopBody351_140

def loopBody351_142 : HolLoopProg 64 :=
.seq loopBody351_1 loopBody351_141

def loopBody351_143 : HolLoopProg 64 :=
.mark loopBody351_142

def loopBody351_144 : HolLoopProg 64 :=
.seq loopBody351_43 loopBody351_143

def loopBody351_145 : HolLoopProg 64 :=
.mark loopBody351_144

def loopBody351_146 : HolLoopProg 64 :=
.seq loopBody351_11 loopBody351_145

def loopBody351_147 : HolLoopProg 64 :=
.mark loopBody351_146

def loopBody351_148 : HolLoopProg 64 :=
.seq loopBody351_1 loopBody351_147

def loopBody351_149 : HolLoopProg 64 :=
.mark loopBody351_148

def loopBody351_150 : HolLoopProg 64 :=
.seq loopBody351_1 loopBody351_149

def loopBody351_151 : HolLoopProg 64 :=
.mark loopBody351_150

def output351 : Nat × List Nat × HolLoopProg 64 :=
  (415, [0], loopBody351_151)
end InitECandidate.Proofs.FrontendStages.Loop
