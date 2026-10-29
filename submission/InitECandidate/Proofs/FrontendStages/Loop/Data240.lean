import InitECandidate.Proofs.FrontendStages.Loop.Translate224
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody240_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody240_1 : HolLoopProg 64 :=
.mark loopBody240_0

def loopBody240_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody240_3 : HolLoopProg 64 :=
.mark loopBody240_2

def loopBody240_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 75) ([]) (some (4, loopBody240_3, loopBody240_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody240_5 : HolLoopProg 64 :=
.mark loopBody240_4

def loopBody240_6 : HolLoopProg 64 :=
.seq loopBody240_5 loopBody240_1

def loopBody240_7 : HolLoopProg 64 :=
.mark loopBody240_6

def loopBody240_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody240_9 : HolLoopProg 64 :=
.mark loopBody240_8

def loopBody240_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody240_11 : HolLoopProg 64 :=
.mark loopBody240_10

def loopBody240_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody240_13 : HolLoopProg 64 :=
.mark loopBody240_12

def loopBody240_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody240_15 : HolLoopProg 64 :=
.mark loopBody240_14

def loopBody240_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody240_17 : HolLoopProg 64 :=
.mark loopBody240_16

def loopBody240_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody240_19 : HolLoopProg 64 :=
.mark loopBody240_18

def loopBody240_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody240_21 : HolLoopProg 64 :=
.mark loopBody240_20

def loopBody240_22 : HolLoopProg 64 :=
.seq loopBody240_21 loopBody240_1

def loopBody240_23 : HolLoopProg 64 :=
.mark loopBody240_22

def loopBody240_24 : HolLoopProg 64 :=
.seq loopBody240_23 loopBody240_1

def loopBody240_25 : HolLoopProg 64 :=
.mark loopBody240_24

def loopBody240_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody240_27 : HolLoopProg 64 :=
.mark loopBody240_26

def loopBody240_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody240_29 : HolLoopProg 64 :=
.mark loopBody240_28

def loopBody240_30 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 76) ([7]) (some (7, loopBody240_29, loopBody240_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody240_31 : HolLoopProg 64 :=
.mark loopBody240_30

def loopBody240_32 : HolLoopProg 64 :=
.seq loopBody240_31 loopBody240_1

def loopBody240_33 : HolLoopProg 64 :=
.mark loopBody240_32

def loopBody240_34 : HolLoopProg 64 :=
.seq loopBody240_27 loopBody240_33

def loopBody240_35 : HolLoopProg 64 :=
.mark loopBody240_34

def loopBody240_36 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_35

def loopBody240_37 : HolLoopProg 64 :=
.mark loopBody240_36

def loopBody240_38 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_37

def loopBody240_39 : HolLoopProg 64 :=
.mark loopBody240_38

def loopBody240_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody240_41 : HolLoopProg 64 :=
.mark loopBody240_40

def loopBody240_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody240_43 : HolLoopProg 64 :=
.mark loopBody240_42

def loopBody240_44 : HolLoopProg 64 :=
.seq loopBody240_43 loopBody240_1

def loopBody240_45 : HolLoopProg 64 :=
.mark loopBody240_44

def loopBody240_46 : HolLoopProg 64 :=
.seq loopBody240_45 loopBody240_1

def loopBody240_47 : HolLoopProg 64 :=
.mark loopBody240_46

def loopBody240_48 : HolLoopProg 64 :=
.seq loopBody240_41 loopBody240_47

def loopBody240_49 : HolLoopProg 64 :=
.mark loopBody240_48

def loopBody240_50 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_49

def loopBody240_51 : HolLoopProg 64 :=
.mark loopBody240_50

def loopBody240_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody240_53 : HolLoopProg 64 :=
.mark loopBody240_52

def loopBody240_54 : HolLoopProg 64 :=
.seq loopBody240_53 loopBody240_17

def loopBody240_55 : HolLoopProg 64 :=
.mark loopBody240_54

def loopBody240_56 : HolLoopProg 64 :=
.seq loopBody240_51 loopBody240_55

def loopBody240_57 : HolLoopProg 64 :=
.mark loopBody240_56

def loopBody240_58 : HolLoopProg 64 :=
.seq loopBody240_39 loopBody240_57

def loopBody240_59 : HolLoopProg 64 :=
.mark loopBody240_58

def loopBody240_60 : HolLoopProg 64 :=
.seq loopBody240_25 loopBody240_59

def loopBody240_61 : HolLoopProg 64 :=
.mark loopBody240_60

def loopBody240_62 : HolLoopProg 64 :=
.seq loopBody240_19 loopBody240_61

def loopBody240_63 : HolLoopProg 64 :=
.mark loopBody240_62

def loopBody240_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 1#64) loopBody240_17 loopBody240_63 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody240_65 : HolLoopProg 64 :=
.mark loopBody240_64

def loopBody240_66 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 303) ([6, 7, 8, 9]) (some (6, loopBody240_65, loopBody240_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody240_67 : HolLoopProg 64 :=
.mark loopBody240_66

def loopBody240_68 : HolLoopProg 64 :=
.seq loopBody240_67 loopBody240_1

def loopBody240_69 : HolLoopProg 64 :=
.mark loopBody240_68

def loopBody240_70 : HolLoopProg 64 :=
.seq loopBody240_15 loopBody240_69

def loopBody240_71 : HolLoopProg 64 :=
.mark loopBody240_70

def loopBody240_72 : HolLoopProg 64 :=
.seq loopBody240_13 loopBody240_71

def loopBody240_73 : HolLoopProg 64 :=
.mark loopBody240_72

def loopBody240_74 : HolLoopProg 64 :=
.seq loopBody240_11 loopBody240_73

def loopBody240_75 : HolLoopProg 64 :=
.mark loopBody240_74

def loopBody240_76 : HolLoopProg 64 :=
.seq loopBody240_9 loopBody240_75

def loopBody240_77 : HolLoopProg 64 :=
.mark loopBody240_76

def loopBody240_78 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 76) ([7]) (some (7, loopBody240_29, loopBody240_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody240_79 : HolLoopProg 64 :=
.mark loopBody240_78

def loopBody240_80 : HolLoopProg 64 :=
.seq loopBody240_79 loopBody240_1

def loopBody240_81 : HolLoopProg 64 :=
.mark loopBody240_80

def loopBody240_82 : HolLoopProg 64 :=
.seq loopBody240_27 loopBody240_81

def loopBody240_83 : HolLoopProg 64 :=
.mark loopBody240_82

def loopBody240_84 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_83

def loopBody240_85 : HolLoopProg 64 :=
.mark loopBody240_84

def loopBody240_86 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_85

def loopBody240_87 : HolLoopProg 64 :=
.mark loopBody240_86

def loopBody240_88 : HolLoopProg 64 :=
.seq loopBody240_77 loopBody240_87

def loopBody240_89 : HolLoopProg 64 :=
.mark loopBody240_88

def loopBody240_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody240_91 : HolLoopProg 64 :=
.mark loopBody240_90

def loopBody240_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody240_93 : HolLoopProg 64 :=
.mark loopBody240_92

def loopBody240_94 : HolLoopProg 64 :=
.seq loopBody240_93 loopBody240_1

def loopBody240_95 : HolLoopProg 64 :=
.mark loopBody240_94

def loopBody240_96 : HolLoopProg 64 :=
.seq loopBody240_91 loopBody240_95

def loopBody240_97 : HolLoopProg 64 :=
.mark loopBody240_96

def loopBody240_98 : HolLoopProg 64 :=
.seq loopBody240_89 loopBody240_97

def loopBody240_99 : HolLoopProg 64 :=
.mark loopBody240_98

def loopBody240_100 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_99

def loopBody240_101 : HolLoopProg 64 :=
.mark loopBody240_100

def loopBody240_102 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_101

def loopBody240_103 : HolLoopProg 64 :=
.mark loopBody240_102

def loopBody240_104 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_103

def loopBody240_105 : HolLoopProg 64 :=
.mark loopBody240_104

def loopBody240_106 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_105

def loopBody240_107 : HolLoopProg 64 :=
.mark loopBody240_106

def loopBody240_108 : HolLoopProg 64 :=
.seq loopBody240_7 loopBody240_107

def loopBody240_109 : HolLoopProg 64 :=
.mark loopBody240_108

def loopBody240_110 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_109

def loopBody240_111 : HolLoopProg 64 :=
.mark loopBody240_110

def loopBody240_112 : HolLoopProg 64 :=
.seq loopBody240_1 loopBody240_111

def loopBody240_113 : HolLoopProg 64 :=
.mark loopBody240_112

def output240 : Nat × List Nat × HolLoopProg 64 :=
  (304, [0, 1, 2], loopBody240_113)
end InitECandidate.Proofs.FrontendStages.Loop
