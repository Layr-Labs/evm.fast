import InitECandidate.Proofs.FrontendStages.Loop.Translate709
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody725_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody725_1 : HolLoopProg 64 :=
.mark loopBody725_0

def loopBody725_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody725_3 : HolLoopProg 64 :=
.mark loopBody725_2

def loopBody725_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 69) ([]) (some (2, loopBody725_3, loopBody725_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody725_5 : HolLoopProg 64 :=
.mark loopBody725_4

def loopBody725_6 : HolLoopProg 64 :=
.seq loopBody725_5 loopBody725_1

def loopBody725_7 : HolLoopProg 64 :=
.mark loopBody725_6

def loopBody725_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 288#64)

def loopBody725_9 : HolLoopProg 64 :=
.mark loopBody725_8

def loopBody725_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody725_11 : HolLoopProg 64 :=
.mark loopBody725_10

def loopBody725_12 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody725_11, loopBody725_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody725_13 : HolLoopProg 64 :=
.mark loopBody725_12

def loopBody725_14 : HolLoopProg 64 :=
.seq loopBody725_13 loopBody725_1

def loopBody725_15 : HolLoopProg 64 :=
.mark loopBody725_14

def loopBody725_16 : HolLoopProg 64 :=
.seq loopBody725_9 loopBody725_15

def loopBody725_17 : HolLoopProg 64 :=
.mark loopBody725_16

def loopBody725_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody725_19 : HolLoopProg 64 :=
.mark loopBody725_18

def loopBody725_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody725_21 : HolLoopProg 64 :=
.mark loopBody725_20

def loopBody725_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 392#64]),
      Flapjack.HolLoopExp.const 1344#64])

def loopBody725_23 : HolLoopProg 64 :=
.mark loopBody725_22

def loopBody725_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 4#64)

def loopBody725_25 : HolLoopProg 64 :=
.mark loopBody725_24

def loopBody725_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody725_27 : HolLoopProg 64 :=
.mark loopBody725_26

def loopBody725_28 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 784) ([4, 5, 6, 7]) (some (4, loopBody725_27, loopBody725_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody725_29 : HolLoopProg 64 :=
.mark loopBody725_28

def loopBody725_30 : HolLoopProg 64 :=
.seq loopBody725_29 loopBody725_1

def loopBody725_31 : HolLoopProg 64 :=
.mark loopBody725_30

def loopBody725_32 : HolLoopProg 64 :=
.seq loopBody725_25 loopBody725_31

def loopBody725_33 : HolLoopProg 64 :=
.mark loopBody725_32

def loopBody725_34 : HolLoopProg 64 :=
.seq loopBody725_23 loopBody725_33

def loopBody725_35 : HolLoopProg 64 :=
.mark loopBody725_34

def loopBody725_36 : HolLoopProg 64 :=
.seq loopBody725_21 loopBody725_35

def loopBody725_37 : HolLoopProg 64 :=
.mark loopBody725_36

def loopBody725_38 : HolLoopProg 64 :=
.seq loopBody725_19 loopBody725_37

def loopBody725_39 : HolLoopProg 64 :=
.mark loopBody725_38

def loopBody725_40 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_39

def loopBody725_41 : HolLoopProg 64 :=
.mark loopBody725_40

def loopBody725_42 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_41

def loopBody725_43 : HolLoopProg 64 :=
.mark loopBody725_42

def loopBody725_44 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 779) ([4]) (some (4, loopBody725_27, loopBody725_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody725_45 : HolLoopProg 64 :=
.mark loopBody725_44

def loopBody725_46 : HolLoopProg 64 :=
.seq loopBody725_45 loopBody725_1

def loopBody725_47 : HolLoopProg 64 :=
.mark loopBody725_46

def loopBody725_48 : HolLoopProg 64 :=
.seq loopBody725_19 loopBody725_47

def loopBody725_49 : HolLoopProg 64 :=
.mark loopBody725_48

def loopBody725_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody725_51 : HolLoopProg 64 :=
.mark loopBody725_50

def loopBody725_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody725_53 : HolLoopProg 64 :=
.mark loopBody725_52

def loopBody725_54 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 70) ([5]) (some (5, loopBody725_53, loopBody725_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody725_55 : HolLoopProg 64 :=
.mark loopBody725_54

def loopBody725_56 : HolLoopProg 64 :=
.seq loopBody725_55 loopBody725_1

def loopBody725_57 : HolLoopProg 64 :=
.mark loopBody725_56

def loopBody725_58 : HolLoopProg 64 :=
.seq loopBody725_51 loopBody725_57

def loopBody725_59 : HolLoopProg 64 :=
.mark loopBody725_58

def loopBody725_60 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_59

def loopBody725_61 : HolLoopProg 64 :=
.mark loopBody725_60

def loopBody725_62 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_61

def loopBody725_63 : HolLoopProg 64 :=
.mark loopBody725_62

def loopBody725_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody725_65 : HolLoopProg 64 :=
.mark loopBody725_64

def loopBody725_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody725_67 : HolLoopProg 64 :=
.mark loopBody725_66

def loopBody725_68 : HolLoopProg 64 :=
.seq loopBody725_67 loopBody725_1

def loopBody725_69 : HolLoopProg 64 :=
.mark loopBody725_68

def loopBody725_70 : HolLoopProg 64 :=
.seq loopBody725_65 loopBody725_69

def loopBody725_71 : HolLoopProg 64 :=
.mark loopBody725_70

def loopBody725_72 : HolLoopProg 64 :=
.seq loopBody725_63 loopBody725_71

def loopBody725_73 : HolLoopProg 64 :=
.mark loopBody725_72

def loopBody725_74 : HolLoopProg 64 :=
.seq loopBody725_49 loopBody725_73

def loopBody725_75 : HolLoopProg 64 :=
.mark loopBody725_74

def loopBody725_76 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_75

def loopBody725_77 : HolLoopProg 64 :=
.mark loopBody725_76

def loopBody725_78 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_77

def loopBody725_79 : HolLoopProg 64 :=
.mark loopBody725_78

def loopBody725_80 : HolLoopProg 64 :=
.seq loopBody725_43 loopBody725_79

def loopBody725_81 : HolLoopProg 64 :=
.mark loopBody725_80

def loopBody725_82 : HolLoopProg 64 :=
.seq loopBody725_17 loopBody725_81

def loopBody725_83 : HolLoopProg 64 :=
.mark loopBody725_82

def loopBody725_84 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_83

def loopBody725_85 : HolLoopProg 64 :=
.mark loopBody725_84

def loopBody725_86 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_85

def loopBody725_87 : HolLoopProg 64 :=
.mark loopBody725_86

def loopBody725_88 : HolLoopProg 64 :=
.seq loopBody725_7 loopBody725_87

def loopBody725_89 : HolLoopProg 64 :=
.mark loopBody725_88

def loopBody725_90 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_89

def loopBody725_91 : HolLoopProg 64 :=
.mark loopBody725_90

def loopBody725_92 : HolLoopProg 64 :=
.seq loopBody725_1 loopBody725_91

def loopBody725_93 : HolLoopProg 64 :=
.mark loopBody725_92

def output725 : Nat × List Nat × HolLoopProg 64 :=
  (789, [0], loopBody725_93)
end InitECandidate.Proofs.FrontendStages.Loop
