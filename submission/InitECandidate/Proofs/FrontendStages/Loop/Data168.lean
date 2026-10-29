import InitECandidate.Proofs.FrontendStages.Loop.Translate152
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody168_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody168_1 : HolLoopProg 64 :=
.mark loopBody168_0

def loopBody168_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody168_3 : HolLoopProg 64 :=
.mark loopBody168_2

def loopBody168_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody168_3, loopBody168_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody168_5 : HolLoopProg 64 :=
.mark loopBody168_4

def loopBody168_6 : HolLoopProg 64 :=
.seq loopBody168_5 loopBody168_1

def loopBody168_7 : HolLoopProg 64 :=
.mark loopBody168_6

def loopBody168_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody168_9 : HolLoopProg 64 :=
.mark loopBody168_8

def loopBody168_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody168_11 : HolLoopProg 64 :=
.mark loopBody168_10

def loopBody168_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody168_11, loopBody168_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody168_13 : HolLoopProg 64 :=
.mark loopBody168_12

def loopBody168_14 : HolLoopProg 64 :=
.seq loopBody168_13 loopBody168_1

def loopBody168_15 : HolLoopProg 64 :=
.mark loopBody168_14

def loopBody168_16 : HolLoopProg 64 :=
.seq loopBody168_9 loopBody168_15

def loopBody168_17 : HolLoopProg 64 :=
.mark loopBody168_16

def loopBody168_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody168_19 : HolLoopProg 64 :=
.mark loopBody168_18

def loopBody168_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 64#64)

def loopBody168_21 : HolLoopProg 64 :=
.mark loopBody168_20

def loopBody168_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody168_23 : HolLoopProg 64 :=
.mark loopBody168_22

def loopBody168_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody168_25 : HolLoopProg 64 :=
.mark loopBody168_24

def loopBody168_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 158) ([5, 6, 7]) (some (5, loopBody168_25, loopBody168_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody168_27 : HolLoopProg 64 :=
.mark loopBody168_26

def loopBody168_28 : HolLoopProg 64 :=
.seq loopBody168_27 loopBody168_1

def loopBody168_29 : HolLoopProg 64 :=
.mark loopBody168_28

def loopBody168_30 : HolLoopProg 64 :=
.seq loopBody168_23 loopBody168_29

def loopBody168_31 : HolLoopProg 64 :=
.mark loopBody168_30

def loopBody168_32 : HolLoopProg 64 :=
.seq loopBody168_21 loopBody168_31

def loopBody168_33 : HolLoopProg 64 :=
.mark loopBody168_32

def loopBody168_34 : HolLoopProg 64 :=
.seq loopBody168_19 loopBody168_33

def loopBody168_35 : HolLoopProg 64 :=
.mark loopBody168_34

def loopBody168_36 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_35

def loopBody168_37 : HolLoopProg 64 :=
.mark loopBody168_36

def loopBody168_38 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_37

def loopBody168_39 : HolLoopProg 64 :=
.mark loopBody168_38

def loopBody168_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody168_41 : HolLoopProg 64 :=
.mark loopBody168_40

def loopBody168_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 12#64])

def loopBody168_43 : HolLoopProg 64 :=
.mark loopBody168_42

def loopBody168_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 20#64)

def loopBody168_45 : HolLoopProg 64 :=
.mark loopBody168_44

def loopBody168_46 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 77) ([5, 6, 7]) (some (5, loopBody168_25, loopBody168_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody168_47 : HolLoopProg 64 :=
.mark loopBody168_46

def loopBody168_48 : HolLoopProg 64 :=
.seq loopBody168_47 loopBody168_1

def loopBody168_49 : HolLoopProg 64 :=
.mark loopBody168_48

def loopBody168_50 : HolLoopProg 64 :=
.seq loopBody168_45 loopBody168_49

def loopBody168_51 : HolLoopProg 64 :=
.mark loopBody168_50

def loopBody168_52 : HolLoopProg 64 :=
.seq loopBody168_43 loopBody168_51

def loopBody168_53 : HolLoopProg 64 :=
.mark loopBody168_52

def loopBody168_54 : HolLoopProg 64 :=
.seq loopBody168_41 loopBody168_53

def loopBody168_55 : HolLoopProg 64 :=
.mark loopBody168_54

def loopBody168_56 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_55

def loopBody168_57 : HolLoopProg 64 :=
.mark loopBody168_56

def loopBody168_58 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_57

def loopBody168_59 : HolLoopProg 64 :=
.mark loopBody168_58

def loopBody168_60 : HolLoopProg 64 :=
.seq loopBody168_39 loopBody168_59

def loopBody168_61 : HolLoopProg 64 :=
.mark loopBody168_60

def loopBody168_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody168_63 : HolLoopProg 64 :=
.mark loopBody168_62

def loopBody168_64 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody168_25, loopBody168_1, (Flapjack.Spt.ln)))

def loopBody168_65 : HolLoopProg 64 :=
.mark loopBody168_64

def loopBody168_66 : HolLoopProg 64 :=
.seq loopBody168_65 loopBody168_1

def loopBody168_67 : HolLoopProg 64 :=
.mark loopBody168_66

def loopBody168_68 : HolLoopProg 64 :=
.seq loopBody168_63 loopBody168_67

def loopBody168_69 : HolLoopProg 64 :=
.mark loopBody168_68

def loopBody168_70 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_69

def loopBody168_71 : HolLoopProg 64 :=
.mark loopBody168_70

def loopBody168_72 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_71

def loopBody168_73 : HolLoopProg 64 :=
.mark loopBody168_72

def loopBody168_74 : HolLoopProg 64 :=
.seq loopBody168_61 loopBody168_73

def loopBody168_75 : HolLoopProg 64 :=
.mark loopBody168_74

def loopBody168_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody168_77 : HolLoopProg 64 :=
.mark loopBody168_76

def loopBody168_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody168_79 : HolLoopProg 64 :=
.mark loopBody168_78

def loopBody168_80 : HolLoopProg 64 :=
.seq loopBody168_79 loopBody168_1

def loopBody168_81 : HolLoopProg 64 :=
.mark loopBody168_80

def loopBody168_82 : HolLoopProg 64 :=
.seq loopBody168_77 loopBody168_81

def loopBody168_83 : HolLoopProg 64 :=
.mark loopBody168_82

def loopBody168_84 : HolLoopProg 64 :=
.seq loopBody168_75 loopBody168_83

def loopBody168_85 : HolLoopProg 64 :=
.mark loopBody168_84

def loopBody168_86 : HolLoopProg 64 :=
.seq loopBody168_17 loopBody168_85

def loopBody168_87 : HolLoopProg 64 :=
.mark loopBody168_86

def loopBody168_88 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_87

def loopBody168_89 : HolLoopProg 64 :=
.mark loopBody168_88

def loopBody168_90 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_89

def loopBody168_91 : HolLoopProg 64 :=
.mark loopBody168_90

def loopBody168_92 : HolLoopProg 64 :=
.seq loopBody168_7 loopBody168_91

def loopBody168_93 : HolLoopProg 64 :=
.mark loopBody168_92

def loopBody168_94 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_93

def loopBody168_95 : HolLoopProg 64 :=
.mark loopBody168_94

def loopBody168_96 : HolLoopProg 64 :=
.seq loopBody168_1 loopBody168_95

def loopBody168_97 : HolLoopProg 64 :=
.mark loopBody168_96

def output168 : Nat × List Nat × HolLoopProg 64 :=
  (232, [0, 1], loopBody168_97)
end InitECandidate.Proofs.FrontendStages.Loop
