import InitECandidate.Proofs.FrontendStages.Loop.Translate795
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody811_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody811_1 : HolLoopProg 64 :=
.mark loopBody811_0

def loopBody811_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody811_3 : HolLoopProg 64 :=
.mark loopBody811_2

def loopBody811_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody811_5 : HolLoopProg 64 :=
.mark loopBody811_4

def loopBody811_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.tick

def loopBody811_7 : HolLoopProg 64 :=
.mark loopBody811_6

def loopBody811_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.lookup 0#5)

def loopBody811_9 : HolLoopProg 64 :=
.mark loopBody811_8

def loopBody811_10 : HolLoopProg 64 :=
.seq loopBody811_9 loopBody811_1

def loopBody811_11 : HolLoopProg 64 :=
.mark loopBody811_10

def loopBody811_12 : HolLoopProg 64 :=
.seq loopBody811_11 loopBody811_1

def loopBody811_13 : HolLoopProg 64 :=
.mark loopBody811_12

def loopBody811_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody811_15 : HolLoopProg 64 :=
.mark loopBody811_14

def loopBody811_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.store8 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 2688614400#64, Flapjack.HolLoopExp.const 70#64])

def loopBody811_17 : HolLoopProg 64 :=
.mark loopBody811_16

def loopBody811_18 : HolLoopProg 64 :=
.seq loopBody811_17 loopBody811_1

def loopBody811_19 : HolLoopProg 64 :=
.mark loopBody811_18

def loopBody811_20 : HolLoopProg 64 :=
.seq loopBody811_15 loopBody811_19

def loopBody811_21 : HolLoopProg 64 :=
.mark loopBody811_20

def loopBody811_22 : HolLoopProg 64 :=
.seq loopBody811_1 loopBody811_21

def loopBody811_23 : HolLoopProg 64 :=
.mark loopBody811_22

def loopBody811_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 6#64)

def loopBody811_25 : HolLoopProg 64 :=
.mark loopBody811_24

def loopBody811_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 3)

def loopBody811_27 : HolLoopProg 64 :=
.mark loopBody811_26

def loopBody811_28 : HolLoopProg 64 :=
.seq loopBody811_27 loopBody811_1

def loopBody811_29 : HolLoopProg 64 :=
.mark loopBody811_28

def loopBody811_30 : HolLoopProg 64 :=
.seq loopBody811_29 loopBody811_1

def loopBody811_31 : HolLoopProg 64 :=
.mark loopBody811_30

def loopBody811_32 : HolLoopProg 64 :=
.seq loopBody811_25 loopBody811_31

def loopBody811_33 : HolLoopProg 64 :=
.mark loopBody811_32

def loopBody811_34 : HolLoopProg 64 :=
.seq loopBody811_1 loopBody811_33

def loopBody811_35 : HolLoopProg 64 :=
.mark loopBody811_34

def loopBody811_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 9#64)

def loopBody811_37 : HolLoopProg 64 :=
.mark loopBody811_36

def loopBody811_38 : HolLoopProg 64 :=
.seq loopBody811_37 loopBody811_5

def loopBody811_39 : HolLoopProg 64 :=
.mark loopBody811_38

def loopBody811_40 : HolLoopProg 64 :=
.seq loopBody811_35 loopBody811_39

def loopBody811_41 : HolLoopProg 64 :=
.mark loopBody811_40

def loopBody811_42 : HolLoopProg 64 :=
.seq loopBody811_23 loopBody811_41

def loopBody811_43 : HolLoopProg 64 :=
.mark loopBody811_42

def loopBody811_44 : HolLoopProg 64 :=
.seq loopBody811_13 loopBody811_43

def loopBody811_45 : HolLoopProg 64 :=
.mark loopBody811_44

def loopBody811_46 : HolLoopProg 64 :=
.seq loopBody811_7 loopBody811_45

def loopBody811_47 : HolLoopProg 64 :=
.mark loopBody811_46

def loopBody811_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.imm 6#64) loopBody811_5 loopBody811_47 (Flapjack.Spt.ln)

def loopBody811_49 : HolLoopProg 64 :=
.mark loopBody811_48

def loopBody811_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 874) ([3]) (some (3, loopBody811_49, loopBody811_1, (Flapjack.Spt.ln)))

def loopBody811_51 : HolLoopProg 64 :=
.mark loopBody811_50

def loopBody811_52 : HolLoopProg 64 :=
.seq loopBody811_51 loopBody811_1

def loopBody811_53 : HolLoopProg 64 :=
.mark loopBody811_52

def loopBody811_54 : HolLoopProg 64 :=
.seq loopBody811_3 loopBody811_53

def loopBody811_55 : HolLoopProg 64 :=
.mark loopBody811_54

def loopBody811_56 : HolLoopProg 64 :=
.seq loopBody811_1 loopBody811_55

def loopBody811_57 : HolLoopProg 64 :=
.mark loopBody811_56

def loopBody811_58 : HolLoopProg 64 :=
.seq loopBody811_1 loopBody811_57

def loopBody811_59 : HolLoopProg 64 :=
.mark loopBody811_58

def loopBody811_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody811_61 : HolLoopProg 64 :=
.mark loopBody811_60

def loopBody811_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody811_63 : HolLoopProg 64 :=
.mark loopBody811_62

def loopBody811_64 : HolLoopProg 64 :=
.seq loopBody811_63 loopBody811_1

def loopBody811_65 : HolLoopProg 64 :=
.mark loopBody811_64

def loopBody811_66 : HolLoopProg 64 :=
.seq loopBody811_61 loopBody811_65

def loopBody811_67 : HolLoopProg 64 :=
.mark loopBody811_66

def loopBody811_68 : HolLoopProg 64 :=
.seq loopBody811_59 loopBody811_67

def loopBody811_69 : HolLoopProg 64 :=
.mark loopBody811_68

def loopBody811_70 : HolLoopProg 64 :=
.seq loopBody811_1 loopBody811_69

def loopBody811_71 : HolLoopProg 64 :=
.mark loopBody811_70

def loopBody811_72 : HolLoopProg 64 :=
.seq loopBody811_1 loopBody811_71

def loopBody811_73 : HolLoopProg 64 :=
.mark loopBody811_72

def output811 : Nat × List Nat × HolLoopProg 64 :=
  (875, [0], loopBody811_73)
end InitECandidate.Proofs.FrontendStages.Loop
