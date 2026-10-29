import InitECandidate.Proofs.FrontendStages.Loop.Translate797
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody813_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody813_1 : HolLoopProg 64 :=
.mark loopBody813_0

def loopBody813_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody813_3 : HolLoopProg 64 :=
.mark loopBody813_2

def loopBody813_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody813_5 : HolLoopProg 64 :=
.mark loopBody813_4

def loopBody813_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody813_7 : HolLoopProg 64 :=
.mark loopBody813_6

def loopBody813_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody813_9 : HolLoopProg 64 :=
.mark loopBody813_8

def loopBody813_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody813_11 : HolLoopProg 64 :=
.mark loopBody813_10

def loopBody813_12 : HolLoopProg 64 :=
.seq loopBody813_11 loopBody813_1

def loopBody813_13 : HolLoopProg 64 :=
.mark loopBody813_12

def loopBody813_14 : HolLoopProg 64 :=
.seq loopBody813_13 loopBody813_1

def loopBody813_15 : HolLoopProg 64 :=
.mark loopBody813_14

def loopBody813_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody813_17 : HolLoopProg 64 :=
.mark loopBody813_16

def loopBody813_18 : HolLoopProg 64 :=
.seq loopBody813_17 loopBody813_1

def loopBody813_19 : HolLoopProg 64 :=
.mark loopBody813_18

def loopBody813_20 : HolLoopProg 64 :=
.seq loopBody813_19 loopBody813_1

def loopBody813_21 : HolLoopProg 64 :=
.mark loopBody813_20

def loopBody813_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 536#64])

def loopBody813_23 : HolLoopProg 64 :=
.mark loopBody813_22

def loopBody813_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody813_25 : HolLoopProg 64 :=
.mark loopBody813_24

def loopBody813_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody813_27 : HolLoopProg 64 :=
.mark loopBody813_26

def loopBody813_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody813_29 : HolLoopProg 64 :=
.mark loopBody813_28

def loopBody813_30 : HolLoopProg 64 :=
.seq loopBody813_29 loopBody813_1

def loopBody813_31 : HolLoopProg 64 :=
.mark loopBody813_30

def loopBody813_32 : HolLoopProg 64 :=
.seq loopBody813_27 loopBody813_31

def loopBody813_33 : HolLoopProg 64 :=
.mark loopBody813_32

def loopBody813_34 : HolLoopProg 64 :=
.seq loopBody813_33 loopBody813_1

def loopBody813_35 : HolLoopProg 64 :=
.mark loopBody813_34

def loopBody813_36 : HolLoopProg 64 :=
.seq loopBody813_25 loopBody813_35

def loopBody813_37 : HolLoopProg 64 :=
.mark loopBody813_36

def loopBody813_38 : HolLoopProg 64 :=
.seq loopBody813_1 loopBody813_37

def loopBody813_39 : HolLoopProg 64 :=
.mark loopBody813_38

def loopBody813_40 : HolLoopProg 64 :=
.seq loopBody813_23 loopBody813_39

def loopBody813_41 : HolLoopProg 64 :=
.mark loopBody813_40

def loopBody813_42 : HolLoopProg 64 :=
.seq loopBody813_1 loopBody813_41

def loopBody813_43 : HolLoopProg 64 :=
.mark loopBody813_42

def loopBody813_44 : HolLoopProg 64 :=
.seq loopBody813_21 loopBody813_43

def loopBody813_45 : HolLoopProg 64 :=
.mark loopBody813_44

def loopBody813_46 : HolLoopProg 64 :=
.seq loopBody813_15 loopBody813_45

def loopBody813_47 : HolLoopProg 64 :=
.mark loopBody813_46

def loopBody813_48 : HolLoopProg 64 :=
.seq loopBody813_9 loopBody813_47

def loopBody813_49 : HolLoopProg 64 :=
.mark loopBody813_48

def loopBody813_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 9#64) loopBody813_7 loopBody813_49 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody813_51 : HolLoopProg 64 :=
.mark loopBody813_50

def loopBody813_52 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 876) ([4]) (some (4, loopBody813_51, loopBody813_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody813_53 : HolLoopProg 64 :=
.mark loopBody813_52

def loopBody813_54 : HolLoopProg 64 :=
.seq loopBody813_53 loopBody813_1

def loopBody813_55 : HolLoopProg 64 :=
.mark loopBody813_54

def loopBody813_56 : HolLoopProg 64 :=
.seq loopBody813_5 loopBody813_55

def loopBody813_57 : HolLoopProg 64 :=
.mark loopBody813_56

def loopBody813_58 : HolLoopProg 64 :=
.seq loopBody813_1 loopBody813_57

def loopBody813_59 : HolLoopProg 64 :=
.mark loopBody813_58

def loopBody813_60 : HolLoopProg 64 :=
.seq loopBody813_1 loopBody813_59

def loopBody813_61 : HolLoopProg 64 :=
.mark loopBody813_60

def loopBody813_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody813_63 : HolLoopProg 64 :=
.mark loopBody813_62

def loopBody813_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody813_65 : HolLoopProg 64 :=
.mark loopBody813_64

def loopBody813_66 : HolLoopProg 64 :=
.seq loopBody813_65 loopBody813_1

def loopBody813_67 : HolLoopProg 64 :=
.mark loopBody813_66

def loopBody813_68 : HolLoopProg 64 :=
.seq loopBody813_63 loopBody813_67

def loopBody813_69 : HolLoopProg 64 :=
.mark loopBody813_68

def loopBody813_70 : HolLoopProg 64 :=
.seq loopBody813_61 loopBody813_69

def loopBody813_71 : HolLoopProg 64 :=
.mark loopBody813_70

def loopBody813_72 : HolLoopProg 64 :=
.seq loopBody813_3 loopBody813_71

def loopBody813_73 : HolLoopProg 64 :=
.mark loopBody813_72

def loopBody813_74 : HolLoopProg 64 :=
.seq loopBody813_1 loopBody813_73

def loopBody813_75 : HolLoopProg 64 :=
.mark loopBody813_74

def loopBody813_76 : HolLoopProg 64 :=
.seq loopBody813_1 loopBody813_75

def loopBody813_77 : HolLoopProg 64 :=
.mark loopBody813_76

def loopBody813_78 : HolLoopProg 64 :=
.seq loopBody813_1 loopBody813_77

def loopBody813_79 : HolLoopProg 64 :=
.mark loopBody813_78

def output813 : Nat × List Nat × HolLoopProg 64 :=
  (877, [0], loopBody813_79)
end InitECandidate.Proofs.FrontendStages.Loop
