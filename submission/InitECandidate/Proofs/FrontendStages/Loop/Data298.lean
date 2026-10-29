import InitECandidate.Proofs.FrontendStages.Loop.Translate282
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody298_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody298_1 : HolLoopProg 64 :=
.mark loopBody298_0

def loopBody298_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody298_3 : HolLoopProg 64 :=
.mark loopBody298_2

def loopBody298_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 33#64)

def loopBody298_5 : HolLoopProg 64 :=
.mark loopBody298_4

def loopBody298_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 6 6 4 5)

def loopBody298_7 : HolLoopProg 64 :=
.mark loopBody298_6

def loopBody298_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody298_9 : HolLoopProg 64 :=
.mark loopBody298_8

def loopBody298_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody298_11 : HolLoopProg 64 :=
.mark loopBody298_10

def loopBody298_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody298_13 : HolLoopProg 64 :=
.mark loopBody298_12

def loopBody298_14 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 178) ([7, 8]) (some (4, loopBody298_13, loopBody298_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody298_15 : HolLoopProg 64 :=
.mark loopBody298_14

def loopBody298_16 : HolLoopProg 64 :=
.seq loopBody298_15 loopBody298_1

def loopBody298_17 : HolLoopProg 64 :=
.mark loopBody298_16

def loopBody298_18 : HolLoopProg 64 :=
.seq loopBody298_11 loopBody298_17

def loopBody298_19 : HolLoopProg 64 :=
.mark loopBody298_18

def loopBody298_20 : HolLoopProg 64 :=
.seq loopBody298_9 loopBody298_19

def loopBody298_21 : HolLoopProg 64 :=
.mark loopBody298_20

def loopBody298_22 : HolLoopProg 64 :=
.seq loopBody298_7 loopBody298_21

def loopBody298_23 : HolLoopProg 64 :=
.mark loopBody298_22

def loopBody298_24 : HolLoopProg 64 :=
.seq loopBody298_5 loopBody298_23

def loopBody298_25 : HolLoopProg 64 :=
.mark loopBody298_24

def loopBody298_26 : HolLoopProg 64 :=
.seq loopBody298_3 loopBody298_25

def loopBody298_27 : HolLoopProg 64 :=
.mark loopBody298_26

def loopBody298_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody298_29 : HolLoopProg 64 :=
.mark loopBody298_28

def loopBody298_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody298_31 : HolLoopProg 64 :=
.mark loopBody298_30

def loopBody298_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody298_33 : HolLoopProg 64 :=
.mark loopBody298_32

def loopBody298_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody298_35 : HolLoopProg 64 :=
.mark loopBody298_34

def loopBody298_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody298_37 : HolLoopProg 64 :=
.mark loopBody298_36

def loopBody298_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody298_39 : HolLoopProg 64 :=
.mark loopBody298_38

def loopBody298_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody298_37 loopBody298_39 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody298_41 : HolLoopProg 64 :=
.mark loopBody298_40

def loopBody298_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody298_43 : HolLoopProg 64 :=
.mark loopBody298_42

def loopBody298_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody298_45 : HolLoopProg 64 :=
.mark loopBody298_44

def loopBody298_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 5#64)])

def loopBody298_47 : HolLoopProg 64 :=
.mark loopBody298_46

def loopBody298_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 32#64)

def loopBody298_49 : HolLoopProg 64 :=
.mark loopBody298_48

def loopBody298_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody298_51 : HolLoopProg 64 :=
.mark loopBody298_50

def loopBody298_52 : HolLoopProg 64 :=
.call (some
  ([3],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))) (some 176) ([6, 7, 8]) (some (6, loopBody298_51, loopBody298_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody298_53 : HolLoopProg 64 :=
.mark loopBody298_52

def loopBody298_54 : HolLoopProg 64 :=
.seq loopBody298_53 loopBody298_1

def loopBody298_55 : HolLoopProg 64 :=
.mark loopBody298_54

def loopBody298_56 : HolLoopProg 64 :=
.seq loopBody298_49 loopBody298_55

def loopBody298_57 : HolLoopProg 64 :=
.mark loopBody298_56

def loopBody298_58 : HolLoopProg 64 :=
.seq loopBody298_47 loopBody298_57

def loopBody298_59 : HolLoopProg 64 :=
.mark loopBody298_58

def loopBody298_60 : HolLoopProg 64 :=
.seq loopBody298_45 loopBody298_59

def loopBody298_61 : HolLoopProg 64 :=
.mark loopBody298_60

def loopBody298_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 3])

def loopBody298_63 : HolLoopProg 64 :=
.mark loopBody298_62

def loopBody298_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 6)

def loopBody298_65 : HolLoopProg 64 :=
.mark loopBody298_64

def loopBody298_66 : HolLoopProg 64 :=
.seq loopBody298_65 loopBody298_1

def loopBody298_67 : HolLoopProg 64 :=
.mark loopBody298_66

def loopBody298_68 : HolLoopProg 64 :=
.seq loopBody298_67 loopBody298_1

