import InitECandidate.Proofs.FrontendStages.Loop.Translate775
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody791_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody791_1 : HolLoopProg 64 :=
.mark loopBody791_0

def loopBody791_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 3#64)

def loopBody791_3 : HolLoopProg 64 :=
.mark loopBody791_2

def loopBody791_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody791_5 : HolLoopProg 64 :=
.mark loopBody791_4

def loopBody791_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody791_7 : HolLoopProg 64 :=
.mark loopBody791_6

def loopBody791_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody791_5 loopBody791_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody791_9 : HolLoopProg 64 :=
.mark loopBody791_8

def loopBody791_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody791_11 : HolLoopProg 64 :=
.mark loopBody791_10

def loopBody791_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody791_13 : HolLoopProg 64 :=
.mark loopBody791_12

def loopBody791_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody791_15 : HolLoopProg 64 :=
.mark loopBody791_14

def loopBody791_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody791_17 : HolLoopProg 64 :=
.mark loopBody791_16

def loopBody791_18 : HolLoopProg 64 :=
.seq loopBody791_15 loopBody791_17

def loopBody791_19 : HolLoopProg 64 :=
.mark loopBody791_18

def loopBody791_20 : HolLoopProg 64 :=
.seq loopBody791_13 loopBody791_19

def loopBody791_21 : HolLoopProg 64 :=
.mark loopBody791_20

def loopBody791_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody791_21 loopBody791_17 (Flapjack.Spt.ln)

def loopBody791_23 : HolLoopProg 64 :=
.mark loopBody791_22

def loopBody791_24 : HolLoopProg 64 :=
.seq loopBody791_23 loopBody791_17

def loopBody791_25 : HolLoopProg 64 :=
.mark loopBody791_24

def loopBody791_26 : HolLoopProg 64 :=
.seq loopBody791_11 loopBody791_25

def loopBody791_27 : HolLoopProg 64 :=
.mark loopBody791_26

def loopBody791_28 : HolLoopProg 64 :=
.seq loopBody791_9 loopBody791_27

def loopBody791_29 : HolLoopProg 64 :=
.mark loopBody791_28

def loopBody791_30 : HolLoopProg 64 :=
.seq loopBody791_3 loopBody791_29

def loopBody791_31 : HolLoopProg 64 :=
.mark loopBody791_30

def loopBody791_32 : HolLoopProg 64 :=
.seq loopBody791_1 loopBody791_31

def loopBody791_33 : HolLoopProg 64 :=
.mark loopBody791_32

def loopBody791_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody791_35 : HolLoopProg 64 :=
.mark loopBody791_34

def loopBody791_36 : HolLoopProg 64 :=
.seq loopBody791_35 loopBody791_19

def loopBody791_37 : HolLoopProg 64 :=
.mark loopBody791_36

def loopBody791_38 : HolLoopProg 64 :=
.seq loopBody791_33 loopBody791_37

def loopBody791_39 : HolLoopProg 64 :=
.mark loopBody791_38

def output791 : Nat × List Nat × HolLoopProg 64 :=
  (855, [0], loopBody791_39)
end InitECandidate.Proofs.FrontendStages.Loop
