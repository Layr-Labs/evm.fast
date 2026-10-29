import InitECandidate.Proofs.FrontendStages.Loop.Translate509
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody525_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody525_1 : HolLoopProg 64 :=
.mark loopBody525_0

def loopBody525_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody525_3 : HolLoopProg 64 :=
.mark loopBody525_2

def loopBody525_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody525_5 : HolLoopProg 64 :=
.mark loopBody525_4

def loopBody525_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody525_7 : HolLoopProg 64 :=
.mark loopBody525_6

def loopBody525_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 468) ([3, 4]) (some (3, loopBody525_7, loopBody525_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))

def loopBody525_9 : HolLoopProg 64 :=
.mark loopBody525_8

def loopBody525_10 : HolLoopProg 64 :=
.seq loopBody525_9 loopBody525_1

def loopBody525_11 : HolLoopProg 64 :=
.mark loopBody525_10

def loopBody525_12 : HolLoopProg 64 :=
.seq loopBody525_5 loopBody525_11

def loopBody525_13 : HolLoopProg 64 :=
.mark loopBody525_12

def loopBody525_14 : HolLoopProg 64 :=
.seq loopBody525_3 loopBody525_13

def loopBody525_15 : HolLoopProg 64 :=
.mark loopBody525_14

def loopBody525_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody525_17 : HolLoopProg 64 :=
.mark loopBody525_16

def loopBody525_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody525_19 : HolLoopProg 64 :=
.mark loopBody525_18

def loopBody525_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody525_21 : HolLoopProg 64 :=
.mark loopBody525_20

def loopBody525_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody525_23 : HolLoopProg 64 :=
.mark loopBody525_22

def loopBody525_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.RegImm.reg 5) loopBody525_21 loopBody525_23 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody525_25 : HolLoopProg 64 :=
.mark loopBody525_24

def loopBody525_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody525_27 : HolLoopProg 64 :=
.mark loopBody525_26

def loopBody525_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody525_29 : HolLoopProg 64 :=
.mark loopBody525_28

def loopBody525_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody525_31 : HolLoopProg 64 :=
.mark loopBody525_30

def loopBody525_32 : HolLoopProg 64 :=
.seq loopBody525_31 loopBody525_1

def loopBody525_33 : HolLoopProg 64 :=
.mark loopBody525_32

def loopBody525_34 : HolLoopProg 64 :=
.seq loopBody525_29 loopBody525_33

def loopBody525_35 : HolLoopProg 64 :=
.mark loopBody525_34

def loopBody525_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody525_35 loopBody525_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody525_37 : HolLoopProg 64 :=
.mark loopBody525_36

def loopBody525_38 : HolLoopProg 64 :=
.seq loopBody525_37 loopBody525_1

def loopBody525_39 : HolLoopProg 64 :=
.mark loopBody525_38

def loopBody525_40 : HolLoopProg 64 :=
.seq loopBody525_27 loopBody525_39

def loopBody525_41 : HolLoopProg 64 :=
.mark loopBody525_40

def loopBody525_42 : HolLoopProg 64 :=
.seq loopBody525_25 loopBody525_41

def loopBody525_43 : HolLoopProg 64 :=
.mark loopBody525_42

def loopBody525_44 : HolLoopProg 64 :=
.seq loopBody525_19 loopBody525_43

def loopBody525_45 : HolLoopProg 64 :=
.mark loopBody525_44

def loopBody525_46 : HolLoopProg 64 :=
.seq loopBody525_17 loopBody525_45

def loopBody525_47 : HolLoopProg 64 :=
.mark loopBody525_46

def loopBody525_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody525_49 : HolLoopProg 64 :=
.mark loopBody525_48

def loopBody525_50 : HolLoopProg 64 :=
.seq loopBody525_49 loopBody525_33

def loopBody525_51 : HolLoopProg 64 :=
.mark loopBody525_50

def loopBody525_52 : HolLoopProg 64 :=
.seq loopBody525_47 loopBody525_51

def loopBody525_53 : HolLoopProg 64 :=
.mark loopBody525_52

def loopBody525_54 : HolLoopProg 64 :=
.seq loopBody525_15 loopBody525_53

def loopBody525_55 : HolLoopProg 64 :=
.mark loopBody525_54

def loopBody525_56 : HolLoopProg 64 :=
.seq loopBody525_1 loopBody525_55

def loopBody525_57 : HolLoopProg 64 :=
.mark loopBody525_56

def loopBody525_58 : HolLoopProg 64 :=
.seq loopBody525_1 loopBody525_57

def loopBody525_59 : HolLoopProg 64 :=
.mark loopBody525_58

def output525 : Nat × List Nat × HolLoopProg 64 :=
  (589, [0, 1], loopBody525_59)
end InitECandidate.Proofs.FrontendStages.Loop
