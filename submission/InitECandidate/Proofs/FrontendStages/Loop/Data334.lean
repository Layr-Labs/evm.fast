import InitECandidate.Proofs.FrontendStages.Loop.Translate318
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody334_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody334_1 : HolLoopProg 64 :=
.mark loopBody334_0

def loopBody334_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody334_3 : HolLoopProg 64 :=
.mark loopBody334_2

def loopBody334_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody334_5 : HolLoopProg 64 :=
.mark loopBody334_4

def loopBody334_6 : HolLoopProg 64 :=
.call (some ([1, 2, 3], Flapjack.Spt.ln)) (some 397) ([4]) (some (4, loopBody334_5, loopBody334_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody334_7 : HolLoopProg 64 :=
.mark loopBody334_6

def loopBody334_8 : HolLoopProg 64 :=
.seq loopBody334_7 loopBody334_1

def loopBody334_9 : HolLoopProg 64 :=
.mark loopBody334_8

def loopBody334_10 : HolLoopProg 64 :=
.seq loopBody334_3 loopBody334_9

def loopBody334_11 : HolLoopProg 64 :=
.mark loopBody334_10

def loopBody334_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody334_13 : HolLoopProg 64 :=
.mark loopBody334_12

def loopBody334_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody334_15 : HolLoopProg 64 :=
.mark loopBody334_14

def loopBody334_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody334_17 : HolLoopProg 64 :=
.mark loopBody334_16

def loopBody334_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody334_19 : HolLoopProg 64 :=
.mark loopBody334_18

def loopBody334_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody334_17 loopBody334_19 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody334_21 : HolLoopProg 64 :=
.mark loopBody334_20

def loopBody334_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody334_23 : HolLoopProg 64 :=
.mark loopBody334_22

def loopBody334_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody334_25 : HolLoopProg 64 :=
.mark loopBody334_24

def loopBody334_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody334_27 : HolLoopProg 64 :=
.mark loopBody334_26

def loopBody334_28 : HolLoopProg 64 :=
.seq loopBody334_27 loopBody334_1

def loopBody334_29 : HolLoopProg 64 :=
.mark loopBody334_28

def loopBody334_30 : HolLoopProg 64 :=
.seq loopBody334_25 loopBody334_29

def loopBody334_31 : HolLoopProg 64 :=
.mark loopBody334_30

def loopBody334_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody334_31 loopBody334_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody334_33 : HolLoopProg 64 :=
.mark loopBody334_32

def loopBody334_34 : HolLoopProg 64 :=
.seq loopBody334_33 loopBody334_1

def loopBody334_35 : HolLoopProg 64 :=
.mark loopBody334_34

def loopBody334_36 : HolLoopProg 64 :=
.seq loopBody334_23 loopBody334_35

def loopBody334_37 : HolLoopProg 64 :=
.mark loopBody334_36

def loopBody334_38 : HolLoopProg 64 :=
.seq loopBody334_21 loopBody334_37

def loopBody334_39 : HolLoopProg 64 :=
.mark loopBody334_38

def loopBody334_40 : HolLoopProg 64 :=
.seq loopBody334_15 loopBody334_39

def loopBody334_41 : HolLoopProg 64 :=
.mark loopBody334_40

def loopBody334_42 : HolLoopProg 64 :=
.seq loopBody334_13 loopBody334_41

def loopBody334_43 : HolLoopProg 64 :=
.mark loopBody334_42

def loopBody334_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 56#64)

def loopBody334_45 : HolLoopProg 64 :=
.mark loopBody334_44

def loopBody334_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody334_47 : HolLoopProg 64 :=
.mark loopBody334_46

def loopBody334_48 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody334_47, loopBody334_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody334_49 : HolLoopProg 64 :=
.mark loopBody334_48

def loopBody334_50 : HolLoopProg 64 :=
.seq loopBody334_49 loopBody334_1

def loopBody334_51 : HolLoopProg 64 :=
.mark loopBody334_50

def loopBody334_52 : HolLoopProg 64 :=
.seq loopBody334_45 loopBody334_51

def loopBody334_53 : HolLoopProg 64 :=
.mark loopBody334_52

def loopBody334_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody334_55 : HolLoopProg 64 :=
.mark loopBody334_54

def loopBody334_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody334_57 : HolLoopProg 64 :=
.mark loopBody334_56

def loopBody334_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody334_59 : HolLoopProg 64 :=
.mark loopBody334_58

def loopBody334_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody334_61 : HolLoopProg 64 :=
.mark loopBody334_60

def loopBody334_62 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 333) ([6, 7, 8]) (some (6, loopBody334_61, loopBody334_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody334_63 : HolLoopProg 64 :=
.mark loopBody334_62

def loopBody334_64 : HolLoopProg 64 :=
.seq loopBody334_63 loopBody334_1

def loopBody334_65 : HolLoopProg 64 :=
.mark loopBody334_64

def loopBody334_66 : HolLoopProg 64 :=
.seq loopBody334_59 loopBody334_65

def loopBody334_67 : HolLoopProg 64 :=
.mark loopBody334_66

def loopBody334_68 : HolLoopProg 64 :=
.seq loopBody334_57 loopBody334_67

def loopBody334_69 : HolLoopProg 64 :=
.mark loopBody334_68

def loopBody334_70 : HolLoopProg 64 :=
.seq loopBody334_55 loopBody334_69

def loopBody334_71 : HolLoopProg 64 :=
.mark loopBody334_70

def loopBody334_72 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_71

def loopBody334_73 : HolLoopProg 64 :=
.mark loopBody334_72

def loopBody334_74 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_73

def loopBody334_75 : HolLoopProg 64 :=
.mark loopBody334_74

def loopBody334_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody334_77 : HolLoopProg 64 :=
.mark loopBody334_76

def loopBody334_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody334_79 : HolLoopProg 64 :=
.mark loopBody334_78

def loopBody334_80 : HolLoopProg 64 :=
.seq loopBody334_79 loopBody334_1

def loopBody334_81 : HolLoopProg 64 :=
.mark loopBody334_80

def loopBody334_82 : HolLoopProg 64 :=
.seq loopBody334_77 loopBody334_81

def loopBody334_83 : HolLoopProg 64 :=
.mark loopBody334_82

def loopBody334_84 : HolLoopProg 64 :=
.seq loopBody334_75 loopBody334_83

def loopBody334_85 : HolLoopProg 64 :=
.mark loopBody334_84

def loopBody334_86 : HolLoopProg 64 :=
.seq loopBody334_53 loopBody334_85

def loopBody334_87 : HolLoopProg 64 :=
.mark loopBody334_86

def loopBody334_88 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_87

def loopBody334_89 : HolLoopProg 64 :=
.mark loopBody334_88

def loopBody334_90 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_89

def loopBody334_91 : HolLoopProg 64 :=
.mark loopBody334_90

def loopBody334_92 : HolLoopProg 64 :=
.seq loopBody334_43 loopBody334_91

def loopBody334_93 : HolLoopProg 64 :=
.mark loopBody334_92

def loopBody334_94 : HolLoopProg 64 :=
.seq loopBody334_11 loopBody334_93

def loopBody334_95 : HolLoopProg 64 :=
.mark loopBody334_94

def loopBody334_96 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_95

def loopBody334_97 : HolLoopProg 64 :=
.mark loopBody334_96

def loopBody334_98 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_97

def loopBody334_99 : HolLoopProg 64 :=
.mark loopBody334_98

def loopBody334_100 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_99

def loopBody334_101 : HolLoopProg 64 :=
.mark loopBody334_100

def loopBody334_102 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_101

def loopBody334_103 : HolLoopProg 64 :=
.mark loopBody334_102

def loopBody334_104 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_103

def loopBody334_105 : HolLoopProg 64 :=
.mark loopBody334_104

def loopBody334_106 : HolLoopProg 64 :=
.seq loopBody334_1 loopBody334_105

def loopBody334_107 : HolLoopProg 64 :=
.mark loopBody334_106

def output334 : Nat × List Nat × HolLoopProg 64 :=
  (398, [0], loopBody334_107)
end InitECandidate.Proofs.FrontendStages.Loop
