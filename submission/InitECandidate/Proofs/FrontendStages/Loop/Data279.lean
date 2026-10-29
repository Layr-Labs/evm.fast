import InitECandidate.Proofs.FrontendStages.Loop.Translate263
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody279_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody279_1 : HolLoopProg 64 :=
.mark loopBody279_0

def loopBody279_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody279_3 : HolLoopProg 64 :=
.mark loopBody279_2

def loopBody279_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody279_5 : HolLoopProg 64 :=
.mark loopBody279_4

def loopBody279_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody279_7 : HolLoopProg 64 :=
.mark loopBody279_6

def loopBody279_8 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 169) ([4, 5]) (some (4, loopBody279_7, loopBody279_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody279_9 : HolLoopProg 64 :=
.mark loopBody279_8

def loopBody279_10 : HolLoopProg 64 :=
.seq loopBody279_9 loopBody279_1

def loopBody279_11 : HolLoopProg 64 :=
.mark loopBody279_10

def loopBody279_12 : HolLoopProg 64 :=
.seq loopBody279_5 loopBody279_11

def loopBody279_13 : HolLoopProg 64 :=
.mark loopBody279_12

def loopBody279_14 : HolLoopProg 64 :=
.seq loopBody279_3 loopBody279_13

def loopBody279_15 : HolLoopProg 64 :=
.mark loopBody279_14

def loopBody279_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64))

def loopBody279_17 : HolLoopProg 64 :=
.mark loopBody279_16

def loopBody279_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody279_19 : HolLoopProg 64 :=
.mark loopBody279_18

def loopBody279_20 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody279_19, loopBody279_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody279_21 : HolLoopProg 64 :=
.mark loopBody279_20

def loopBody279_22 : HolLoopProg 64 :=
.seq loopBody279_21 loopBody279_1

def loopBody279_23 : HolLoopProg 64 :=
.mark loopBody279_22

def loopBody279_24 : HolLoopProg 64 :=
.seq loopBody279_17 loopBody279_23

def loopBody279_25 : HolLoopProg 64 :=
.mark loopBody279_24

def loopBody279_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody279_27 : HolLoopProg 64 :=
.mark loopBody279_26

def loopBody279_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody279_29 : HolLoopProg 64 :=
.mark loopBody279_28

def loopBody279_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody279_31 : HolLoopProg 64 :=
.mark loopBody279_30

def loopBody279_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody279_33 : HolLoopProg 64 :=
.mark loopBody279_32

def loopBody279_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody279_35 : HolLoopProg 64 :=
.mark loopBody279_34

def loopBody279_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody279_33 loopBody279_35 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody279_37 : HolLoopProg 64 :=
.mark loopBody279_36

def loopBody279_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody279_39 : HolLoopProg 64 :=
.mark loopBody279_38

def loopBody279_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody279_41 : HolLoopProg 64 :=
.mark loopBody279_40

def loopBody279_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody279_43 : HolLoopProg 64 :=
.mark loopBody279_42

def loopBody279_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 32#64)

def loopBody279_45 : HolLoopProg 64 :=
.mark loopBody279_44

def loopBody279_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody279_47 : HolLoopProg 64 :=
.mark loopBody279_46

