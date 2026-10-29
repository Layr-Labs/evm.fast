import InitECandidate.Proofs.FrontendStages.Loop.Translate21
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody37_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody37_1 : HolLoopProg 64 :=
.mark loopBody37_0

def loopBody37_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody37_3 : HolLoopProg 64 :=
.mark loopBody37_2

def loopBody37_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody37_5 : HolLoopProg 64 :=
.mark loopBody37_4

def loopBody37_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody37_7 : HolLoopProg 64 :=
.mark loopBody37_6

def loopBody37_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.RegImm.reg 6) loopBody37_5 loopBody37_7 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))

def loopBody37_9 : HolLoopProg 64 :=
.mark loopBody37_8

def loopBody37_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody37_11 : HolLoopProg 64 :=
.mark loopBody37_10

def loopBody37_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody37_13 : HolLoopProg 64 :=
.mark loopBody37_12

def loopBody37_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody37_15 : HolLoopProg 64 :=
.mark loopBody37_14

def loopBody37_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody37_17 : HolLoopProg 64 :=
.mark loopBody37_16

def loopBody37_18 : HolLoopProg 64 :=
.seq loopBody37_15 loopBody37_17

def loopBody37_19 : HolLoopProg 64 :=
.mark loopBody37_18

def loopBody37_20 : HolLoopProg 64 :=
.seq loopBody37_13 loopBody37_19

def loopBody37_21 : HolLoopProg 64 :=
.mark loopBody37_20

def loopBody37_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody37_21 loopBody37_17 (Flapjack.Spt.ln)

def loopBody37_23 : HolLoopProg 64 :=
.mark loopBody37_22

def loopBody37_24 : HolLoopProg 64 :=
.seq loopBody37_23 loopBody37_17

def loopBody37_25 : HolLoopProg 64 :=
.mark loopBody37_24

def loopBody37_26 : HolLoopProg 64 :=
.seq loopBody37_11 loopBody37_25

def loopBody37_27 : HolLoopProg 64 :=
.mark loopBody37_26

def loopBody37_28 : HolLoopProg 64 :=
.seq loopBody37_9 loopBody37_27

def loopBody37_29 : HolLoopProg 64 :=
.mark loopBody37_28

def loopBody37_30 : HolLoopProg 64 :=
.seq loopBody37_3 loopBody37_29

def loopBody37_31 : HolLoopProg 64 :=
.mark loopBody37_30

def loopBody37_32 : HolLoopProg 64 :=
.seq loopBody37_1 loopBody37_31

def loopBody37_33 : HolLoopProg 64 :=
.mark loopBody37_32

def loopBody37_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody37_35 : HolLoopProg 64 :=
.mark loopBody37_34

def loopBody37_36 : HolLoopProg 64 :=
.seq loopBody37_35 loopBody37_19

def loopBody37_37 : HolLoopProg 64 :=
.mark loopBody37_36

def loopBody37_38 : HolLoopProg 64 :=
.seq loopBody37_33 loopBody37_37

def loopBody37_39 : HolLoopProg 64 :=
.mark loopBody37_38

def output37 : Nat × List Nat × HolLoopProg 64 :=
  (101, [0, 1, 2, 3], loopBody37_39)
end InitECandidate.Proofs.FrontendStages.Loop
