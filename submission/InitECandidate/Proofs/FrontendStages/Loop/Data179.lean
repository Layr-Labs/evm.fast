import InitECandidate.Proofs.FrontendStages.Loop.Translate163
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody179_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody179_1 : HolLoopProg 64 :=
.mark loopBody179_0

def loopBody179_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody179_3 : HolLoopProg 64 :=
.mark loopBody179_2

def loopBody179_4 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (5, loopBody179_3, loopBody179_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody179_5 : HolLoopProg 64 :=
.mark loopBody179_4

def loopBody179_6 : HolLoopProg 64 :=
.seq loopBody179_5 loopBody179_1

def loopBody179_7 : HolLoopProg 64 :=
.mark loopBody179_6

def loopBody179_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody179_9 : HolLoopProg 64 :=
.mark loopBody179_8

def loopBody179_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody179_11 : HolLoopProg 64 :=
.mark loopBody179_10

def loopBody179_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody179_13 : HolLoopProg 64 :=
.mark loopBody179_12

def loopBody179_14 : HolLoopProg 64 :=
.call (some
  ([5, 6],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 241) ([7, 8]) (some (7, loopBody179_13, loopBody179_1, (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody179_15 : HolLoopProg 64 :=
.mark loopBody179_14

def loopBody179_16 : HolLoopProg 64 :=
.seq loopBody179_15 loopBody179_1

def loopBody179_17 : HolLoopProg 64 :=
.mark loopBody179_16

def loopBody179_18 : HolLoopProg 64 :=
.seq loopBody179_11 loopBody179_17

def loopBody179_19 : HolLoopProg 64 :=
.mark loopBody179_18

def loopBody179_20 : HolLoopProg 64 :=
.seq loopBody179_9 loopBody179_19

def loopBody179_21 : HolLoopProg 64 :=
.mark loopBody179_20

def loopBody179_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody179_23 : HolLoopProg 64 :=
.mark loopBody179_22

def loopBody179_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody179_25 : HolLoopProg 64 :=
.mark loopBody179_24

def loopBody179_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody179_27 : HolLoopProg 64 :=
.mark loopBody179_26

def loopBody179_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 3)

def loopBody179_29 : HolLoopProg 64 :=
.mark loopBody179_28

def loopBody179_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody179_31 : HolLoopProg 64 :=
.mark loopBody179_30

def loopBody179_32 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 235) ([8, 9, 10, 11]) (some (8, loopBody179_31, loopBody179_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody179_33 : HolLoopProg 64 :=
.mark loopBody179_32

def loopBody179_34 : HolLoopProg 64 :=
.seq loopBody179_33 loopBody179_1

def loopBody179_35 : HolLoopProg 64 :=
.mark loopBody179_34

def loopBody179_36 : HolLoopProg 64 :=
.seq loopBody179_29 loopBody179_35

def loopBody179_37 : HolLoopProg 64 :=
.mark loopBody179_36

def loopBody179_38 : HolLoopProg 64 :=
.seq loopBody179_27 loopBody179_37

def loopBody179_39 : HolLoopProg 64 :=
.mark loopBody179_38

def loopBody179_40 : HolLoopProg 64 :=
.seq loopBody179_25 loopBody179_39

def loopBody179_41 : HolLoopProg 64 :=
.mark loopBody179_40

def loopBody179_42 : HolLoopProg 64 :=
.seq loopBody179_23 loopBody179_41

def loopBody179_43 : HolLoopProg 64 :=
.mark loopBody179_42

def loopBody179_44 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_43

def loopBody179_45 : HolLoopProg 64 :=
.mark loopBody179_44

def loopBody179_46 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_45

def loopBody179_47 : HolLoopProg 64 :=
.mark loopBody179_46

def loopBody179_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody179_49 : HolLoopProg 64 :=
.mark loopBody179_48

def loopBody179_50 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 70) ([8]) (some (8, loopBody179_31, loopBody179_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody179_51 : HolLoopProg 64 :=
.mark loopBody179_50

def loopBody179_52 : HolLoopProg 64 :=
.seq loopBody179_51 loopBody179_1

def loopBody179_53 : HolLoopProg 64 :=
.mark loopBody179_52

def loopBody179_54 : HolLoopProg 64 :=
.seq loopBody179_49 loopBody179_53

def loopBody179_55 : HolLoopProg 64 :=
.mark loopBody179_54

def loopBody179_56 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_55

def loopBody179_57 : HolLoopProg 64 :=
.mark loopBody179_56

def loopBody179_58 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_57

def loopBody179_59 : HolLoopProg 64 :=
.mark loopBody179_58

def loopBody179_60 : HolLoopProg 64 :=
.seq loopBody179_47 loopBody179_59

def loopBody179_61 : HolLoopProg 64 :=
.mark loopBody179_60

def loopBody179_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody179_63 : HolLoopProg 64 :=
.mark loopBody179_62

def loopBody179_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody179_65 : HolLoopProg 64 :=
.mark loopBody179_64

def loopBody179_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody179_67 : HolLoopProg 64 :=
.mark loopBody179_66

def loopBody179_68 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 236) ([8, 9, 10]) (some (8, loopBody179_31, loopBody179_1, (Flapjack.Spt.ln)))

def loopBody179_69 : HolLoopProg 64 :=
.mark loopBody179_68

def loopBody179_70 : HolLoopProg 64 :=
.seq loopBody179_69 loopBody179_1

def loopBody179_71 : HolLoopProg 64 :=
.mark loopBody179_70

def loopBody179_72 : HolLoopProg 64 :=
.seq loopBody179_67 loopBody179_71

def loopBody179_73 : HolLoopProg 64 :=
.mark loopBody179_72

def loopBody179_74 : HolLoopProg 64 :=
.seq loopBody179_65 loopBody179_73

def loopBody179_75 : HolLoopProg 64 :=
.mark loopBody179_74

def loopBody179_76 : HolLoopProg 64 :=
.seq loopBody179_63 loopBody179_75

def loopBody179_77 : HolLoopProg 64 :=
.mark loopBody179_76

def loopBody179_78 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_77

def loopBody179_79 : HolLoopProg 64 :=
.mark loopBody179_78

def loopBody179_80 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_79

def loopBody179_81 : HolLoopProg 64 :=
.mark loopBody179_80

def loopBody179_82 : HolLoopProg 64 :=
.seq loopBody179_61 loopBody179_81

def loopBody179_83 : HolLoopProg 64 :=
.mark loopBody179_82

def loopBody179_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody179_85 : HolLoopProg 64 :=
.mark loopBody179_84

def loopBody179_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody179_87 : HolLoopProg 64 :=
.mark loopBody179_86

def loopBody179_88 : HolLoopProg 64 :=
.seq loopBody179_87 loopBody179_1

def loopBody179_89 : HolLoopProg 64 :=
.mark loopBody179_88

def loopBody179_90 : HolLoopProg 64 :=
.seq loopBody179_85 loopBody179_89

def loopBody179_91 : HolLoopProg 64 :=
.mark loopBody179_90

def loopBody179_92 : HolLoopProg 64 :=
.seq loopBody179_83 loopBody179_91

def loopBody179_93 : HolLoopProg 64 :=
.mark loopBody179_92

def loopBody179_94 : HolLoopProg 64 :=
.seq loopBody179_21 loopBody179_93

def loopBody179_95 : HolLoopProg 64 :=
.mark loopBody179_94

def loopBody179_96 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_95

def loopBody179_97 : HolLoopProg 64 :=
.mark loopBody179_96

def loopBody179_98 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_97

def loopBody179_99 : HolLoopProg 64 :=
.mark loopBody179_98

def loopBody179_100 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_99

def loopBody179_101 : HolLoopProg 64 :=
.mark loopBody179_100

def loopBody179_102 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_101

def loopBody179_103 : HolLoopProg 64 :=
.mark loopBody179_102

def loopBody179_104 : HolLoopProg 64 :=
.seq loopBody179_7 loopBody179_103

def loopBody179_105 : HolLoopProg 64 :=
.mark loopBody179_104

def loopBody179_106 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_105

def loopBody179_107 : HolLoopProg 64 :=
.mark loopBody179_106

def loopBody179_108 : HolLoopProg 64 :=
.seq loopBody179_1 loopBody179_107

def loopBody179_109 : HolLoopProg 64 :=
.mark loopBody179_108

def output179 : Nat × List Nat × HolLoopProg 64 :=
  (243, [0, 1, 2, 3], loopBody179_109)
end InitECandidate.Proofs.FrontendStages.Loop
