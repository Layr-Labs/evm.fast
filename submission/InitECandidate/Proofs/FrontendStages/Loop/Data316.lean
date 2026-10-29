import InitECandidate.Proofs.FrontendStages.Loop.Translate300
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody316_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody316_1 : HolLoopProg 64 :=
.mark loopBody316_0

def loopBody316_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody316_3 : HolLoopProg 64 :=
.mark loopBody316_2

def loopBody316_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody316_3, loopBody316_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody316_5 : HolLoopProg 64 :=
.mark loopBody316_4

def loopBody316_6 : HolLoopProg 64 :=
.seq loopBody316_5 loopBody316_1

def loopBody316_7 : HolLoopProg 64 :=
.mark loopBody316_6

def loopBody316_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody316_9 : HolLoopProg 64 :=
.mark loopBody316_8

def loopBody316_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody316_11 : HolLoopProg 64 :=
.mark loopBody316_10

def loopBody316_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody316_11, loopBody316_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody316_13 : HolLoopProg 64 :=
.mark loopBody316_12

def loopBody316_14 : HolLoopProg 64 :=
.seq loopBody316_13 loopBody316_1

def loopBody316_15 : HolLoopProg 64 :=
.mark loopBody316_14

def loopBody316_16 : HolLoopProg 64 :=
.seq loopBody316_9 loopBody316_15

def loopBody316_17 : HolLoopProg 64 :=
.mark loopBody316_16

def loopBody316_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody316_19 : HolLoopProg 64 :=
.mark loopBody316_18

def loopBody316_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 64#64)

def loopBody316_21 : HolLoopProg 64 :=
.mark loopBody316_20

def loopBody316_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody316_23 : HolLoopProg 64 :=
.mark loopBody316_22

def loopBody316_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody316_25 : HolLoopProg 64 :=
.mark loopBody316_24

def loopBody316_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 158) ([5, 6, 7]) (some (5, loopBody316_25, loopBody316_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody316_27 : HolLoopProg 64 :=
.mark loopBody316_26

def loopBody316_28 : HolLoopProg 64 :=
.seq loopBody316_27 loopBody316_1

def loopBody316_29 : HolLoopProg 64 :=
.mark loopBody316_28

def loopBody316_30 : HolLoopProg 64 :=
.seq loopBody316_23 loopBody316_29

def loopBody316_31 : HolLoopProg 64 :=
.mark loopBody316_30

def loopBody316_32 : HolLoopProg 64 :=
.seq loopBody316_21 loopBody316_31

def loopBody316_33 : HolLoopProg 64 :=
.mark loopBody316_32

def loopBody316_34 : HolLoopProg 64 :=
.seq loopBody316_19 loopBody316_33

def loopBody316_35 : HolLoopProg 64 :=
.mark loopBody316_34

def loopBody316_36 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_35

def loopBody316_37 : HolLoopProg 64 :=
.mark loopBody316_36

def loopBody316_38 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_37

def loopBody316_39 : HolLoopProg 64 :=
.mark loopBody316_38

def loopBody316_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody316_41 : HolLoopProg 64 :=
.mark loopBody316_40

def loopBody316_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 12#64])

def loopBody316_43 : HolLoopProg 64 :=
.mark loopBody316_42

def loopBody316_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 20#64)

def loopBody316_45 : HolLoopProg 64 :=
.mark loopBody316_44

def loopBody316_46 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 77) ([5, 6, 7]) (some (5, loopBody316_25, loopBody316_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody316_47 : HolLoopProg 64 :=
.mark loopBody316_46

def loopBody316_48 : HolLoopProg 64 :=
.seq loopBody316_47 loopBody316_1

def loopBody316_49 : HolLoopProg 64 :=
.mark loopBody316_48

def loopBody316_50 : HolLoopProg 64 :=
.seq loopBody316_45 loopBody316_49

def loopBody316_51 : HolLoopProg 64 :=
.mark loopBody316_50

def loopBody316_52 : HolLoopProg 64 :=
.seq loopBody316_43 loopBody316_51

def loopBody316_53 : HolLoopProg 64 :=
.mark loopBody316_52

def loopBody316_54 : HolLoopProg 64 :=
.seq loopBody316_41 loopBody316_53

def loopBody316_55 : HolLoopProg 64 :=
.mark loopBody316_54

def loopBody316_56 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_55

def loopBody316_57 : HolLoopProg 64 :=
.mark loopBody316_56

def loopBody316_58 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_57

def loopBody316_59 : HolLoopProg 64 :=
.mark loopBody316_58

def loopBody316_60 : HolLoopProg 64 :=
.seq loopBody316_39 loopBody316_59

def loopBody316_61 : HolLoopProg 64 :=
.mark loopBody316_60

def loopBody316_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody316_63 : HolLoopProg 64 :=
.mark loopBody316_62

def loopBody316_64 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody316_25, loopBody316_1, (Flapjack.Spt.ln)))

def loopBody316_65 : HolLoopProg 64 :=
.mark loopBody316_64

def loopBody316_66 : HolLoopProg 64 :=
.seq loopBody316_65 loopBody316_1

def loopBody316_67 : HolLoopProg 64 :=
.mark loopBody316_66

def loopBody316_68 : HolLoopProg 64 :=
.seq loopBody316_63 loopBody316_67

def loopBody316_69 : HolLoopProg 64 :=
.mark loopBody316_68

def loopBody316_70 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_69

def loopBody316_71 : HolLoopProg 64 :=
.mark loopBody316_70

def loopBody316_72 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_71

def loopBody316_73 : HolLoopProg 64 :=
.mark loopBody316_72

def loopBody316_74 : HolLoopProg 64 :=
.seq loopBody316_61 loopBody316_73

def loopBody316_75 : HolLoopProg 64 :=
.mark loopBody316_74

def loopBody316_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody316_77 : HolLoopProg 64 :=
.mark loopBody316_76

def loopBody316_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody316_79 : HolLoopProg 64 :=
.mark loopBody316_78

def loopBody316_80 : HolLoopProg 64 :=
.seq loopBody316_79 loopBody316_1

def loopBody316_81 : HolLoopProg 64 :=
.mark loopBody316_80

def loopBody316_82 : HolLoopProg 64 :=
.seq loopBody316_77 loopBody316_81

def loopBody316_83 : HolLoopProg 64 :=
.mark loopBody316_82

def loopBody316_84 : HolLoopProg 64 :=
.seq loopBody316_75 loopBody316_83

def loopBody316_85 : HolLoopProg 64 :=
.mark loopBody316_84

def loopBody316_86 : HolLoopProg 64 :=
.seq loopBody316_17 loopBody316_85

def loopBody316_87 : HolLoopProg 64 :=
.mark loopBody316_86

def loopBody316_88 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_87

def loopBody316_89 : HolLoopProg 64 :=
.mark loopBody316_88

def loopBody316_90 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_89

def loopBody316_91 : HolLoopProg 64 :=
.mark loopBody316_90

def loopBody316_92 : HolLoopProg 64 :=
.seq loopBody316_7 loopBody316_91

def loopBody316_93 : HolLoopProg 64 :=
.mark loopBody316_92

def loopBody316_94 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_93

def loopBody316_95 : HolLoopProg 64 :=
.mark loopBody316_94

def loopBody316_96 : HolLoopProg 64 :=
.seq loopBody316_1 loopBody316_95

def loopBody316_97 : HolLoopProg 64 :=
.mark loopBody316_96

def output316 : Nat × List Nat × HolLoopProg 64 :=
  (380, [0, 1], loopBody316_97)
end InitECandidate.Proofs.FrontendStages.Loop
