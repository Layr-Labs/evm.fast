import InitECandidate.Proofs.FrontendStages.Loop.Translate277
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody293_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody293_1 : HolLoopProg 64 :=
.mark loopBody293_0

def loopBody293_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody293_3 : HolLoopProg 64 :=
.mark loopBody293_2

def loopBody293_4 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (6, loopBody293_3, loopBody293_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody293_5 : HolLoopProg 64 :=
.mark loopBody293_4

def loopBody293_6 : HolLoopProg 64 :=
.seq loopBody293_5 loopBody293_1

def loopBody293_7 : HolLoopProg 64 :=
.mark loopBody293_6

def loopBody293_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody293_9 : HolLoopProg 64 :=
.mark loopBody293_8

def loopBody293_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody293_11 : HolLoopProg 64 :=
.mark loopBody293_10

def loopBody293_12 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([7]) (some (7, loopBody293_11, loopBody293_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody293_13 : HolLoopProg 64 :=
.mark loopBody293_12

def loopBody293_14 : HolLoopProg 64 :=
.seq loopBody293_13 loopBody293_1

def loopBody293_15 : HolLoopProg 64 :=
.mark loopBody293_14

def loopBody293_16 : HolLoopProg 64 :=
.seq loopBody293_9 loopBody293_15

def loopBody293_17 : HolLoopProg 64 :=
.mark loopBody293_16

def loopBody293_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody293_19 : HolLoopProg 64 :=
.mark loopBody293_18

def loopBody293_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody293_21 : HolLoopProg 64 :=
.mark loopBody293_20

def loopBody293_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody293_23 : HolLoopProg 64 :=
.mark loopBody293_22

def loopBody293_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody293_25 : HolLoopProg 64 :=
.mark loopBody293_24

def loopBody293_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody293_27 : HolLoopProg 64 :=
.mark loopBody293_26

def loopBody293_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody293_29 : HolLoopProg 64 :=
.mark loopBody293_28

def loopBody293_30 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 148) ([8, 9, 10, 11, 12]) (some (8, loopBody293_29, loopBody293_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody293_31 : HolLoopProg 64 :=
.mark loopBody293_30

def loopBody293_32 : HolLoopProg 64 :=
.seq loopBody293_31 loopBody293_1

def loopBody293_33 : HolLoopProg 64 :=
.mark loopBody293_32

def loopBody293_34 : HolLoopProg 64 :=
.seq loopBody293_27 loopBody293_33

def loopBody293_35 : HolLoopProg 64 :=
.mark loopBody293_34

def loopBody293_36 : HolLoopProg 64 :=
.seq loopBody293_25 loopBody293_35

def loopBody293_37 : HolLoopProg 64 :=
.mark loopBody293_36

def loopBody293_38 : HolLoopProg 64 :=
.seq loopBody293_23 loopBody293_37

def loopBody293_39 : HolLoopProg 64 :=
.mark loopBody293_38

def loopBody293_40 : HolLoopProg 64 :=
.seq loopBody293_21 loopBody293_39

def loopBody293_41 : HolLoopProg 64 :=
.mark loopBody293_40

def loopBody293_42 : HolLoopProg 64 :=
.seq loopBody293_19 loopBody293_41

def loopBody293_43 : HolLoopProg 64 :=
.mark loopBody293_42

def loopBody293_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody293_45 : HolLoopProg 64 :=
.mark loopBody293_44

def loopBody293_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody293_47 : HolLoopProg 64 :=
.mark loopBody293_46

def loopBody293_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody293_49 : HolLoopProg 64 :=
.mark loopBody293_48

def loopBody293_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody293_51 : HolLoopProg 64 :=
.mark loopBody293_50

def loopBody293_52 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 176) ([9, 10, 11]) (some (9, loopBody293_51, loopBody293_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody293_53 : HolLoopProg 64 :=
.mark loopBody293_52

def loopBody293_54 : HolLoopProg 64 :=
.seq loopBody293_53 loopBody293_1

def loopBody293_55 : HolLoopProg 64 :=
.mark loopBody293_54

def loopBody293_56 : HolLoopProg 64 :=
.seq loopBody293_49 loopBody293_55

def loopBody293_57 : HolLoopProg 64 :=
.mark loopBody293_56

def loopBody293_58 : HolLoopProg 64 :=
.seq loopBody293_47 loopBody293_57

def loopBody293_59 : HolLoopProg 64 :=
.mark loopBody293_58

def loopBody293_60 : HolLoopProg 64 :=
.seq loopBody293_45 loopBody293_59

def loopBody293_61 : HolLoopProg 64 :=
.mark loopBody293_60

def loopBody293_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody293_63 : HolLoopProg 64 :=
.mark loopBody293_62

def loopBody293_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody293_65 : HolLoopProg 64 :=
.mark loopBody293_64

def loopBody293_66 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)) (some 70) ([10]) (some (10, loopBody293_65, loopBody293_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)))

def loopBody293_67 : HolLoopProg 64 :=
.mark loopBody293_66

def loopBody293_68 : HolLoopProg 64 :=
.seq loopBody293_67 loopBody293_1

def loopBody293_69 : HolLoopProg 64 :=
.mark loopBody293_68

def loopBody293_70 : HolLoopProg 64 :=
.seq loopBody293_63 loopBody293_69

def loopBody293_71 : HolLoopProg 64 :=
.mark loopBody293_70

def loopBody293_72 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_71

def loopBody293_73 : HolLoopProg 64 :=
.mark loopBody293_72

def loopBody293_74 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_73

def loopBody293_75 : HolLoopProg 64 :=
.mark loopBody293_74

def loopBody293_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody293_77 : HolLoopProg 64 :=
.mark loopBody293_76

def loopBody293_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody293_79 : HolLoopProg 64 :=
.mark loopBody293_78

def loopBody293_80 : HolLoopProg 64 :=
.seq loopBody293_79 loopBody293_1

def loopBody293_81 : HolLoopProg 64 :=
.mark loopBody293_80

def loopBody293_82 : HolLoopProg 64 :=
.seq loopBody293_77 loopBody293_81

def loopBody293_83 : HolLoopProg 64 :=
.mark loopBody293_82

def loopBody293_84 : HolLoopProg 64 :=
.seq loopBody293_75 loopBody293_83

def loopBody293_85 : HolLoopProg 64 :=
.mark loopBody293_84

def loopBody293_86 : HolLoopProg 64 :=
.seq loopBody293_61 loopBody293_85

def loopBody293_87 : HolLoopProg 64 :=
.mark loopBody293_86

def loopBody293_88 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_87

def loopBody293_89 : HolLoopProg 64 :=
.mark loopBody293_88

def loopBody293_90 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_89

def loopBody293_91 : HolLoopProg 64 :=
.mark loopBody293_90

def loopBody293_92 : HolLoopProg 64 :=
.seq loopBody293_43 loopBody293_91

def loopBody293_93 : HolLoopProg 64 :=
.mark loopBody293_92

def loopBody293_94 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_93

def loopBody293_95 : HolLoopProg 64 :=
.mark loopBody293_94

def loopBody293_96 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_95

def loopBody293_97 : HolLoopProg 64 :=
.mark loopBody293_96

def loopBody293_98 : HolLoopProg 64 :=
.seq loopBody293_17 loopBody293_97

def loopBody293_99 : HolLoopProg 64 :=
.mark loopBody293_98

def loopBody293_100 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_99

def loopBody293_101 : HolLoopProg 64 :=
.mark loopBody293_100

def loopBody293_102 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_101

def loopBody293_103 : HolLoopProg 64 :=
.mark loopBody293_102

def loopBody293_104 : HolLoopProg 64 :=
.seq loopBody293_7 loopBody293_103

def loopBody293_105 : HolLoopProg 64 :=
.mark loopBody293_104

def loopBody293_106 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_105

def loopBody293_107 : HolLoopProg 64 :=
.mark loopBody293_106

def loopBody293_108 : HolLoopProg 64 :=
.seq loopBody293_1 loopBody293_107

def loopBody293_109 : HolLoopProg 64 :=
.mark loopBody293_108

def output293 : Nat × List Nat × HolLoopProg 64 :=
  (357, [0, 1, 2, 3, 4], loopBody293_109)
end InitECandidate.Proofs.FrontendStages.Loop
