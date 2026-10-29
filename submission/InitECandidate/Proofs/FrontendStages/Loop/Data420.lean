import InitECandidate.Proofs.FrontendStages.Loop.Translate404
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody420_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody420_1 : HolLoopProg 64 :=
.mark loopBody420_0

def loopBody420_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody420_3 : HolLoopProg 64 :=
.mark loopBody420_2

def loopBody420_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody420_5 : HolLoopProg 64 :=
.mark loopBody420_4

def loopBody420_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody420_7 : HolLoopProg 64 :=
.mark loopBody420_6

def loopBody420_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody420_9 : HolLoopProg 64 :=
.mark loopBody420_8

def loopBody420_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody420_11 : HolLoopProg 64 :=
.mark loopBody420_10

def loopBody420_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody420_9 loopBody420_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody420_13 : HolLoopProg 64 :=
.mark loopBody420_12

def loopBody420_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody420_15 : HolLoopProg 64 :=
.mark loopBody420_14

def loopBody420_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2])

def loopBody420_17 : HolLoopProg 64 :=
.mark loopBody420_16

def loopBody420_18 : HolLoopProg 64 :=
.seq loopBody420_17 loopBody420_1

def loopBody420_19 : HolLoopProg 64 :=
.mark loopBody420_18

def loopBody420_20 : HolLoopProg 64 :=
.seq loopBody420_19 loopBody420_1

def loopBody420_21 : HolLoopProg 64 :=
.mark loopBody420_20

def loopBody420_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody420_23 : HolLoopProg 64 :=
.mark loopBody420_22

def loopBody420_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody420_25 : HolLoopProg 64 :=
.mark loopBody420_24

def loopBody420_26 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.RegImm.reg 8) loopBody420_9 loopBody420_11 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody420_27 : HolLoopProg 64 :=
.mark loopBody420_26

def loopBody420_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody420_29 : HolLoopProg 64 :=
.mark loopBody420_28

def loopBody420_30 : HolLoopProg 64 :=
.seq loopBody420_29 loopBody420_1

def loopBody420_31 : HolLoopProg 64 :=
.mark loopBody420_30

def loopBody420_32 : HolLoopProg 64 :=
.seq loopBody420_31 loopBody420_1

def loopBody420_33 : HolLoopProg 64 :=
.mark loopBody420_32

def loopBody420_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody420_33 loopBody420_1 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody420_35 : HolLoopProg 64 :=
.mark loopBody420_34

def loopBody420_36 : HolLoopProg 64 :=
.seq loopBody420_35 loopBody420_1

def loopBody420_37 : HolLoopProg 64 :=
.mark loopBody420_36

def loopBody420_38 : HolLoopProg 64 :=
.seq loopBody420_15 loopBody420_37

def loopBody420_39 : HolLoopProg 64 :=
.mark loopBody420_38

def loopBody420_40 : HolLoopProg 64 :=
.seq loopBody420_27 loopBody420_39

def loopBody420_41 : HolLoopProg 64 :=
.mark loopBody420_40

def loopBody420_42 : HolLoopProg 64 :=
.seq loopBody420_25 loopBody420_41

def loopBody420_43 : HolLoopProg 64 :=
.mark loopBody420_42

def loopBody420_44 : HolLoopProg 64 :=
.seq loopBody420_23 loopBody420_43

def loopBody420_45 : HolLoopProg 64 :=
.mark loopBody420_44

def loopBody420_46 : HolLoopProg 64 :=
.seq loopBody420_21 loopBody420_45

def loopBody420_47 : HolLoopProg 64 :=
.mark loopBody420_46

def loopBody420_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody420_49 : HolLoopProg 64 :=
.mark loopBody420_48

def loopBody420_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2])

def loopBody420_51 : HolLoopProg 64 :=
.mark loopBody420_50

def loopBody420_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody420_53 : HolLoopProg 64 :=
.mark loopBody420_52

def loopBody420_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody420_55 : HolLoopProg 64 :=
.mark loopBody420_54

