import InitECandidate.Proofs.FrontendStages.Loop.Translate159
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody175_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody175_1 : HolLoopProg 64 :=
.mark loopBody175_0

def loopBody175_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody175_3 : HolLoopProg 64 :=
.mark loopBody175_2

def loopBody175_4 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (4, loopBody175_3, loopBody175_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody175_5 : HolLoopProg 64 :=
.mark loopBody175_4

def loopBody175_6 : HolLoopProg 64 :=
.seq loopBody175_5 loopBody175_1

def loopBody175_7 : HolLoopProg 64 :=
.mark loopBody175_6

def loopBody175_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody175_9 : HolLoopProg 64 :=
.mark loopBody175_8

def loopBody175_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody175_11 : HolLoopProg 64 :=
.mark loopBody175_10

def loopBody175_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody175_13 : HolLoopProg 64 :=
.mark loopBody175_12

def loopBody175_14 : HolLoopProg 64 :=
.call (some
  ([4, 5],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 241) ([6, 7]) (some (6, loopBody175_13, loopBody175_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody175_15 : HolLoopProg 64 :=
.mark loopBody175_14

def loopBody175_16 : HolLoopProg 64 :=
.seq loopBody175_15 loopBody175_1

def loopBody175_17 : HolLoopProg 64 :=
.mark loopBody175_16

def loopBody175_18 : HolLoopProg 64 :=
.seq loopBody175_11 loopBody175_17

def loopBody175_19 : HolLoopProg 64 :=
.mark loopBody175_18

def loopBody175_20 : HolLoopProg 64 :=
.seq loopBody175_9 loopBody175_19

def loopBody175_21 : HolLoopProg 64 :=
.mark loopBody175_20

def loopBody175_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody175_23 : HolLoopProg 64 :=
.mark loopBody175_22

def loopBody175_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody175_25 : HolLoopProg 64 :=
.mark loopBody175_24

def loopBody175_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody175_27 : HolLoopProg 64 :=
.mark loopBody175_26

def loopBody175_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody175_29 : HolLoopProg 64 :=
.mark loopBody175_28

def loopBody175_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody175_31 : HolLoopProg 64 :=
.mark loopBody175_30

def loopBody175_32 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 238) ([7, 8, 9, 10]) (some (7, loopBody175_31, loopBody175_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody175_33 : HolLoopProg 64 :=
.mark loopBody175_32

def loopBody175_34 : HolLoopProg 64 :=
.seq loopBody175_33 loopBody175_1

def loopBody175_35 : HolLoopProg 64 :=
.mark loopBody175_34

def loopBody175_36 : HolLoopProg 64 :=
.seq loopBody175_29 loopBody175_35

def loopBody175_37 : HolLoopProg 64 :=
.mark loopBody175_36

def loopBody175_38 : HolLoopProg 64 :=
.seq loopBody175_27 loopBody175_37

def loopBody175_39 : HolLoopProg 64 :=
.mark loopBody175_38

def loopBody175_40 : HolLoopProg 64 :=
.seq loopBody175_25 loopBody175_39

def loopBody175_41 : HolLoopProg 64 :=
.mark loopBody175_40

def loopBody175_42 : HolLoopProg 64 :=
.seq loopBody175_23 loopBody175_41

def loopBody175_43 : HolLoopProg 64 :=
.mark loopBody175_42

def loopBody175_44 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_43

def loopBody175_45 : HolLoopProg 64 :=
.mark loopBody175_44

def loopBody175_46 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_45

def loopBody175_47 : HolLoopProg 64 :=
.mark loopBody175_46

def loopBody175_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody175_49 : HolLoopProg 64 :=
.mark loopBody175_48

def loopBody175_50 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.ln)) (some 70) ([7]) (some (7, loopBody175_31, loopBody175_1, (Flapjack.Spt.ln)))

def loopBody175_51 : HolLoopProg 64 :=
.mark loopBody175_50

def loopBody175_52 : HolLoopProg 64 :=
.seq loopBody175_51 loopBody175_1

def loopBody175_53 : HolLoopProg 64 :=
.mark loopBody175_52

def loopBody175_54 : HolLoopProg 64 :=
.seq loopBody175_49 loopBody175_53

def loopBody175_55 : HolLoopProg 64 :=
.mark loopBody175_54

def loopBody175_56 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_55

def loopBody175_57 : HolLoopProg 64 :=
.mark loopBody175_56

def loopBody175_58 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_57

def loopBody175_59 : HolLoopProg 64 :=
.mark loopBody175_58

def loopBody175_60 : HolLoopProg 64 :=
.seq loopBody175_47 loopBody175_59

def loopBody175_61 : HolLoopProg 64 :=
.mark loopBody175_60

def loopBody175_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody175_63 : HolLoopProg 64 :=
.mark loopBody175_62

def loopBody175_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody175_65 : HolLoopProg 64 :=
.mark loopBody175_64

def loopBody175_66 : HolLoopProg 64 :=
.seq loopBody175_65 loopBody175_1

def loopBody175_67 : HolLoopProg 64 :=
.mark loopBody175_66

def loopBody175_68 : HolLoopProg 64 :=
.seq loopBody175_63 loopBody175_67

def loopBody175_69 : HolLoopProg 64 :=
.mark loopBody175_68

def loopBody175_70 : HolLoopProg 64 :=
.seq loopBody175_61 loopBody175_69

def loopBody175_71 : HolLoopProg 64 :=
.mark loopBody175_70

def loopBody175_72 : HolLoopProg 64 :=
.seq loopBody175_21 loopBody175_71

def loopBody175_73 : HolLoopProg 64 :=
.mark loopBody175_72

def loopBody175_74 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_73

def loopBody175_75 : HolLoopProg 64 :=
.mark loopBody175_74

def loopBody175_76 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_75

def loopBody175_77 : HolLoopProg 64 :=
.mark loopBody175_76

def loopBody175_78 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_77

def loopBody175_79 : HolLoopProg 64 :=
.mark loopBody175_78

def loopBody175_80 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_79

def loopBody175_81 : HolLoopProg 64 :=
.mark loopBody175_80

def loopBody175_82 : HolLoopProg 64 :=
.seq loopBody175_7 loopBody175_81

def loopBody175_83 : HolLoopProg 64 :=
.mark loopBody175_82

def loopBody175_84 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_83

def loopBody175_85 : HolLoopProg 64 :=
.mark loopBody175_84

def loopBody175_86 : HolLoopProg 64 :=
.seq loopBody175_1 loopBody175_85

def loopBody175_87 : HolLoopProg 64 :=
.mark loopBody175_86

def output175 : Nat × List Nat × HolLoopProg 64 :=
  (239, [0, 1, 2], loopBody175_87)
end InitECandidate.Proofs.FrontendStages.Loop
