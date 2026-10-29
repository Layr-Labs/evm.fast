import InitECandidate.Proofs.FrontendStages.Loop.Translate50
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody66_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody66_1 : HolLoopProg 64 :=
.mark loopBody66_0

def loopBody66_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 0)

def loopBody66_3 : HolLoopProg 64 :=
.mark loopBody66_2

def loopBody66_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 1)

def loopBody66_5 : HolLoopProg 64 :=
.mark loopBody66_4

def loopBody66_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 2)

def loopBody66_7 : HolLoopProg 64 :=
.mark loopBody66_6

def loopBody66_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 3)

def loopBody66_9 : HolLoopProg 64 :=
.mark loopBody66_8

def loopBody66_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 4)

def loopBody66_11 : HolLoopProg 64 :=
.mark loopBody66_10

def loopBody66_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 5)

def loopBody66_13 : HolLoopProg 64 :=
.mark loopBody66_12

def loopBody66_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 6)

def loopBody66_15 : HolLoopProg 64 :=
.mark loopBody66_14

def loopBody66_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 7)

def loopBody66_17 : HolLoopProg 64 :=
.mark loopBody66_16

def loopBody66_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 16

def loopBody66_19 : HolLoopProg 64 :=
.mark loopBody66_18

def loopBody66_20 : HolLoopProg 64 :=
.call (some ([8, 9, 10, 11, 12, 13, 14, 15], Flapjack.Spt.ln)) (some 129) ([16, 17, 18, 19, 20, 21, 22, 23]) (some (16, loopBody66_19, loopBody66_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))

def loopBody66_21 : HolLoopProg 64 :=
.mark loopBody66_20

def loopBody66_22 : HolLoopProg 64 :=
.seq loopBody66_21 loopBody66_1

def loopBody66_23 : HolLoopProg 64 :=
.mark loopBody66_22

def loopBody66_24 : HolLoopProg 64 :=
.seq loopBody66_17 loopBody66_23

def loopBody66_25 : HolLoopProg 64 :=
.mark loopBody66_24

def loopBody66_26 : HolLoopProg 64 :=
.seq loopBody66_15 loopBody66_25

def loopBody66_27 : HolLoopProg 64 :=
.mark loopBody66_26

def loopBody66_28 : HolLoopProg 64 :=
.seq loopBody66_13 loopBody66_27

def loopBody66_29 : HolLoopProg 64 :=
.mark loopBody66_28

def loopBody66_30 : HolLoopProg 64 :=
.seq loopBody66_11 loopBody66_29

def loopBody66_31 : HolLoopProg 64 :=
.mark loopBody66_30

def loopBody66_32 : HolLoopProg 64 :=
.seq loopBody66_9 loopBody66_31

def loopBody66_33 : HolLoopProg 64 :=
.mark loopBody66_32

def loopBody66_34 : HolLoopProg 64 :=
.seq loopBody66_7 loopBody66_33

def loopBody66_35 : HolLoopProg 64 :=
.mark loopBody66_34

def loopBody66_36 : HolLoopProg 64 :=
.seq loopBody66_5 loopBody66_35

def loopBody66_37 : HolLoopProg 64 :=
.mark loopBody66_36

def loopBody66_38 : HolLoopProg 64 :=
.seq loopBody66_3 loopBody66_37

def loopBody66_39 : HolLoopProg 64 :=
.mark loopBody66_38

def loopBody66_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 8)

def loopBody66_41 : HolLoopProg 64 :=
.mark loopBody66_40

def loopBody66_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 9)

def loopBody66_43 : HolLoopProg 64 :=
.mark loopBody66_42

def loopBody66_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 10)

def loopBody66_45 : HolLoopProg 64 :=
.mark loopBody66_44

def loopBody66_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 11)

def loopBody66_47 : HolLoopProg 64 :=
.mark loopBody66_46

def loopBody66_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [16, 17, 18, 19]

def loopBody66_49 : HolLoopProg 64 :=
.mark loopBody66_48

def loopBody66_50 : HolLoopProg 64 :=
.seq loopBody66_49 loopBody66_1

def loopBody66_51 : HolLoopProg 64 :=
.mark loopBody66_50

def loopBody66_52 : HolLoopProg 64 :=
.seq loopBody66_47 loopBody66_51

def loopBody66_53 : HolLoopProg 64 :=
.mark loopBody66_52

def loopBody66_54 : HolLoopProg 64 :=
.seq loopBody66_45 loopBody66_53

def loopBody66_55 : HolLoopProg 64 :=
.mark loopBody66_54

def loopBody66_56 : HolLoopProg 64 :=
.seq loopBody66_43 loopBody66_55

def loopBody66_57 : HolLoopProg 64 :=
.mark loopBody66_56

def loopBody66_58 : HolLoopProg 64 :=
.seq loopBody66_41 loopBody66_57

def loopBody66_59 : HolLoopProg 64 :=
.mark loopBody66_58

def loopBody66_60 : HolLoopProg 64 :=
.seq loopBody66_39 loopBody66_59

def loopBody66_61 : HolLoopProg 64 :=
.mark loopBody66_60

def loopBody66_62 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_61

def loopBody66_63 : HolLoopProg 64 :=
.mark loopBody66_62

def loopBody66_64 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_63

def loopBody66_65 : HolLoopProg 64 :=
.mark loopBody66_64

def loopBody66_66 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_65

def loopBody66_67 : HolLoopProg 64 :=
.mark loopBody66_66

def loopBody66_68 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_67

def loopBody66_69 : HolLoopProg 64 :=
.mark loopBody66_68

def loopBody66_70 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_69

def loopBody66_71 : HolLoopProg 64 :=
.mark loopBody66_70

def loopBody66_72 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_71

def loopBody66_73 : HolLoopProg 64 :=
.mark loopBody66_72

def loopBody66_74 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_73

def loopBody66_75 : HolLoopProg 64 :=
.mark loopBody66_74

def loopBody66_76 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_75

def loopBody66_77 : HolLoopProg 64 :=
.mark loopBody66_76

def loopBody66_78 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_77

def loopBody66_79 : HolLoopProg 64 :=
.mark loopBody66_78

def loopBody66_80 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_79

def loopBody66_81 : HolLoopProg 64 :=
.mark loopBody66_80

def loopBody66_82 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_81

def loopBody66_83 : HolLoopProg 64 :=
.mark loopBody66_82

def loopBody66_84 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_83

def loopBody66_85 : HolLoopProg 64 :=
.mark loopBody66_84

def loopBody66_86 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_85

def loopBody66_87 : HolLoopProg 64 :=
.mark loopBody66_86

def loopBody66_88 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_87

def loopBody66_89 : HolLoopProg 64 :=
.mark loopBody66_88

def loopBody66_90 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_89

def loopBody66_91 : HolLoopProg 64 :=
.mark loopBody66_90

def loopBody66_92 : HolLoopProg 64 :=
.seq loopBody66_1 loopBody66_91

def loopBody66_93 : HolLoopProg 64 :=
.mark loopBody66_92

def output66 : Nat × List Nat × HolLoopProg 64 :=
  (130, [0, 1, 2, 3, 4, 5, 6, 7], loopBody66_93)
end InitECandidate.Proofs.FrontendStages.Loop
