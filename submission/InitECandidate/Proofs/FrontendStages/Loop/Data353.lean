import InitECandidate.Proofs.FrontendStages.Loop.Translate337
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody353_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody353_1 : HolLoopProg 64 :=
.mark loopBody353_0

def loopBody353_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody353_3 : HolLoopProg 64 :=
.mark loopBody353_2

def loopBody353_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody353_5 : HolLoopProg 64 :=
.mark loopBody353_4

def loopBody353_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 406) ([2]) (some (2, loopBody353_5, loopBody353_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody353_7 : HolLoopProg 64 :=
.mark loopBody353_6

def loopBody353_8 : HolLoopProg 64 :=
.seq loopBody353_7 loopBody353_1

def loopBody353_9 : HolLoopProg 64 :=
.mark loopBody353_8

def loopBody353_10 : HolLoopProg 64 :=
.seq loopBody353_3 loopBody353_9

def loopBody353_11 : HolLoopProg 64 :=
.mark loopBody353_10

def loopBody353_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody353_13 : HolLoopProg 64 :=
.mark loopBody353_12

def loopBody353_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody353_15 : HolLoopProg 64 :=
.mark loopBody353_14

def loopBody353_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody353_17 : HolLoopProg 64 :=
.mark loopBody353_16

def loopBody353_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody353_19 : HolLoopProg 64 :=
.mark loopBody353_18

def loopBody353_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody353_17 loopBody353_19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody353_21 : HolLoopProg 64 :=
.mark loopBody353_20

def loopBody353_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody353_23 : HolLoopProg 64 :=
.mark loopBody353_22

def loopBody353_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody353_25 : HolLoopProg 64 :=
.mark loopBody353_24

def loopBody353_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody353_27 : HolLoopProg 64 :=
.mark loopBody353_26

def loopBody353_28 : HolLoopProg 64 :=
.seq loopBody353_27 loopBody353_1

def loopBody353_29 : HolLoopProg 64 :=
.mark loopBody353_28

def loopBody353_30 : HolLoopProg 64 :=
.seq loopBody353_25 loopBody353_29

def loopBody353_31 : HolLoopProg 64 :=
.mark loopBody353_30

def loopBody353_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody353_31 loopBody353_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody353_33 : HolLoopProg 64 :=
.mark loopBody353_32

def loopBody353_34 : HolLoopProg 64 :=
.seq loopBody353_33 loopBody353_1

def loopBody353_35 : HolLoopProg 64 :=
.mark loopBody353_34

def loopBody353_36 : HolLoopProg 64 :=
.seq loopBody353_23 loopBody353_35

def loopBody353_37 : HolLoopProg 64 :=
.mark loopBody353_36

def loopBody353_38 : HolLoopProg 64 :=
.seq loopBody353_21 loopBody353_37

def loopBody353_39 : HolLoopProg 64 :=
.mark loopBody353_38

def loopBody353_40 : HolLoopProg 64 :=
.seq loopBody353_15 loopBody353_39

def loopBody353_41 : HolLoopProg 64 :=
.mark loopBody353_40

def loopBody353_42 : HolLoopProg 64 :=
.seq loopBody353_13 loopBody353_41

def loopBody353_43 : HolLoopProg 64 :=
.mark loopBody353_42

def loopBody353_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody353_45 : HolLoopProg 64 :=
.mark loopBody353_44

def loopBody353_46 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 416) ([3]) (some (3, loopBody353_45, loopBody353_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody353_47 : HolLoopProg 64 :=
.mark loopBody353_46

def loopBody353_48 : HolLoopProg 64 :=
.seq loopBody353_47 loopBody353_1

def loopBody353_49 : HolLoopProg 64 :=
.mark loopBody353_48

def loopBody353_50 : HolLoopProg 64 :=
.seq loopBody353_13 loopBody353_49

def loopBody353_51 : HolLoopProg 64 :=
.mark loopBody353_50

def loopBody353_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody353_53 : HolLoopProg 64 :=
.mark loopBody353_52

def loopBody353_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody353_55 : HolLoopProg 64 :=
.mark loopBody353_54

def loopBody353_56 : HolLoopProg 64 :=
.seq loopBody353_55 loopBody353_1

def loopBody353_57 : HolLoopProg 64 :=
.mark loopBody353_56

def loopBody353_58 : HolLoopProg 64 :=
.seq loopBody353_53 loopBody353_57

def loopBody353_59 : HolLoopProg 64 :=
.mark loopBody353_58

def loopBody353_60 : HolLoopProg 64 :=
.seq loopBody353_51 loopBody353_59

def loopBody353_61 : HolLoopProg 64 :=
.mark loopBody353_60

def loopBody353_62 : HolLoopProg 64 :=
.seq loopBody353_1 loopBody353_61

def loopBody353_63 : HolLoopProg 64 :=
.mark loopBody353_62

def loopBody353_64 : HolLoopProg 64 :=
.seq loopBody353_1 loopBody353_63

def loopBody353_65 : HolLoopProg 64 :=
.mark loopBody353_64

def loopBody353_66 : HolLoopProg 64 :=
.seq loopBody353_43 loopBody353_65

def loopBody353_67 : HolLoopProg 64 :=
.mark loopBody353_66

def loopBody353_68 : HolLoopProg 64 :=
.seq loopBody353_11 loopBody353_67

def loopBody353_69 : HolLoopProg 64 :=
.mark loopBody353_68

def loopBody353_70 : HolLoopProg 64 :=
.seq loopBody353_1 loopBody353_69

def loopBody353_71 : HolLoopProg 64 :=
.mark loopBody353_70

def loopBody353_72 : HolLoopProg 64 :=
.seq loopBody353_1 loopBody353_71

def loopBody353_73 : HolLoopProg 64 :=
.mark loopBody353_72

def output353 : Nat × List Nat × HolLoopProg 64 :=
  (417, [0], loopBody353_73)
end InitECandidate.Proofs.FrontendStages.Loop
