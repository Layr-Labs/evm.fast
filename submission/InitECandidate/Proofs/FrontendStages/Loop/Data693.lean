import InitECandidate.Proofs.FrontendStages.Loop.Translate677
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody693_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody693_1 : HolLoopProg 64 :=
.mark loopBody693_0

def loopBody693_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody693_3 : HolLoopProg 64 :=
.mark loopBody693_2

def loopBody693_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 69) ([]) (some (2, loopBody693_3, loopBody693_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody693_5 : HolLoopProg 64 :=
.mark loopBody693_4

def loopBody693_6 : HolLoopProg 64 :=
.seq loopBody693_5 loopBody693_1

def loopBody693_7 : HolLoopProg 64 :=
.mark loopBody693_6

def loopBody693_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 576#64)

def loopBody693_9 : HolLoopProg 64 :=
.mark loopBody693_8

def loopBody693_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody693_11 : HolLoopProg 64 :=
.mark loopBody693_10

def loopBody693_12 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody693_11, loopBody693_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody693_13 : HolLoopProg 64 :=
.mark loopBody693_12

def loopBody693_14 : HolLoopProg 64 :=
.seq loopBody693_13 loopBody693_1

def loopBody693_15 : HolLoopProg 64 :=
.mark loopBody693_14

def loopBody693_16 : HolLoopProg 64 :=
.seq loopBody693_9 loopBody693_15

def loopBody693_17 : HolLoopProg 64 :=
.mark loopBody693_16

def loopBody693_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody693_19 : HolLoopProg 64 :=
.mark loopBody693_18

def loopBody693_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody693_21 : HolLoopProg 64 :=
.mark loopBody693_20

def loopBody693_22 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 756) ([4]) (some (4, loopBody693_21, loopBody693_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody693_23 : HolLoopProg 64 :=
.mark loopBody693_22

def loopBody693_24 : HolLoopProg 64 :=
.seq loopBody693_23 loopBody693_1

def loopBody693_25 : HolLoopProg 64 :=
.mark loopBody693_24

def loopBody693_26 : HolLoopProg 64 :=
.seq loopBody693_19 loopBody693_25

def loopBody693_27 : HolLoopProg 64 :=
.mark loopBody693_26

def loopBody693_28 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_27

def loopBody693_29 : HolLoopProg 64 :=
.mark loopBody693_28

def loopBody693_30 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_29

def loopBody693_31 : HolLoopProg 64 :=
.mark loopBody693_30

def loopBody693_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody693_33 : HolLoopProg 64 :=
.mark loopBody693_32

def loopBody693_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody693_35 : HolLoopProg 64 :=
.mark loopBody693_34

def loopBody693_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 576#64)

def loopBody693_37 : HolLoopProg 64 :=
.mark loopBody693_36

def loopBody693_38 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 79) ([4, 5, 6]) (some (4, loopBody693_21, loopBody693_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody693_39 : HolLoopProg 64 :=
.mark loopBody693_38

def loopBody693_40 : HolLoopProg 64 :=
.seq loopBody693_39 loopBody693_1

def loopBody693_41 : HolLoopProg 64 :=
.mark loopBody693_40

def loopBody693_42 : HolLoopProg 64 :=
.seq loopBody693_37 loopBody693_41

def loopBody693_43 : HolLoopProg 64 :=
.mark loopBody693_42

def loopBody693_44 : HolLoopProg 64 :=
.seq loopBody693_35 loopBody693_43

def loopBody693_45 : HolLoopProg 64 :=
.mark loopBody693_44

def loopBody693_46 : HolLoopProg 64 :=
.seq loopBody693_33 loopBody693_45

def loopBody693_47 : HolLoopProg 64 :=
.mark loopBody693_46

def loopBody693_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody693_49 : HolLoopProg 64 :=
.mark loopBody693_48

def loopBody693_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody693_51 : HolLoopProg 64 :=
.mark loopBody693_50

def loopBody693_52 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 70) ([5]) (some (5, loopBody693_51, loopBody693_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody693_53 : HolLoopProg 64 :=
.mark loopBody693_52

def loopBody693_54 : HolLoopProg 64 :=
.seq loopBody693_53 loopBody693_1

def loopBody693_55 : HolLoopProg 64 :=
.mark loopBody693_54

def loopBody693_56 : HolLoopProg 64 :=
.seq loopBody693_49 loopBody693_55

def loopBody693_57 : HolLoopProg 64 :=
.mark loopBody693_56

def loopBody693_58 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_57

def loopBody693_59 : HolLoopProg 64 :=
.mark loopBody693_58

def loopBody693_60 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_59

def loopBody693_61 : HolLoopProg 64 :=
.mark loopBody693_60

def loopBody693_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody693_63 : HolLoopProg 64 :=
.mark loopBody693_62

def loopBody693_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody693_65 : HolLoopProg 64 :=
.mark loopBody693_64

def loopBody693_66 : HolLoopProg 64 :=
.seq loopBody693_65 loopBody693_1

def loopBody693_67 : HolLoopProg 64 :=
.mark loopBody693_66

def loopBody693_68 : HolLoopProg 64 :=
.seq loopBody693_63 loopBody693_67

def loopBody693_69 : HolLoopProg 64 :=
.mark loopBody693_68

def loopBody693_70 : HolLoopProg 64 :=
.seq loopBody693_61 loopBody693_69

def loopBody693_71 : HolLoopProg 64 :=
.mark loopBody693_70

def loopBody693_72 : HolLoopProg 64 :=
.seq loopBody693_47 loopBody693_71

def loopBody693_73 : HolLoopProg 64 :=
.mark loopBody693_72

def loopBody693_74 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_73

def loopBody693_75 : HolLoopProg 64 :=
.mark loopBody693_74

def loopBody693_76 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_75

def loopBody693_77 : HolLoopProg 64 :=
.mark loopBody693_76

def loopBody693_78 : HolLoopProg 64 :=
.seq loopBody693_31 loopBody693_77

def loopBody693_79 : HolLoopProg 64 :=
.mark loopBody693_78

def loopBody693_80 : HolLoopProg 64 :=
.seq loopBody693_17 loopBody693_79

def loopBody693_81 : HolLoopProg 64 :=
.mark loopBody693_80

def loopBody693_82 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_81

def loopBody693_83 : HolLoopProg 64 :=
.mark loopBody693_82

def loopBody693_84 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_83

def loopBody693_85 : HolLoopProg 64 :=
.mark loopBody693_84

def loopBody693_86 : HolLoopProg 64 :=
.seq loopBody693_7 loopBody693_85

def loopBody693_87 : HolLoopProg 64 :=
.mark loopBody693_86

def loopBody693_88 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_87

def loopBody693_89 : HolLoopProg 64 :=
.mark loopBody693_88

def loopBody693_90 : HolLoopProg 64 :=
.seq loopBody693_1 loopBody693_89

def loopBody693_91 : HolLoopProg 64 :=
.mark loopBody693_90

def output693 : Nat × List Nat × HolLoopProg 64 :=
  (757, [0], loopBody693_91)
end InitECandidate.Proofs.FrontendStages.Loop
