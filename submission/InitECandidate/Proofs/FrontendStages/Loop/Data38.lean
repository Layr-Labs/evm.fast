import InitECandidate.Proofs.FrontendStages.Loop.Translate22
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody38_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody38_1 : HolLoopProg 64 :=
.mark loopBody38_0

def loopBody38_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody38_3 : HolLoopProg 64 :=
.mark loopBody38_2

def loopBody38_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody38_5 : HolLoopProg 64 :=
.mark loopBody38_4

def loopBody38_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody38_7 : HolLoopProg 64 :=
.mark loopBody38_6

def loopBody38_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody38_5 loopBody38_7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody38_9 : HolLoopProg 64 :=
.mark loopBody38_8

def loopBody38_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody38_11 : HolLoopProg 64 :=
.mark loopBody38_10

def loopBody38_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody38_13 : HolLoopProg 64 :=
.mark loopBody38_12

def loopBody38_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody38_15 : HolLoopProg 64 :=
.mark loopBody38_14

def loopBody38_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody38_17 : HolLoopProg 64 :=
.mark loopBody38_16

def loopBody38_18 : HolLoopProg 64 :=
.seq loopBody38_15 loopBody38_17

def loopBody38_19 : HolLoopProg 64 :=
.mark loopBody38_18

def loopBody38_20 : HolLoopProg 64 :=
.seq loopBody38_13 loopBody38_19

def loopBody38_21 : HolLoopProg 64 :=
.mark loopBody38_20

def loopBody38_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody38_21 loopBody38_17 (Flapjack.Spt.ln)

def loopBody38_23 : HolLoopProg 64 :=
.mark loopBody38_22

def loopBody38_24 : HolLoopProg 64 :=
.seq loopBody38_23 loopBody38_17

def loopBody38_25 : HolLoopProg 64 :=
.mark loopBody38_24

def loopBody38_26 : HolLoopProg 64 :=
.seq loopBody38_11 loopBody38_25

def loopBody38_27 : HolLoopProg 64 :=
.mark loopBody38_26

def loopBody38_28 : HolLoopProg 64 :=
.seq loopBody38_9 loopBody38_27

def loopBody38_29 : HolLoopProg 64 :=
.mark loopBody38_28

def loopBody38_30 : HolLoopProg 64 :=
.seq loopBody38_3 loopBody38_29

def loopBody38_31 : HolLoopProg 64 :=
.mark loopBody38_30

def loopBody38_32 : HolLoopProg 64 :=
.seq loopBody38_1 loopBody38_31

def loopBody38_33 : HolLoopProg 64 :=
.mark loopBody38_32

def loopBody38_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody38_35 : HolLoopProg 64 :=
.mark loopBody38_34

def loopBody38_36 : HolLoopProg 64 :=
.seq loopBody38_35 loopBody38_19

def loopBody38_37 : HolLoopProg 64 :=
.mark loopBody38_36

def loopBody38_38 : HolLoopProg 64 :=
.seq loopBody38_33 loopBody38_37

def loopBody38_39 : HolLoopProg 64 :=
.mark loopBody38_38

def output38 : Nat × List Nat × HolLoopProg 64 :=
  (102, [0, 1, 2, 3], loopBody38_39)
end InitECandidate.Proofs.FrontendStages.Loop
