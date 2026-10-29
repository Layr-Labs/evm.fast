import InitECandidate.Proofs.FrontendStages.Loop.Translate17
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody33_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody33_1 : HolLoopProg 64 :=
.mark loopBody33_0

def loopBody33_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody33_3 : HolLoopProg 64 :=
.mark loopBody33_2

def loopBody33_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.const 1#64) (Flapjack.HolLoopExp.var 1))

def loopBody33_5 : HolLoopProg 64 :=
.mark loopBody33_4

def loopBody33_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody33_7 : HolLoopProg 64 :=
.mark loopBody33_6

def loopBody33_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody33_9 : HolLoopProg 64 :=
.mark loopBody33_8

def loopBody33_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody33_11 : HolLoopProg 64 :=
.mark loopBody33_10

def loopBody33_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody33_9 loopBody33_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody33_13 : HolLoopProg 64 :=
.mark loopBody33_12

def loopBody33_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody33_15 : HolLoopProg 64 :=
.mark loopBody33_14

def loopBody33_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 1#64])

def loopBody33_17 : HolLoopProg 64 :=
.mark loopBody33_16

def loopBody33_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 2)

def loopBody33_19 : HolLoopProg 64 :=
.mark loopBody33_18

def loopBody33_20 : HolLoopProg 64 :=
.seq loopBody33_19 loopBody33_1

def loopBody33_21 : HolLoopProg 64 :=
.mark loopBody33_20

def loopBody33_22 : HolLoopProg 64 :=
.seq loopBody33_21 loopBody33_1

def loopBody33_23 : HolLoopProg 64 :=
.mark loopBody33_22

def loopBody33_24 : HolLoopProg 64 :=
.seq loopBody33_17 loopBody33_23

def loopBody33_25 : HolLoopProg 64 :=
.mark loopBody33_24

def loopBody33_26 : HolLoopProg 64 :=
.seq loopBody33_1 loopBody33_25

def loopBody33_27 : HolLoopProg 64 :=
.mark loopBody33_26

def loopBody33_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody33_29 : HolLoopProg 64 :=
.mark loopBody33_28

def loopBody33_30 : HolLoopProg 64 :=
.seq loopBody33_27 loopBody33_29

def loopBody33_31 : HolLoopProg 64 :=
.mark loopBody33_30

def loopBody33_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody33_33 : HolLoopProg 64 :=
.mark loopBody33_32

def loopBody33_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody33_31 loopBody33_33 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody33_35 : HolLoopProg 64 :=
.mark loopBody33_34

def loopBody33_36 : HolLoopProg 64 :=
.seq loopBody33_35 loopBody33_1

def loopBody33_37 : HolLoopProg 64 :=
.mark loopBody33_36

def loopBody33_38 : HolLoopProg 64 :=
.seq loopBody33_15 loopBody33_37

def loopBody33_39 : HolLoopProg 64 :=
.mark loopBody33_38

def loopBody33_40 : HolLoopProg 64 :=
.seq loopBody33_13 loopBody33_39

def loopBody33_41 : HolLoopProg 64 :=
.mark loopBody33_40

def loopBody33_42 : HolLoopProg 64 :=
.seq loopBody33_7 loopBody33_41

def loopBody33_43 : HolLoopProg 64 :=
.mark loopBody33_42

def loopBody33_44 : HolLoopProg 64 :=
.seq loopBody33_5 loopBody33_43

def loopBody33_45 : HolLoopProg 64 :=
.mark loopBody33_44

def loopBody33_46 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) loopBody33_45 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody33_47 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody33_48 : HolLoopProg 64 :=
.mark loopBody33_47

def loopBody33_49 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody33_50 : HolLoopProg 64 :=
.mark loopBody33_49

def loopBody33_51 : HolLoopProg 64 :=
.seq loopBody33_50 loopBody33_1

def loopBody33_52 : HolLoopProg 64 :=
.mark loopBody33_51

def loopBody33_53 : HolLoopProg 64 :=
.seq loopBody33_48 loopBody33_52

def loopBody33_54 : HolLoopProg 64 :=
.mark loopBody33_53

def loopBody33_55 : HolLoopProg 64 :=
.seq loopBody33_46 loopBody33_54

def loopBody33_56 : HolLoopProg 64 :=
.seq loopBody33_3 loopBody33_55

def loopBody33_57 : HolLoopProg 64 :=
.seq loopBody33_1 loopBody33_56

def output33 : Nat × List Nat × HolLoopProg 64 :=
  (97, [0], loopBody33_57)
end InitECandidate.Proofs.FrontendStages.Loop
