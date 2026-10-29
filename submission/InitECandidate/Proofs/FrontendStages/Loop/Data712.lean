import InitECandidate.Proofs.FrontendStages.Loop.Translate696
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody712_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody712_1 : HolLoopProg 64 :=
.mark loopBody712_0

def loopBody712_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody712_3 : HolLoopProg 64 :=
.mark loopBody712_2

def loopBody712_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody712_3, loopBody712_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody712_5 : HolLoopProg 64 :=
.mark loopBody712_4

def loopBody712_6 : HolLoopProg 64 :=
.seq loopBody712_5 loopBody712_1

def loopBody712_7 : HolLoopProg 64 :=
.mark loopBody712_6

def loopBody712_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 96#64)

def loopBody712_9 : HolLoopProg 64 :=
.mark loopBody712_8

def loopBody712_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody712_11 : HolLoopProg 64 :=
.mark loopBody712_10

def loopBody712_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody712_11, loopBody712_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody712_13 : HolLoopProg 64 :=
.mark loopBody712_12

def loopBody712_14 : HolLoopProg 64 :=
.seq loopBody712_13 loopBody712_1

def loopBody712_15 : HolLoopProg 64 :=
.mark loopBody712_14

def loopBody712_16 : HolLoopProg 64 :=
.seq loopBody712_9 loopBody712_15

def loopBody712_17 : HolLoopProg 64 :=
.mark loopBody712_16

def loopBody712_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody712_19 : HolLoopProg 64 :=
.mark loopBody712_18

def loopBody712_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody712_21 : HolLoopProg 64 :=
.mark loopBody712_20

def loopBody712_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody712_23 : HolLoopProg 64 :=
.mark loopBody712_22

