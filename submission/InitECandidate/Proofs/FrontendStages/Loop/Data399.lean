import InitECandidate.Proofs.FrontendStages.Loop.Translate383
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody399_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody399_1 : HolLoopProg 64 :=
.mark loopBody399_0

def loopBody399_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 1])

def loopBody399_3 : HolLoopProg 64 :=
.mark loopBody399_2

def loopBody399_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody399_5 : HolLoopProg 64 :=
.mark loopBody399_4

def loopBody399_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody399_7 : HolLoopProg 64 :=
.mark loopBody399_6

def loopBody399_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody399_9 : HolLoopProg 64 :=
.mark loopBody399_8

def loopBody399_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody399_11 : HolLoopProg 64 :=
.mark loopBody399_10

def loopBody399_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.RegImm.reg 5) loopBody399_9 loopBody399_11 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody399_13 : HolLoopProg 64 :=
.mark loopBody399_12

def loopBody399_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody399_15 : HolLoopProg 64 :=
.mark loopBody399_14

def loopBody399_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody399_17 : HolLoopProg 64 :=
.mark loopBody399_16

def loopBody399_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody399_19 : HolLoopProg 64 :=
.mark loopBody399_18

def loopBody399_20 : HolLoopProg 64 :=
.seq loopBody399_19 loopBody399_1

def loopBody399_21 : HolLoopProg 64 :=
.mark loopBody399_20

def loopBody399_22 : HolLoopProg 64 :=
.seq loopBody399_17 loopBody399_21

def loopBody399_23 : HolLoopProg 64 :=
.mark loopBody399_22

def loopBody399_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody399_23 loopBody399_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody399_25 : HolLoopProg 64 :=
.mark loopBody399_24

def loopBody399_26 : HolLoopProg 64 :=
.seq loopBody399_25 loopBody399_1

def loopBody399_27 : HolLoopProg 64 :=
.mark loopBody399_26

def loopBody399_28 : HolLoopProg 64 :=
.seq loopBody399_15 loopBody399_27

def loopBody399_29 : HolLoopProg 64 :=
.mark loopBody399_28

def loopBody399_30 : HolLoopProg 64 :=
.seq loopBody399_13 loopBody399_29

def loopBody399_31 : HolLoopProg 64 :=
.mark loopBody399_30

def loopBody399_32 : HolLoopProg 64 :=
.seq loopBody399_7 loopBody399_31

def loopBody399_33 : HolLoopProg 64 :=
.mark loopBody399_32

def loopBody399_34 : HolLoopProg 64 :=
.seq loopBody399_5 loopBody399_33

def loopBody399_35 : HolLoopProg 64 :=
.mark loopBody399_34

def loopBody399_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody399_37 : HolLoopProg 64 :=
.mark loopBody399_36

def loopBody399_38 : HolLoopProg 64 :=
.seq loopBody399_37 loopBody399_21

def loopBody399_39 : HolLoopProg 64 :=
.mark loopBody399_38

def loopBody399_40 : HolLoopProg 64 :=
.seq loopBody399_35 loopBody399_39

def loopBody399_41 : HolLoopProg 64 :=
.mark loopBody399_40

def loopBody399_42 : HolLoopProg 64 :=
.seq loopBody399_3 loopBody399_41

def loopBody399_43 : HolLoopProg 64 :=
.mark loopBody399_42

def loopBody399_44 : HolLoopProg 64 :=
.seq loopBody399_1 loopBody399_43

def loopBody399_45 : HolLoopProg 64 :=
.mark loopBody399_44

def output399 : Nat × List Nat × HolLoopProg 64 :=
  (463, [0, 1], loopBody399_45)
end InitECandidate.Proofs.FrontendStages.Loop
