import InitECandidate.Proofs.FrontendStages.Loop.Translate343
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody359_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody359_1 : HolLoopProg 64 :=
.mark loopBody359_0

def loopBody359_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody359_3 : HolLoopProg 64 :=
.mark loopBody359_2

def loopBody359_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody359_5 : HolLoopProg 64 :=
.mark loopBody359_4

def loopBody359_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody359_7 : HolLoopProg 64 :=
.mark loopBody359_6

def loopBody359_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 419) ([3, 4]) (some (3, loopBody359_7, loopBody359_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody359_9 : HolLoopProg 64 :=
.mark loopBody359_8

def loopBody359_10 : HolLoopProg 64 :=
.seq loopBody359_9 loopBody359_1

def loopBody359_11 : HolLoopProg 64 :=
.mark loopBody359_10

def loopBody359_12 : HolLoopProg 64 :=
.seq loopBody359_5 loopBody359_11

def loopBody359_13 : HolLoopProg 64 :=
.mark loopBody359_12

def loopBody359_14 : HolLoopProg 64 :=
.seq loopBody359_3 loopBody359_13

def loopBody359_15 : HolLoopProg 64 :=
.mark loopBody359_14

def loopBody359_16 : HolLoopProg 64 :=
.seq loopBody359_1 loopBody359_15

def loopBody359_17 : HolLoopProg 64 :=
.mark loopBody359_16

def loopBody359_18 : HolLoopProg 64 :=
.seq loopBody359_1 loopBody359_17

def loopBody359_19 : HolLoopProg 64 :=
.mark loopBody359_18

def loopBody359_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody359_21 : HolLoopProg 64 :=
.mark loopBody359_20

def loopBody359_22 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 416) ([3]) (some (3, loopBody359_7, loopBody359_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody359_23 : HolLoopProg 64 :=
.mark loopBody359_22

def loopBody359_24 : HolLoopProg 64 :=
.seq loopBody359_23 loopBody359_1

def loopBody359_25 : HolLoopProg 64 :=
.mark loopBody359_24

def loopBody359_26 : HolLoopProg 64 :=
.seq loopBody359_21 loopBody359_25

def loopBody359_27 : HolLoopProg 64 :=
.mark loopBody359_26

def loopBody359_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody359_29 : HolLoopProg 64 :=
.mark loopBody359_28

def loopBody359_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody359_31 : HolLoopProg 64 :=
.mark loopBody359_30

def loopBody359_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody359_33 : HolLoopProg 64 :=
.mark loopBody359_32

def loopBody359_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody359_35 : HolLoopProg 64 :=
.mark loopBody359_34

def loopBody359_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody359_33 loopBody359_35 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody359_37 : HolLoopProg 64 :=
.mark loopBody359_36

def loopBody359_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody359_39 : HolLoopProg 64 :=
.mark loopBody359_38

def loopBody359_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody359_41 : HolLoopProg 64 :=
.mark loopBody359_40

def loopBody359_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody359_43 : HolLoopProg 64 :=
.mark loopBody359_42

def loopBody359_44 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 422) ([4]) (some (4, loopBody359_43, loopBody359_1, (Flapjack.Spt.ln)))

def loopBody359_45 : HolLoopProg 64 :=
.mark loopBody359_44

def loopBody359_46 : HolLoopProg 64 :=
.seq loopBody359_45 loopBody359_1

def loopBody359_47 : HolLoopProg 64 :=
.mark loopBody359_46

def loopBody359_48 : HolLoopProg 64 :=
.seq loopBody359_41 loopBody359_47

def loopBody359_49 : HolLoopProg 64 :=
.mark loopBody359_48

def loopBody359_50 : HolLoopProg 64 :=
.seq loopBody359_1 loopBody359_49

def loopBody359_51 : HolLoopProg 64 :=
.mark loopBody359_50

def loopBody359_52 : HolLoopProg 64 :=
.seq loopBody359_1 loopBody359_51

def loopBody359_53 : HolLoopProg 64 :=
.mark loopBody359_52

def loopBody359_54 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody359_53 loopBody359_1 (Flapjack.Spt.ln)

def loopBody359_55 : HolLoopProg 64 :=
.mark loopBody359_54

def loopBody359_56 : HolLoopProg 64 :=
.seq loopBody359_55 loopBody359_1

def loopBody359_57 : HolLoopProg 64 :=
.mark loopBody359_56

def loopBody359_58 : HolLoopProg 64 :=
.seq loopBody359_39 loopBody359_57

def loopBody359_59 : HolLoopProg 64 :=
.mark loopBody359_58

def loopBody359_60 : HolLoopProg 64 :=
.seq loopBody359_37 loopBody359_59

def loopBody359_61 : HolLoopProg 64 :=
.mark loopBody359_60

def loopBody359_62 : HolLoopProg 64 :=
.seq loopBody359_31 loopBody359_61

def loopBody359_63 : HolLoopProg 64 :=
.mark loopBody359_62

def loopBody359_64 : HolLoopProg 64 :=
.seq loopBody359_29 loopBody359_63

def loopBody359_65 : HolLoopProg 64 :=
.mark loopBody359_64

def loopBody359_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody359_67 : HolLoopProg 64 :=
.mark loopBody359_66

def loopBody359_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody359_69 : HolLoopProg 64 :=
.mark loopBody359_68

def loopBody359_70 : HolLoopProg 64 :=
.seq loopBody359_69 loopBody359_1

def loopBody359_71 : HolLoopProg 64 :=
.mark loopBody359_70

def loopBody359_72 : HolLoopProg 64 :=
.seq loopBody359_67 loopBody359_71

def loopBody359_73 : HolLoopProg 64 :=
.mark loopBody359_72

def loopBody359_74 : HolLoopProg 64 :=
.seq loopBody359_65 loopBody359_73

def loopBody359_75 : HolLoopProg 64 :=
.mark loopBody359_74

def loopBody359_76 : HolLoopProg 64 :=
.seq loopBody359_27 loopBody359_75

def loopBody359_77 : HolLoopProg 64 :=
.mark loopBody359_76

def loopBody359_78 : HolLoopProg 64 :=
.seq loopBody359_1 loopBody359_77

def loopBody359_79 : HolLoopProg 64 :=
.mark loopBody359_78

def loopBody359_80 : HolLoopProg 64 :=
.seq loopBody359_1 loopBody359_79

def loopBody359_81 : HolLoopProg 64 :=
.mark loopBody359_80

def loopBody359_82 : HolLoopProg 64 :=
.seq loopBody359_19 loopBody359_81

def loopBody359_83 : HolLoopProg 64 :=
.mark loopBody359_82

def output359 : Nat × List Nat × HolLoopProg 64 :=
  (423, [0, 1], loopBody359_83)
end InitECandidate.Proofs.FrontendStages.Loop