def loopBody712_24 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 773) ([5, 6]) (some (5, loopBody712_23, loopBody712_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody712_25 : HolLoopProg 64 :=
.mark loopBody712_24

def loopBody712_26 : HolLoopProg 64 :=
.seq loopBody712_25 loopBody712_1

def loopBody712_27 : HolLoopProg 64 :=
.mark loopBody712_26

def loopBody712_28 : HolLoopProg 64 :=
.seq loopBody712_21 loopBody712_27

def loopBody712_29 : HolLoopProg 64 :=
.mark loopBody712_28

def loopBody712_30 : HolLoopProg 64 :=
.seq loopBody712_19 loopBody712_29

def loopBody712_31 : HolLoopProg 64 :=
.mark loopBody712_30

def loopBody712_32 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_31

def loopBody712_33 : HolLoopProg 64 :=
.mark loopBody712_32

def loopBody712_34 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_33

def loopBody712_35 : HolLoopProg 64 :=
.mark loopBody712_34

def loopBody712_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody712_37 : HolLoopProg 64 :=
.mark loopBody712_36

def loopBody712_38 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 728) ([5, 6]) (some (5, loopBody712_23, loopBody712_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody712_39 : HolLoopProg 64 :=
.mark loopBody712_38

def loopBody712_40 : HolLoopProg 64 :=
.seq loopBody712_39 loopBody712_1

def loopBody712_41 : HolLoopProg 64 :=
.mark loopBody712_40

def loopBody712_42 : HolLoopProg 64 :=
.seq loopBody712_37 loopBody712_41

def loopBody712_43 : HolLoopProg 64 :=
.mark loopBody712_42

def loopBody712_44 : HolLoopProg 64 :=
.seq loopBody712_19 loopBody712_43

def loopBody712_45 : HolLoopProg 64 :=
.mark loopBody712_44

def loopBody712_46 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_45

def loopBody712_47 : HolLoopProg 64 :=
.mark loopBody712_46

def loopBody712_48 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_47

def loopBody712_49 : HolLoopProg 64 :=
.mark loopBody712_48

def loopBody712_50 : HolLoopProg 64 :=
.seq loopBody712_35 loopBody712_49

def loopBody712_51 : HolLoopProg 64 :=
.mark loopBody712_50

def loopBody712_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 48#64])

def loopBody712_53 : HolLoopProg 64 :=
.mark loopBody712_52

def loopBody712_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 64#64])

def loopBody712_55 : HolLoopProg 64 :=
.mark loopBody712_54

def loopBody712_56 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 728) ([5, 6]) (some (5, loopBody712_23, loopBody712_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody712_57 : HolLoopProg 64 :=
.mark loopBody712_56

def loopBody712_58 : HolLoopProg 64 :=
.seq loopBody712_57 loopBody712_1

def loopBody712_59 : HolLoopProg 64 :=
.mark loopBody712_58

def loopBody712_60 : HolLoopProg 64 :=
.seq loopBody712_55 loopBody712_59

def loopBody712_61 : HolLoopProg 64 :=
.mark loopBody712_60

def loopBody712_62 : HolLoopProg 64 :=
.seq loopBody712_53 loopBody712_61

def loopBody712_63 : HolLoopProg 64 :=
.mark loopBody712_62

def loopBody712_64 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_63

def loopBody712_65 : HolLoopProg 64 :=
.mark loopBody712_64

def loopBody712_66 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_65

def loopBody712_67 : HolLoopProg 64 :=
.mark loopBody712_66

def loopBody712_68 : HolLoopProg 64 :=
.seq loopBody712_51 loopBody712_67

def loopBody712_69 : HolLoopProg 64 :=
.mark loopBody712_68

def loopBody712_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody712_71 : HolLoopProg 64 :=
.mark loopBody712_70

def loopBody712_72 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody712_23, loopBody712_1, (Flapjack.Spt.ln)))

def loopBody712_73 : HolLoopProg 64 :=
.mark loopBody712_72

def loopBody712_74 : HolLoopProg 64 :=
.seq loopBody712_73 loopBody712_1

def loopBody712_75 : HolLoopProg 64 :=
.mark loopBody712_74

def loopBody712_76 : HolLoopProg 64 :=
.seq loopBody712_71 loopBody712_75

def loopBody712_77 : HolLoopProg 64 :=
.mark loopBody712_76

def loopBody712_78 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_77

def loopBody712_79 : HolLoopProg 64 :=
.mark loopBody712_78

def loopBody712_80 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_79

def loopBody712_81 : HolLoopProg 64 :=
.mark loopBody712_80

def loopBody712_82 : HolLoopProg 64 :=
.seq loopBody712_69 loopBody712_81

def loopBody712_83 : HolLoopProg 64 :=
.mark loopBody712_82

def loopBody712_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody712_85 : HolLoopProg 64 :=
.mark loopBody712_84

def loopBody712_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody712_87 : HolLoopProg 64 :=
.mark loopBody712_86

def loopBody712_88 : HolLoopProg 64 :=
.seq loopBody712_87 loopBody712_1

def loopBody712_89 : HolLoopProg 64 :=
.mark loopBody712_88

def loopBody712_90 : HolLoopProg 64 :=
.seq loopBody712_85 loopBody712_89

def loopBody712_91 : HolLoopProg 64 :=
.mark loopBody712_90

def loopBody712_92 : HolLoopProg 64 :=
.seq loopBody712_83 loopBody712_91

def loopBody712_93 : HolLoopProg 64 :=
.mark loopBody712_92

def loopBody712_94 : HolLoopProg 64 :=
.seq loopBody712_17 loopBody712_93

def loopBody712_95 : HolLoopProg 64 :=
.mark loopBody712_94

def loopBody712_96 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_95

def loopBody712_97 : HolLoopProg 64 :=
.mark loopBody712_96

def loopBody712_98 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_97

def loopBody712_99 : HolLoopProg 64 :=
.mark loopBody712_98

def loopBody712_100 : HolLoopProg 64 :=
.seq loopBody712_7 loopBody712_99

def loopBody712_101 : HolLoopProg 64 :=
.mark loopBody712_100

def loopBody712_102 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_101

def loopBody712_103 : HolLoopProg 64 :=
.mark loopBody712_102

def loopBody712_104 : HolLoopProg 64 :=
.seq loopBody712_1 loopBody712_103

def loopBody712_105 : HolLoopProg 64 :=
.mark loopBody712_104

def output712 : Nat × List Nat × HolLoopProg 64 :=
  (776, [0, 1], loopBody712_105)
end InitECandidate.Proofs.FrontendStages.Loop
