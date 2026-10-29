import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody10_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody10_1 : HolLoopProg 64 :=
.mark loopBody10_0

def loopBody10_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 24#64]))

def loopBody10_3 : HolLoopProg 64 :=
.mark loopBody10_2

def loopBody10_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 32#64])])

def loopBody10_5 : HolLoopProg 64 :=
.mark loopBody10_4

def loopBody10_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody10_7 : HolLoopProg 64 :=
.mark loopBody10_6

def loopBody10_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody10_9 : HolLoopProg 64 :=
.mark loopBody10_8

def loopBody10_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody10_11 : HolLoopProg 64 :=
.mark loopBody10_10

def loopBody10_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody10_9 loopBody10_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody10_13 : HolLoopProg 64 :=
.mark loopBody10_12

def loopBody10_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody10_15 : HolLoopProg 64 :=
.mark loopBody10_14

def loopBody10_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 7#64)

def loopBody10_17 : HolLoopProg 64 :=
.mark loopBody10_16

def loopBody10_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody10_19 : HolLoopProg 64 :=
.mark loopBody10_18

def loopBody10_20 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 66) ([3]) (some (3, loopBody10_19, loopBody10_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody10_21 : HolLoopProg 64 :=
.mark loopBody10_20

def loopBody10_22 : HolLoopProg 64 :=
.seq loopBody10_21 loopBody10_1

def loopBody10_23 : HolLoopProg 64 :=
.mark loopBody10_22

def loopBody10_24 : HolLoopProg 64 :=
.seq loopBody10_17 loopBody10_23

def loopBody10_25 : HolLoopProg 64 :=
.mark loopBody10_24

def loopBody10_26 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_25

def loopBody10_27 : HolLoopProg 64 :=
.mark loopBody10_26

def loopBody10_28 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_27

def loopBody10_29 : HolLoopProg 64 :=
.mark loopBody10_28

def loopBody10_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody10_29 loopBody10_1 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody10_31 : HolLoopProg 64 :=
.mark loopBody10_30

def loopBody10_32 : HolLoopProg 64 :=
.seq loopBody10_31 loopBody10_1

def loopBody10_33 : HolLoopProg 64 :=
.mark loopBody10_32

def loopBody10_34 : HolLoopProg 64 :=
.seq loopBody10_15 loopBody10_33

def loopBody10_35 : HolLoopProg 64 :=
.mark loopBody10_34

def loopBody10_36 : HolLoopProg 64 :=
.seq loopBody10_13 loopBody10_35

def loopBody10_37 : HolLoopProg 64 :=
.mark loopBody10_36

def loopBody10_38 : HolLoopProg 64 :=
.seq loopBody10_7 loopBody10_37

def loopBody10_39 : HolLoopProg 64 :=
.mark loopBody10_38

def loopBody10_40 : HolLoopProg 64 :=
.seq loopBody10_5 loopBody10_39

def loopBody10_41 : HolLoopProg 64 :=
.mark loopBody10_40

def loopBody10_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 0],
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 8#64]])

def loopBody10_43 : HolLoopProg 64 :=
.mark loopBody10_42

def loopBody10_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody10_45 : HolLoopProg 64 :=
.mark loopBody10_44

def loopBody10_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 32#64]))

def loopBody10_47 : HolLoopProg 64 :=
.mark loopBody10_46

def loopBody10_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody10_49 : HolLoopProg 64 :=
.mark loopBody10_48

def loopBody10_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody10_51 : HolLoopProg 64 :=
.mark loopBody10_50

def loopBody10_52 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody10_49 loopBody10_51 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody10_53 : HolLoopProg 64 :=
.mark loopBody10_52

def loopBody10_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody10_55 : HolLoopProg 64 :=
.mark loopBody10_54

def loopBody10_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 7#64)

def loopBody10_57 : HolLoopProg 64 :=
.mark loopBody10_56

def loopBody10_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody10_59 : HolLoopProg 64 :=
.mark loopBody10_58

def loopBody10_60 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 66) ([4]) (some (4, loopBody10_59, loopBody10_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody10_61 : HolLoopProg 64 :=
.mark loopBody10_60

def loopBody10_62 : HolLoopProg 64 :=
.seq loopBody10_61 loopBody10_1

def loopBody10_63 : HolLoopProg 64 :=
.mark loopBody10_62

def loopBody10_64 : HolLoopProg 64 :=
.seq loopBody10_57 loopBody10_63

def loopBody10_65 : HolLoopProg 64 :=
.mark loopBody10_64

def loopBody10_66 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_65

def loopBody10_67 : HolLoopProg 64 :=
.mark loopBody10_66

def loopBody10_68 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_67

def loopBody10_69 : HolLoopProg 64 :=
.mark loopBody10_68

def loopBody10_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody10_69 loopBody10_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody10_71 : HolLoopProg 64 :=
.mark loopBody10_70

def loopBody10_72 : HolLoopProg 64 :=
.seq loopBody10_71 loopBody10_1

def loopBody10_73 : HolLoopProg 64 :=
.mark loopBody10_72

def loopBody10_74 : HolLoopProg 64 :=
.seq loopBody10_55 loopBody10_73

def loopBody10_75 : HolLoopProg 64 :=
.mark loopBody10_74

def loopBody10_76 : HolLoopProg 64 :=
.seq loopBody10_53 loopBody10_75

def loopBody10_77 : HolLoopProg 64 :=
.mark loopBody10_76

def loopBody10_78 : HolLoopProg 64 :=
.seq loopBody10_47 loopBody10_77

def loopBody10_79 : HolLoopProg 64 :=
.mark loopBody10_78

def loopBody10_80 : HolLoopProg 64 :=
.seq loopBody10_45 loopBody10_79

def loopBody10_81 : HolLoopProg 64 :=
.mark loopBody10_80

def loopBody10_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 24#64])

def loopBody10_83 : HolLoopProg 64 :=
.mark loopBody10_82

def loopBody10_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody10_85 : HolLoopProg 64 :=
.mark loopBody10_84

def loopBody10_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody10_87 : HolLoopProg 64 :=
.mark loopBody10_86

def loopBody10_88 : HolLoopProg 64 :=
.seq loopBody10_87 loopBody10_1

def loopBody10_89 : HolLoopProg 64 :=
.mark loopBody10_88

def loopBody10_90 : HolLoopProg 64 :=
.seq loopBody10_85 loopBody10_89

def loopBody10_91 : HolLoopProg 64 :=
.mark loopBody10_90

def loopBody10_92 : HolLoopProg 64 :=
.seq loopBody10_91 loopBody10_1

def loopBody10_93 : HolLoopProg 64 :=
.mark loopBody10_92

def loopBody10_94 : HolLoopProg 64 :=
.seq loopBody10_45 loopBody10_93

def loopBody10_95 : HolLoopProg 64 :=
.mark loopBody10_94

def loopBody10_96 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_95

def loopBody10_97 : HolLoopProg 64 :=
.mark loopBody10_96

def loopBody10_98 : HolLoopProg 64 :=
.seq loopBody10_83 loopBody10_97

def loopBody10_99 : HolLoopProg 64 :=
.mark loopBody10_98

def loopBody10_100 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_99

def loopBody10_101 : HolLoopProg 64 :=
.mark loopBody10_100

def loopBody10_102 : HolLoopProg 64 :=
.seq loopBody10_81 loopBody10_101

def loopBody10_103 : HolLoopProg 64 :=
.mark loopBody10_102

def loopBody10_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody10_105 : HolLoopProg 64 :=
.mark loopBody10_104

def loopBody10_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody10_107 : HolLoopProg 64 :=
.mark loopBody10_106

def loopBody10_108 : HolLoopProg 64 :=
.seq loopBody10_107 loopBody10_1

def loopBody10_109 : HolLoopProg 64 :=
.mark loopBody10_108

def loopBody10_110 : HolLoopProg 64 :=
.seq loopBody10_105 loopBody10_109

def loopBody10_111 : HolLoopProg 64 :=
.mark loopBody10_110

def loopBody10_112 : HolLoopProg 64 :=
.seq loopBody10_103 loopBody10_111

def loopBody10_113 : HolLoopProg 64 :=
.mark loopBody10_112

def loopBody10_114 : HolLoopProg 64 :=
.seq loopBody10_43 loopBody10_113

def loopBody10_115 : HolLoopProg 64 :=
.mark loopBody10_114

def loopBody10_116 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_115

def loopBody10_117 : HolLoopProg 64 :=
.mark loopBody10_116

def loopBody10_118 : HolLoopProg 64 :=
.seq loopBody10_41 loopBody10_117

def loopBody10_119 : HolLoopProg 64 :=
.mark loopBody10_118

def loopBody10_120 : HolLoopProg 64 :=
.seq loopBody10_3 loopBody10_119

def loopBody10_121 : HolLoopProg 64 :=
.mark loopBody10_120

def loopBody10_122 : HolLoopProg 64 :=
.seq loopBody10_1 loopBody10_121

def loopBody10_123 : HolLoopProg 64 :=
.mark loopBody10_122

def output10 : Nat × List Nat × HolLoopProg 64 :=
  (74, [0], loopBody10_123)
end InitECandidate.Proofs.FrontendStages.Loop
