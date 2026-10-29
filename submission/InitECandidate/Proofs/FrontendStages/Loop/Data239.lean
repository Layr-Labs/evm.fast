import InitECandidate.Proofs.FrontendStages.Loop.Translate223
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody239_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody239_1 : HolLoopProg 64 :=
.mark loopBody239_0

def loopBody239_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody239_3 : HolLoopProg 64 :=
.mark loopBody239_2

def loopBody239_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody239_5 : HolLoopProg 64 :=
.mark loopBody239_4

def loopBody239_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody239_7 : HolLoopProg 64 :=
.mark loopBody239_6

def loopBody239_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody239_9 : HolLoopProg 64 :=
.mark loopBody239_8

def loopBody239_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody239_11 : HolLoopProg 64 :=
.mark loopBody239_10

def loopBody239_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody239_13 : HolLoopProg 64 :=
.mark loopBody239_12

def loopBody239_14 : HolLoopProg 64 :=
.seq loopBody239_13 loopBody239_1

def loopBody239_15 : HolLoopProg 64 :=
.mark loopBody239_14

def loopBody239_16 : HolLoopProg 64 :=
.seq loopBody239_15 loopBody239_1

def loopBody239_17 : HolLoopProg 64 :=
.mark loopBody239_16

def loopBody239_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody239_19 : HolLoopProg 64 :=
.mark loopBody239_18

def loopBody239_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody239_21 : HolLoopProg 64 :=
.mark loopBody239_20

def loopBody239_22 : HolLoopProg 64 :=
.call (some ([6], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 76) ([7]) (some (7, loopBody239_21, loopBody239_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody239_23 : HolLoopProg 64 :=
.mark loopBody239_22

def loopBody239_24 : HolLoopProg 64 :=
.seq loopBody239_23 loopBody239_1

def loopBody239_25 : HolLoopProg 64 :=
.mark loopBody239_24

def loopBody239_26 : HolLoopProg 64 :=
.seq loopBody239_19 loopBody239_25

def loopBody239_27 : HolLoopProg 64 :=
.mark loopBody239_26

def loopBody239_28 : HolLoopProg 64 :=
.seq loopBody239_1 loopBody239_27

def loopBody239_29 : HolLoopProg 64 :=
.mark loopBody239_28

def loopBody239_30 : HolLoopProg 64 :=
.seq loopBody239_1 loopBody239_29

def loopBody239_31 : HolLoopProg 64 :=
.mark loopBody239_30

def loopBody239_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody239_33 : HolLoopProg 64 :=
.mark loopBody239_32

def loopBody239_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 6)

def loopBody239_35 : HolLoopProg 64 :=
.mark loopBody239_34

def loopBody239_36 : HolLoopProg 64 :=
.seq loopBody239_35 loopBody239_1

def loopBody239_37 : HolLoopProg 64 :=
.mark loopBody239_36

def loopBody239_38 : HolLoopProg 64 :=
.seq loopBody239_37 loopBody239_1

def loopBody239_39 : HolLoopProg 64 :=
.mark loopBody239_38

def loopBody239_40 : HolLoopProg 64 :=
.seq loopBody239_33 loopBody239_39

def loopBody239_41 : HolLoopProg 64 :=
.mark loopBody239_40

def loopBody239_42 : HolLoopProg 64 :=
.seq loopBody239_1 loopBody239_41

def loopBody239_43 : HolLoopProg 64 :=
.mark loopBody239_42

def loopBody239_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 5#64)

def loopBody239_45 : HolLoopProg 64 :=
.mark loopBody239_44

def loopBody239_46 : HolLoopProg 64 :=
.seq loopBody239_45 loopBody239_9

def loopBody239_47 : HolLoopProg 64 :=
.mark loopBody239_46

def loopBody239_48 : HolLoopProg 64 :=
.seq loopBody239_43 loopBody239_47

def loopBody239_49 : HolLoopProg 64 :=
.mark loopBody239_48

def loopBody239_50 : HolLoopProg 64 :=
.seq loopBody239_31 loopBody239_49

def loopBody239_51 : HolLoopProg 64 :=
.mark loopBody239_50

def loopBody239_52 : HolLoopProg 64 :=
.seq loopBody239_17 loopBody239_51

def loopBody239_53 : HolLoopProg 64 :=
.mark loopBody239_52

def loopBody239_54 : HolLoopProg 64 :=
.seq loopBody239_11 loopBody239_53

def loopBody239_55 : HolLoopProg 64 :=
.mark loopBody239_54

def loopBody239_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 5#64) loopBody239_9 loopBody239_55 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody239_57 : HolLoopProg 64 :=
.mark loopBody239_56

def loopBody239_58 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 302) ([6, 7, 8]) (some (6, loopBody239_57, loopBody239_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody239_59 : HolLoopProg 64 :=
.mark loopBody239_58

def loopBody239_60 : HolLoopProg 64 :=
.seq loopBody239_59 loopBody239_1

def loopBody239_61 : HolLoopProg 64 :=
.mark loopBody239_60

def loopBody239_62 : HolLoopProg 64 :=
.seq loopBody239_7 loopBody239_61

def loopBody239_63 : HolLoopProg 64 :=
.mark loopBody239_62

def loopBody239_64 : HolLoopProg 64 :=
.seq loopBody239_5 loopBody239_63

def loopBody239_65 : HolLoopProg 64 :=
.mark loopBody239_64

def loopBody239_66 : HolLoopProg 64 :=
.seq loopBody239_3 loopBody239_65

def loopBody239_67 : HolLoopProg 64 :=
.mark loopBody239_66

def loopBody239_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody239_69 : HolLoopProg 64 :=
.mark loopBody239_68

def loopBody239_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody239_71 : HolLoopProg 64 :=
.mark loopBody239_70

def loopBody239_72 : HolLoopProg 64 :=
.seq loopBody239_71 loopBody239_1

def loopBody239_73 : HolLoopProg 64 :=
.mark loopBody239_72

def loopBody239_74 : HolLoopProg 64 :=
.seq loopBody239_69 loopBody239_73

def loopBody239_75 : HolLoopProg 64 :=
.mark loopBody239_74

def loopBody239_76 : HolLoopProg 64 :=
.seq loopBody239_67 loopBody239_75

def loopBody239_77 : HolLoopProg 64 :=
.mark loopBody239_76

def loopBody239_78 : HolLoopProg 64 :=
.seq loopBody239_1 loopBody239_77

def loopBody239_79 : HolLoopProg 64 :=
.mark loopBody239_78

def loopBody239_80 : HolLoopProg 64 :=
.seq loopBody239_1 loopBody239_79

def loopBody239_81 : HolLoopProg 64 :=
.mark loopBody239_80

def loopBody239_82 : HolLoopProg 64 :=
.seq loopBody239_1 loopBody239_81

def loopBody239_83 : HolLoopProg 64 :=
.mark loopBody239_82

def loopBody239_84 : HolLoopProg 64 :=
.seq loopBody239_1 loopBody239_83

def loopBody239_85 : HolLoopProg 64 :=
.mark loopBody239_84

def output239 : Nat × List Nat × HolLoopProg 64 :=
  (303, [0, 1, 2, 3], loopBody239_85)
end InitECandidate.Proofs.FrontendStages.Loop
