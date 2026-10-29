import InitECandidate.Proofs.FrontendStages.Loop.Translate274
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody290_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody290_1 : HolLoopProg 64 :=
.mark loopBody290_0

def loopBody290_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody290_3 : HolLoopProg 64 :=
.mark loopBody290_2

def loopBody290_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody290_5 : HolLoopProg 64 :=
.mark loopBody290_4

def loopBody290_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody290_7 : HolLoopProg 64 :=
.mark loopBody290_6

def loopBody290_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.RegImm.reg 3) loopBody290_5 loopBody290_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody290_9 : HolLoopProg 64 :=
.mark loopBody290_8

def loopBody290_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody290_11 : HolLoopProg 64 :=
.mark loopBody290_10

def loopBody290_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody290_13 : HolLoopProg 64 :=
.mark loopBody290_12

def loopBody290_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody290_15 : HolLoopProg 64 :=
.mark loopBody290_14

def loopBody290_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody290_17 : HolLoopProg 64 :=
.mark loopBody290_16

def loopBody290_18 : HolLoopProg 64 :=
.seq loopBody290_15 loopBody290_17

def loopBody290_19 : HolLoopProg 64 :=
.mark loopBody290_18

def loopBody290_20 : HolLoopProg 64 :=
.seq loopBody290_13 loopBody290_19

def loopBody290_21 : HolLoopProg 64 :=
.mark loopBody290_20

def loopBody290_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody290_21 loopBody290_17 (Flapjack.Spt.ln)

def loopBody290_23 : HolLoopProg 64 :=
.mark loopBody290_22

def loopBody290_24 : HolLoopProg 64 :=
.seq loopBody290_23 loopBody290_17

def loopBody290_25 : HolLoopProg 64 :=
.mark loopBody290_24

def loopBody290_26 : HolLoopProg 64 :=
.seq loopBody290_11 loopBody290_25

def loopBody290_27 : HolLoopProg 64 :=
.mark loopBody290_26

def loopBody290_28 : HolLoopProg 64 :=
.seq loopBody290_9 loopBody290_27

def loopBody290_29 : HolLoopProg 64 :=
.mark loopBody290_28

def loopBody290_30 : HolLoopProg 64 :=
.seq loopBody290_3 loopBody290_29

def loopBody290_31 : HolLoopProg 64 :=
.mark loopBody290_30

def loopBody290_32 : HolLoopProg 64 :=
.seq loopBody290_1 loopBody290_31

def loopBody290_33 : HolLoopProg 64 :=
.mark loopBody290_32

def loopBody290_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody290_35 : HolLoopProg 64 :=
.mark loopBody290_34

def loopBody290_36 : HolLoopProg 64 :=
.seq loopBody290_35 loopBody290_19

def loopBody290_37 : HolLoopProg 64 :=
.mark loopBody290_36

def loopBody290_38 : HolLoopProg 64 :=
.seq loopBody290_33 loopBody290_37

def loopBody290_39 : HolLoopProg 64 :=
.mark loopBody290_38

def output290 : Nat × List Nat × HolLoopProg 64 :=
  (354, [0], loopBody290_39)
end InitECandidate.Proofs.FrontendStages.Loop
