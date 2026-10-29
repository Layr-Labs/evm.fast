import InitECandidate.Proofs.FrontendStages.Loop.Translate284
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody300_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody300_1 : HolLoopProg 64 :=
.mark loopBody300_0

def loopBody300_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody300_3 : HolLoopProg 64 :=
.mark loopBody300_2

def loopBody300_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody300_5 : HolLoopProg 64 :=
.mark loopBody300_4

def loopBody300_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody300_7 : HolLoopProg 64 :=
.mark loopBody300_6

def loopBody300_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody300_9 : HolLoopProg 64 :=
.mark loopBody300_8

def loopBody300_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody300_11 : HolLoopProg 64 :=
.mark loopBody300_10

def loopBody300_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody300_13 : HolLoopProg 64 :=
.mark loopBody300_12

def loopBody300_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.RegImm.reg 6) loopBody300_11 loopBody300_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody300_15 : HolLoopProg 64 :=
.mark loopBody300_14

def loopBody300_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody300_17 : HolLoopProg 64 :=
.mark loopBody300_16

def loopBody300_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 120#64)

def loopBody300_19 : HolLoopProg 64 :=
.mark loopBody300_18

def loopBody300_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 7 7 5 6)

def loopBody300_21 : HolLoopProg 64 :=
.mark loopBody300_20

def loopBody300_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 7])

def loopBody300_23 : HolLoopProg 64 :=
.mark loopBody300_22

def loopBody300_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody300_25 : HolLoopProg 64 :=
.mark loopBody300_24

def loopBody300_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 363) ([8]) (some (5, loopBody300_25, loopBody300_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody300_27 : HolLoopProg 64 :=
.mark loopBody300_26

def loopBody300_28 : HolLoopProg 64 :=
.seq loopBody300_27 loopBody300_1

def loopBody300_29 : HolLoopProg 64 :=
.mark loopBody300_28

def loopBody300_30 : HolLoopProg 64 :=
.seq loopBody300_23 loopBody300_29

def loopBody300_31 : HolLoopProg 64 :=
.mark loopBody300_30

def loopBody300_32 : HolLoopProg 64 :=
.seq loopBody300_21 loopBody300_31

def loopBody300_33 : HolLoopProg 64 :=
.mark loopBody300_32

def loopBody300_34 : HolLoopProg 64 :=
.seq loopBody300_19 loopBody300_33

def loopBody300_35 : HolLoopProg 64 :=
.mark loopBody300_34

def loopBody300_36 : HolLoopProg 64 :=
.seq loopBody300_7 loopBody300_35

def loopBody300_37 : HolLoopProg 64 :=
.mark loopBody300_36

def loopBody300_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody300_39 : HolLoopProg 64 :=
.mark loopBody300_38

def loopBody300_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody300_41 : HolLoopProg 64 :=
.mark loopBody300_40

def loopBody300_42 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 180) ([6]) (some (6, loopBody300_41, loopBody300_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody300_43 : HolLoopProg 64 :=
.mark loopBody300_42

def loopBody300_44 : HolLoopProg 64 :=
.seq loopBody300_43 loopBody300_1

def loopBody300_45 : HolLoopProg 64 :=
.mark loopBody300_44

def loopBody300_46 : HolLoopProg 64 :=
.seq loopBody300_39 loopBody300_45

def loopBody300_47 : HolLoopProg 64 :=
.mark loopBody300_46

def loopBody300_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.var 4])

def loopBody300_49 : HolLoopProg 64 :=
.mark loopBody300_48

def loopBody300_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 6)

def loopBody300_51 : HolLoopProg 64 :=
.mark loopBody300_50

def loopBody300_52 : HolLoopProg 64 :=
.seq loopBody300_51 loopBody300_1

def loopBody300_53 : HolLoopProg 64 :=
.mark loopBody300_52

def loopBody300_54 : HolLoopProg 64 :=
.seq loopBody300_53 loopBody300_1

def loopBody300_55 : HolLoopProg 64 :=
.mark loopBody300_54

def loopBody300_56 : HolLoopProg 64 :=
.seq loopBody300_49 loopBody300_55

def loopBody300_57 : HolLoopProg 64 :=
.mark loopBody300_56

def loopBody300_58 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_57

def loopBody300_59 : HolLoopProg 64 :=
.mark loopBody300_58

def loopBody300_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 1#64])

def loopBody300_61 : HolLoopProg 64 :=
.mark loopBody300_60

def loopBody300_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 6)

