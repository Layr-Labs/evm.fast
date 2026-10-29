import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody7_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody7_1 : HolLoopProg 64 :=
.mark loopBody7_0

def loopBody7_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 32#64]))

def loopBody7_3 : HolLoopProg 64 :=
.mark loopBody7_2

def loopBody7_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 24#64]),
      Flapjack.HolLoopExp.var 1])

def loopBody7_5 : HolLoopProg 64 :=
.mark loopBody7_4

def loopBody7_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody7_7 : HolLoopProg 64 :=
.mark loopBody7_6

def loopBody7_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody7_9 : HolLoopProg 64 :=
.mark loopBody7_8

def loopBody7_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody7_11 : HolLoopProg 64 :=
.mark loopBody7_10

def loopBody7_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody7_9 loopBody7_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody7_13 : HolLoopProg 64 :=
.mark loopBody7_12

def loopBody7_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody7_15 : HolLoopProg 64 :=
.mark loopBody7_14

def loopBody7_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 6#64)

def loopBody7_17 : HolLoopProg 64 :=
.mark loopBody7_16

def loopBody7_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody7_19 : HolLoopProg 64 :=
.mark loopBody7_18

def loopBody7_20 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 66) ([3]) (some (3, loopBody7_19, loopBody7_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody7_21 : HolLoopProg 64 :=
.mark loopBody7_20

def loopBody7_22 : HolLoopProg 64 :=
.seq loopBody7_21 loopBody7_1

def loopBody7_23 : HolLoopProg 64 :=
.mark loopBody7_22

def loopBody7_24 : HolLoopProg 64 :=
.seq loopBody7_17 loopBody7_23

def loopBody7_25 : HolLoopProg 64 :=
.mark loopBody7_24

def loopBody7_26 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_25

def loopBody7_27 : HolLoopProg 64 :=
.mark loopBody7_26

def loopBody7_28 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_27

def loopBody7_29 : HolLoopProg 64 :=
.mark loopBody7_28

def loopBody7_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody7_29 loopBody7_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody7_31 : HolLoopProg 64 :=
.mark loopBody7_30

def loopBody7_32 : HolLoopProg 64 :=
.seq loopBody7_31 loopBody7_1

def loopBody7_33 : HolLoopProg 64 :=
.mark loopBody7_32

def loopBody7_34 : HolLoopProg 64 :=
.seq loopBody7_15 loopBody7_33

def loopBody7_35 : HolLoopProg 64 :=
.mark loopBody7_34

def loopBody7_36 : HolLoopProg 64 :=
.seq loopBody7_13 loopBody7_35

def loopBody7_37 : HolLoopProg 64 :=
.mark loopBody7_36

def loopBody7_38 : HolLoopProg 64 :=
.seq loopBody7_7 loopBody7_37

def loopBody7_39 : HolLoopProg 64 :=
.mark loopBody7_38

def loopBody7_40 : HolLoopProg 64 :=
.seq loopBody7_5 loopBody7_39

def loopBody7_41 : HolLoopProg 64 :=
.mark loopBody7_40

def loopBody7_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.op Flapjack.BinOp.add
        [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 7#64],
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 8#64]])

def loopBody7_43 : HolLoopProg 64 :=
.mark loopBody7_42

def loopBody7_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 24#64]))

def loopBody7_45 : HolLoopProg 64 :=
.mark loopBody7_44

def loopBody7_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody7_47 : HolLoopProg 64 :=
.mark loopBody7_46

def loopBody7_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody7_49 : HolLoopProg 64 :=
.mark loopBody7_48

def loopBody7_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody7_51 : HolLoopProg 64 :=
.mark loopBody7_50

def loopBody7_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody7_49 loopBody7_51 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody7_53 : HolLoopProg 64 :=
.mark loopBody7_52

def loopBody7_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody7_55 : HolLoopProg 64 :=
.mark loopBody7_54

def loopBody7_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 6#64)

def loopBody7_57 : HolLoopProg 64 :=
.mark loopBody7_56

def loopBody7_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody7_59 : HolLoopProg 64 :=
.mark loopBody7_58

def loopBody7_60 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 66) ([4]) (some (4, loopBody7_59, loopBody7_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody7_61 : HolLoopProg 64 :=
.mark loopBody7_60

def loopBody7_62 : HolLoopProg 64 :=
.seq loopBody7_61 loopBody7_1

def loopBody7_63 : HolLoopProg 64 :=
.mark loopBody7_62

def loopBody7_64 : HolLoopProg 64 :=
.seq loopBody7_57 loopBody7_63

def loopBody7_65 : HolLoopProg 64 :=
.mark loopBody7_64

def loopBody7_66 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_65

def loopBody7_67 : HolLoopProg 64 :=
.mark loopBody7_66

def loopBody7_68 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_67

def loopBody7_69 : HolLoopProg 64 :=
.mark loopBody7_68

def loopBody7_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody7_69 loopBody7_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody7_71 : HolLoopProg 64 :=
.mark loopBody7_70

def loopBody7_72 : HolLoopProg 64 :=
.seq loopBody7_71 loopBody7_1

def loopBody7_73 : HolLoopProg 64 :=
.mark loopBody7_72

def loopBody7_74 : HolLoopProg 64 :=
.seq loopBody7_55 loopBody7_73

def loopBody7_75 : HolLoopProg 64 :=
.mark loopBody7_74

def loopBody7_76 : HolLoopProg 64 :=
.seq loopBody7_53 loopBody7_75

def loopBody7_77 : HolLoopProg 64 :=
.mark loopBody7_76

def loopBody7_78 : HolLoopProg 64 :=
.seq loopBody7_47 loopBody7_77

def loopBody7_79 : HolLoopProg 64 :=
.mark loopBody7_78

def loopBody7_80 : HolLoopProg 64 :=
.seq loopBody7_45 loopBody7_79

def loopBody7_81 : HolLoopProg 64 :=
.mark loopBody7_80

def loopBody7_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 32#64])

def loopBody7_83 : HolLoopProg 64 :=
.mark loopBody7_82

def loopBody7_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody7_85 : HolLoopProg 64 :=
.mark loopBody7_84

def loopBody7_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody7_87 : HolLoopProg 64 :=
.mark loopBody7_86

def loopBody7_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody7_89 : HolLoopProg 64 :=
.mark loopBody7_88

def loopBody7_90 : HolLoopProg 64 :=
.seq loopBody7_89 loopBody7_1

def loopBody7_91 : HolLoopProg 64 :=
.mark loopBody7_90

def loopBody7_92 : HolLoopProg 64 :=
.seq loopBody7_87 loopBody7_91

def loopBody7_93 : HolLoopProg 64 :=
.mark loopBody7_92

def loopBody7_94 : HolLoopProg 64 :=
.seq loopBody7_93 loopBody7_1

def loopBody7_95 : HolLoopProg 64 :=
.mark loopBody7_94

def loopBody7_96 : HolLoopProg 64 :=
.seq loopBody7_85 loopBody7_95

def loopBody7_97 : HolLoopProg 64 :=
.mark loopBody7_96

def loopBody7_98 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_97

def loopBody7_99 : HolLoopProg 64 :=
.mark loopBody7_98

def loopBody7_100 : HolLoopProg 64 :=
.seq loopBody7_83 loopBody7_99

def loopBody7_101 : HolLoopProg 64 :=
.mark loopBody7_100

def loopBody7_102 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_101

def loopBody7_103 : HolLoopProg 64 :=
.mark loopBody7_102

def loopBody7_104 : HolLoopProg 64 :=
.seq loopBody7_81 loopBody7_103

def loopBody7_105 : HolLoopProg 64 :=
.mark loopBody7_104

def loopBody7_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody7_107 : HolLoopProg 64 :=
.mark loopBody7_106

def loopBody7_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody7_109 : HolLoopProg 64 :=
.mark loopBody7_108

def loopBody7_110 : HolLoopProg 64 :=
.seq loopBody7_109 loopBody7_1

def loopBody7_111 : HolLoopProg 64 :=
.mark loopBody7_110

def loopBody7_112 : HolLoopProg 64 :=
.seq loopBody7_107 loopBody7_111

def loopBody7_113 : HolLoopProg 64 :=
.mark loopBody7_112

def loopBody7_114 : HolLoopProg 64 :=
.seq loopBody7_105 loopBody7_113

def loopBody7_115 : HolLoopProg 64 :=
.mark loopBody7_114

def loopBody7_116 : HolLoopProg 64 :=
.seq loopBody7_43 loopBody7_115

def loopBody7_117 : HolLoopProg 64 :=
.mark loopBody7_116

def loopBody7_118 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_117

def loopBody7_119 : HolLoopProg 64 :=
.mark loopBody7_118

def loopBody7_120 : HolLoopProg 64 :=
.seq loopBody7_41 loopBody7_119

def loopBody7_121 : HolLoopProg 64 :=
.mark loopBody7_120

def loopBody7_122 : HolLoopProg 64 :=
.seq loopBody7_3 loopBody7_121

def loopBody7_123 : HolLoopProg 64 :=
.mark loopBody7_122

def loopBody7_124 : HolLoopProg 64 :=
.seq loopBody7_1 loopBody7_123

def loopBody7_125 : HolLoopProg 64 :=
.mark loopBody7_124

def output7 : Nat × List Nat × HolLoopProg 64 :=
  (71, [0], loopBody7_125)
end InitECandidate.Proofs.FrontendStages.Loop
