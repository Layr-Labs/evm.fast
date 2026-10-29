import InitECandidate.Proofs.FrontendStages.Loop.Translate51
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody67_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody67_1 : HolLoopProg 64 :=
.mark loopBody67_0

def loopBody67_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 0)

def loopBody67_3 : HolLoopProg 64 :=
.mark loopBody67_2

def loopBody67_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 1)

def loopBody67_5 : HolLoopProg 64 :=
.mark loopBody67_4

def loopBody67_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 2)

def loopBody67_7 : HolLoopProg 64 :=
.mark loopBody67_6

def loopBody67_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 3)

def loopBody67_9 : HolLoopProg 64 :=
.mark loopBody67_8

def loopBody67_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 4)

def loopBody67_11 : HolLoopProg 64 :=
.mark loopBody67_10

def loopBody67_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 21 (Flapjack.HolLoopExp.var 5)

def loopBody67_13 : HolLoopProg 64 :=
.mark loopBody67_12

def loopBody67_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 22 (Flapjack.HolLoopExp.var 6)

def loopBody67_15 : HolLoopProg 64 :=
.mark loopBody67_14

def loopBody67_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 23 (Flapjack.HolLoopExp.var 7)

def loopBody67_17 : HolLoopProg 64 :=
.mark loopBody67_16

def loopBody67_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 16

def loopBody67_19 : HolLoopProg 64 :=
.mark loopBody67_18

def loopBody67_20 : HolLoopProg 64 :=
.call (some ([8, 9, 10, 11, 12, 13, 14, 15], Flapjack.Spt.ln)) (some 129) ([16, 17, 18, 19, 20, 21, 22, 23]) (some (16, loopBody67_19, loopBody67_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))

def loopBody67_21 : HolLoopProg 64 :=
.mark loopBody67_20

def loopBody67_22 : HolLoopProg 64 :=
.seq loopBody67_21 loopBody67_1

def loopBody67_23 : HolLoopProg 64 :=
.mark loopBody67_22

def loopBody67_24 : HolLoopProg 64 :=
.seq loopBody67_17 loopBody67_23

def loopBody67_25 : HolLoopProg 64 :=
.mark loopBody67_24

def loopBody67_26 : HolLoopProg 64 :=
.seq loopBody67_15 loopBody67_25

def loopBody67_27 : HolLoopProg 64 :=
.mark loopBody67_26

def loopBody67_28 : HolLoopProg 64 :=
.seq loopBody67_13 loopBody67_27

def loopBody67_29 : HolLoopProg 64 :=
.mark loopBody67_28

def loopBody67_30 : HolLoopProg 64 :=
.seq loopBody67_11 loopBody67_29

def loopBody67_31 : HolLoopProg 64 :=
.mark loopBody67_30

def loopBody67_32 : HolLoopProg 64 :=
.seq loopBody67_9 loopBody67_31

def loopBody67_33 : HolLoopProg 64 :=
.mark loopBody67_32

def loopBody67_34 : HolLoopProg 64 :=
.seq loopBody67_7 loopBody67_33

def loopBody67_35 : HolLoopProg 64 :=
.mark loopBody67_34

def loopBody67_36 : HolLoopProg 64 :=
.seq loopBody67_5 loopBody67_35

def loopBody67_37 : HolLoopProg 64 :=
.mark loopBody67_36

def loopBody67_38 : HolLoopProg 64 :=
.seq loopBody67_3 loopBody67_37

def loopBody67_39 : HolLoopProg 64 :=
.mark loopBody67_38

def loopBody67_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 12)

def loopBody67_41 : HolLoopProg 64 :=
.mark loopBody67_40

def loopBody67_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 13)

def loopBody67_43 : HolLoopProg 64 :=
.mark loopBody67_42

def loopBody67_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 14)

def loopBody67_45 : HolLoopProg 64 :=
.mark loopBody67_44

def loopBody67_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 15)

def loopBody67_47 : HolLoopProg 64 :=
.mark loopBody67_46

def loopBody67_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [16, 17, 18, 19]

def loopBody67_49 : HolLoopProg 64 :=
.mark loopBody67_48

def loopBody67_50 : HolLoopProg 64 :=
.seq loopBody67_49 loopBody67_1

def loopBody67_51 : HolLoopProg 64 :=
.mark loopBody67_50

def loopBody67_52 : HolLoopProg 64 :=
.seq loopBody67_47 loopBody67_51

def loopBody67_53 : HolLoopProg 64 :=
.mark loopBody67_52

def loopBody67_54 : HolLoopProg 64 :=
.seq loopBody67_45 loopBody67_53

def loopBody67_55 : HolLoopProg 64 :=
.mark loopBody67_54

def loopBody67_56 : HolLoopProg 64 :=
.seq loopBody67_43 loopBody67_55

def loopBody67_57 : HolLoopProg 64 :=
.mark loopBody67_56

def loopBody67_58 : HolLoopProg 64 :=
.seq loopBody67_41 loopBody67_57

def loopBody67_59 : HolLoopProg 64 :=
.mark loopBody67_58

def loopBody67_60 : HolLoopProg 64 :=
.seq loopBody67_39 loopBody67_59

def loopBody67_61 : HolLoopProg 64 :=
.mark loopBody67_60

def loopBody67_62 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_61

def loopBody67_63 : HolLoopProg 64 :=
.mark loopBody67_62

def loopBody67_64 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_63

def loopBody67_65 : HolLoopProg 64 :=
.mark loopBody67_64

def loopBody67_66 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_65

def loopBody67_67 : HolLoopProg 64 :=
.mark loopBody67_66

def loopBody67_68 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_67

def loopBody67_69 : HolLoopProg 64 :=
.mark loopBody67_68

def loopBody67_70 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_69

def loopBody67_71 : HolLoopProg 64 :=
.mark loopBody67_70

def loopBody67_72 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_71

def loopBody67_73 : HolLoopProg 64 :=
.mark loopBody67_72

def loopBody67_74 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_73

def loopBody67_75 : HolLoopProg 64 :=
.mark loopBody67_74

def loopBody67_76 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_75

def loopBody67_77 : HolLoopProg 64 :=
.mark loopBody67_76

def loopBody67_78 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_77

def loopBody67_79 : HolLoopProg 64 :=
.mark loopBody67_78

def loopBody67_80 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_79

def loopBody67_81 : HolLoopProg 64 :=
.mark loopBody67_80

def loopBody67_82 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_81

def loopBody67_83 : HolLoopProg 64 :=
.mark loopBody67_82

def loopBody67_84 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_83

def loopBody67_85 : HolLoopProg 64 :=
.mark loopBody67_84

def loopBody67_86 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_85

def loopBody67_87 : HolLoopProg 64 :=
.mark loopBody67_86

def loopBody67_88 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_87

def loopBody67_89 : HolLoopProg 64 :=
.mark loopBody67_88

def loopBody67_90 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_89

def loopBody67_91 : HolLoopProg 64 :=
.mark loopBody67_90

def loopBody67_92 : HolLoopProg 64 :=
.seq loopBody67_1 loopBody67_91

def loopBody67_93 : HolLoopProg 64 :=
.mark loopBody67_92

def output67 : Nat × List Nat × HolLoopProg 64 :=
  (131, [0, 1, 2, 3, 4, 5, 6, 7], loopBody67_93)
end InitECandidate.Proofs.FrontendStages.Loop
