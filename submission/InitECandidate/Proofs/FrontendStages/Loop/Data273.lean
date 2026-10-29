import InitECandidate.Proofs.FrontendStages.Loop.Translate257
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody273_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody273_1 : HolLoopProg 64 :=
.mark loopBody273_0

def loopBody273_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody273_3 : HolLoopProg 64 :=
.mark loopBody273_2

def loopBody273_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody273_5 : HolLoopProg 64 :=
.mark loopBody273_4

def loopBody273_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody273_7 : HolLoopProg 64 :=
.mark loopBody273_6

def loopBody273_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody273_9 : HolLoopProg 64 :=
.mark loopBody273_8

def loopBody273_10 : HolLoopProg 64 :=
.call (some
  ([4, 5],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 335) ([6, 7, 8]) (some (6, loopBody273_9, loopBody273_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody273_11 : HolLoopProg 64 :=
.mark loopBody273_10

def loopBody273_12 : HolLoopProg 64 :=
.seq loopBody273_11 loopBody273_1

def loopBody273_13 : HolLoopProg 64 :=
.mark loopBody273_12

def loopBody273_14 : HolLoopProg 64 :=
.seq loopBody273_7 loopBody273_13

def loopBody273_15 : HolLoopProg 64 :=
.mark loopBody273_14

def loopBody273_16 : HolLoopProg 64 :=
.seq loopBody273_5 loopBody273_15

def loopBody273_17 : HolLoopProg 64 :=
.mark loopBody273_16

def loopBody273_18 : HolLoopProg 64 :=
.seq loopBody273_3 loopBody273_17

def loopBody273_19 : HolLoopProg 64 :=
.mark loopBody273_18

def loopBody273_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 8#64)

def loopBody273_21 : HolLoopProg 64 :=
.mark loopBody273_20

def loopBody273_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody273_23 : HolLoopProg 64 :=
.mark loopBody273_22

def loopBody273_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody273_25 : HolLoopProg 64 :=
.mark loopBody273_24

def loopBody273_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody273_27 : HolLoopProg 64 :=
.mark loopBody273_26

def loopBody273_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody273_25 loopBody273_27 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody273_29 : HolLoopProg 64 :=
.mark loopBody273_28

def loopBody273_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody273_31 : HolLoopProg 64 :=
.mark loopBody273_30

def loopBody273_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody273_33 : HolLoopProg 64 :=
.mark loopBody273_32

def loopBody273_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody273_35 : HolLoopProg 64 :=
.mark loopBody273_34

def loopBody273_36 : HolLoopProg 64 :=
.seq loopBody273_35 loopBody273_1

def loopBody273_37 : HolLoopProg 64 :=
.mark loopBody273_36

def loopBody273_38 : HolLoopProg 64 :=
.seq loopBody273_37 loopBody273_1

def loopBody273_39 : HolLoopProg 64 :=
.mark loopBody273_38

def loopBody273_40 : HolLoopProg 64 :=
.seq loopBody273_33 loopBody273_39

def loopBody273_41 : HolLoopProg 64 :=
.mark loopBody273_40

def loopBody273_42 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_41

def loopBody273_43 : HolLoopProg 64 :=
.mark loopBody273_42

def loopBody273_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 6#64)

def loopBody273_45 : HolLoopProg 64 :=
.mark loopBody273_44

def loopBody273_46 : HolLoopProg 64 :=
.seq loopBody273_45 loopBody273_9

def loopBody273_47 : HolLoopProg 64 :=
.mark loopBody273_46

def loopBody273_48 : HolLoopProg 64 :=
.seq loopBody273_43 loopBody273_47

def loopBody273_49 : HolLoopProg 64 :=
.mark loopBody273_48

def loopBody273_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody273_49 loopBody273_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody273_51 : HolLoopProg 64 :=
.mark loopBody273_50

def loopBody273_52 : HolLoopProg 64 :=
.seq loopBody273_51 loopBody273_1

def loopBody273_53 : HolLoopProg 64 :=
.mark loopBody273_52

def loopBody273_54 : HolLoopProg 64 :=
.seq loopBody273_31 loopBody273_53

def loopBody273_55 : HolLoopProg 64 :=
.mark loopBody273_54

def loopBody273_56 : HolLoopProg 64 :=
.seq loopBody273_29 loopBody273_55

def loopBody273_57 : HolLoopProg 64 :=
.mark loopBody273_56

def loopBody273_58 : HolLoopProg 64 :=
.seq loopBody273_23 loopBody273_57

def loopBody273_59 : HolLoopProg 64 :=
.mark loopBody273_58

def loopBody273_60 : HolLoopProg 64 :=
.seq loopBody273_21 loopBody273_59

def loopBody273_61 : HolLoopProg 64 :=
.mark loopBody273_60

def loopBody273_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody273_63 : HolLoopProg 64 :=
.mark loopBody273_62

def loopBody273_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody273_65 : HolLoopProg 64 :=
.mark loopBody273_64

def loopBody273_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody273_67 : HolLoopProg 64 :=
.mark loopBody273_66

def loopBody273_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody273_69 : HolLoopProg 64 :=
.mark loopBody273_68

def loopBody273_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody273_67 loopBody273_69 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody273_71 : HolLoopProg 64 :=
.mark loopBody273_70

def loopBody273_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody273_73 : HolLoopProg 64 :=
.mark loopBody273_72

def loopBody273_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 7])

def loopBody273_75 : HolLoopProg 64 :=
.mark loopBody273_74

def loopBody273_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.loadByte 8 8

def loopBody273_77 : HolLoopProg 64 :=
.mark loopBody273_76

def loopBody273_78 : HolLoopProg 64 :=
.seq loopBody273_77 loopBody273_1

def loopBody273_79 : HolLoopProg 64 :=
.mark loopBody273_78

def loopBody273_80 : HolLoopProg 64 :=
.seq loopBody273_75 loopBody273_79

def loopBody273_81 : HolLoopProg 64 :=
.mark loopBody273_80

def loopBody273_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 6) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.var 8])

