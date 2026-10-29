import InitECandidate.Proofs.FrontendStages.Loop.Translate172
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody188_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody188_1 : HolLoopProg 64 :=
.mark loopBody188_0

def loopBody188_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody188_3 : HolLoopProg 64 :=
.mark loopBody188_2

def loopBody188_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody188_5 : HolLoopProg 64 :=
.mark loopBody188_4

def loopBody188_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody188_7 : HolLoopProg 64 :=
.mark loopBody188_6

def loopBody188_8 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 94) ([5, 6]) (some (5, loopBody188_7, loopBody188_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody188_9 : HolLoopProg 64 :=
.mark loopBody188_8

def loopBody188_10 : HolLoopProg 64 :=
.seq loopBody188_9 loopBody188_1

def loopBody188_11 : HolLoopProg 64 :=
.mark loopBody188_10

def loopBody188_12 : HolLoopProg 64 :=
.seq loopBody188_5 loopBody188_11

def loopBody188_13 : HolLoopProg 64 :=
.mark loopBody188_12

def loopBody188_14 : HolLoopProg 64 :=
.seq loopBody188_3 loopBody188_13

def loopBody188_15 : HolLoopProg 64 :=
.mark loopBody188_14

def loopBody188_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody188_17 : HolLoopProg 64 :=
.mark loopBody188_16

def loopBody188_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody188_19 : HolLoopProg 64 :=
.mark loopBody188_18

def loopBody188_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody188_21 : HolLoopProg 64 :=
.mark loopBody188_20

def loopBody188_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody188_23 : HolLoopProg 64 :=
.mark loopBody188_22

def loopBody188_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody188_21 loopBody188_23 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody188_25 : HolLoopProg 64 :=
.mark loopBody188_24

def loopBody188_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody188_27 : HolLoopProg 64 :=
.mark loopBody188_26

def loopBody188_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 30#64)

def loopBody188_29 : HolLoopProg 64 :=
.mark loopBody188_28

def loopBody188_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody188_31 : HolLoopProg 64 :=
.mark loopBody188_30

def loopBody188_32 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 245) ([6]) (some (6, loopBody188_31, loopBody188_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody188_33 : HolLoopProg 64 :=
.mark loopBody188_32

def loopBody188_34 : HolLoopProg 64 :=
.seq loopBody188_33 loopBody188_1

def loopBody188_35 : HolLoopProg 64 :=
.mark loopBody188_34

def loopBody188_36 : HolLoopProg 64 :=
.seq loopBody188_29 loopBody188_35

def loopBody188_37 : HolLoopProg 64 :=
.mark loopBody188_36

def loopBody188_38 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_37

def loopBody188_39 : HolLoopProg 64 :=
.mark loopBody188_38

def loopBody188_40 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_39

def loopBody188_41 : HolLoopProg 64 :=
.mark loopBody188_40

def loopBody188_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody188_41 loopBody188_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody188_43 : HolLoopProg 64 :=
.mark loopBody188_42

def loopBody188_44 : HolLoopProg 64 :=
.seq loopBody188_43 loopBody188_1

def loopBody188_45 : HolLoopProg 64 :=
.mark loopBody188_44

def loopBody188_46 : HolLoopProg 64 :=
.seq loopBody188_27 loopBody188_45

def loopBody188_47 : HolLoopProg 64 :=
.mark loopBody188_46

def loopBody188_48 : HolLoopProg 64 :=
.seq loopBody188_25 loopBody188_47

def loopBody188_49 : HolLoopProg 64 :=
.mark loopBody188_48

def loopBody188_50 : HolLoopProg 64 :=
.seq loopBody188_19 loopBody188_49

def loopBody188_51 : HolLoopProg 64 :=
.mark loopBody188_50

def loopBody188_52 : HolLoopProg 64 :=
.seq loopBody188_17 loopBody188_51

def loopBody188_53 : HolLoopProg 64 :=
.mark loopBody188_52

def loopBody188_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody188_55 : HolLoopProg 64 :=
.mark loopBody188_54

def loopBody188_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody188_57 : HolLoopProg 64 :=
.mark loopBody188_56

def loopBody188_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody188_21 loopBody188_23 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody188_59 : HolLoopProg 64 :=
.mark loopBody188_58

def loopBody188_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 31#64)

def loopBody188_61 : HolLoopProg 64 :=
.mark loopBody188_60

def loopBody188_62 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 245) ([6]) (some (6, loopBody188_31, loopBody188_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody188_63 : HolLoopProg 64 :=
.mark loopBody188_62

def loopBody188_64 : HolLoopProg 64 :=
.seq loopBody188_63 loopBody188_1

def loopBody188_65 : HolLoopProg 64 :=
.mark loopBody188_64

def loopBody188_66 : HolLoopProg 64 :=
.seq loopBody188_61 loopBody188_65

def loopBody188_67 : HolLoopProg 64 :=
.mark loopBody188_66

def loopBody188_68 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_67

def loopBody188_69 : HolLoopProg 64 :=
.mark loopBody188_68

def loopBody188_70 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_69

def loopBody188_71 : HolLoopProg 64 :=
.mark loopBody188_70

def loopBody188_72 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody188_71 loopBody188_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody188_73 : HolLoopProg 64 :=
.mark loopBody188_72

def loopBody188_74 : HolLoopProg 64 :=
.seq loopBody188_73 loopBody188_1

def loopBody188_75 : HolLoopProg 64 :=
.mark loopBody188_74

def loopBody188_76 : HolLoopProg 64 :=
.seq loopBody188_27 loopBody188_75

def loopBody188_77 : HolLoopProg 64 :=
.mark loopBody188_76

def loopBody188_78 : HolLoopProg 64 :=
.seq loopBody188_59 loopBody188_77

def loopBody188_79 : HolLoopProg 64 :=
.mark loopBody188_78

def loopBody188_80 : HolLoopProg 64 :=
.seq loopBody188_57 loopBody188_79

def loopBody188_81 : HolLoopProg 64 :=
.mark loopBody188_80

def loopBody188_82 : HolLoopProg 64 :=
.seq loopBody188_55 loopBody188_81

def loopBody188_83 : HolLoopProg 64 :=
.mark loopBody188_82

def loopBody188_84 : HolLoopProg 64 :=
.seq loopBody188_53 loopBody188_83

def loopBody188_85 : HolLoopProg 64 :=
.mark loopBody188_84

def loopBody188_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody188_87 : HolLoopProg 64 :=
.mark loopBody188_86

def loopBody188_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody188_89 : HolLoopProg 64 :=
.mark loopBody188_88

def loopBody188_90 : HolLoopProg 64 :=
.seq loopBody188_89 loopBody188_1

def loopBody188_91 : HolLoopProg 64 :=
.mark loopBody188_90

def loopBody188_92 : HolLoopProg 64 :=
.seq loopBody188_87 loopBody188_91

def loopBody188_93 : HolLoopProg 64 :=
.mark loopBody188_92

def loopBody188_94 : HolLoopProg 64 :=
.seq loopBody188_85 loopBody188_93

def loopBody188_95 : HolLoopProg 64 :=
.mark loopBody188_94

def loopBody188_96 : HolLoopProg 64 :=
.seq loopBody188_15 loopBody188_95

def loopBody188_97 : HolLoopProg 64 :=
.mark loopBody188_96

def loopBody188_98 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_97

def loopBody188_99 : HolLoopProg 64 :=
.mark loopBody188_98

def loopBody188_100 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_99

def loopBody188_101 : HolLoopProg 64 :=
.mark loopBody188_100

def loopBody188_102 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_101

def loopBody188_103 : HolLoopProg 64 :=
.mark loopBody188_102

def loopBody188_104 : HolLoopProg 64 :=
.seq loopBody188_1 loopBody188_103

def loopBody188_105 : HolLoopProg 64 :=
.mark loopBody188_104

def output188 : Nat × List Nat × HolLoopProg 64 :=
  (252, [0, 1, 2], loopBody188_105)
end InitECandidate.Proofs.FrontendStages.Loop
