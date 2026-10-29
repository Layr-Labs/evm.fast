import InitECandidate.Proofs.FrontendStages.Loop.Translate197
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody213_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody213_1 : HolLoopProg 64 :=
.mark loopBody213_0

def loopBody213_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody213_3 : HolLoopProg 64 :=
.mark loopBody213_2

def loopBody213_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody213_3, loopBody213_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody213_5 : HolLoopProg 64 :=
.mark loopBody213_4

def loopBody213_6 : HolLoopProg 64 :=
.seq loopBody213_5 loopBody213_1

def loopBody213_7 : HolLoopProg 64 :=
.mark loopBody213_6

def loopBody213_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody213_9 : HolLoopProg 64 :=
.mark loopBody213_8

def loopBody213_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody213_11 : HolLoopProg 64 :=
.mark loopBody213_10

def loopBody213_12 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 276) ([5]) (some (5, loopBody213_11, loopBody213_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody213_13 : HolLoopProg 64 :=
.mark loopBody213_12

def loopBody213_14 : HolLoopProg 64 :=
.seq loopBody213_13 loopBody213_1

def loopBody213_15 : HolLoopProg 64 :=
.mark loopBody213_14

def loopBody213_16 : HolLoopProg 64 :=
.seq loopBody213_9 loopBody213_15

def loopBody213_17 : HolLoopProg 64 :=
.mark loopBody213_16

def loopBody213_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody213_19 : HolLoopProg 64 :=
.mark loopBody213_18

def loopBody213_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody213_21 : HolLoopProg 64 :=
.mark loopBody213_20

def loopBody213_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody213_23 : HolLoopProg 64 :=
.mark loopBody213_22

def loopBody213_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody213_25 : HolLoopProg 64 :=
.mark loopBody213_24

def loopBody213_26 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 158) ([6, 7, 8]) (some (6, loopBody213_25, loopBody213_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody213_27 : HolLoopProg 64 :=
.mark loopBody213_26

def loopBody213_28 : HolLoopProg 64 :=
.seq loopBody213_27 loopBody213_1

def loopBody213_29 : HolLoopProg 64 :=
.mark loopBody213_28

def loopBody213_30 : HolLoopProg 64 :=
.seq loopBody213_23 loopBody213_29

def loopBody213_31 : HolLoopProg 64 :=
.mark loopBody213_30

def loopBody213_32 : HolLoopProg 64 :=
.seq loopBody213_21 loopBody213_31

def loopBody213_33 : HolLoopProg 64 :=
.mark loopBody213_32

def loopBody213_34 : HolLoopProg 64 :=
.seq loopBody213_19 loopBody213_33

def loopBody213_35 : HolLoopProg 64 :=
.mark loopBody213_34

def loopBody213_36 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_35

def loopBody213_37 : HolLoopProg 64 :=
.mark loopBody213_36

def loopBody213_38 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_37

def loopBody213_39 : HolLoopProg 64 :=
.mark loopBody213_38

def loopBody213_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody213_41 : HolLoopProg 64 :=
.mark loopBody213_40

def loopBody213_42 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 70) ([6]) (some (6, loopBody213_25, loopBody213_1, (Flapjack.Spt.ln)))

def loopBody213_43 : HolLoopProg 64 :=
.mark loopBody213_42

def loopBody213_44 : HolLoopProg 64 :=
.seq loopBody213_43 loopBody213_1

def loopBody213_45 : HolLoopProg 64 :=
.mark loopBody213_44

def loopBody213_46 : HolLoopProg 64 :=
.seq loopBody213_41 loopBody213_45

def loopBody213_47 : HolLoopProg 64 :=
.mark loopBody213_46

def loopBody213_48 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_47

def loopBody213_49 : HolLoopProg 64 :=
.mark loopBody213_48

def loopBody213_50 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_49

def loopBody213_51 : HolLoopProg 64 :=
.mark loopBody213_50

def loopBody213_52 : HolLoopProg 64 :=
.seq loopBody213_39 loopBody213_51

def loopBody213_53 : HolLoopProg 64 :=
.mark loopBody213_52

def loopBody213_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody213_55 : HolLoopProg 64 :=
.mark loopBody213_54

def loopBody213_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody213_57 : HolLoopProg 64 :=
.mark loopBody213_56

def loopBody213_58 : HolLoopProg 64 :=
.seq loopBody213_57 loopBody213_1

def loopBody213_59 : HolLoopProg 64 :=
.mark loopBody213_58

def loopBody213_60 : HolLoopProg 64 :=
.seq loopBody213_55 loopBody213_59

def loopBody213_61 : HolLoopProg 64 :=
.mark loopBody213_60

def loopBody213_62 : HolLoopProg 64 :=
.seq loopBody213_53 loopBody213_61

def loopBody213_63 : HolLoopProg 64 :=
.mark loopBody213_62

def loopBody213_64 : HolLoopProg 64 :=
.seq loopBody213_17 loopBody213_63

def loopBody213_65 : HolLoopProg 64 :=
.mark loopBody213_64

def loopBody213_66 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_65

def loopBody213_67 : HolLoopProg 64 :=
.mark loopBody213_66

def loopBody213_68 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_67

def loopBody213_69 : HolLoopProg 64 :=
.mark loopBody213_68

def loopBody213_70 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_69

def loopBody213_71 : HolLoopProg 64 :=
.mark loopBody213_70

def loopBody213_72 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_71

def loopBody213_73 : HolLoopProg 64 :=
.mark loopBody213_72

def loopBody213_74 : HolLoopProg 64 :=
.seq loopBody213_7 loopBody213_73

def loopBody213_75 : HolLoopProg 64 :=
.mark loopBody213_74

def loopBody213_76 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_75

def loopBody213_77 : HolLoopProg 64 :=
.mark loopBody213_76

def loopBody213_78 : HolLoopProg 64 :=
.seq loopBody213_1 loopBody213_77

def loopBody213_79 : HolLoopProg 64 :=
.mark loopBody213_78

def output213 : Nat × List Nat × HolLoopProg 64 :=
  (277, [0, 1], loopBody213_79)
end InitECandidate.Proofs.FrontendStages.Loop
