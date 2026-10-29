import InitECandidate.Proofs.FrontendStages.Loop.Translate697
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody713_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody713_1 : HolLoopProg 64 :=
.mark loopBody713_0

def loopBody713_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody713_3 : HolLoopProg 64 :=
.mark loopBody713_2

def loopBody713_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 69) ([]) (some (2, loopBody713_3, loopBody713_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody713_5 : HolLoopProg 64 :=
.mark loopBody713_4

def loopBody713_6 : HolLoopProg 64 :=
.seq loopBody713_5 loopBody713_1

def loopBody713_7 : HolLoopProg 64 :=
.mark loopBody713_6

def loopBody713_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 144#64)

def loopBody713_9 : HolLoopProg 64 :=
.mark loopBody713_8

def loopBody713_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody713_11 : HolLoopProg 64 :=
.mark loopBody713_10

def loopBody713_12 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody713_11, loopBody713_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody713_13 : HolLoopProg 64 :=
.mark loopBody713_12

def loopBody713_14 : HolLoopProg 64 :=
.seq loopBody713_13 loopBody713_1

def loopBody713_15 : HolLoopProg 64 :=
.mark loopBody713_14

def loopBody713_16 : HolLoopProg 64 :=
.seq loopBody713_9 loopBody713_15

def loopBody713_17 : HolLoopProg 64 :=
.mark loopBody713_16

def loopBody713_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody713_19 : HolLoopProg 64 :=
.mark loopBody713_18

def loopBody713_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody713_21 : HolLoopProg 64 :=
.mark loopBody713_20

def loopBody713_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 1344#64])

def loopBody713_23 : HolLoopProg 64 :=
.mark loopBody713_22

def loopBody713_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 4#64)

def loopBody713_25 : HolLoopProg 64 :=
.mark loopBody713_24

def loopBody713_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody713_27 : HolLoopProg 64 :=
.mark loopBody713_26

def loopBody713_28 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 772) ([4, 5, 6, 7]) (some (4, loopBody713_27, loopBody713_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody713_29 : HolLoopProg 64 :=
.mark loopBody713_28

def loopBody713_30 : HolLoopProg 64 :=
.seq loopBody713_29 loopBody713_1

def loopBody713_31 : HolLoopProg 64 :=
.mark loopBody713_30

def loopBody713_32 : HolLoopProg 64 :=
.seq loopBody713_25 loopBody713_31

def loopBody713_33 : HolLoopProg 64 :=
.mark loopBody713_32

def loopBody713_34 : HolLoopProg 64 :=
.seq loopBody713_23 loopBody713_33

def loopBody713_35 : HolLoopProg 64 :=
.mark loopBody713_34

def loopBody713_36 : HolLoopProg 64 :=
.seq loopBody713_21 loopBody713_35

def loopBody713_37 : HolLoopProg 64 :=
.mark loopBody713_36

def loopBody713_38 : HolLoopProg 64 :=
.seq loopBody713_19 loopBody713_37

def loopBody713_39 : HolLoopProg 64 :=
.mark loopBody713_38

def loopBody713_40 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_39

def loopBody713_41 : HolLoopProg 64 :=
.mark loopBody713_40

def loopBody713_42 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_41

def loopBody713_43 : HolLoopProg 64 :=
.mark loopBody713_42

def loopBody713_44 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 767) ([4]) (some (4, loopBody713_27, loopBody713_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody713_45 : HolLoopProg 64 :=
.mark loopBody713_44

def loopBody713_46 : HolLoopProg 64 :=
.seq loopBody713_45 loopBody713_1

def loopBody713_47 : HolLoopProg 64 :=
.mark loopBody713_46

def loopBody713_48 : HolLoopProg 64 :=
.seq loopBody713_19 loopBody713_47

def loopBody713_49 : HolLoopProg 64 :=
.mark loopBody713_48

def loopBody713_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody713_51 : HolLoopProg 64 :=
.mark loopBody713_50

def loopBody713_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody713_53 : HolLoopProg 64 :=
.mark loopBody713_52

def loopBody713_54 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 70) ([5]) (some (5, loopBody713_53, loopBody713_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody713_55 : HolLoopProg 64 :=
.mark loopBody713_54

def loopBody713_56 : HolLoopProg 64 :=
.seq loopBody713_55 loopBody713_1

def loopBody713_57 : HolLoopProg 64 :=
.mark loopBody713_56

def loopBody713_58 : HolLoopProg 64 :=
.seq loopBody713_51 loopBody713_57

def loopBody713_59 : HolLoopProg 64 :=
.mark loopBody713_58

def loopBody713_60 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_59

def loopBody713_61 : HolLoopProg 64 :=
.mark loopBody713_60

def loopBody713_62 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_61

def loopBody713_63 : HolLoopProg 64 :=
.mark loopBody713_62

def loopBody713_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody713_65 : HolLoopProg 64 :=
.mark loopBody713_64

def loopBody713_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody713_67 : HolLoopProg 64 :=
.mark loopBody713_66

def loopBody713_68 : HolLoopProg 64 :=
.seq loopBody713_67 loopBody713_1

def loopBody713_69 : HolLoopProg 64 :=
.mark loopBody713_68

def loopBody713_70 : HolLoopProg 64 :=
.seq loopBody713_65 loopBody713_69

def loopBody713_71 : HolLoopProg 64 :=
.mark loopBody713_70

def loopBody713_72 : HolLoopProg 64 :=
.seq loopBody713_63 loopBody713_71

def loopBody713_73 : HolLoopProg 64 :=
.mark loopBody713_72

def loopBody713_74 : HolLoopProg 64 :=
.seq loopBody713_49 loopBody713_73

def loopBody713_75 : HolLoopProg 64 :=
.mark loopBody713_74

def loopBody713_76 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_75

def loopBody713_77 : HolLoopProg 64 :=
.mark loopBody713_76

def loopBody713_78 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_77

def loopBody713_79 : HolLoopProg 64 :=
.mark loopBody713_78

def loopBody713_80 : HolLoopProg 64 :=
.seq loopBody713_43 loopBody713_79

def loopBody713_81 : HolLoopProg 64 :=
.mark loopBody713_80

def loopBody713_82 : HolLoopProg 64 :=
.seq loopBody713_17 loopBody713_81

def loopBody713_83 : HolLoopProg 64 :=
.mark loopBody713_82

def loopBody713_84 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_83

def loopBody713_85 : HolLoopProg 64 :=
.mark loopBody713_84

def loopBody713_86 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_85

def loopBody713_87 : HolLoopProg 64 :=
.mark loopBody713_86

def loopBody713_88 : HolLoopProg 64 :=
.seq loopBody713_7 loopBody713_87

def loopBody713_89 : HolLoopProg 64 :=
.mark loopBody713_88

def loopBody713_90 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_89

def loopBody713_91 : HolLoopProg 64 :=
.mark loopBody713_90

def loopBody713_92 : HolLoopProg 64 :=
.seq loopBody713_1 loopBody713_91

def loopBody713_93 : HolLoopProg 64 :=
.mark loopBody713_92

def output713 : Nat × List Nat × HolLoopProg 64 :=
  (777, [0], loopBody713_93)
end InitECandidate.Proofs.FrontendStages.Loop
