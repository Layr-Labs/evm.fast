import InitECandidate.Proofs.FrontendStages.Loop.Translate442
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody458_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody458_1 : HolLoopProg 64 :=
.mark loopBody458_0

def loopBody458_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody458_3 : HolLoopProg 64 :=
.mark loopBody458_2

def loopBody458_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody458_3, loopBody458_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody458_5 : HolLoopProg 64 :=
.mark loopBody458_4

def loopBody458_6 : HolLoopProg 64 :=
.seq loopBody458_5 loopBody458_1

def loopBody458_7 : HolLoopProg 64 :=
.mark loopBody458_6

def loopBody458_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 5#64)

def loopBody458_9 : HolLoopProg 64 :=
.mark loopBody458_8

def loopBody458_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody458_11 : HolLoopProg 64 :=
.mark loopBody458_10

def loopBody458_12 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 470) ([6]) (some (6, loopBody458_11, loopBody458_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody458_13 : HolLoopProg 64 :=
.mark loopBody458_12

def loopBody458_14 : HolLoopProg 64 :=
.seq loopBody458_13 loopBody458_1

def loopBody458_15 : HolLoopProg 64 :=
.mark loopBody458_14

def loopBody458_16 : HolLoopProg 64 :=
.seq loopBody458_9 loopBody458_15

def loopBody458_17 : HolLoopProg 64 :=
.mark loopBody458_16

def loopBody458_18 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_17

def loopBody458_19 : HolLoopProg 64 :=
.mark loopBody458_18

def loopBody458_20 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_19

def loopBody458_21 : HolLoopProg 64 :=
.mark loopBody458_20

def loopBody458_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody458_23 : HolLoopProg 64 :=
.mark loopBody458_22

def loopBody458_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody458_25 : HolLoopProg 64 :=
.mark loopBody458_24

def loopBody458_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody458_27 : HolLoopProg 64 :=
.mark loopBody458_26

def loopBody458_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody458_29 : HolLoopProg 64 :=
.mark loopBody458_28

def loopBody458_30 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 138) ([6, 7, 8, 9]) (some (6, loopBody458_11, loopBody458_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody458_31 : HolLoopProg 64 :=
.mark loopBody458_30

def loopBody458_32 : HolLoopProg 64 :=
.seq loopBody458_31 loopBody458_1

def loopBody458_33 : HolLoopProg 64 :=
.mark loopBody458_32

def loopBody458_34 : HolLoopProg 64 :=
.seq loopBody458_29 loopBody458_33

def loopBody458_35 : HolLoopProg 64 :=
.mark loopBody458_34

def loopBody458_36 : HolLoopProg 64 :=
.seq loopBody458_27 loopBody458_35

def loopBody458_37 : HolLoopProg 64 :=
.mark loopBody458_36

def loopBody458_38 : HolLoopProg 64 :=
.seq loopBody458_25 loopBody458_37

def loopBody458_39 : HolLoopProg 64 :=
.mark loopBody458_38

def loopBody458_40 : HolLoopProg 64 :=
.seq loopBody458_23 loopBody458_39

def loopBody458_41 : HolLoopProg 64 :=
.mark loopBody458_40

def loopBody458_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 256#64, Flapjack.HolLoopExp.var 5])

def loopBody458_43 : HolLoopProg 64 :=
.mark loopBody458_42

def loopBody458_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody458_45 : HolLoopProg 64 :=
.mark loopBody458_44

def loopBody458_46 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 477) ([7]) (some (7, loopBody458_45, loopBody458_1, (Flapjack.Spt.ln)))

def loopBody458_47 : HolLoopProg 64 :=
.mark loopBody458_46

def loopBody458_48 : HolLoopProg 64 :=
.seq loopBody458_47 loopBody458_1

def loopBody458_49 : HolLoopProg 64 :=
.mark loopBody458_48

def loopBody458_50 : HolLoopProg 64 :=
.seq loopBody458_43 loopBody458_49

def loopBody458_51 : HolLoopProg 64 :=
.mark loopBody458_50

def loopBody458_52 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_51

def loopBody458_53 : HolLoopProg 64 :=
.mark loopBody458_52

def loopBody458_54 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_53

def loopBody458_55 : HolLoopProg 64 :=
.mark loopBody458_54

def loopBody458_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody458_57 : HolLoopProg 64 :=
.mark loopBody458_56

def loopBody458_58 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 490) ([7]) (some (7, loopBody458_45, loopBody458_1, (Flapjack.Spt.ln)))

def loopBody458_59 : HolLoopProg 64 :=
.mark loopBody458_58

def loopBody458_60 : HolLoopProg 64 :=
.seq loopBody458_59 loopBody458_1

def loopBody458_61 : HolLoopProg 64 :=
.mark loopBody458_60

def loopBody458_62 : HolLoopProg 64 :=
.seq loopBody458_57 loopBody458_61

def loopBody458_63 : HolLoopProg 64 :=
.mark loopBody458_62

def loopBody458_64 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_63

def loopBody458_65 : HolLoopProg 64 :=
.mark loopBody458_64

def loopBody458_66 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_65

def loopBody458_67 : HolLoopProg 64 :=
.mark loopBody458_66

def loopBody458_68 : HolLoopProg 64 :=
.seq loopBody458_55 loopBody458_67

def loopBody458_69 : HolLoopProg 64 :=
.mark loopBody458_68

def loopBody458_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody458_71 : HolLoopProg 64 :=
.mark loopBody458_70

def loopBody458_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody458_73 : HolLoopProg 64 :=
.mark loopBody458_72

def loopBody458_74 : HolLoopProg 64 :=
.seq loopBody458_73 loopBody458_1

def loopBody458_75 : HolLoopProg 64 :=
.mark loopBody458_74

def loopBody458_76 : HolLoopProg 64 :=
.seq loopBody458_71 loopBody458_75

def loopBody458_77 : HolLoopProg 64 :=
.mark loopBody458_76

def loopBody458_78 : HolLoopProg 64 :=
.seq loopBody458_69 loopBody458_77

def loopBody458_79 : HolLoopProg 64 :=
.mark loopBody458_78

def loopBody458_80 : HolLoopProg 64 :=
.seq loopBody458_41 loopBody458_79

def loopBody458_81 : HolLoopProg 64 :=
.mark loopBody458_80

def loopBody458_82 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_81

def loopBody458_83 : HolLoopProg 64 :=
.mark loopBody458_82

def loopBody458_84 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_83

def loopBody458_85 : HolLoopProg 64 :=
.mark loopBody458_84

def loopBody458_86 : HolLoopProg 64 :=
.seq loopBody458_21 loopBody458_85

def loopBody458_87 : HolLoopProg 64 :=
.mark loopBody458_86

def loopBody458_88 : HolLoopProg 64 :=
.seq loopBody458_7 loopBody458_87

def loopBody458_89 : HolLoopProg 64 :=
.mark loopBody458_88

def loopBody458_90 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_89

def loopBody458_91 : HolLoopProg 64 :=
.mark loopBody458_90

def loopBody458_92 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_91

def loopBody458_93 : HolLoopProg 64 :=
.mark loopBody458_92

def loopBody458_94 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_93

def loopBody458_95 : HolLoopProg 64 :=
.mark loopBody458_94

def loopBody458_96 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_95

def loopBody458_97 : HolLoopProg 64 :=
.mark loopBody458_96

def loopBody458_98 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_97

def loopBody458_99 : HolLoopProg 64 :=
.mark loopBody458_98

def loopBody458_100 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_99

def loopBody458_101 : HolLoopProg 64 :=
.mark loopBody458_100

def loopBody458_102 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_101

def loopBody458_103 : HolLoopProg 64 :=
.mark loopBody458_102

def loopBody458_104 : HolLoopProg 64 :=
.seq loopBody458_1 loopBody458_103

def loopBody458_105 : HolLoopProg 64 :=
.mark loopBody458_104

def output458 : Nat × List Nat × HolLoopProg 64 :=
  (522, [], loopBody458_105)
end InitECandidate.Proofs.FrontendStages.Loop
