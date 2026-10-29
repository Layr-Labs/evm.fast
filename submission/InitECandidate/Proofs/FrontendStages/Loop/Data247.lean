import InitECandidate.Proofs.FrontendStages.Loop.Translate231
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody247_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody247_1 : HolLoopProg 64 :=
.mark loopBody247_0

def loopBody247_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody247_3 : HolLoopProg 64 :=
.mark loopBody247_2

def loopBody247_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody247_3, loopBody247_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody247_5 : HolLoopProg 64 :=
.mark loopBody247_4

def loopBody247_6 : HolLoopProg 64 :=
.seq loopBody247_5 loopBody247_1

def loopBody247_7 : HolLoopProg 64 :=
.mark loopBody247_6

def loopBody247_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody247_9 : HolLoopProg 64 :=
.mark loopBody247_8

def loopBody247_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody247_11 : HolLoopProg 64 :=
.mark loopBody247_10

def loopBody247_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody247_13 : HolLoopProg 64 :=
.mark loopBody247_12

def loopBody247_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody247_15 : HolLoopProg 64 :=
.mark loopBody247_14

def loopBody247_16 : HolLoopProg 64 :=
.call (some ([4, 5], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 310) ([6, 7, 8]) (some (6, loopBody247_15, loopBody247_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody247_17 : HolLoopProg 64 :=
.mark loopBody247_16

def loopBody247_18 : HolLoopProg 64 :=
.seq loopBody247_17 loopBody247_1

def loopBody247_19 : HolLoopProg 64 :=
.mark loopBody247_18

def loopBody247_20 : HolLoopProg 64 :=
.seq loopBody247_13 loopBody247_19

def loopBody247_21 : HolLoopProg 64 :=
.mark loopBody247_20

def loopBody247_22 : HolLoopProg 64 :=
.seq loopBody247_11 loopBody247_21

def loopBody247_23 : HolLoopProg 64 :=
.mark loopBody247_22

def loopBody247_24 : HolLoopProg 64 :=
.seq loopBody247_9 loopBody247_23

def loopBody247_25 : HolLoopProg 64 :=
.mark loopBody247_24

def loopBody247_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody247_27 : HolLoopProg 64 :=
.mark loopBody247_26

def loopBody247_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody247_29 : HolLoopProg 64 :=
.mark loopBody247_28

def loopBody247_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody247_31 : HolLoopProg 64 :=
.mark loopBody247_30

def loopBody247_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody247_33 : HolLoopProg 64 :=
.mark loopBody247_32

def loopBody247_34 : HolLoopProg 64 :=
.call (some ([6, 7, 8], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 306) ([9, 10, 11]) (some (9, loopBody247_33, loopBody247_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))

def loopBody247_35 : HolLoopProg 64 :=
.mark loopBody247_34

def loopBody247_36 : HolLoopProg 64 :=
.seq loopBody247_35 loopBody247_1

def loopBody247_37 : HolLoopProg 64 :=
.mark loopBody247_36

def loopBody247_38 : HolLoopProg 64 :=
.seq loopBody247_31 loopBody247_37

def loopBody247_39 : HolLoopProg 64 :=
.mark loopBody247_38

def loopBody247_40 : HolLoopProg 64 :=
.seq loopBody247_29 loopBody247_39

def loopBody247_41 : HolLoopProg 64 :=
.mark loopBody247_40

def loopBody247_42 : HolLoopProg 64 :=
.seq loopBody247_27 loopBody247_41

def loopBody247_43 : HolLoopProg 64 :=
.mark loopBody247_42

def loopBody247_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody247_45 : HolLoopProg 64 :=
.mark loopBody247_44

def loopBody247_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 10

def loopBody247_47 : HolLoopProg 64 :=
.mark loopBody247_46

def loopBody247_48 : HolLoopProg 64 :=
.call (some
  ([9],
    Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))) (some 70) ([10]) (some (10, loopBody247_47, loopBody247_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody247_49 : HolLoopProg 64 :=
.mark loopBody247_48

def loopBody247_50 : HolLoopProg 64 :=
.seq loopBody247_49 loopBody247_1

def loopBody247_51 : HolLoopProg 64 :=
.mark loopBody247_50

def loopBody247_52 : HolLoopProg 64 :=
.seq loopBody247_45 loopBody247_51

def loopBody247_53 : HolLoopProg 64 :=
.mark loopBody247_52

def loopBody247_54 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_53

def loopBody247_55 : HolLoopProg 64 :=
.mark loopBody247_54

def loopBody247_56 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_55

def loopBody247_57 : HolLoopProg 64 :=
.mark loopBody247_56

def loopBody247_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody247_59 : HolLoopProg 64 :=
.mark loopBody247_58

def loopBody247_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody247_61 : HolLoopProg 64 :=
.mark loopBody247_60

def loopBody247_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody247_63 : HolLoopProg 64 :=
.mark loopBody247_62

def loopBody247_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9, 10, 11]

def loopBody247_65 : HolLoopProg 64 :=
.mark loopBody247_64

def loopBody247_66 : HolLoopProg 64 :=
.seq loopBody247_65 loopBody247_1

def loopBody247_67 : HolLoopProg 64 :=
.mark loopBody247_66

def loopBody247_68 : HolLoopProg 64 :=
.seq loopBody247_63 loopBody247_67

def loopBody247_69 : HolLoopProg 64 :=
.mark loopBody247_68

def loopBody247_70 : HolLoopProg 64 :=
.seq loopBody247_61 loopBody247_69

def loopBody247_71 : HolLoopProg 64 :=
.mark loopBody247_70

def loopBody247_72 : HolLoopProg 64 :=
.seq loopBody247_59 loopBody247_71

def loopBody247_73 : HolLoopProg 64 :=
.mark loopBody247_72

def loopBody247_74 : HolLoopProg 64 :=
.seq loopBody247_57 loopBody247_73

def loopBody247_75 : HolLoopProg 64 :=
.mark loopBody247_74

def loopBody247_76 : HolLoopProg 64 :=
.seq loopBody247_43 loopBody247_75

def loopBody247_77 : HolLoopProg 64 :=
.mark loopBody247_76

def loopBody247_78 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_77

def loopBody247_79 : HolLoopProg 64 :=
.mark loopBody247_78

def loopBody247_80 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_79

def loopBody247_81 : HolLoopProg 64 :=
.mark loopBody247_80

def loopBody247_82 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_81

def loopBody247_83 : HolLoopProg 64 :=
.mark loopBody247_82

def loopBody247_84 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_83

def loopBody247_85 : HolLoopProg 64 :=
.mark loopBody247_84

def loopBody247_86 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_85

def loopBody247_87 : HolLoopProg 64 :=
.mark loopBody247_86

def loopBody247_88 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_87

def loopBody247_89 : HolLoopProg 64 :=
.mark loopBody247_88

def loopBody247_90 : HolLoopProg 64 :=
.seq loopBody247_25 loopBody247_89

def loopBody247_91 : HolLoopProg 64 :=
.mark loopBody247_90

def loopBody247_92 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_91

def loopBody247_93 : HolLoopProg 64 :=
.mark loopBody247_92

def loopBody247_94 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_93

def loopBody247_95 : HolLoopProg 64 :=
.mark loopBody247_94

def loopBody247_96 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_95

def loopBody247_97 : HolLoopProg 64 :=
.mark loopBody247_96

def loopBody247_98 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_97

def loopBody247_99 : HolLoopProg 64 :=
.mark loopBody247_98

def loopBody247_100 : HolLoopProg 64 :=
.seq loopBody247_7 loopBody247_99

def loopBody247_101 : HolLoopProg 64 :=
.mark loopBody247_100

def loopBody247_102 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_101

def loopBody247_103 : HolLoopProg 64 :=
.mark loopBody247_102

def loopBody247_104 : HolLoopProg 64 :=
.seq loopBody247_1 loopBody247_103

def loopBody247_105 : HolLoopProg 64 :=
.mark loopBody247_104

def output247 : Nat × List Nat × HolLoopProg 64 :=
  (311, [0, 1, 2], loopBody247_105)
end InitECandidate.Proofs.FrontendStages.Loop
