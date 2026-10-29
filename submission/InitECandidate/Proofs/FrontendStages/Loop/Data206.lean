import InitECandidate.Proofs.FrontendStages.Loop.Translate190
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody206_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody206_1 : HolLoopProg 64 :=
.mark loopBody206_0

def loopBody206_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody206_3 : HolLoopProg 64 :=
.mark loopBody206_2

def loopBody206_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody206_5 : HolLoopProg 64 :=
.mark loopBody206_4

def loopBody206_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody206_7 : HolLoopProg 64 :=
.mark loopBody206_6

def loopBody206_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody206_9 : HolLoopProg 64 :=
.mark loopBody206_8

def loopBody206_10 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 269) ([4, 5, 6]) (some (4, loopBody206_9, loopBody206_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody206_11 : HolLoopProg 64 :=
.mark loopBody206_10

def loopBody206_12 : HolLoopProg 64 :=
.seq loopBody206_11 loopBody206_1

def loopBody206_13 : HolLoopProg 64 :=
.mark loopBody206_12

def loopBody206_14 : HolLoopProg 64 :=
.seq loopBody206_7 loopBody206_13

def loopBody206_15 : HolLoopProg 64 :=
.mark loopBody206_14

def loopBody206_16 : HolLoopProg 64 :=
.seq loopBody206_5 loopBody206_15

def loopBody206_17 : HolLoopProg 64 :=
.mark loopBody206_16

def loopBody206_18 : HolLoopProg 64 :=
.seq loopBody206_3 loopBody206_17

def loopBody206_19 : HolLoopProg 64 :=
.mark loopBody206_18

def loopBody206_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 8#64)

def loopBody206_21 : HolLoopProg 64 :=
.mark loopBody206_20

def loopBody206_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody206_23 : HolLoopProg 64 :=
.mark loopBody206_22

def loopBody206_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody206_25 : HolLoopProg 64 :=
.mark loopBody206_24

def loopBody206_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody206_27 : HolLoopProg 64 :=
.mark loopBody206_26

def loopBody206_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody206_25 loopBody206_27 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody206_29 : HolLoopProg 64 :=
.mark loopBody206_28

def loopBody206_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody206_31 : HolLoopProg 64 :=
.mark loopBody206_30

def loopBody206_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 4#64)

def loopBody206_33 : HolLoopProg 64 :=
.mark loopBody206_32

def loopBody206_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 4)

def loopBody206_35 : HolLoopProg 64 :=
.mark loopBody206_34

def loopBody206_36 : HolLoopProg 64 :=
.seq loopBody206_35 loopBody206_1

def loopBody206_37 : HolLoopProg 64 :=
.mark loopBody206_36

def loopBody206_38 : HolLoopProg 64 :=
.seq loopBody206_37 loopBody206_1

def loopBody206_39 : HolLoopProg 64 :=
.mark loopBody206_38

def loopBody206_40 : HolLoopProg 64 :=
.seq loopBody206_33 loopBody206_39

def loopBody206_41 : HolLoopProg 64 :=
.mark loopBody206_40

def loopBody206_42 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_41

def loopBody206_43 : HolLoopProg 64 :=
.mark loopBody206_42

def loopBody206_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 3#64)

def loopBody206_45 : HolLoopProg 64 :=
.mark loopBody206_44

def loopBody206_46 : HolLoopProg 64 :=
.seq loopBody206_45 loopBody206_9

def loopBody206_47 : HolLoopProg 64 :=
.mark loopBody206_46

def loopBody206_48 : HolLoopProg 64 :=
.seq loopBody206_43 loopBody206_47

def loopBody206_49 : HolLoopProg 64 :=
.mark loopBody206_48

def loopBody206_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody206_49 loopBody206_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody206_51 : HolLoopProg 64 :=
.mark loopBody206_50

def loopBody206_52 : HolLoopProg 64 :=
.seq loopBody206_51 loopBody206_1

def loopBody206_53 : HolLoopProg 64 :=
.mark loopBody206_52

def loopBody206_54 : HolLoopProg 64 :=
.seq loopBody206_31 loopBody206_53

def loopBody206_55 : HolLoopProg 64 :=
.mark loopBody206_54

def loopBody206_56 : HolLoopProg 64 :=
.seq loopBody206_29 loopBody206_55

def loopBody206_57 : HolLoopProg 64 :=
.mark loopBody206_56

def loopBody206_58 : HolLoopProg 64 :=
.seq loopBody206_23 loopBody206_57

def loopBody206_59 : HolLoopProg 64 :=
.mark loopBody206_58

def loopBody206_60 : HolLoopProg 64 :=
.seq loopBody206_21 loopBody206_59

def loopBody206_61 : HolLoopProg 64 :=
.mark loopBody206_60

def loopBody206_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody206_63 : HolLoopProg 64 :=
.mark loopBody206_62

def loopBody206_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody206_65 : HolLoopProg 64 :=
.mark loopBody206_64

def loopBody206_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody206_67 : HolLoopProg 64 :=
.mark loopBody206_66

def loopBody206_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody206_69 : HolLoopProg 64 :=
.mark loopBody206_68

def loopBody206_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody206_67 loopBody206_69 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody206_71 : HolLoopProg 64 :=
.mark loopBody206_70

def loopBody206_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody206_73 : HolLoopProg 64 :=
.mark loopBody206_72

def loopBody206_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 5])

def loopBody206_75 : HolLoopProg 64 :=
.mark loopBody206_74

def loopBody206_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 6 6