def loopBody279_48 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 339) ([7, 8, 9]) (some (7, loopBody279_47, loopBody279_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody279_49 : HolLoopProg 64 :=
.mark loopBody279_48

def loopBody279_50 : HolLoopProg 64 :=
.seq loopBody279_49 loopBody279_1

def loopBody279_51 : HolLoopProg 64 :=
.mark loopBody279_50

def loopBody279_52 : HolLoopProg 64 :=
.seq loopBody279_45 loopBody279_51

def loopBody279_53 : HolLoopProg 64 :=
.mark loopBody279_52

def loopBody279_54 : HolLoopProg 64 :=
.seq loopBody279_43 loopBody279_53

def loopBody279_55 : HolLoopProg 64 :=
.mark loopBody279_54

def loopBody279_56 : HolLoopProg 64 :=
.seq loopBody279_41 loopBody279_55

def loopBody279_57 : HolLoopProg 64 :=
.mark loopBody279_56

def loopBody279_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 4,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 5#64)])

def loopBody279_59 : HolLoopProg 64 :=
.mark loopBody279_58

def loopBody279_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody279_61 : HolLoopProg 64 :=
.mark loopBody279_60

def loopBody279_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 32#64)

def loopBody279_63 : HolLoopProg 64 :=
.mark loopBody279_62

def loopBody279_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody279_65 : HolLoopProg 64 :=
.mark loopBody279_64

def loopBody279_66 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([8, 9, 10]) (some (8, loopBody279_65, loopBody279_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody279_67 : HolLoopProg 64 :=
.mark loopBody279_66

def loopBody279_68 : HolLoopProg 64 :=
.seq loopBody279_67 loopBody279_1

def loopBody279_69 : HolLoopProg 64 :=
.mark loopBody279_68

def loopBody279_70 : HolLoopProg 64 :=
.seq loopBody279_63 loopBody279_69

def loopBody279_71 : HolLoopProg 64 :=
.mark loopBody279_70

def loopBody279_72 : HolLoopProg 64 :=
.seq loopBody279_61 loopBody279_71

def loopBody279_73 : HolLoopProg 64 :=
.mark loopBody279_72

def loopBody279_74 : HolLoopProg 64 :=
.seq loopBody279_59 loopBody279_73

def loopBody279_75 : HolLoopProg 64 :=
.mark loopBody279_74

def loopBody279_76 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_75

def loopBody279_77 : HolLoopProg 64 :=
.mark loopBody279_76

def loopBody279_78 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_77

def loopBody279_79 : HolLoopProg 64 :=
.mark loopBody279_78

def loopBody279_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody279_81 : HolLoopProg 64 :=
.mark loopBody279_80

def loopBody279_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 7)

def loopBody279_83 : HolLoopProg 64 :=
.mark loopBody279_82

def loopBody279_84 : HolLoopProg 64 :=
.seq loopBody279_83 loopBody279_1

def loopBody279_85 : HolLoopProg 64 :=
.mark loopBody279_84

def loopBody279_86 : HolLoopProg 64 :=
.seq loopBody279_85 loopBody279_1

def loopBody279_87 : HolLoopProg 64 :=
.mark loopBody279_86

def loopBody279_88 : HolLoopProg 64 :=
.seq loopBody279_81 loopBody279_87

def loopBody279_89 : HolLoopProg 64 :=
.mark loopBody279_88

def loopBody279_90 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_89

def loopBody279_91 : HolLoopProg 64 :=
.mark loopBody279_90

def loopBody279_92 : HolLoopProg 64 :=
.seq loopBody279_79 loopBody279_91

def loopBody279_93 : HolLoopProg 64 :=
.mark loopBody279_92

def loopBody279_94 : HolLoopProg 64 :=
.seq loopBody279_57 loopBody279_93

def loopBody279_95 : HolLoopProg 64 :=
.mark loopBody279_94

def loopBody279_96 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_95

def loopBody279_97 : HolLoopProg 64 :=
.mark loopBody279_96

def loopBody279_98 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_97

def loopBody279_99 : HolLoopProg 64 :=
.mark loopBody279_98

def loopBody279_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody279_101 : HolLoopProg 64 :=
.mark loopBody279_100

def loopBody279_102 : HolLoopProg 64 :=
.seq loopBody279_99 loopBody279_101

def loopBody279_103 : HolLoopProg 64 :=
.mark loopBody279_102

def loopBody279_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody279_105 : HolLoopProg 64 :=
.mark loopBody279_104

def loopBody279_106 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody279_103 loopBody279_105 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody279_107 : HolLoopProg 64 :=
.mark loopBody279_106

def loopBody279_108 : HolLoopProg 64 :=
.seq loopBody279_107 loopBody279_1

def loopBody279_109 : HolLoopProg 64 :=
.mark loopBody279_108

def loopBody279_110 : HolLoopProg 64 :=
.seq loopBody279_39 loopBody279_109

def loopBody279_111 : HolLoopProg 64 :=
.mark loopBody279_110

def loopBody279_112 : HolLoopProg 64 :=
.seq loopBody279_37 loopBody279_111

def loopBody279_113 : HolLoopProg 64 :=
.mark loopBody279_112

def loopBody279_114 : HolLoopProg 64 :=
.seq loopBody279_31 loopBody279_113

def loopBody279_115 : HolLoopProg 64 :=
.mark loopBody279_114

def loopBody279_116 : HolLoopProg 64 :=
.seq loopBody279_29 loopBody279_115

def loopBody279_117 : HolLoopProg 64 :=
.mark loopBody279_116

def loopBody279_118 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody279_117 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody279_119 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody279_120 : HolLoopProg 64 :=
.mark loopBody279_119

def loopBody279_121 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody279_122 : HolLoopProg 64 :=
.mark loopBody279_121

def loopBody279_123 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7]

def loopBody279_124 : HolLoopProg 64 :=
.mark loopBody279_123

def loopBody279_125 : HolLoopProg 64 :=
.seq loopBody279_124 loopBody279_1

def loopBody279_126 : HolLoopProg 64 :=
.mark loopBody279_125

def loopBody279_127 : HolLoopProg 64 :=
.seq loopBody279_122 loopBody279_126

def loopBody279_128 : HolLoopProg 64 :=
.mark loopBody279_127

def loopBody279_129 : HolLoopProg 64 :=
.seq loopBody279_120 loopBody279_128

def loopBody279_130 : HolLoopProg 64 :=
.mark loopBody279_129

def loopBody279_131 : HolLoopProg 64 :=
.seq loopBody279_118 loopBody279_130

def loopBody279_132 : HolLoopProg 64 :=
.seq loopBody279_27 loopBody279_131

def loopBody279_133 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_132

def loopBody279_134 : HolLoopProg 64 :=
.seq loopBody279_25 loopBody279_133

def loopBody279_135 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_134

def loopBody279_136 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_135

def loopBody279_137 : HolLoopProg 64 :=
.seq loopBody279_15 loopBody279_136

def loopBody279_138 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_137

def loopBody279_139 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_138

def loopBody279_140 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_139

def loopBody279_141 : HolLoopProg 64 :=
.seq loopBody279_1 loopBody279_140

def output279 : Nat × List Nat × HolLoopProg 64 :=
  (343, [0, 1], loopBody279_141)
end InitECandidate.Proofs.FrontendStages.Loop
