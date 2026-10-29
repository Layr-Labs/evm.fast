import InitECandidate.Proofs.FrontendStages.Loop.Translate85
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody101_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody101_1 : HolLoopProg 64 :=
.mark loopBody101_0

def loopBody101_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody101_3 : HolLoopProg 64 :=
.mark loopBody101_2

def loopBody101_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 75) ([]) (some (3, loopBody101_3, loopBody101_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody101_5 : HolLoopProg 64 :=
.mark loopBody101_4

def loopBody101_6 : HolLoopProg 64 :=
.seq loopBody101_5 loopBody101_1

def loopBody101_7 : HolLoopProg 64 :=
.mark loopBody101_6

def loopBody101_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody101_9 : HolLoopProg 64 :=
.mark loopBody101_8

def loopBody101_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody101_11 : HolLoopProg 64 :=
.mark loopBody101_10

def loopBody101_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody101_13 : HolLoopProg 64 :=
.mark loopBody101_12

def loopBody101_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody101_15 : HolLoopProg 64 :=
.mark loopBody101_14

def loopBody101_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody101_17 : HolLoopProg 64 :=
.mark loopBody101_16

def loopBody101_18 : HolLoopProg 64 :=
.seq loopBody101_17 loopBody101_1

def loopBody101_19 : HolLoopProg 64 :=
.mark loopBody101_18

def loopBody101_20 : HolLoopProg 64 :=
.seq loopBody101_19 loopBody101_1

def loopBody101_21 : HolLoopProg 64 :=
.mark loopBody101_20

def loopBody101_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody101_23 : HolLoopProg 64 :=
.mark loopBody101_22

def loopBody101_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody101_25 : HolLoopProg 64 :=
.mark loopBody101_24

def loopBody101_26 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 76) ([6]) (some (6, loopBody101_25, loopBody101_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody101_27 : HolLoopProg 64 :=
.mark loopBody101_26

def loopBody101_28 : HolLoopProg 64 :=
.seq loopBody101_27 loopBody101_1

def loopBody101_29 : HolLoopProg 64 :=
.mark loopBody101_28

def loopBody101_30 : HolLoopProg 64 :=
.seq loopBody101_23 loopBody101_29

def loopBody101_31 : HolLoopProg 64 :=
.mark loopBody101_30

def loopBody101_32 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_31

def loopBody101_33 : HolLoopProg 64 :=
.mark loopBody101_32

def loopBody101_34 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_33

def loopBody101_35 : HolLoopProg 64 :=
.mark loopBody101_34

def loopBody101_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody101_37 : HolLoopProg 64 :=
.mark loopBody101_36

def loopBody101_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody101_39 : HolLoopProg 64 :=
.mark loopBody101_38

def loopBody101_40 : HolLoopProg 64 :=
.seq loopBody101_39 loopBody101_1

def loopBody101_41 : HolLoopProg 64 :=
.mark loopBody101_40

def loopBody101_42 : HolLoopProg 64 :=
.seq loopBody101_41 loopBody101_1

def loopBody101_43 : HolLoopProg 64 :=
.mark loopBody101_42

def loopBody101_44 : HolLoopProg 64 :=
.seq loopBody101_37 loopBody101_43

def loopBody101_45 : HolLoopProg 64 :=
.mark loopBody101_44

def loopBody101_46 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_45

def loopBody101_47 : HolLoopProg 64 :=
.mark loopBody101_46

def loopBody101_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody101_49 : HolLoopProg 64 :=
.mark loopBody101_48

def loopBody101_50 : HolLoopProg 64 :=
.seq loopBody101_49 loopBody101_13

def loopBody101_51 : HolLoopProg 64 :=
.mark loopBody101_50

def loopBody101_52 : HolLoopProg 64 :=
.seq loopBody101_47 loopBody101_51

def loopBody101_53 : HolLoopProg 64 :=
.mark loopBody101_52

def loopBody101_54 : HolLoopProg 64 :=
.seq loopBody101_35 loopBody101_53

def loopBody101_55 : HolLoopProg 64 :=
.mark loopBody101_54

def loopBody101_56 : HolLoopProg 64 :=
.seq loopBody101_21 loopBody101_55

def loopBody101_57 : HolLoopProg 64 :=
.mark loopBody101_56

def loopBody101_58 : HolLoopProg 64 :=
.seq loopBody101_15 loopBody101_57

def loopBody101_59 : HolLoopProg 64 :=
.mark loopBody101_58

def loopBody101_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 1#64) loopBody101_13 loopBody101_59 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody101_61 : HolLoopProg 64 :=
.mark loopBody101_60

def loopBody101_62 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 164) ([5, 6]) (some (5, loopBody101_61, loopBody101_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody101_63 : HolLoopProg 64 :=
.mark loopBody101_62

def loopBody101_64 : HolLoopProg 64 :=
.seq loopBody101_63 loopBody101_1

def loopBody101_65 : HolLoopProg 64 :=
.mark loopBody101_64

def loopBody101_66 : HolLoopProg 64 :=
.seq loopBody101_11 loopBody101_65

def loopBody101_67 : HolLoopProg 64 :=
.mark loopBody101_66

def loopBody101_68 : HolLoopProg 64 :=
.seq loopBody101_9 loopBody101_67

def loopBody101_69 : HolLoopProg 64 :=
.mark loopBody101_68

def loopBody101_70 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_69

def loopBody101_71 : HolLoopProg 64 :=
.mark loopBody101_70

def loopBody101_72 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_71

def loopBody101_73 : HolLoopProg 64 :=
.mark loopBody101_72

def loopBody101_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody101_75 : HolLoopProg 64 :=
.mark loopBody101_74

def loopBody101_76 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 76) ([5]) (some (5, loopBody101_13, loopBody101_1, (Flapjack.Spt.ln)))

def loopBody101_77 : HolLoopProg 64 :=
.mark loopBody101_76

def loopBody101_78 : HolLoopProg 64 :=
.seq loopBody101_77 loopBody101_1

def loopBody101_79 : HolLoopProg 64 :=
.mark loopBody101_78

def loopBody101_80 : HolLoopProg 64 :=
.seq loopBody101_75 loopBody101_79

def loopBody101_81 : HolLoopProg 64 :=
.mark loopBody101_80

def loopBody101_82 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_81

def loopBody101_83 : HolLoopProg 64 :=
.mark loopBody101_82

def loopBody101_84 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_83

def loopBody101_85 : HolLoopProg 64 :=
.mark loopBody101_84

def loopBody101_86 : HolLoopProg 64 :=
.seq loopBody101_73 loopBody101_85

def loopBody101_87 : HolLoopProg 64 :=
.mark loopBody101_86

def loopBody101_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody101_89 : HolLoopProg 64 :=
.mark loopBody101_88

def loopBody101_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody101_91 : HolLoopProg 64 :=
.mark loopBody101_90

def loopBody101_92 : HolLoopProg 64 :=
.seq loopBody101_91 loopBody101_1

def loopBody101_93 : HolLoopProg 64 :=
.mark loopBody101_92

def loopBody101_94 : HolLoopProg 64 :=
.seq loopBody101_89 loopBody101_93

def loopBody101_95 : HolLoopProg 64 :=
.mark loopBody101_94

def loopBody101_96 : HolLoopProg 64 :=
.seq loopBody101_87 loopBody101_95

def loopBody101_97 : HolLoopProg 64 :=
.mark loopBody101_96

def loopBody101_98 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_97

def loopBody101_99 : HolLoopProg 64 :=
.mark loopBody101_98

def loopBody101_100 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_99

def loopBody101_101 : HolLoopProg 64 :=
.mark loopBody101_100

def loopBody101_102 : HolLoopProg 64 :=
.seq loopBody101_7 loopBody101_101

def loopBody101_103 : HolLoopProg 64 :=
.mark loopBody101_102

def loopBody101_104 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_103

def loopBody101_105 : HolLoopProg 64 :=
.mark loopBody101_104

def loopBody101_106 : HolLoopProg 64 :=
.seq loopBody101_1 loopBody101_105

def loopBody101_107 : HolLoopProg 64 :=
.mark loopBody101_106

def output101 : Nat × List Nat × HolLoopProg 64 :=
  (165, [0, 1], loopBody101_107)
end InitECandidate.Proofs.FrontendStages.Loop
