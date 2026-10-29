import InitECandidate.Proofs.FrontendStages.Loop.Translate239
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody255_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody255_1 : HolLoopProg 64 :=
.mark loopBody255_0

def loopBody255_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody255_3 : HolLoopProg 64 :=
.mark loopBody255_2

def loopBody255_4 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 75) ([]) (some (5, loopBody255_3, loopBody255_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody255_5 : HolLoopProg 64 :=
.mark loopBody255_4

def loopBody255_6 : HolLoopProg 64 :=
.seq loopBody255_5 loopBody255_1

def loopBody255_7 : HolLoopProg 64 :=
.mark loopBody255_6

def loopBody255_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody255_9 : HolLoopProg 64 :=
.mark loopBody255_8

def loopBody255_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody255_11 : HolLoopProg 64 :=
.mark loopBody255_10

def loopBody255_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody255_13 : HolLoopProg 64 :=
.mark loopBody255_12

def loopBody255_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody255_15 : HolLoopProg 64 :=
.mark loopBody255_14

def loopBody255_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody255_17 : HolLoopProg 64 :=
.mark loopBody255_16

def loopBody255_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody255_19 : HolLoopProg 64 :=
.mark loopBody255_18

def loopBody255_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody255_21 : HolLoopProg 64 :=
.mark loopBody255_20

def loopBody255_22 : HolLoopProg 64 :=
.seq loopBody255_21 loopBody255_1

def loopBody255_23 : HolLoopProg 64 :=
.mark loopBody255_22

def loopBody255_24 : HolLoopProg 64 :=
.seq loopBody255_23 loopBody255_1

def loopBody255_25 : HolLoopProg 64 :=
.mark loopBody255_24

def loopBody255_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody255_27 : HolLoopProg 64 :=
.mark loopBody255_26

def loopBody255_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody255_29 : HolLoopProg 64 :=
.mark loopBody255_28

def loopBody255_30 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 76) ([8]) (some (8, loopBody255_29, loopBody255_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody255_31 : HolLoopProg 64 :=
.mark loopBody255_30

def loopBody255_32 : HolLoopProg 64 :=
.seq loopBody255_31 loopBody255_1

def loopBody255_33 : HolLoopProg 64 :=
.mark loopBody255_32

def loopBody255_34 : HolLoopProg 64 :=
.seq loopBody255_27 loopBody255_33

def loopBody255_35 : HolLoopProg 64 :=
.mark loopBody255_34

def loopBody255_36 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_35

def loopBody255_37 : HolLoopProg 64 :=
.mark loopBody255_36

def loopBody255_38 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_37

def loopBody255_39 : HolLoopProg 64 :=
.mark loopBody255_38

def loopBody255_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody255_41 : HolLoopProg 64 :=
.mark loopBody255_40

def loopBody255_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 7)

def loopBody255_43 : HolLoopProg 64 :=
.mark loopBody255_42

def loopBody255_44 : HolLoopProg 64 :=
.seq loopBody255_43 loopBody255_1

def loopBody255_45 : HolLoopProg 64 :=
.mark loopBody255_44

def loopBody255_46 : HolLoopProg 64 :=
.seq loopBody255_45 loopBody255_1

def loopBody255_47 : HolLoopProg 64 :=
.mark loopBody255_46

def loopBody255_48 : HolLoopProg 64 :=
.seq loopBody255_41 loopBody255_47

def loopBody255_49 : HolLoopProg 64 :=
.mark loopBody255_48

def loopBody255_50 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_49

def loopBody255_51 : HolLoopProg 64 :=
.mark loopBody255_50

def loopBody255_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 5#64)

def loopBody255_53 : HolLoopProg 64 :=
.mark loopBody255_52

def loopBody255_54 : HolLoopProg 64 :=
.seq loopBody255_53 loopBody255_17

def loopBody255_55 : HolLoopProg 64 :=
.mark loopBody255_54

def loopBody255_56 : HolLoopProg 64 :=
.seq loopBody255_51 loopBody255_55

def loopBody255_57 : HolLoopProg 64 :=
.mark loopBody255_56

def loopBody255_58 : HolLoopProg 64 :=
.seq loopBody255_39 loopBody255_57

def loopBody255_59 : HolLoopProg 64 :=
.mark loopBody255_58

def loopBody255_60 : HolLoopProg 64 :=
.seq loopBody255_25 loopBody255_59

def loopBody255_61 : HolLoopProg 64 :=
.mark loopBody255_60

def loopBody255_62 : HolLoopProg 64 :=
.seq loopBody255_19 loopBody255_61

def loopBody255_63 : HolLoopProg 64 :=
.mark loopBody255_62

def loopBody255_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 5#64) loopBody255_17 loopBody255_63 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody255_65 : HolLoopProg 64 :=
.mark loopBody255_64

def loopBody255_66 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 318) ([7, 8, 9, 10]) (some (7, loopBody255_65, loopBody255_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody255_67 : HolLoopProg 64 :=
.mark loopBody255_66

def loopBody255_68 : HolLoopProg 64 :=
.seq loopBody255_67 loopBody255_1

def loopBody255_69 : HolLoopProg 64 :=
.mark loopBody255_68

def loopBody255_70 : HolLoopProg 64 :=
.seq loopBody255_15 loopBody255_69

def loopBody255_71 : HolLoopProg 64 :=
.mark loopBody255_70

def loopBody255_72 : HolLoopProg 64 :=
.seq loopBody255_13 loopBody255_71

def loopBody255_73 : HolLoopProg 64 :=
.mark loopBody255_72

def loopBody255_74 : HolLoopProg 64 :=
.seq loopBody255_11 loopBody255_73

def loopBody255_75 : HolLoopProg 64 :=
.mark loopBody255_74

def loopBody255_76 : HolLoopProg 64 :=
.seq loopBody255_9 loopBody255_75

def loopBody255_77 : HolLoopProg 64 :=
.mark loopBody255_76

def loopBody255_78 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)) (some 76) ([8]) (some (8, loopBody255_29, loopBody255_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))

def loopBody255_79 : HolLoopProg 64 :=
.mark loopBody255_78

def loopBody255_80 : HolLoopProg 64 :=
.seq loopBody255_79 loopBody255_1

def loopBody255_81 : HolLoopProg 64 :=
.mark loopBody255_80

def loopBody255_82 : HolLoopProg 64 :=
.seq loopBody255_27 loopBody255_81

def loopBody255_83 : HolLoopProg 64 :=
.mark loopBody255_82

def loopBody255_84 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_83

def loopBody255_85 : HolLoopProg 64 :=
.mark loopBody255_84

def loopBody255_86 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_85

def loopBody255_87 : HolLoopProg 64 :=
.mark loopBody255_86

def loopBody255_88 : HolLoopProg 64 :=
.seq loopBody255_77 loopBody255_87

def loopBody255_89 : HolLoopProg 64 :=
.mark loopBody255_88

def loopBody255_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody255_91 : HolLoopProg 64 :=
.mark loopBody255_90

def loopBody255_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody255_93 : HolLoopProg 64 :=
.mark loopBody255_92

def loopBody255_94 : HolLoopProg 64 :=
.seq loopBody255_93 loopBody255_1

def loopBody255_95 : HolLoopProg 64 :=
.mark loopBody255_94

def loopBody255_96 : HolLoopProg 64 :=
.seq loopBody255_91 loopBody255_95

def loopBody255_97 : HolLoopProg 64 :=
.mark loopBody255_96

def loopBody255_98 : HolLoopProg 64 :=
.seq loopBody255_89 loopBody255_97

def loopBody255_99 : HolLoopProg 64 :=
.mark loopBody255_98

def loopBody255_100 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_99

def loopBody255_101 : HolLoopProg 64 :=
.mark loopBody255_100

def loopBody255_102 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_101

def loopBody255_103 : HolLoopProg 64 :=
.mark loopBody255_102

def loopBody255_104 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_103

def loopBody255_105 : HolLoopProg 64 :=
.mark loopBody255_104

def loopBody255_106 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_105

def loopBody255_107 : HolLoopProg 64 :=
.mark loopBody255_106

def loopBody255_108 : HolLoopProg 64 :=
.seq loopBody255_7 loopBody255_107

def loopBody255_109 : HolLoopProg 64 :=
.mark loopBody255_108

def loopBody255_110 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_109

def loopBody255_111 : HolLoopProg 64 :=
.mark loopBody255_110

def loopBody255_112 : HolLoopProg 64 :=
.seq loopBody255_1 loopBody255_111

def loopBody255_113 : HolLoopProg 64 :=
.mark loopBody255_112

def output255 : Nat × List Nat × HolLoopProg 64 :=
  (319, [0, 1, 2, 3], loopBody255_113)
end InitECandidate.Proofs.FrontendStages.Loop