def loopBody273_83 : HolLoopProg 64 :=
.mark loopBody273_82

def loopBody273_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 9)

def loopBody273_85 : HolLoopProg 64 :=
.mark loopBody273_84

def loopBody273_86 : HolLoopProg 64 :=
.seq loopBody273_85 loopBody273_1

def loopBody273_87 : HolLoopProg 64 :=
.mark loopBody273_86

def loopBody273_88 : HolLoopProg 64 :=
.seq loopBody273_87 loopBody273_1

def loopBody273_89 : HolLoopProg 64 :=
.mark loopBody273_88

def loopBody273_90 : HolLoopProg 64 :=
.seq loopBody273_83 loopBody273_89

def loopBody273_91 : HolLoopProg 64 :=
.mark loopBody273_90

def loopBody273_92 : HolLoopProg 64 :=
.seq loopBody273_81 loopBody273_91

def loopBody273_93 : HolLoopProg 64 :=
.mark loopBody273_92

def loopBody273_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody273_95 : HolLoopProg 64 :=
.mark loopBody273_94

def loopBody273_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 8)

def loopBody273_97 : HolLoopProg 64 :=
.mark loopBody273_96

def loopBody273_98 : HolLoopProg 64 :=
.seq loopBody273_97 loopBody273_1

def loopBody273_99 : HolLoopProg 64 :=
.mark loopBody273_98

def loopBody273_100 : HolLoopProg 64 :=
.seq loopBody273_99 loopBody273_1

def loopBody273_101 : HolLoopProg 64 :=
.mark loopBody273_100

def loopBody273_102 : HolLoopProg 64 :=
.seq loopBody273_95 loopBody273_101

def loopBody273_103 : HolLoopProg 64 :=
.mark loopBody273_102

def loopBody273_104 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_103

def loopBody273_105 : HolLoopProg 64 :=
.mark loopBody273_104

def loopBody273_106 : HolLoopProg 64 :=
.seq loopBody273_93 loopBody273_105

def loopBody273_107 : HolLoopProg 64 :=
.mark loopBody273_106

def loopBody273_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody273_109 : HolLoopProg 64 :=
.mark loopBody273_108

def loopBody273_110 : HolLoopProg 64 :=
.seq loopBody273_107 loopBody273_109

def loopBody273_111 : HolLoopProg 64 :=
.mark loopBody273_110

def loopBody273_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody273_113 : HolLoopProg 64 :=
.mark loopBody273_112

def loopBody273_114 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody273_111 loopBody273_113 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody273_115 : HolLoopProg 64 :=
.mark loopBody273_114

def loopBody273_116 : HolLoopProg 64 :=
.seq loopBody273_115 loopBody273_1

def loopBody273_117 : HolLoopProg 64 :=
.mark loopBody273_116

def loopBody273_118 : HolLoopProg 64 :=
.seq loopBody273_73 loopBody273_117

def loopBody273_119 : HolLoopProg 64 :=
.mark loopBody273_118

def loopBody273_120 : HolLoopProg 64 :=
.seq loopBody273_71 loopBody273_119

def loopBody273_121 : HolLoopProg 64 :=
.mark loopBody273_120

def loopBody273_122 : HolLoopProg 64 :=
.seq loopBody273_65 loopBody273_121

def loopBody273_123 : HolLoopProg 64 :=
.mark loopBody273_122

def loopBody273_124 : HolLoopProg 64 :=
.seq loopBody273_31 loopBody273_123

def loopBody273_125 : HolLoopProg 64 :=
.mark loopBody273_124

def loopBody273_126 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) loopBody273_125 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)

def loopBody273_127 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody273_128 : HolLoopProg 64 :=
.mark loopBody273_127

def loopBody273_129 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody273_130 : HolLoopProg 64 :=
.mark loopBody273_129

def loopBody273_131 : HolLoopProg 64 :=
.seq loopBody273_130 loopBody273_1

def loopBody273_132 : HolLoopProg 64 :=
.mark loopBody273_131

def loopBody273_133 : HolLoopProg 64 :=
.seq loopBody273_128 loopBody273_132

def loopBody273_134 : HolLoopProg 64 :=
.mark loopBody273_133

def loopBody273_135 : HolLoopProg 64 :=
.seq loopBody273_126 loopBody273_134

def loopBody273_136 : HolLoopProg 64 :=
.seq loopBody273_27 loopBody273_135

def loopBody273_137 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_136

def loopBody273_138 : HolLoopProg 64 :=
.seq loopBody273_63 loopBody273_137

def loopBody273_139 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_138

def loopBody273_140 : HolLoopProg 64 :=
.seq loopBody273_61 loopBody273_139

def loopBody273_141 : HolLoopProg 64 :=
.seq loopBody273_19 loopBody273_140

def loopBody273_142 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_141

def loopBody273_143 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_142

def loopBody273_144 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_143

def loopBody273_145 : HolLoopProg 64 :=
.seq loopBody273_1 loopBody273_144

def output273 : Nat × List Nat × HolLoopProg 64 :=
  (337, [0, 1, 2, 3], loopBody273_145)
end InitECandidate.Proofs.FrontendStages.Loop