def loopBody420_56 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([7, 8, 9]) (some (7, loopBody420_55, loopBody420_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody420_57 : HolLoopProg 64 :=
.mark loopBody420_56

def loopBody420_58 : HolLoopProg 64 :=
.seq loopBody420_57 loopBody420_1

def loopBody420_59 : HolLoopProg 64 :=
.mark loopBody420_58

def loopBody420_60 : HolLoopProg 64 :=
.seq loopBody420_53 loopBody420_59

def loopBody420_61 : HolLoopProg 64 :=
.mark loopBody420_60

def loopBody420_62 : HolLoopProg 64 :=
.seq loopBody420_51 loopBody420_61

def loopBody420_63 : HolLoopProg 64 :=
.mark loopBody420_62

def loopBody420_64 : HolLoopProg 64 :=
.seq loopBody420_49 loopBody420_63

def loopBody420_65 : HolLoopProg 64 :=
.mark loopBody420_64

def loopBody420_66 : HolLoopProg 64 :=
.seq loopBody420_1 loopBody420_65

def loopBody420_67 : HolLoopProg 64 :=
.mark loopBody420_66

def loopBody420_68 : HolLoopProg 64 :=
.seq loopBody420_1 loopBody420_67

def loopBody420_69 : HolLoopProg 64 :=
.mark loopBody420_68

def loopBody420_70 : HolLoopProg 64 :=
.seq loopBody420_47 loopBody420_69

def loopBody420_71 : HolLoopProg 64 :=
.mark loopBody420_70

def loopBody420_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody420_71 loopBody420_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody420_73 : HolLoopProg 64 :=
.mark loopBody420_72

def loopBody420_74 : HolLoopProg 64 :=
.seq loopBody420_73 loopBody420_1

def loopBody420_75 : HolLoopProg 64 :=
.mark loopBody420_74

def loopBody420_76 : HolLoopProg 64 :=
.seq loopBody420_15 loopBody420_75

def loopBody420_77 : HolLoopProg 64 :=
.mark loopBody420_76

def loopBody420_78 : HolLoopProg 64 :=
.seq loopBody420_13 loopBody420_77

def loopBody420_79 : HolLoopProg 64 :=
.mark loopBody420_78

def loopBody420_80 : HolLoopProg 64 :=
.seq loopBody420_7 loopBody420_79

def loopBody420_81 : HolLoopProg 64 :=
.mark loopBody420_80

def loopBody420_82 : HolLoopProg 64 :=
.seq loopBody420_5 loopBody420_81

def loopBody420_83 : HolLoopProg 64 :=
.mark loopBody420_82

def loopBody420_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5])

def loopBody420_85 : HolLoopProg 64 :=
.mark loopBody420_84

def loopBody420_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 5])

def loopBody420_87 : HolLoopProg 64 :=
.mark loopBody420_86

def loopBody420_88 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 78) ([7, 8]) (some (7, loopBody420_55, loopBody420_1, (Flapjack.Spt.ln)))

def loopBody420_89 : HolLoopProg 64 :=
.mark loopBody420_88

def loopBody420_90 : HolLoopProg 64 :=
.seq loopBody420_89 loopBody420_1

def loopBody420_91 : HolLoopProg 64 :=
.mark loopBody420_90

def loopBody420_92 : HolLoopProg 64 :=
.seq loopBody420_87 loopBody420_91

def loopBody420_93 : HolLoopProg 64 :=
.mark loopBody420_92

def loopBody420_94 : HolLoopProg 64 :=
.seq loopBody420_85 loopBody420_93

def loopBody420_95 : HolLoopProg 64 :=
.mark loopBody420_94

def loopBody420_96 : HolLoopProg 64 :=
.seq loopBody420_1 loopBody420_95

def loopBody420_97 : HolLoopProg 64 :=
.mark loopBody420_96

def loopBody420_98 : HolLoopProg 64 :=
.seq loopBody420_1 loopBody420_97

def loopBody420_99 : HolLoopProg 64 :=
.mark loopBody420_98

def loopBody420_100 : HolLoopProg 64 :=
.seq loopBody420_83 loopBody420_99

def loopBody420_101 : HolLoopProg 64 :=
.mark loopBody420_100

def loopBody420_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody420_103 : HolLoopProg 64 :=
.mark loopBody420_102

def loopBody420_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody420_105 : HolLoopProg 64 :=
.mark loopBody420_104

def loopBody420_106 : HolLoopProg 64 :=
.seq loopBody420_105 loopBody420_1

def loopBody420_107 : HolLoopProg 64 :=
.mark loopBody420_106

def loopBody420_108 : HolLoopProg 64 :=
.seq loopBody420_103 loopBody420_107

def loopBody420_109 : HolLoopProg 64 :=
.mark loopBody420_108

def loopBody420_110 : HolLoopProg 64 :=
.seq loopBody420_101 loopBody420_109

def loopBody420_111 : HolLoopProg 64 :=
.mark loopBody420_110

def loopBody420_112 : HolLoopProg 64 :=
.seq loopBody420_3 loopBody420_111

def loopBody420_113 : HolLoopProg 64 :=
.mark loopBody420_112

def loopBody420_114 : HolLoopProg 64 :=
.seq loopBody420_1 loopBody420_113

def loopBody420_115 : HolLoopProg 64 :=
.mark loopBody420_114

def output420 : Nat × List Nat × HolLoopProg 64 :=
  (484, [0, 1, 2, 3, 4], loopBody420_115)
end InitECandidate.Proofs.FrontendStages.Loop