def loopBody298_69 : HolLoopProg 64 :=
.mark loopBody298_68

def loopBody298_70 : HolLoopProg 64 :=
.seq loopBody298_63 loopBody298_69

def loopBody298_71 : HolLoopProg 64 :=
.mark loopBody298_70

def loopBody298_72 : HolLoopProg 64 :=
.seq loopBody298_1 loopBody298_71

def loopBody298_73 : HolLoopProg 64 :=
.mark loopBody298_72

def loopBody298_74 : HolLoopProg 64 :=
.seq loopBody298_61 loopBody298_73

def loopBody298_75 : HolLoopProg 64 :=
.mark loopBody298_74

def loopBody298_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 1#64])

def loopBody298_77 : HolLoopProg 64 :=
.mark loopBody298_76

def loopBody298_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 6)

def loopBody298_79 : HolLoopProg 64 :=
.mark loopBody298_78

def loopBody298_80 : HolLoopProg 64 :=
.seq loopBody298_79 loopBody298_1

def loopBody298_81 : HolLoopProg 64 :=
.mark loopBody298_80

def loopBody298_82 : HolLoopProg 64 :=
.seq loopBody298_81 loopBody298_1

def loopBody298_83 : HolLoopProg 64 :=
.mark loopBody298_82

def loopBody298_84 : HolLoopProg 64 :=
.seq loopBody298_77 loopBody298_83

def loopBody298_85 : HolLoopProg 64 :=
.mark loopBody298_84

def loopBody298_86 : HolLoopProg 64 :=
.seq loopBody298_1 loopBody298_85

def loopBody298_87 : HolLoopProg 64 :=
.mark loopBody298_86

def loopBody298_88 : HolLoopProg 64 :=
.seq loopBody298_75 loopBody298_87

def loopBody298_89 : HolLoopProg 64 :=
.mark loopBody298_88

def loopBody298_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody298_91 : HolLoopProg 64 :=
.mark loopBody298_90

def loopBody298_92 : HolLoopProg 64 :=
.seq loopBody298_89 loopBody298_91

def loopBody298_93 : HolLoopProg 64 :=
.mark loopBody298_92

def loopBody298_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody298_95 : HolLoopProg 64 :=
.mark loopBody298_94

def loopBody298_96 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody298_93 loopBody298_95 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody298_97 : HolLoopProg 64 :=
.mark loopBody298_96

def loopBody298_98 : HolLoopProg 64 :=
.seq loopBody298_97 loopBody298_1

def loopBody298_99 : HolLoopProg 64 :=
.mark loopBody298_98

def loopBody298_100 : HolLoopProg 64 :=
.seq loopBody298_43 loopBody298_99

def loopBody298_101 : HolLoopProg 64 :=
.mark loopBody298_100

def loopBody298_102 : HolLoopProg 64 :=
.seq loopBody298_41 loopBody298_101

def loopBody298_103 : HolLoopProg 64 :=
.mark loopBody298_102

def loopBody298_104 : HolLoopProg 64 :=
.seq loopBody298_35 loopBody298_103

def loopBody298_105 : HolLoopProg 64 :=
.mark loopBody298_104

def loopBody298_106 : HolLoopProg 64 :=
.seq loopBody298_33 loopBody298_105

def loopBody298_107 : HolLoopProg 64 :=
.mark loopBody298_106

def loopBody298_108 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody298_107 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody298_109 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 0])

def loopBody298_110 : HolLoopProg 64 :=
.mark loopBody298_109

def loopBody298_111 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody298_112 : HolLoopProg 64 :=
.mark loopBody298_111

def loopBody298_113 : HolLoopProg 64 :=
.seq loopBody298_112 loopBody298_1

def loopBody298_114 : HolLoopProg 64 :=
.mark loopBody298_113

def loopBody298_115 : HolLoopProg 64 :=
.seq loopBody298_110 loopBody298_114

def loopBody298_116 : HolLoopProg 64 :=
.mark loopBody298_115

def loopBody298_117 : HolLoopProg 64 :=
.seq loopBody298_108 loopBody298_116

def loopBody298_118 : HolLoopProg 64 :=
.seq loopBody298_31 loopBody298_117

def loopBody298_119 : HolLoopProg 64 :=
.seq loopBody298_1 loopBody298_118

def loopBody298_120 : HolLoopProg 64 :=
.seq loopBody298_29 loopBody298_119

def loopBody298_121 : HolLoopProg 64 :=
.seq loopBody298_1 loopBody298_120

def loopBody298_122 : HolLoopProg 64 :=
.seq loopBody298_27 loopBody298_121

def loopBody298_123 : HolLoopProg 64 :=
.seq loopBody298_1 loopBody298_122

def loopBody298_124 : HolLoopProg 64 :=
.seq loopBody298_1 loopBody298_123

def output298 : Nat × List Nat × HolLoopProg 64 :=
  (362, [0, 1, 2], loopBody298_124)
end InitECandidate.Proofs.FrontendStages.Loop
