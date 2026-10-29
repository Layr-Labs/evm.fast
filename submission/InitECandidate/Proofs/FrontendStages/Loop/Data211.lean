import InitECandidate.Proofs.FrontendStages.Loop.Translate195
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody211_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody211_1 : HolLoopProg 64 :=
.mark loopBody211_0

def loopBody211_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody211_3 : HolLoopProg 64 :=
.mark loopBody211_2

def loopBody211_4 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (6, loopBody211_3, loopBody211_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody211_5 : HolLoopProg 64 :=
.mark loopBody211_4

def loopBody211_6 : HolLoopProg 64 :=
.seq loopBody211_5 loopBody211_1

def loopBody211_7 : HolLoopProg 64 :=
.mark loopBody211_6

def loopBody211_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody211_9 : HolLoopProg 64 :=
.mark loopBody211_8

def loopBody211_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody211_11 : HolLoopProg 64 :=
.mark loopBody211_10

def loopBody211_12 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([7]) (some (7, loopBody211_11, loopBody211_1, (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody211_13 : HolLoopProg 64 :=
.mark loopBody211_12

def loopBody211_14 : HolLoopProg 64 :=
.seq loopBody211_13 loopBody211_1

def loopBody211_15 : HolLoopProg 64 :=
.mark loopBody211_14

def loopBody211_16 : HolLoopProg 64 :=
.seq loopBody211_9 loopBody211_15

def loopBody211_17 : HolLoopProg 64 :=
.mark loopBody211_16

def loopBody211_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody211_19 : HolLoopProg 64 :=
.mark loopBody211_18

def loopBody211_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody211_21 : HolLoopProg 64 :=
.mark loopBody211_20

def loopBody211_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody211_23 : HolLoopProg 64 :=
.mark loopBody211_22

def loopBody211_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 4)

def loopBody211_25 : HolLoopProg 64 :=
.mark loopBody211_24

def loopBody211_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 6)

def loopBody211_27 : HolLoopProg 64 :=
.mark loopBody211_26

def loopBody211_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody211_29 : HolLoopProg 64 :=
.mark loopBody211_28

def loopBody211_30 : HolLoopProg 64 :=
.call (some
  ([7],
    Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 148) ([8, 9, 10, 11, 12]) (some (8, loopBody211_29, loopBody211_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody211_31 : HolLoopProg 64 :=
.mark loopBody211_30

def loopBody211_32 : HolLoopProg 64 :=
.seq loopBody211_31 loopBody211_1

def loopBody211_33 : HolLoopProg 64 :=
.mark loopBody211_32

def loopBody211_34 : HolLoopProg 64 :=
.seq loopBody211_27 loopBody211_33

def loopBody211_35 : HolLoopProg 64 :=
.mark loopBody211_34

def loopBody211_36 : HolLoopProg 64 :=
.seq loopBody211_25 loopBody211_35

def loopBody211_37 : HolLoopProg 64 :=
.mark loopBody211_36

def loopBody211_38 : HolLoopProg 64 :=
.seq loopBody211_23 loopBody211_37

def loopBody211_39 : HolLoopProg 64 :=
.mark loopBody211_38

def loopBody211_40 : HolLoopProg 64 :=
.seq loopBody211_21 loopBody211_39

def loopBody211_41 : HolLoopProg 64 :=
.mark loopBody211_40

def loopBody211_42 : HolLoopProg 64 :=
.seq loopBody211_19 loopBody211_41

def loopBody211_43 : HolLoopProg 64 :=
.mark loopBody211_42

def loopBody211_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody211_45 : HolLoopProg 64 :=
.mark loopBody211_44

def loopBody211_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody211_47 : HolLoopProg 64 :=
.mark loopBody211_46

def loopBody211_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody211_49 : HolLoopProg 64 :=
.mark loopBody211_48

def loopBody211_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody211_51 : HolLoopProg 64 :=
.mark loopBody211_50

def loopBody211_52 : HolLoopProg 64 :=
.call (some ([8], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))) (some 176) ([9, 10, 11]) (some (9, loopBody211_51, loopBody211_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody211_53 : HolLoopProg 64 :=
.mark loopBody211_52

def loopBody211_54 : HolLoopProg 64 :=
.seq loopBody211_53 loopBody211_1

def loopBody211_55 : HolLoopProg 64 :=
.mark loopBody211_54

def loopBody211_56 : HolLoopProg 64 :=
.seq loopBody211_49 loopBody211_55

def loopBody211_57 : HolLoopProg 64 :=
.mark loopBody211_56

def loopBody211_58 : HolLoopProg 64 :=
.seq loopBody211_47 loopBody211_57

def loopBody211_59 : HolLoopProg 64 :=
.mark loopBody211_58

def loopBody211_60 : HolLoopProg 64 :=
.seq loopBody211_45 loopBody211_59

def loopBody211_61 : HolLoopProg 64 :=
.mark loopBody211_60

def loopBody211_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody211_63 : HolLoopProg 64 :=
.mark loopBody211_62

def loopBody211_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody211_65 : HolLoopProg 64 :=
.mark loopBody211_64

def loopBody211_66 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      Flapjack.Spt.ln)) (some 70) ([10]) (some (10, loopBody211_65, loopBody211_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  Flapjack.Spt.ln)))

def loopBody211_67 : HolLoopProg 64 :=
.mark loopBody211_66

def loopBody211_68 : HolLoopProg 64 :=
.seq loopBody211_67 loopBody211_1

def loopBody211_69 : HolLoopProg 64 :=
.mark loopBody211_68

def loopBody211_70 : HolLoopProg 64 :=
.seq loopBody211_63 loopBody211_69

def loopBody211_71 : HolLoopProg 64 :=
.mark loopBody211_70

def loopBody211_72 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_71

def loopBody211_73 : HolLoopProg 64 :=
.mark loopBody211_72

def loopBody211_74 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_73

def loopBody211_75 : HolLoopProg 64 :=
.mark loopBody211_74

def loopBody211_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody211_77 : HolLoopProg 64 :=
.mark loopBody211_76

def loopBody211_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9]

def loopBody211_79 : HolLoopProg 64 :=
.mark loopBody211_78

def loopBody211_80 : HolLoopProg 64 :=
.seq loopBody211_79 loopBody211_1

def loopBody211_81 : HolLoopProg 64 :=
.mark loopBody211_80

def loopBody211_82 : HolLoopProg 64 :=
.seq loopBody211_77 loopBody211_81

def loopBody211_83 : HolLoopProg 64 :=
.mark loopBody211_82

def loopBody211_84 : HolLoopProg 64 :=
.seq loopBody211_75 loopBody211_83

def loopBody211_85 : HolLoopProg 64 :=
.mark loopBody211_84

def loopBody211_86 : HolLoopProg 64 :=
.seq loopBody211_61 loopBody211_85

def loopBody211_87 : HolLoopProg 64 :=
.mark loopBody211_86

def loopBody211_88 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_87

def loopBody211_89 : HolLoopProg 64 :=
.mark loopBody211_88

def loopBody211_90 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_89

def loopBody211_91 : HolLoopProg 64 :=
.mark loopBody211_90

def loopBody211_92 : HolLoopProg 64 :=
.seq loopBody211_43 loopBody211_91

def loopBody211_93 : HolLoopProg 64 :=
.mark loopBody211_92

def loopBody211_94 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_93

def loopBody211_95 : HolLoopProg 64 :=
.mark loopBody211_94

def loopBody211_96 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_95

def loopBody211_97 : HolLoopProg 64 :=
.mark loopBody211_96

def loopBody211_98 : HolLoopProg 64 :=
.seq loopBody211_17 loopBody211_97

def loopBody211_99 : HolLoopProg 64 :=
.mark loopBody211_98

def loopBody211_100 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_99

def loopBody211_101 : HolLoopProg 64 :=
.mark loopBody211_100

def loopBody211_102 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_101

def loopBody211_103 : HolLoopProg 64 :=
.mark loopBody211_102

def loopBody211_104 : HolLoopProg 64 :=
.seq loopBody211_7 loopBody211_103

def loopBody211_105 : HolLoopProg 64 :=
.mark loopBody211_104

def loopBody211_106 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_105

def loopBody211_107 : HolLoopProg 64 :=
.mark loopBody211_106

def loopBody211_108 : HolLoopProg 64 :=
.seq loopBody211_1 loopBody211_107

def loopBody211_109 : HolLoopProg 64 :=
.mark loopBody211_108

def output211 : Nat × List Nat × HolLoopProg 64 :=
  (275, [0, 1, 2, 3, 4], loopBody211_109)
end InitECandidate.Proofs.FrontendStages.Loop
