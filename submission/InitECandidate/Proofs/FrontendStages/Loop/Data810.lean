import InitECandidate.Proofs.FrontendStages.Loop.Translate794
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody810_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody810_1 : HolLoopProg 64 :=
.mark loopBody810_0

def loopBody810_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody810_3 : HolLoopProg 64 :=
.mark loopBody810_2

def loopBody810_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody810_5 : HolLoopProg 64 :=
.mark loopBody810_4

def loopBody810_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody810_7 : HolLoopProg 64 :=
.mark loopBody810_6

def loopBody810_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody810_9 : HolLoopProg 64 :=
.mark loopBody810_8

def loopBody810_10 : HolLoopProg 64 :=
.seq loopBody810_9 loopBody810_1

def loopBody810_11 : HolLoopProg 64 :=
.mark loopBody810_10

def loopBody810_12 : HolLoopProg 64 :=
.seq loopBody810_11 loopBody810_1

def loopBody810_13 : HolLoopProg 64 :=
.mark loopBody810_12

def loopBody810_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody810_15 : HolLoopProg 64 :=
.mark loopBody810_14

def loopBody810_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 70#64])

def loopBody810_17 : HolLoopProg 64 :=
.mark loopBody810_16

def loopBody810_18 : HolLoopProg 64 :=
.seq loopBody810_17 loopBody810_1

def loopBody810_19 : HolLoopProg 64 :=
.mark loopBody810_18

def loopBody810_20 : HolLoopProg 64 :=
.seq loopBody810_15 loopBody810_19

def loopBody810_21 : HolLoopProg 64 :=
.mark loopBody810_20

def loopBody810_22 : HolLoopProg 64 :=
.seq loopBody810_1 loopBody810_21

def loopBody810_23 : HolLoopProg 64 :=
.mark loopBody810_22

def loopBody810_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 5#64)

def loopBody810_25 : HolLoopProg 64 :=
.mark loopBody810_24

def loopBody810_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody810_27 : HolLoopProg 64 :=
.mark loopBody810_26

def loopBody810_28 : HolLoopProg 64 :=
.seq loopBody810_27 loopBody810_1

def loopBody810_29 : HolLoopProg 64 :=
.mark loopBody810_28

def loopBody810_30 : HolLoopProg 64 :=
.seq loopBody810_29 loopBody810_1

def loopBody810_31 : HolLoopProg 64 :=
.mark loopBody810_30

def loopBody810_32 : HolLoopProg 64 :=
.seq loopBody810_25 loopBody810_31

def loopBody810_33 : HolLoopProg 64 :=
.mark loopBody810_32

def loopBody810_34 : HolLoopProg 64 :=
.seq loopBody810_1 loopBody810_33

def loopBody810_35 : HolLoopProg 64 :=
.mark loopBody810_34

def loopBody810_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 9#64)

def loopBody810_37 : HolLoopProg 64 :=
.mark loopBody810_36

def loopBody810_38 : HolLoopProg 64 :=
.seq loopBody810_37 loopBody810_5

def loopBody810_39 : HolLoopProg 64 :=
.mark loopBody810_38

def loopBody810_40 : HolLoopProg 64 :=
.seq loopBody810_35 loopBody810_39

def loopBody810_41 : HolLoopProg 64 :=
.mark loopBody810_40

def loopBody810_42 : HolLoopProg 64 :=
.seq loopBody810_23 loopBody810_41

def loopBody810_43 : HolLoopProg 64 :=
.mark loopBody810_42

def loopBody810_44 : HolLoopProg 64 :=
.seq loopBody810_13 loopBody810_43

def loopBody810_45 : HolLoopProg 64 :=
.mark loopBody810_44

def loopBody810_46 : HolLoopProg 64 :=
.seq loopBody810_7 loopBody810_45

def loopBody810_47 : HolLoopProg 64 :=
.mark loopBody810_46

def loopBody810_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.imm 7#64) loopBody810_5 loopBody810_47 (Flapjack.Spt.ln)

def loopBody810_49 : HolLoopProg 64 :=
.mark loopBody810_48

def loopBody810_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 873) ([3]) (some (3, loopBody810_49, loopBody810_1, (Flapjack.Spt.ln)))

def loopBody810_51 : HolLoopProg 64 :=
.mark loopBody810_50

def loopBody810_52 : HolLoopProg 64 :=
.seq loopBody810_51 loopBody810_1

def loopBody810_53 : HolLoopProg 64 :=
.mark loopBody810_52

def loopBody810_54 : HolLoopProg 64 :=
.seq loopBody810_3 loopBody810_53

def loopBody810_55 : HolLoopProg 64 :=
.mark loopBody810_54

def loopBody810_56 : HolLoopProg 64 :=
.seq loopBody810_1 loopBody810_55

def loopBody810_57 : HolLoopProg 64 :=
.mark loopBody810_56

def loopBody810_58 : HolLoopProg 64 :=
.seq loopBody810_1 loopBody810_57

def loopBody810_59 : HolLoopProg 64 :=
.mark loopBody810_58

def loopBody810_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody810_61 : HolLoopProg 64 :=
.mark loopBody810_60

def loopBody810_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody810_63 : HolLoopProg 64 :=
.mark loopBody810_62

def loopBody810_64 : HolLoopProg 64 :=
.seq loopBody810_63 loopBody810_1

def loopBody810_65 : HolLoopProg 64 :=
.mark loopBody810_64

def loopBody810_66 : HolLoopProg 64 :=
.seq loopBody810_61 loopBody810_65

def loopBody810_67 : HolLoopProg 64 :=
.mark loopBody810_66

def loopBody810_68 : HolLoopProg 64 :=
.seq loopBody810_59 loopBody810_67

def loopBody810_69 : HolLoopProg 64 :=
.mark loopBody810_68

def loopBody810_70 : HolLoopProg 64 :=
.seq loopBody810_1 loopBody810_69

def loopBody810_71 : HolLoopProg 64 :=
.mark loopBody810_70

def loopBody810_72 : HolLoopProg 64 :=
.seq loopBody810_1 loopBody810_71

def loopBody810_73 : HolLoopProg 64 :=
.mark loopBody810_72

def output810 : Nat × List Nat × HolLoopProg 64 :=
  (874, [0], loopBody810_73)
end InitECandidate.Proofs.FrontendStages.Loop
