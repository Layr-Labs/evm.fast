import InitECandidate.Proofs.FrontendStages.Loop.Translate256
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody272_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody272_1 : HolLoopProg 64 :=
.mark loopBody272_0

def loopBody272_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody272_3 : HolLoopProg 64 :=
.mark loopBody272_2

def loopBody272_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody272_5 : HolLoopProg 64 :=
.mark loopBody272_4

def loopBody272_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody272_7 : HolLoopProg 64 :=
.mark loopBody272_6

def loopBody272_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody272_9 : HolLoopProg 64 :=
.mark loopBody272_8

def loopBody272_10 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.ln)) (some 335) ([5, 6, 7]) (some (5, loopBody272_9, loopBody272_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody272_11 : HolLoopProg 64 :=
.mark loopBody272_10

def loopBody272_12 : HolLoopProg 64 :=
.seq loopBody272_11 loopBody272_1

def loopBody272_13 : HolLoopProg 64 :=
.mark loopBody272_12

def loopBody272_14 : HolLoopProg 64 :=
.seq loopBody272_7 loopBody272_13

def loopBody272_15 : HolLoopProg 64 :=
.mark loopBody272_14

def loopBody272_16 : HolLoopProg 64 :=
.seq loopBody272_5 loopBody272_15

def loopBody272_17 : HolLoopProg 64 :=
.mark loopBody272_16

def loopBody272_18 : HolLoopProg 64 :=
.seq loopBody272_3 loopBody272_17

def loopBody272_19 : HolLoopProg 64 :=
.mark loopBody272_18

def loopBody272_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody272_21 : HolLoopProg 64 :=
.mark loopBody272_20

def loopBody272_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody272_23 : HolLoopProg 64 :=
.mark loopBody272_22

def loopBody272_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody272_25 : HolLoopProg 64 :=
.mark loopBody272_24

def loopBody272_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody272_27 : HolLoopProg 64 :=
.mark loopBody272_26

def loopBody272_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody272_25 loopBody272_27 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody272_29 : HolLoopProg 64 :=
.mark loopBody272_28

def loopBody272_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody272_31 : HolLoopProg 64 :=
.mark loopBody272_30

def loopBody272_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 13#64)

def loopBody272_33 : HolLoopProg 64 :=
.mark loopBody272_32

def loopBody272_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody272_35 : HolLoopProg 64 :=
.mark loopBody272_34

def loopBody272_36 : HolLoopProg 64 :=
.seq loopBody272_35 loopBody272_1

def loopBody272_37 : HolLoopProg 64 :=
.mark loopBody272_36

def loopBody272_38 : HolLoopProg 64 :=
.seq loopBody272_37 loopBody272_1

def loopBody272_39 : HolLoopProg 64 :=
.mark loopBody272_38

def loopBody272_40 : HolLoopProg 64 :=
.seq loopBody272_33 loopBody272_39

def loopBody272_41 : HolLoopProg 64 :=
.mark loopBody272_40

def loopBody272_42 : HolLoopProg 64 :=
.seq loopBody272_1 loopBody272_41

def loopBody272_43 : HolLoopProg 64 :=
.mark loopBody272_42

def loopBody272_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 6#64)

def loopBody272_45 : HolLoopProg 64 :=
.mark loopBody272_44

def loopBody272_46 : HolLoopProg 64 :=
.seq loopBody272_45 loopBody272_9

def loopBody272_47 : HolLoopProg 64 :=
.mark loopBody272_46

def loopBody272_48 : HolLoopProg 64 :=
.seq loopBody272_43 loopBody272_47

def loopBody272_49 : HolLoopProg 64 :=
.mark loopBody272_48

def loopBody272_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody272_49 loopBody272_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody272_51 : HolLoopProg 64 :=
.mark loopBody272_50

def loopBody272_52 : HolLoopProg 64 :=
.seq loopBody272_51 loopBody272_1

def loopBody272_53 : HolLoopProg 64 :=
.mark loopBody272_52

def loopBody272_54 : HolLoopProg 64 :=
.seq loopBody272_31 loopBody272_53

def loopBody272_55 : HolLoopProg 64 :=
.mark loopBody272_54

def loopBody272_56 : HolLoopProg 64 :=
.seq loopBody272_29 loopBody272_55

def loopBody272_57 : HolLoopProg 64 :=
.mark loopBody272_56

def loopBody272_58 : HolLoopProg 64 :=
.seq loopBody272_23 loopBody272_57

def loopBody272_59 : HolLoopProg 64 :=
.mark loopBody272_58

def loopBody272_60 : HolLoopProg 64 :=
.seq loopBody272_21 loopBody272_59

def loopBody272_61 : HolLoopProg 64 :=
.mark loopBody272_60

def loopBody272_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody272_63 : HolLoopProg 64 :=
.mark loopBody272_62

def loopBody272_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody272_65 : HolLoopProg 64 :=
.mark loopBody272_64

def loopBody272_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 146) [5, 6] none

def loopBody272_67 : HolLoopProg 64 :=
.mark loopBody272_66

def loopBody272_68 : HolLoopProg 64 :=
.seq loopBody272_67 loopBody272_1

def loopBody272_69 : HolLoopProg 64 :=
.mark loopBody272_68

def loopBody272_70 : HolLoopProg 64 :=
.seq loopBody272_65 loopBody272_69

def loopBody272_71 : HolLoopProg 64 :=
.mark loopBody272_70

def loopBody272_72 : HolLoopProg 64 :=
.seq loopBody272_63 loopBody272_71

def loopBody272_73 : HolLoopProg 64 :=
.mark loopBody272_72

def loopBody272_74 : HolLoopProg 64 :=
.seq loopBody272_61 loopBody272_73

def loopBody272_75 : HolLoopProg 64 :=
.mark loopBody272_74

def loopBody272_76 : HolLoopProg 64 :=
.seq loopBody272_19 loopBody272_75

def loopBody272_77 : HolLoopProg 64 :=
.mark loopBody272_76

def loopBody272_78 : HolLoopProg 64 :=
.seq loopBody272_1 loopBody272_77

def loopBody272_79 : HolLoopProg 64 :=
.mark loopBody272_78

def loopBody272_80 : HolLoopProg 64 :=
.seq loopBody272_1 loopBody272_79

def loopBody272_81 : HolLoopProg 64 :=
.mark loopBody272_80

def loopBody272_82 : HolLoopProg 64 :=
.seq loopBody272_1 loopBody272_81

def loopBody272_83 : HolLoopProg 64 :=
.mark loopBody272_82

def loopBody272_84 : HolLoopProg 64 :=
.seq loopBody272_1 loopBody272_83

def loopBody272_85 : HolLoopProg 64 :=
.mark loopBody272_84

def output272 : Nat × List Nat × HolLoopProg 64 :=
  (336, [0, 1, 2], loopBody272_85)
end InitECandidate.Proofs.FrontendStages.Loop
