import InitECandidate.Proofs.FrontendStages.Loop.Translate512
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody528_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody528_1 : HolLoopProg 64 :=
.mark loopBody528_0

def loopBody528_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody528_3 : HolLoopProg 64 :=
.mark loopBody528_2

def loopBody528_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody528_5 : HolLoopProg 64 :=
.mark loopBody528_4

def loopBody528_6 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 407) ([3]) (some (3, loopBody528_5, loopBody528_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody528_7 : HolLoopProg 64 :=
.mark loopBody528_6

def loopBody528_8 : HolLoopProg 64 :=
.seq loopBody528_7 loopBody528_1

def loopBody528_9 : HolLoopProg 64 :=
.mark loopBody528_8

def loopBody528_10 : HolLoopProg 64 :=
.seq loopBody528_3 loopBody528_9

def loopBody528_11 : HolLoopProg 64 :=
.mark loopBody528_10

def loopBody528_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 48#64]))

def loopBody528_13 : HolLoopProg 64 :=
.mark loopBody528_12

def loopBody528_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody528_15 : HolLoopProg 64 :=
.mark loopBody528_14

def loopBody528_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody528_17 : HolLoopProg 64 :=
.mark loopBody528_16

def loopBody528_18 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)) (some 408) ([5, 6]) (some (5, loopBody528_17, loopBody528_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody528_19 : HolLoopProg 64 :=
.mark loopBody528_18

def loopBody528_20 : HolLoopProg 64 :=
.seq loopBody528_19 loopBody528_1

def loopBody528_21 : HolLoopProg 64 :=
.mark loopBody528_20

def loopBody528_22 : HolLoopProg 64 :=
.seq loopBody528_15 loopBody528_21

def loopBody528_23 : HolLoopProg 64 :=
.mark loopBody528_22

def loopBody528_24 : HolLoopProg 64 :=
.seq loopBody528_13 loopBody528_23

def loopBody528_25 : HolLoopProg 64 :=
.mark loopBody528_24

def loopBody528_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody528_27 : HolLoopProg 64 :=
.mark loopBody528_26

def loopBody528_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody528_29 : HolLoopProg 64 :=
.mark loopBody528_28

def loopBody528_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody528_31 : HolLoopProg 64 :=
.mark loopBody528_30

def loopBody528_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody528_33 : HolLoopProg 64 :=
.mark loopBody528_32

def loopBody528_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody528_31 loopBody528_33 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody528_35 : HolLoopProg 64 :=
.mark loopBody528_34

def loopBody528_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody528_37 : HolLoopProg 64 :=
.mark loopBody528_36

def loopBody528_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody528_39 : HolLoopProg 64 :=
.mark loopBody528_38

def loopBody528_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody528_41 : HolLoopProg 64 :=
.mark loopBody528_40

def loopBody528_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody528_43 : HolLoopProg 64 :=
.mark loopBody528_42

def loopBody528_44 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)) (some 468) ([6, 7]) (some (6, loopBody528_43, loopBody528_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody528_45 : HolLoopProg 64 :=
.mark loopBody528_44

def loopBody528_46 : HolLoopProg 64 :=
.seq loopBody528_45 loopBody528_1

def loopBody528_47 : HolLoopProg 64 :=
.mark loopBody528_46

def loopBody528_48 : HolLoopProg 64 :=
.seq loopBody528_41 loopBody528_47

def loopBody528_49 : HolLoopProg 64 :=
.mark loopBody528_48

def loopBody528_50 : HolLoopProg 64 :=
.seq loopBody528_39 loopBody528_49

def loopBody528_51 : HolLoopProg 64 :=
.mark loopBody528_50

def loopBody528_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody528_53 : HolLoopProg 64 :=
.mark loopBody528_52

def loopBody528_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody528_55 : HolLoopProg 64 :=
.mark loopBody528_54

def loopBody528_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody528_57 : HolLoopProg 64 :=
.mark loopBody528_56

def loopBody528_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody528_57 loopBody528_29 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody528_59 : HolLoopProg 64 :=
.mark loopBody528_58

def loopBody528_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody528_61 : HolLoopProg 64 :=
.mark loopBody528_60

def loopBody528_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody528_63 : HolLoopProg 64 :=
.mark loopBody528_62

def loopBody528_64 : HolLoopProg 64 :=
.seq loopBody528_63 loopBody528_1

def loopBody528_65 : HolLoopProg 64 :=
.mark loopBody528_64

def loopBody528_66 : HolLoopProg 64 :=
.seq loopBody528_33 loopBody528_65

def loopBody528_67 : HolLoopProg 64 :=
.mark loopBody528_66

def loopBody528_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody528_67 loopBody528_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody528_69 : HolLoopProg 64 :=
.mark loopBody528_68

def loopBody528_70 : HolLoopProg 64 :=
.seq loopBody528_69 loopBody528_1

def loopBody528_71 : HolLoopProg 64 :=
.mark loopBody528_70

def loopBody528_72 : HolLoopProg 64 :=
.seq loopBody528_61 loopBody528_71

def loopBody528_73 : HolLoopProg 64 :=
.mark loopBody528_72

def loopBody528_74 : HolLoopProg 64 :=
.seq loopBody528_59 loopBody528_73

def loopBody528_75 : HolLoopProg 64 :=
.mark loopBody528_74

def loopBody528_76 : HolLoopProg 64 :=
.seq loopBody528_55 loopBody528_75

def loopBody528_77 : HolLoopProg 64 :=
.mark loopBody528_76

def loopBody528_78 : HolLoopProg 64 :=
.seq loopBody528_53 loopBody528_77

def loopBody528_79 : HolLoopProg 64 :=
.mark loopBody528_78

def loopBody528_80 : HolLoopProg 64 :=
.seq loopBody528_51 loopBody528_79

def loopBody528_81 : HolLoopProg 64 :=
.mark loopBody528_80

def loopBody528_82 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_81

def loopBody528_83 : HolLoopProg 64 :=
.mark loopBody528_82

def loopBody528_84 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_83

def loopBody528_85 : HolLoopProg 64 :=
.mark loopBody528_84

def loopBody528_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody528_85 loopBody528_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody528_87 : HolLoopProg 64 :=
.mark loopBody528_86

def loopBody528_88 : HolLoopProg 64 :=
.seq loopBody528_87 loopBody528_1

def loopBody528_89 : HolLoopProg 64 :=
.mark loopBody528_88

def loopBody528_90 : HolLoopProg 64 :=
.seq loopBody528_37 loopBody528_89

def loopBody528_91 : HolLoopProg 64 :=
.mark loopBody528_90

def loopBody528_92 : HolLoopProg 64 :=
.seq loopBody528_35 loopBody528_91

def loopBody528_93 : HolLoopProg 64 :=
.mark loopBody528_92

def loopBody528_94 : HolLoopProg 64 :=
.seq loopBody528_29 loopBody528_93

def loopBody528_95 : HolLoopProg 64 :=
.mark loopBody528_94

def loopBody528_96 : HolLoopProg 64 :=
.seq loopBody528_27 loopBody528_95

def loopBody528_97 : HolLoopProg 64 :=
.mark loopBody528_96

def loopBody528_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 0#64]))

def loopBody528_99 : HolLoopProg 64 :=
.mark loopBody528_98

def loopBody528_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody528_101 : HolLoopProg 64 :=
.mark loopBody528_100

def loopBody528_102 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody528_31 loopBody528_33 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)

def loopBody528_103 : HolLoopProg 64 :=
.mark loopBody528_102

def loopBody528_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody528_105 : HolLoopProg 64 :=
.mark loopBody528_104

def loopBody528_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody528_107 : HolLoopProg 64 :=
.mark loopBody528_106

def loopBody528_108 : HolLoopProg 64 :=
.seq loopBody528_107 loopBody528_1

def loopBody528_109 : HolLoopProg 64 :=
.mark loopBody528_108

def loopBody528_110 : HolLoopProg 64 :=
.seq loopBody528_105 loopBody528_109

def loopBody528_111 : HolLoopProg 64 :=
.mark loopBody528_110

def loopBody528_112 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody528_111 loopBody528_1 (Flapjack.Spt.ln)

def loopBody528_113 : HolLoopProg 64 :=
.mark loopBody528_112

def loopBody528_114 : HolLoopProg 64 :=
.seq loopBody528_113 loopBody528_1

def loopBody528_115 : HolLoopProg 64 :=
.mark loopBody528_114

def loopBody528_116 : HolLoopProg 64 :=
.seq loopBody528_37 loopBody528_115

def loopBody528_117 : HolLoopProg 64 :=
.mark loopBody528_116

def loopBody528_118 : HolLoopProg 64 :=
.seq loopBody528_103 loopBody528_117

def loopBody528_119 : HolLoopProg 64 :=
.mark loopBody528_118

def loopBody528_120 : HolLoopProg 64 :=
.seq loopBody528_101 loopBody528_119

def loopBody528_121 : HolLoopProg 64 :=
.mark loopBody528_120

def loopBody528_122 : HolLoopProg 64 :=
.seq loopBody528_99 loopBody528_121

def loopBody528_123 : HolLoopProg 64 :=
.mark loopBody528_122

def loopBody528_124 : HolLoopProg 64 :=
.seq loopBody528_97 loopBody528_123

def loopBody528_125 : HolLoopProg 64 :=
.mark loopBody528_124

def loopBody528_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody528_127 : HolLoopProg 64 :=
.mark loopBody528_126

def loopBody528_128 : HolLoopProg 64 :=
.seq loopBody528_127 loopBody528_109

def loopBody528_129 : HolLoopProg 64 :=
.mark loopBody528_128

def loopBody528_130 : HolLoopProg 64 :=
.seq loopBody528_125 loopBody528_129

def loopBody528_131 : HolLoopProg 64 :=
.mark loopBody528_130

def loopBody528_132 : HolLoopProg 64 :=
.seq loopBody528_25 loopBody528_131

def loopBody528_133 : HolLoopProg 64 :=
.mark loopBody528_132

def loopBody528_134 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_133

def loopBody528_135 : HolLoopProg 64 :=
.mark loopBody528_134

def loopBody528_136 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_135

def loopBody528_137 : HolLoopProg 64 :=
.mark loopBody528_136

def loopBody528_138 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_137

def loopBody528_139 : HolLoopProg 64 :=
.mark loopBody528_138

def loopBody528_140 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_139

def loopBody528_141 : HolLoopProg 64 :=
.mark loopBody528_140

def loopBody528_142 : HolLoopProg 64 :=
.seq loopBody528_11 loopBody528_141

def loopBody528_143 : HolLoopProg 64 :=
.mark loopBody528_142

def loopBody528_144 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_143

def loopBody528_145 : HolLoopProg 64 :=
.mark loopBody528_144

def loopBody528_146 : HolLoopProg 64 :=
.seq loopBody528_1 loopBody528_145

def loopBody528_147 : HolLoopProg 64 :=
.mark loopBody528_146

def output528 : Nat × List Nat × HolLoopProg 64 :=
  (592, [0, 1], loopBody528_147)
end InitECandidate.Proofs.FrontendStages.Loop
