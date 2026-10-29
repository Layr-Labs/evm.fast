import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody4_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody4_1 : HolLoopProg 64 :=
.mark loopBody4_0

def loopBody4_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 8#64]))

def loopBody4_3 : HolLoopProg 64 :=
.mark loopBody4_2

def loopBody4_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 2952790016#64, Flapjack.HolLoopExp.var 1])

def loopBody4_5 : HolLoopProg 64 :=
.mark loopBody4_4

def loopBody4_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody4_7 : HolLoopProg 64 :=
.mark loopBody4_6

def loopBody4_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody4_9 : HolLoopProg 64 :=
.mark loopBody4_8

def loopBody4_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody4_11 : HolLoopProg 64 :=
.mark loopBody4_10

def loopBody4_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody4_9 loopBody4_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody4_13 : HolLoopProg 64 :=
.mark loopBody4_12

def loopBody4_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody4_15 : HolLoopProg 64 :=
.mark loopBody4_14

def loopBody4_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody4_17 : HolLoopProg 64 :=
.mark loopBody4_16

def loopBody4_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 66) ([3]) (some (3, loopBody4_17, loopBody4_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody4_19 : HolLoopProg 64 :=
.mark loopBody4_18

def loopBody4_20 : HolLoopProg 64 :=
.seq loopBody4_19 loopBody4_1

def loopBody4_21 : HolLoopProg 64 :=
.mark loopBody4_20

def loopBody4_22 : HolLoopProg 64 :=
.seq loopBody4_9 loopBody4_21

def loopBody4_23 : HolLoopProg 64 :=
.mark loopBody4_22

def loopBody4_24 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_23

def loopBody4_25 : HolLoopProg 64 :=
.mark loopBody4_24

def loopBody4_26 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_25

def loopBody4_27 : HolLoopProg 64 :=
.mark loopBody4_26

def loopBody4_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody4_27 loopBody4_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody4_29 : HolLoopProg 64 :=
.mark loopBody4_28

def loopBody4_30 : HolLoopProg 64 :=
.seq loopBody4_29 loopBody4_1

def loopBody4_31 : HolLoopProg 64 :=
.mark loopBody4_30

def loopBody4_32 : HolLoopProg 64 :=
.seq loopBody4_15 loopBody4_31

def loopBody4_33 : HolLoopProg 64 :=
.mark loopBody4_32

def loopBody4_34 : HolLoopProg 64 :=
.seq loopBody4_13 loopBody4_33

def loopBody4_35 : HolLoopProg 64 :=
.mark loopBody4_34

def loopBody4_36 : HolLoopProg 64 :=
.seq loopBody4_7 loopBody4_35

def loopBody4_37 : HolLoopProg 64 :=
.mark loopBody4_36

def loopBody4_38 : HolLoopProg 64 :=
.seq loopBody4_5 loopBody4_37

def loopBody4_39 : HolLoopProg 64 :=
.mark loopBody4_38

def loopBody4_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.op Flapjack.BinOp.add
        [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 7#64],
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 8#64]])

def loopBody4_41 : HolLoopProg 64 :=
.mark loopBody4_40

def loopBody4_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 2952790016#64)

def loopBody4_43 : HolLoopProg 64 :=
.mark loopBody4_42

def loopBody4_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody4_45 : HolLoopProg 64 :=
.mark loopBody4_44

def loopBody4_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody4_47 : HolLoopProg 64 :=
.mark loopBody4_46

def loopBody4_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody4_49 : HolLoopProg 64 :=
.mark loopBody4_48

def loopBody4_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody4_47 loopBody4_49 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody4_51 : HolLoopProg 64 :=
.mark loopBody4_50

def loopBody4_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody4_53 : HolLoopProg 64 :=
.mark loopBody4_52

def loopBody4_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody4_55 : HolLoopProg 64 :=
.mark loopBody4_54

def loopBody4_56 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 66) ([4]) (some (4, loopBody4_55, loopBody4_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody4_57 : HolLoopProg 64 :=
.mark loopBody4_56

def loopBody4_58 : HolLoopProg 64 :=
.seq loopBody4_57 loopBody4_1

def loopBody4_59 : HolLoopProg 64 :=
.mark loopBody4_58

def loopBody4_60 : HolLoopProg 64 :=
.seq loopBody4_47 loopBody4_59

def loopBody4_61 : HolLoopProg 64 :=
.mark loopBody4_60

def loopBody4_62 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_61

def loopBody4_63 : HolLoopProg 64 :=
.mark loopBody4_62

def loopBody4_64 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_63

def loopBody4_65 : HolLoopProg 64 :=
.mark loopBody4_64

def loopBody4_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody4_65 loopBody4_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody4_67 : HolLoopProg 64 :=
.mark loopBody4_66

def loopBody4_68 : HolLoopProg 64 :=
.seq loopBody4_67 loopBody4_1

def loopBody4_69 : HolLoopProg 64 :=
.mark loopBody4_68

def loopBody4_70 : HolLoopProg 64 :=
.seq loopBody4_53 loopBody4_69

def loopBody4_71 : HolLoopProg 64 :=
.mark loopBody4_70

def loopBody4_72 : HolLoopProg 64 :=
.seq loopBody4_51 loopBody4_71

def loopBody4_73 : HolLoopProg 64 :=
.mark loopBody4_72

def loopBody4_74 : HolLoopProg 64 :=
.seq loopBody4_45 loopBody4_73

def loopBody4_75 : HolLoopProg 64 :=
.mark loopBody4_74

def loopBody4_76 : HolLoopProg 64 :=
.seq loopBody4_43 loopBody4_75

def loopBody4_77 : HolLoopProg 64 :=
.mark loopBody4_76

def loopBody4_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 8#64])

def loopBody4_79 : HolLoopProg 64 :=
.mark loopBody4_78

def loopBody4_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody4_81 : HolLoopProg 64 :=
.mark loopBody4_80

def loopBody4_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody4_83 : HolLoopProg 64 :=
.mark loopBody4_82

def loopBody4_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody4_85 : HolLoopProg 64 :=
.mark loopBody4_84

def loopBody4_86 : HolLoopProg 64 :=
.seq loopBody4_85 loopBody4_1

def loopBody4_87 : HolLoopProg 64 :=
.mark loopBody4_86

def loopBody4_88 : HolLoopProg 64 :=
.seq loopBody4_83 loopBody4_87

def loopBody4_89 : HolLoopProg 64 :=
.mark loopBody4_88

def loopBody4_90 : HolLoopProg 64 :=
.seq loopBody4_89 loopBody4_1

def loopBody4_91 : HolLoopProg 64 :=
.mark loopBody4_90

def loopBody4_92 : HolLoopProg 64 :=
.seq loopBody4_81 loopBody4_91

def loopBody4_93 : HolLoopProg 64 :=
.mark loopBody4_92

def loopBody4_94 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_93

def loopBody4_95 : HolLoopProg 64 :=
.mark loopBody4_94

def loopBody4_96 : HolLoopProg 64 :=
.seq loopBody4_79 loopBody4_95

def loopBody4_97 : HolLoopProg 64 :=
.mark loopBody4_96

def loopBody4_98 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_97

def loopBody4_99 : HolLoopProg 64 :=
.mark loopBody4_98

def loopBody4_100 : HolLoopProg 64 :=
.seq loopBody4_77 loopBody4_99

def loopBody4_101 : HolLoopProg 64 :=
.mark loopBody4_100

def loopBody4_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody4_103 : HolLoopProg 64 :=
.mark loopBody4_102

def loopBody4_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody4_105 : HolLoopProg 64 :=
.mark loopBody4_104

def loopBody4_106 : HolLoopProg 64 :=
.seq loopBody4_105 loopBody4_1

def loopBody4_107 : HolLoopProg 64 :=
.mark loopBody4_106

def loopBody4_108 : HolLoopProg 64 :=
.seq loopBody4_103 loopBody4_107

def loopBody4_109 : HolLoopProg 64 :=
.mark loopBody4_108

def loopBody4_110 : HolLoopProg 64 :=
.seq loopBody4_101 loopBody4_109

def loopBody4_111 : HolLoopProg 64 :=
.mark loopBody4_110

def loopBody4_112 : HolLoopProg 64 :=
.seq loopBody4_41 loopBody4_111

def loopBody4_113 : HolLoopProg 64 :=
.mark loopBody4_112

def loopBody4_114 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_113

def loopBody4_115 : HolLoopProg 64 :=
.mark loopBody4_114

def loopBody4_116 : HolLoopProg 64 :=
.seq loopBody4_39 loopBody4_115

def loopBody4_117 : HolLoopProg 64 :=
.mark loopBody4_116

def loopBody4_118 : HolLoopProg 64 :=
.seq loopBody4_3 loopBody4_117

def loopBody4_119 : HolLoopProg 64 :=
.mark loopBody4_118

def loopBody4_120 : HolLoopProg 64 :=
.seq loopBody4_1 loopBody4_119

def loopBody4_121 : HolLoopProg 64 :=
.mark loopBody4_120

def output4 : Nat × List Nat × HolLoopProg 64 :=
  (68, [0], loopBody4_121)
end InitECandidate.Proofs.FrontendStages.Loop
