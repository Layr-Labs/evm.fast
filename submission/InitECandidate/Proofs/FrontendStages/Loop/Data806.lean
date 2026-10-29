import InitECandidate.Proofs.FrontendStages.Loop.Translate790
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody806_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody806_1 : HolLoopProg 64 :=
.mark loopBody806_0

def loopBody806_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody806_3 : HolLoopProg 64 :=
.mark loopBody806_2

def loopBody806_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody806_5 : HolLoopProg 64 :=
.mark loopBody806_4

def loopBody806_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody806_7 : HolLoopProg 64 :=
.mark loopBody806_6

def loopBody806_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody806_9 : HolLoopProg 64 :=
.mark loopBody806_8

def loopBody806_10 : HolLoopProg 64 :=
.seq loopBody806_9 loopBody806_1

def loopBody806_11 : HolLoopProg 64 :=
.mark loopBody806_10

def loopBody806_12 : HolLoopProg 64 :=
.seq loopBody806_11 loopBody806_1

def loopBody806_13 : HolLoopProg 64 :=
.mark loopBody806_12

def loopBody806_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody806_15 : HolLoopProg 64 :=
.mark loopBody806_14

def loopBody806_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 70#64])

def loopBody806_17 : HolLoopProg 64 :=
.mark loopBody806_16

def loopBody806_18 : HolLoopProg 64 :=
.seq loopBody806_17 loopBody806_1

def loopBody806_19 : HolLoopProg 64 :=
.mark loopBody806_18

def loopBody806_20 : HolLoopProg 64 :=
.seq loopBody806_15 loopBody806_19

def loopBody806_21 : HolLoopProg 64 :=
.mark loopBody806_20

def loopBody806_22 : HolLoopProg 64 :=
.seq loopBody806_1 loopBody806_21

def loopBody806_23 : HolLoopProg 64 :=
.mark loopBody806_22

def loopBody806_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody806_25 : HolLoopProg 64 :=
.mark loopBody806_24

def loopBody806_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody806_27 : HolLoopProg 64 :=
.mark loopBody806_26

def loopBody806_28 : HolLoopProg 64 :=
.seq loopBody806_27 loopBody806_1

def loopBody806_29 : HolLoopProg 64 :=
.mark loopBody806_28

def loopBody806_30 : HolLoopProg 64 :=
.seq loopBody806_29 loopBody806_1

def loopBody806_31 : HolLoopProg 64 :=
.mark loopBody806_30

def loopBody806_32 : HolLoopProg 64 :=
.seq loopBody806_25 loopBody806_31

def loopBody806_33 : HolLoopProg 64 :=
.mark loopBody806_32

def loopBody806_34 : HolLoopProg 64 :=
.seq loopBody806_1 loopBody806_33

def loopBody806_35 : HolLoopProg 64 :=
.mark loopBody806_34

def loopBody806_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 9#64)

def loopBody806_37 : HolLoopProg 64 :=
.mark loopBody806_36

def loopBody806_38 : HolLoopProg 64 :=
.seq loopBody806_37 loopBody806_5

def loopBody806_39 : HolLoopProg 64 :=
.mark loopBody806_38

def loopBody806_40 : HolLoopProg 64 :=
.seq loopBody806_35 loopBody806_39

def loopBody806_41 : HolLoopProg 64 :=
.mark loopBody806_40

def loopBody806_42 : HolLoopProg 64 :=
.seq loopBody806_23 loopBody806_41

def loopBody806_43 : HolLoopProg 64 :=
.mark loopBody806_42

def loopBody806_44 : HolLoopProg 64 :=
.seq loopBody806_13 loopBody806_43

def loopBody806_45 : HolLoopProg 64 :=
.mark loopBody806_44

def loopBody806_46 : HolLoopProg 64 :=
.seq loopBody806_7 loopBody806_45

def loopBody806_47 : HolLoopProg 64 :=
.mark loopBody806_46

def loopBody806_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.imm 4#64) loopBody806_5 loopBody806_47 (Flapjack.Spt.ln)

def loopBody806_49 : HolLoopProg 64 :=
.mark loopBody806_48

def loopBody806_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 869) ([3]) (some (3, loopBody806_49, loopBody806_1, (Flapjack.Spt.ln)))

def loopBody806_51 : HolLoopProg 64 :=
.mark loopBody806_50

def loopBody806_52 : HolLoopProg 64 :=
.seq loopBody806_51 loopBody806_1

def loopBody806_53 : HolLoopProg 64 :=
.mark loopBody806_52

def loopBody806_54 : HolLoopProg 64 :=
.seq loopBody806_3 loopBody806_53

def loopBody806_55 : HolLoopProg 64 :=
.mark loopBody806_54

def loopBody806_56 : HolLoopProg 64 :=
.seq loopBody806_1 loopBody806_55

def loopBody806_57 : HolLoopProg 64 :=
.mark loopBody806_56

def loopBody806_58 : HolLoopProg 64 :=
.seq loopBody806_1 loopBody806_57

def loopBody806_59 : HolLoopProg 64 :=
.mark loopBody806_58

def loopBody806_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody806_61 : HolLoopProg 64 :=
.mark loopBody806_60

def loopBody806_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody806_63 : HolLoopProg 64 :=
.mark loopBody806_62

def loopBody806_64 : HolLoopProg 64 :=
.seq loopBody806_63 loopBody806_1

def loopBody806_65 : HolLoopProg 64 :=
.mark loopBody806_64

def loopBody806_66 : HolLoopProg 64 :=
.seq loopBody806_61 loopBody806_65

def loopBody806_67 : HolLoopProg 64 :=
.mark loopBody806_66

def loopBody806_68 : HolLoopProg 64 :=
.seq loopBody806_59 loopBody806_67

def loopBody806_69 : HolLoopProg 64 :=
.mark loopBody806_68

def loopBody806_70 : HolLoopProg 64 :=
.seq loopBody806_1 loopBody806_69

def loopBody806_71 : HolLoopProg 64 :=
.mark loopBody806_70

def loopBody806_72 : HolLoopProg 64 :=
.seq loopBody806_1 loopBody806_71

def loopBody806_73 : HolLoopProg 64 :=
.mark loopBody806_72

def output806 : Nat × List Nat × HolLoopProg 64 :=
  (870, [0], loopBody806_73)
end InitECandidate.Proofs.FrontendStages.Loop