def loopBody300_63 : HolLoopProg 64 :=
.mark loopBody300_62

def loopBody300_64 : HolLoopProg 64 :=
.seq loopBody300_63 loopBody300_1

def loopBody300_65 : HolLoopProg 64 :=
.mark loopBody300_64

def loopBody300_66 : HolLoopProg 64 :=
.seq loopBody300_65 loopBody300_1

def loopBody300_67 : HolLoopProg 64 :=
.mark loopBody300_66

def loopBody300_68 : HolLoopProg 64 :=
.seq loopBody300_61 loopBody300_67

def loopBody300_69 : HolLoopProg 64 :=
.mark loopBody300_68

def loopBody300_70 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_69

def loopBody300_71 : HolLoopProg 64 :=
.mark loopBody300_70

def loopBody300_72 : HolLoopProg 64 :=
.seq loopBody300_59 loopBody300_71

def loopBody300_73 : HolLoopProg 64 :=
.mark loopBody300_72

def loopBody300_74 : HolLoopProg 64 :=
.seq loopBody300_47 loopBody300_73

def loopBody300_75 : HolLoopProg 64 :=
.mark loopBody300_74

def loopBody300_76 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_75

def loopBody300_77 : HolLoopProg 64 :=
.mark loopBody300_76

def loopBody300_78 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_77

def loopBody300_79 : HolLoopProg 64 :=
.mark loopBody300_78

def loopBody300_80 : HolLoopProg 64 :=
.seq loopBody300_37 loopBody300_79

def loopBody300_81 : HolLoopProg 64 :=
.mark loopBody300_80

def loopBody300_82 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_81

def loopBody300_83 : HolLoopProg 64 :=
.mark loopBody300_82

def loopBody300_84 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_83

def loopBody300_85 : HolLoopProg 64 :=
.mark loopBody300_84

def loopBody300_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody300_87 : HolLoopProg 64 :=
.mark loopBody300_86

def loopBody300_88 : HolLoopProg 64 :=
.seq loopBody300_85 loopBody300_87

def loopBody300_89 : HolLoopProg 64 :=
.mark loopBody300_88

def loopBody300_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody300_91 : HolLoopProg 64 :=
.mark loopBody300_90

def loopBody300_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody300_89 loopBody300_91 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody300_93 : HolLoopProg 64 :=
.mark loopBody300_92

def loopBody300_94 : HolLoopProg 64 :=
.seq loopBody300_93 loopBody300_1

def loopBody300_95 : HolLoopProg 64 :=
.mark loopBody300_94

def loopBody300_96 : HolLoopProg 64 :=
.seq loopBody300_17 loopBody300_95

def loopBody300_97 : HolLoopProg 64 :=
.mark loopBody300_96

def loopBody300_98 : HolLoopProg 64 :=
.seq loopBody300_15 loopBody300_97

def loopBody300_99 : HolLoopProg 64 :=
.mark loopBody300_98

def loopBody300_100 : HolLoopProg 64 :=
.seq loopBody300_9 loopBody300_99

def loopBody300_101 : HolLoopProg 64 :=
.mark loopBody300_100

def loopBody300_102 : HolLoopProg 64 :=
.seq loopBody300_7 loopBody300_101

def loopBody300_103 : HolLoopProg 64 :=
.mark loopBody300_102

def loopBody300_104 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody300_103 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody300_105 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody300_106 : HolLoopProg 64 :=
.mark loopBody300_105

def loopBody300_107 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody300_108 : HolLoopProg 64 :=
.mark loopBody300_107

def loopBody300_109 : HolLoopProg 64 :=
.seq loopBody300_108 loopBody300_1

def loopBody300_110 : HolLoopProg 64 :=
.mark loopBody300_109

def loopBody300_111 : HolLoopProg 64 :=
.seq loopBody300_106 loopBody300_110

def loopBody300_112 : HolLoopProg 64 :=
.mark loopBody300_111

def loopBody300_113 : HolLoopProg 64 :=
.seq loopBody300_104 loopBody300_112

def loopBody300_114 : HolLoopProg 64 :=
.seq loopBody300_5 loopBody300_113

def loopBody300_115 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_114

def loopBody300_116 : HolLoopProg 64 :=
.seq loopBody300_3 loopBody300_115

def loopBody300_117 : HolLoopProg 64 :=
.seq loopBody300_1 loopBody300_116

def output300 : Nat × List Nat × HolLoopProg 64 :=
  (364, [0, 1], loopBody300_117)
end InitECandidate.Proofs.FrontendStages.Loop
