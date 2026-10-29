import InitECandidate.Proofs.FrontendStages.Loop.Translate791
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody807_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody807_1 : HolLoopProg 64 :=
.mark loopBody807_0

def loopBody807_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody807_3 : HolLoopProg 64 :=
.mark loopBody807_2

def loopBody807_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody807_5 : HolLoopProg 64 :=
.mark loopBody807_4

def loopBody807_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody807_7 : HolLoopProg 64 :=
.mark loopBody807_6

def loopBody807_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody807_9 : HolLoopProg 64 :=
.mark loopBody807_8

def loopBody807_10 : HolLoopProg 64 :=
.seq loopBody807_9 loopBody807_1

def loopBody807_11 : HolLoopProg 64 :=
.mark loopBody807_10

def loopBody807_12 : HolLoopProg 64 :=
.seq loopBody807_11 loopBody807_1

def loopBody807_13 : HolLoopProg 64 :=
.mark loopBody807_12

def loopBody807_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody807_15 : HolLoopProg 64 :=
.mark loopBody807_14

def loopBody807_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 70#64])

def loopBody807_17 : HolLoopProg 64 :=
.mark loopBody807_16

def loopBody807_18 : HolLoopProg 64 :=
.seq loopBody807_17 loopBody807_1

def loopBody807_19 : HolLoopProg 64 :=
.mark loopBody807_18

def loopBody807_20 : HolLoopProg 64 :=
.seq loopBody807_15 loopBody807_19

def loopBody807_21 : HolLoopProg 64 :=
.mark loopBody807_20

def loopBody807_22 : HolLoopProg 64 :=
.seq loopBody807_1 loopBody807_21

def loopBody807_23 : HolLoopProg 64 :=
.mark loopBody807_22

def loopBody807_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 2#64)

def loopBody807_25 : HolLoopProg 64 :=
.mark loopBody807_24

def loopBody807_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody807_27 : HolLoopProg 64 :=
.mark loopBody807_26

def loopBody807_28 : HolLoopProg 64 :=
.seq loopBody807_27 loopBody807_1

def loopBody807_29 : HolLoopProg 64 :=
.mark loopBody807_28

def loopBody807_30 : HolLoopProg 64 :=
.seq loopBody807_29 loopBody807_1

def loopBody807_31 : HolLoopProg 64 :=
.mark loopBody807_30

def loopBody807_32 : HolLoopProg 64 :=
.seq loopBody807_25 loopBody807_31

def loopBody807_33 : HolLoopProg 64 :=
.mark loopBody807_32

def loopBody807_34 : HolLoopProg 64 :=
.seq loopBody807_1 loopBody807_33

def loopBody807_35 : HolLoopProg 64 :=
.mark loopBody807_34

def loopBody807_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 9#64)

def loopBody807_37 : HolLoopProg 64 :=
.mark loopBody807_36

def loopBody807_38 : HolLoopProg 64 :=
.seq loopBody807_37 loopBody807_5

def loopBody807_39 : HolLoopProg 64 :=
.mark loopBody807_38

def loopBody807_40 : HolLoopProg 64 :=
.seq loopBody807_35 loopBody807_39

def loopBody807_41 : HolLoopProg 64 :=
.mark loopBody807_40

def loopBody807_42 : HolLoopProg 64 :=
.seq loopBody807_23 loopBody807_41

def loopBody807_43 : HolLoopProg 64 :=
.mark loopBody807_42

def loopBody807_44 : HolLoopProg 64 :=
.seq loopBody807_13 loopBody807_43

def loopBody807_45 : HolLoopProg 64 :=
.mark loopBody807_44

def loopBody807_46 : HolLoopProg 64 :=
.seq loopBody807_7 loopBody807_45

def loopBody807_47 : HolLoopProg 64 :=
.mark loopBody807_46

def loopBody807_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.imm 3#64) loopBody807_5 loopBody807_47 (Flapjack.Spt.ln)

def loopBody807_49 : HolLoopProg 64 :=
.mark loopBody807_48

def loopBody807_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 870) ([3]) (some (3, loopBody807_49, loopBody807_1, (Flapjack.Spt.ln)))

def loopBody807_51 : HolLoopProg 64 :=
.mark loopBody807_50

def loopBody807_52 : HolLoopProg 64 :=
.seq loopBody807_51 loopBody807_1

def loopBody807_53 : HolLoopProg 64 :=
.mark loopBody807_52

def loopBody807_54 : HolLoopProg 64 :=
.seq loopBody807_3 loopBody807_53

def loopBody807_55 : HolLoopProg 64 :=
.mark loopBody807_54

def loopBody807_56 : HolLoopProg 64 :=
.seq loopBody807_1 loopBody807_55

def loopBody807_57 : HolLoopProg 64 :=
.mark loopBody807_56

def loopBody807_58 : HolLoopProg 64 :=
.seq loopBody807_1 loopBody807_57

def loopBody807_59 : HolLoopProg 64 :=
.mark loopBody807_58

def loopBody807_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody807_61 : HolLoopProg 64 :=
.mark loopBody807_60

def loopBody807_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody807_63 : HolLoopProg 64 :=
.mark loopBody807_62

def loopBody807_64 : HolLoopProg 64 :=
.seq loopBody807_63 loopBody807_1

def loopBody807_65 : HolLoopProg 64 :=
.mark loopBody807_64

def loopBody807_66 : HolLoopProg 64 :=
.seq loopBody807_61 loopBody807_65

def loopBody807_67 : HolLoopProg 64 :=
.mark loopBody807_66

def loopBody807_68 : HolLoopProg 64 :=
.seq loopBody807_59 loopBody807_67

def loopBody807_69 : HolLoopProg 64 :=
.mark loopBody807_68

def loopBody807_70 : HolLoopProg 64 :=
.seq loopBody807_1 loopBody807_69

def loopBody807_71 : HolLoopProg 64 :=
.mark loopBody807_70

def loopBody807_72 : HolLoopProg 64 :=
.seq loopBody807_1 loopBody807_71

def loopBody807_73 : HolLoopProg 64 :=
.mark loopBody807_72

def output807 : Nat × List Nat × HolLoopProg 64 :=
  (871, [0], loopBody807_73)
end InitECandidate.Proofs.FrontendStages.Loop
