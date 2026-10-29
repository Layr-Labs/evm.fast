import InitECandidate.Proofs.FrontendStages.Loop.Translate625
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody641_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 5])

def loopBody641_1 : HolLoopProg 64 :=
.mark loopBody641_0

def loopBody641_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody641_3 : HolLoopProg 64 :=
.mark loopBody641_2

def loopBody641_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody641_5 : HolLoopProg 64 :=
.mark loopBody641_4

def loopBody641_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody641_7 : HolLoopProg 64 :=
.mark loopBody641_6

def loopBody641_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.RegImm.reg 8) loopBody641_5 loopBody641_7 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody641_9 : HolLoopProg 64 :=
.mark loopBody641_8

def loopBody641_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody641_11 : HolLoopProg 64 :=
.mark loopBody641_10

def loopBody641_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody641_13 : HolLoopProg 64 :=
.mark loopBody641_12

def loopBody641_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody641_15 : HolLoopProg 64 :=
.mark loopBody641_14

def loopBody641_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody641_17 : HolLoopProg 64 :=
.mark loopBody641_16

def loopBody641_18 : HolLoopProg 64 :=
.seq loopBody641_15 loopBody641_17

def loopBody641_19 : HolLoopProg 64 :=
.mark loopBody641_18

def loopBody641_20 : HolLoopProg 64 :=
.seq loopBody641_13 loopBody641_19

def loopBody641_21 : HolLoopProg 64 :=
.mark loopBody641_20

def loopBody641_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody641_21 loopBody641_17 (Flapjack.Spt.ln)

def loopBody641_23 : HolLoopProg 64 :=
.mark loopBody641_22

def loopBody641_24 : HolLoopProg 64 :=
.seq loopBody641_23 loopBody641_17

def loopBody641_25 : HolLoopProg 64 :=
.mark loopBody641_24

def loopBody641_26 : HolLoopProg 64 :=
.seq loopBody641_11 loopBody641_25

def loopBody641_27 : HolLoopProg 64 :=
.mark loopBody641_26

def loopBody641_28 : HolLoopProg 64 :=
.seq loopBody641_9 loopBody641_27

def loopBody641_29 : HolLoopProg 64 :=
.mark loopBody641_28

def loopBody641_30 : HolLoopProg 64 :=
.seq loopBody641_3 loopBody641_29

def loopBody641_31 : HolLoopProg 64 :=
.mark loopBody641_30

def loopBody641_32 : HolLoopProg 64 :=
.seq loopBody641_1 loopBody641_31

def loopBody641_33 : HolLoopProg 64 :=
.mark loopBody641_32

def loopBody641_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody641_35 : HolLoopProg 64 :=
.mark loopBody641_34

def loopBody641_36 : HolLoopProg 64 :=
.seq loopBody641_35 loopBody641_19

def loopBody641_37 : HolLoopProg 64 :=
.mark loopBody641_36

def loopBody641_38 : HolLoopProg 64 :=
.seq loopBody641_33 loopBody641_37

def loopBody641_39 : HolLoopProg 64 :=
.mark loopBody641_38

def output641 : Nat × List Nat × HolLoopProg 64 :=
  (705, [0, 1, 2, 3, 4, 5], loopBody641_39)
end InitECandidate.Proofs.FrontendStages.Loop
