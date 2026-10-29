import InitECandidate.Proofs.FrontendStages.Loop.Translate92
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody108_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody108_1 : HolLoopProg 64 :=
.mark loopBody108_0

def loopBody108_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody108_3 : HolLoopProg 64 :=
.mark loopBody108_2

def loopBody108_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody108_5 : HolLoopProg 64 :=
.mark loopBody108_4

def loopBody108_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody108_7 : HolLoopProg 64 :=
.mark loopBody108_6

def loopBody108_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody108_9 : HolLoopProg 64 :=
.mark loopBody108_8

def loopBody108_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody108_11 : HolLoopProg 64 :=
.mark loopBody108_10

def loopBody108_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody108_9 loopBody108_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody108_13 : HolLoopProg 64 :=
.mark loopBody108_12

def loopBody108_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody108_15 : HolLoopProg 64 :=
.mark loopBody108_14

def loopBody108_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 8#64))

def loopBody108_17 : HolLoopProg 64 :=
.mark loopBody108_16

def loopBody108_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 0 (Flapjack.HolLoopExp.var 2)

def loopBody108_19 : HolLoopProg 64 :=
.mark loopBody108_18

def loopBody108_20 : HolLoopProg 64 :=
.seq loopBody108_19 loopBody108_1

def loopBody108_21 : HolLoopProg 64 :=
.mark loopBody108_20

def loopBody108_22 : HolLoopProg 64 :=
.seq loopBody108_21 loopBody108_1

def loopBody108_23 : HolLoopProg 64 :=
.mark loopBody108_22

def loopBody108_24 : HolLoopProg 64 :=
.seq loopBody108_17 loopBody108_23

def loopBody108_25 : HolLoopProg 64 :=
.mark loopBody108_24

def loopBody108_26 : HolLoopProg 64 :=
.seq loopBody108_1 loopBody108_25

def loopBody108_27 : HolLoopProg 64 :=
.mark loopBody108_26

def loopBody108_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody108_29 : HolLoopProg 64 :=
.mark loopBody108_28

def loopBody108_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 2)

def loopBody108_31 : HolLoopProg 64 :=
.mark loopBody108_30

def loopBody108_32 : HolLoopProg 64 :=
.seq loopBody108_31 loopBody108_1

def loopBody108_33 : HolLoopProg 64 :=
.mark loopBody108_32

def loopBody108_34 : HolLoopProg 64 :=
.seq loopBody108_33 loopBody108_1

def loopBody108_35 : HolLoopProg 64 :=
.mark loopBody108_34

def loopBody108_36 : HolLoopProg 64 :=
.seq loopBody108_29 loopBody108_35

def loopBody108_37 : HolLoopProg 64 :=
.mark loopBody108_36

def loopBody108_38 : HolLoopProg 64 :=
.seq loopBody108_1 loopBody108_37

def loopBody108_39 : HolLoopProg 64 :=
.mark loopBody108_38

def loopBody108_40 : HolLoopProg 64 :=
.seq loopBody108_27 loopBody108_39

def loopBody108_41 : HolLoopProg 64 :=
.mark loopBody108_40

def loopBody108_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody108_43 : HolLoopProg 64 :=
.mark loopBody108_42

def loopBody108_44 : HolLoopProg 64 :=
.seq loopBody108_41 loopBody108_43

def loopBody108_45 : HolLoopProg 64 :=
.mark loopBody108_44

def loopBody108_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody108_47 : HolLoopProg 64 :=
.mark loopBody108_46

def loopBody108_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody108_45 loopBody108_47 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody108_49 : HolLoopProg 64 :=
.mark loopBody108_48

def loopBody108_50 : HolLoopProg 64 :=
.seq loopBody108_49 loopBody108_1

def loopBody108_51 : HolLoopProg 64 :=
.mark loopBody108_50

def loopBody108_52 : HolLoopProg 64 :=
.seq loopBody108_15 loopBody108_51

def loopBody108_53 : HolLoopProg 64 :=
.mark loopBody108_52

def loopBody108_54 : HolLoopProg 64 :=
.seq loopBody108_13 loopBody108_53

def loopBody108_55 : HolLoopProg 64 :=
.mark loopBody108_54

def loopBody108_56 : HolLoopProg 64 :=
.seq loopBody108_7 loopBody108_55

def loopBody108_57 : HolLoopProg 64 :=
.mark loopBody108_56

def loopBody108_58 : HolLoopProg 64 :=
.seq loopBody108_5 loopBody108_57

def loopBody108_59 : HolLoopProg 64 :=
.mark loopBody108_58

def loopBody108_60 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody108_59 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody108_61 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody108_62 : HolLoopProg 64 :=
.mark loopBody108_61

def loopBody108_63 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody108_64 : HolLoopProg 64 :=
.mark loopBody108_63

def loopBody108_65 : HolLoopProg 64 :=
.seq loopBody108_64 loopBody108_1

def loopBody108_66 : HolLoopProg 64 :=
.mark loopBody108_65

def loopBody108_67 : HolLoopProg 64 :=
.seq loopBody108_62 loopBody108_66

def loopBody108_68 : HolLoopProg 64 :=
.mark loopBody108_67

def loopBody108_69 : HolLoopProg 64 :=
.seq loopBody108_60 loopBody108_68

def loopBody108_70 : HolLoopProg 64 :=
.seq loopBody108_3 loopBody108_69

def loopBody108_71 : HolLoopProg 64 :=
.seq loopBody108_1 loopBody108_70

def output108 : Nat × List Nat × HolLoopProg 64 :=
  (172, [0], loopBody108_71)
end InitECandidate.Proofs.FrontendStages.Loop
