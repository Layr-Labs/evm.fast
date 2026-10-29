import InitECandidate.Proofs.FrontendStages.Loop.Translate584
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody600_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody600_1 : HolLoopProg 64 :=
.mark loopBody600_0

def loopBody600_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody600_3 : HolLoopProg 64 :=
.mark loopBody600_2

def loopBody600_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody600_5 : HolLoopProg 64 :=
.mark loopBody600_4

def loopBody600_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody600_7 : HolLoopProg 64 :=
.mark loopBody600_6

def loopBody600_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 3)

def loopBody600_9 : HolLoopProg 64 :=
.mark loopBody600_8

def loopBody600_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 4332616871279656263#64)

def loopBody600_11 : HolLoopProg 64 :=
.mark loopBody600_10

def loopBody600_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 10917124144477883021#64)

def loopBody600_13 : HolLoopProg 64 :=
.mark loopBody600_12

def loopBody600_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 13281191951274694749#64)

def loopBody600_15 : HolLoopProg 64 :=
.mark loopBody600_14

def loopBody600_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 3486998266802970665#64)

def loopBody600_17 : HolLoopProg 64 :=
.mark loopBody600_16

def loopBody600_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody600_19 : HolLoopProg 64 :=
.mark loopBody600_18

def loopBody600_20 : HolLoopProg 64 :=
.call (some ([4, 5, 6, 7], Flapjack.Spt.ln)) (some 210) ([8, 9, 10, 11, 12, 13, 14, 15]) (some (8, loopBody600_19, loopBody600_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody600_21 : HolLoopProg 64 :=
.mark loopBody600_20

def loopBody600_22 : HolLoopProg 64 :=
.seq loopBody600_21 loopBody600_1

def loopBody600_23 : HolLoopProg 64 :=
.mark loopBody600_22

def loopBody600_24 : HolLoopProg 64 :=
.seq loopBody600_17 loopBody600_23

def loopBody600_25 : HolLoopProg 64 :=
.mark loopBody600_24

def loopBody600_26 : HolLoopProg 64 :=
.seq loopBody600_15 loopBody600_25

def loopBody600_27 : HolLoopProg 64 :=
.mark loopBody600_26

def loopBody600_28 : HolLoopProg 64 :=
.seq loopBody600_13 loopBody600_27

def loopBody600_29 : HolLoopProg 64 :=
.mark loopBody600_28

def loopBody600_30 : HolLoopProg 64 :=
.seq loopBody600_11 loopBody600_29

def loopBody600_31 : HolLoopProg 64 :=
.mark loopBody600_30

def loopBody600_32 : HolLoopProg 64 :=
.seq loopBody600_9 loopBody600_31

def loopBody600_33 : HolLoopProg 64 :=
.mark loopBody600_32

def loopBody600_34 : HolLoopProg 64 :=
.seq loopBody600_7 loopBody600_33

def loopBody600_35 : HolLoopProg 64 :=
.mark loopBody600_34

def loopBody600_36 : HolLoopProg 64 :=
.seq loopBody600_5 loopBody600_35

def loopBody600_37 : HolLoopProg 64 :=
.mark loopBody600_36

def loopBody600_38 : HolLoopProg 64 :=
.seq loopBody600_3 loopBody600_37

def loopBody600_39 : HolLoopProg 64 :=
.mark loopBody600_38

def loopBody600_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody600_41 : HolLoopProg 64 :=
.mark loopBody600_40

def loopBody600_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody600_43 : HolLoopProg 64 :=
.mark loopBody600_42

def loopBody600_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody600_45 : HolLoopProg 64 :=
.mark loopBody600_44

def loopBody600_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody600_47 : HolLoopProg 64 :=
.mark loopBody600_46

def loopBody600_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 12812017116984455391#64)

def loopBody600_49 : HolLoopProg 64 :=
.mark loopBody600_48

def loopBody600_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 7129779742913871286#64)

def loopBody600_51 : HolLoopProg 64 :=
.mark loopBody600_50

def loopBody600_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 17257524443456604923#64)

def loopBody600_53 : HolLoopProg 64 :=
.mark loopBody600_52

def loopBody600_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 2377177743836652868#64)

def loopBody600_55 : HolLoopProg 64 :=
.mark loopBody600_54

def loopBody600_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 661) [8, 9, 10, 11, 12, 13, 14, 15] none

def loopBody600_57 : HolLoopProg 64 :=
.mark loopBody600_56

def loopBody600_58 : HolLoopProg 64 :=
.seq loopBody600_57 loopBody600_1

def loopBody600_59 : HolLoopProg 64 :=
.mark loopBody600_58

def loopBody600_60 : HolLoopProg 64 :=
.seq loopBody600_55 loopBody600_59

def loopBody600_61 : HolLoopProg 64 :=
.mark loopBody600_60

def loopBody600_62 : HolLoopProg 64 :=
.seq loopBody600_53 loopBody600_61

def loopBody600_63 : HolLoopProg 64 :=
.mark loopBody600_62

def loopBody600_64 : HolLoopProg 64 :=
.seq loopBody600_51 loopBody600_63

def loopBody600_65 : HolLoopProg 64 :=
.mark loopBody600_64

def loopBody600_66 : HolLoopProg 64 :=
.seq loopBody600_49 loopBody600_65

def loopBody600_67 : HolLoopProg 64 :=
.mark loopBody600_66

def loopBody600_68 : HolLoopProg 64 :=
.seq loopBody600_47 loopBody600_67

def loopBody600_69 : HolLoopProg 64 :=
.mark loopBody600_68

def loopBody600_70 : HolLoopProg 64 :=
.seq loopBody600_45 loopBody600_69

def loopBody600_71 : HolLoopProg 64 :=
.mark loopBody600_70

def loopBody600_72 : HolLoopProg 64 :=
.seq loopBody600_43 loopBody600_71

def loopBody600_73 : HolLoopProg 64 :=
.mark loopBody600_72

def loopBody600_74 : HolLoopProg 64 :=
.seq loopBody600_41 loopBody600_73

def loopBody600_75 : HolLoopProg 64 :=
.mark loopBody600_74

def loopBody600_76 : HolLoopProg 64 :=
.seq loopBody600_39 loopBody600_75

def loopBody600_77 : HolLoopProg 64 :=
.mark loopBody600_76

def loopBody600_78 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_77

def loopBody600_79 : HolLoopProg 64 :=
.mark loopBody600_78

def loopBody600_80 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_79

def loopBody600_81 : HolLoopProg 64 :=
.mark loopBody600_80

def loopBody600_82 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_81

def loopBody600_83 : HolLoopProg 64 :=
.mark loopBody600_82

def loopBody600_84 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_83

def loopBody600_85 : HolLoopProg 64 :=
.mark loopBody600_84

def loopBody600_86 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_85

def loopBody600_87 : HolLoopProg 64 :=
.mark loopBody600_86

def loopBody600_88 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_87

def loopBody600_89 : HolLoopProg 64 :=
.mark loopBody600_88

def loopBody600_90 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_89

def loopBody600_91 : HolLoopProg 64 :=
.mark loopBody600_90

def loopBody600_92 : HolLoopProg 64 :=
.seq loopBody600_1 loopBody600_91

def loopBody600_93 : HolLoopProg 64 :=
.mark loopBody600_92

def output600 : Nat × List Nat × HolLoopProg 64 :=
  (664, [0, 1, 2, 3], loopBody600_93)
end InitECandidate.Proofs.FrontendStages.Loop