def loopBody206_77 : HolLoopProg 64 :=
.mark loopBody206_76

def loopBody206_78 : HolLoopProg 64 :=
.seq loopBody206_77 loopBody206_1

def loopBody206_79 : HolLoopProg 64 :=
.mark loopBody206_78

def loopBody206_80 : HolLoopProg 64 :=
.seq loopBody206_75 loopBody206_79

def loopBody206_81 : HolLoopProg 64 :=
.mark loopBody206_80

def loopBody206_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.var 6])

def loopBody206_83 : HolLoopProg 64 :=
.mark loopBody206_82

def loopBody206_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 7)

def loopBody206_85 : HolLoopProg 64 :=
.mark loopBody206_84

def loopBody206_86 : HolLoopProg 64 :=
.seq loopBody206_85 loopBody206_1

def loopBody206_87 : HolLoopProg 64 :=
.mark loopBody206_86

def loopBody206_88 : HolLoopProg 64 :=
.seq loopBody206_87 loopBody206_1

def loopBody206_89 : HolLoopProg 64 :=
.mark loopBody206_88

def loopBody206_90 : HolLoopProg 64 :=
.seq loopBody206_83 loopBody206_89

def loopBody206_91 : HolLoopProg 64 :=
.mark loopBody206_90

def loopBody206_92 : HolLoopProg 64 :=
.seq loopBody206_81 loopBody206_91

def loopBody206_93 : HolLoopProg 64 :=
.mark loopBody206_92

def loopBody206_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody206_95 : HolLoopProg 64 :=
.mark loopBody206_94

def loopBody206_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody206_97 : HolLoopProg 64 :=
.mark loopBody206_96

def loopBody206_98 : HolLoopProg 64 :=
.seq loopBody206_97 loopBody206_1

def loopBody206_99 : HolLoopProg 64 :=
.mark loopBody206_98

def loopBody206_100 : HolLoopProg 64 :=
.seq loopBody206_99 loopBody206_1

def loopBody206_101 : HolLoopProg 64 :=
.mark loopBody206_100

def loopBody206_102 : HolLoopProg 64 :=
.seq loopBody206_95 loopBody206_101

def loopBody206_103 : HolLoopProg 64 :=
.mark loopBody206_102

def loopBody206_104 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_103

def loopBody206_105 : HolLoopProg 64 :=
.mark loopBody206_104

def loopBody206_106 : HolLoopProg 64 :=
.seq loopBody206_93 loopBody206_105

def loopBody206_107 : HolLoopProg 64 :=
.mark loopBody206_106

def loopBody206_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody206_109 : HolLoopProg 64 :=
.mark loopBody206_108

def loopBody206_110 : HolLoopProg 64 :=
.seq loopBody206_107 loopBody206_109

def loopBody206_111 : HolLoopProg 64 :=
.mark loopBody206_110

def loopBody206_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody206_113 : HolLoopProg 64 :=
.mark loopBody206_112

def loopBody206_114 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody206_111 loopBody206_113 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody206_115 : HolLoopProg 64 :=
.mark loopBody206_114

def loopBody206_116 : HolLoopProg 64 :=
.seq loopBody206_115 loopBody206_1

def loopBody206_117 : HolLoopProg 64 :=
.mark loopBody206_116

def loopBody206_118 : HolLoopProg 64 :=
.seq loopBody206_73 loopBody206_117

def loopBody206_119 : HolLoopProg 64 :=
.mark loopBody206_118

def loopBody206_120 : HolLoopProg 64 :=
.seq loopBody206_71 loopBody206_119

def loopBody206_121 : HolLoopProg 64 :=
.mark loopBody206_120

def loopBody206_122 : HolLoopProg 64 :=
.seq loopBody206_65 loopBody206_121

def loopBody206_123 : HolLoopProg 64 :=
.mark loopBody206_122

def loopBody206_124 : HolLoopProg 64 :=
.seq loopBody206_31 loopBody206_123

def loopBody206_125 : HolLoopProg 64 :=
.mark loopBody206_124

def loopBody206_126 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody206_125 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody206_127 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody206_128 : HolLoopProg 64 :=
.mark loopBody206_127

def loopBody206_129 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody206_130 : HolLoopProg 64 :=
.mark loopBody206_129

def loopBody206_131 : HolLoopProg 64 :=
.seq loopBody206_130 loopBody206_1

def loopBody206_132 : HolLoopProg 64 :=
.mark loopBody206_131

def loopBody206_133 : HolLoopProg 64 :=
.seq loopBody206_128 loopBody206_132

def loopBody206_134 : HolLoopProg 64 :=
.mark loopBody206_133

def loopBody206_135 : HolLoopProg 64 :=
.seq loopBody206_126 loopBody206_134

def loopBody206_136 : HolLoopProg 64 :=
.seq loopBody206_27 loopBody206_135

def loopBody206_137 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_136

def loopBody206_138 : HolLoopProg 64 :=
.seq loopBody206_63 loopBody206_137

def loopBody206_139 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_138

def loopBody206_140 : HolLoopProg 64 :=
.seq loopBody206_61 loopBody206_139

def loopBody206_141 : HolLoopProg 64 :=
.seq loopBody206_19 loopBody206_140

def loopBody206_142 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_141

def loopBody206_143 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_142

def loopBody206_144 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_143

def loopBody206_145 : HolLoopProg 64 :=
.seq loopBody206_1 loopBody206_144

def output206 : Nat × List Nat × HolLoopProg 64 :=
  (270, [0, 1], loopBody206_145)
end InitECandidate.Proofs.FrontendStages.Loop
