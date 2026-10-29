import InitECandidate.Proofs.FrontendStages.Loop.Translate290
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody306_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody306_1 : HolLoopProg 64 :=
.mark loopBody306_0

def loopBody306_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody306_3 : HolLoopProg 64 :=
.mark loopBody306_2

def loopBody306_4 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 69) ([]) (some (5, loopBody306_3, loopBody306_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody306_5 : HolLoopProg 64 :=
.mark loopBody306_4

def loopBody306_6 : HolLoopProg 64 :=
.seq loopBody306_5 loopBody306_1

def loopBody306_7 : HolLoopProg 64 :=
.mark loopBody306_6

def loopBody306_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody306_9 : HolLoopProg 64 :=
.mark loopBody306_8

def loopBody306_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody306_11 : HolLoopProg 64 :=
.mark loopBody306_10

def loopBody306_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody306_13 : HolLoopProg 64 :=
.mark loopBody306_12

def loopBody306_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody306_15 : HolLoopProg 64 :=
.mark loopBody306_14

def loopBody306_16 : HolLoopProg 64 :=
.call (some
  ([5, 6],
    Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 367) ([7, 8, 9]) (some (7, loopBody306_15, loopBody306_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody306_17 : HolLoopProg 64 :=
.mark loopBody306_16

def loopBody306_18 : HolLoopProg 64 :=
.seq loopBody306_17 loopBody306_1

def loopBody306_19 : HolLoopProg 64 :=
.mark loopBody306_18

def loopBody306_20 : HolLoopProg 64 :=
.seq loopBody306_13 loopBody306_19

def loopBody306_21 : HolLoopProg 64 :=
.mark loopBody306_20

def loopBody306_22 : HolLoopProg 64 :=
.seq loopBody306_11 loopBody306_21

def loopBody306_23 : HolLoopProg 64 :=
.mark loopBody306_22

def loopBody306_24 : HolLoopProg 64 :=
.seq loopBody306_9 loopBody306_23

def loopBody306_25 : HolLoopProg 64 :=
.mark loopBody306_24

def loopBody306_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody306_27 : HolLoopProg 64 :=
.mark loopBody306_26

def loopBody306_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 6)

def loopBody306_29 : HolLoopProg 64 :=
.mark loopBody306_28

def loopBody306_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 3)

def loopBody306_31 : HolLoopProg 64 :=
.mark loopBody306_30

def loopBody306_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody306_33 : HolLoopProg 64 :=
.mark loopBody306_32

def loopBody306_34 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 158) ([8, 9, 10]) (some (8, loopBody306_33, loopBody306_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody306_35 : HolLoopProg 64 :=
.mark loopBody306_34

def loopBody306_36 : HolLoopProg 64 :=
.seq loopBody306_35 loopBody306_1

def loopBody306_37 : HolLoopProg 64 :=
.mark loopBody306_36

def loopBody306_38 : HolLoopProg 64 :=
.seq loopBody306_31 loopBody306_37

def loopBody306_39 : HolLoopProg 64 :=
.mark loopBody306_38

def loopBody306_40 : HolLoopProg 64 :=
.seq loopBody306_29 loopBody306_39

def loopBody306_41 : HolLoopProg 64 :=
.mark loopBody306_40

def loopBody306_42 : HolLoopProg 64 :=
.seq loopBody306_27 loopBody306_41

def loopBody306_43 : HolLoopProg 64 :=
.mark loopBody306_42

def loopBody306_44 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_43

def loopBody306_45 : HolLoopProg 64 :=
.mark loopBody306_44

def loopBody306_46 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_45

def loopBody306_47 : HolLoopProg 64 :=
.mark loopBody306_46

def loopBody306_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody306_49 : HolLoopProg 64 :=
.mark loopBody306_48

def loopBody306_50 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ln)) (some 70) ([8]) (some (8, loopBody306_33, loopBody306_1, (Flapjack.Spt.ln)))

def loopBody306_51 : HolLoopProg 64 :=
.mark loopBody306_50

def loopBody306_52 : HolLoopProg 64 :=
.seq loopBody306_51 loopBody306_1

def loopBody306_53 : HolLoopProg 64 :=
.mark loopBody306_52

def loopBody306_54 : HolLoopProg 64 :=
.seq loopBody306_49 loopBody306_53

def loopBody306_55 : HolLoopProg 64 :=
.mark loopBody306_54

def loopBody306_56 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_55

def loopBody306_57 : HolLoopProg 64 :=
.mark loopBody306_56

def loopBody306_58 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_57

def loopBody306_59 : HolLoopProg 64 :=
.mark loopBody306_58

def loopBody306_60 : HolLoopProg 64 :=
.seq loopBody306_47 loopBody306_59

def loopBody306_61 : HolLoopProg 64 :=
.mark loopBody306_60

def loopBody306_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody306_63 : HolLoopProg 64 :=
.mark loopBody306_62

def loopBody306_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody306_65 : HolLoopProg 64 :=
.mark loopBody306_64

def loopBody306_66 : HolLoopProg 64 :=
.seq loopBody306_65 loopBody306_1

def loopBody306_67 : HolLoopProg 64 :=
.mark loopBody306_66

def loopBody306_68 : HolLoopProg 64 :=
.seq loopBody306_63 loopBody306_67

def loopBody306_69 : HolLoopProg 64 :=
.mark loopBody306_68

def loopBody306_70 : HolLoopProg 64 :=
.seq loopBody306_61 loopBody306_69

def loopBody306_71 : HolLoopProg 64 :=
.mark loopBody306_70

def loopBody306_72 : HolLoopProg 64 :=
.seq loopBody306_25 loopBody306_71

def loopBody306_73 : HolLoopProg 64 :=
.mark loopBody306_72

def loopBody306_74 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_73

def loopBody306_75 : HolLoopProg 64 :=
.mark loopBody306_74

def loopBody306_76 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_75

def loopBody306_77 : HolLoopProg 64 :=
.mark loopBody306_76

def loopBody306_78 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_77

def loopBody306_79 : HolLoopProg 64 :=
.mark loopBody306_78

def loopBody306_80 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_79

def loopBody306_81 : HolLoopProg 64 :=
.mark loopBody306_80

def loopBody306_82 : HolLoopProg 64 :=
.seq loopBody306_7 loopBody306_81

def loopBody306_83 : HolLoopProg 64 :=
.mark loopBody306_82

def loopBody306_84 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_83

def loopBody306_85 : HolLoopProg 64 :=
.mark loopBody306_84

def loopBody306_86 : HolLoopProg 64 :=
.seq loopBody306_1 loopBody306_85

def loopBody306_87 : HolLoopProg 64 :=
.mark loopBody306_86

def output306 : Nat × List Nat × HolLoopProg 64 :=
  (370, [0, 1, 2, 3], loopBody306_87)
end InitECandidate.Proofs.FrontendStages.Loop
