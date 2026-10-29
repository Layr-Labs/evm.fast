import InitECandidate.Proofs.FrontendStages.Loop.Translate776
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody792_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody792_1 : HolLoopProg 64 :=
.mark loopBody792_0

def loopBody792_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 4#64)

def loopBody792_3 : HolLoopProg 64 :=
.mark loopBody792_2

def loopBody792_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody792_5 : HolLoopProg 64 :=
.mark loopBody792_4

def loopBody792_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody792_7 : HolLoopProg 64 :=
.mark loopBody792_6

def loopBody792_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.RegImm.reg 3) loopBody792_5 loopBody792_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody792_9 : HolLoopProg 64 :=
.mark loopBody792_8

def loopBody792_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody792_11 : HolLoopProg 64 :=
.mark loopBody792_10

def loopBody792_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody792_13 : HolLoopProg 64 :=
.mark loopBody792_12

def loopBody792_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody792_15 : HolLoopProg 64 :=
.mark loopBody792_14

def loopBody792_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody792_17 : HolLoopProg 64 :=
.mark loopBody792_16

def loopBody792_18 : HolLoopProg 64 :=
.seq loopBody792_15 loopBody792_17

def loopBody792_19 : HolLoopProg 64 :=
.mark loopBody792_18

def loopBody792_20 : HolLoopProg 64 :=
.seq loopBody792_13 loopBody792_19

def loopBody792_21 : HolLoopProg 64 :=
.mark loopBody792_20

def loopBody792_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody792_21 loopBody792_17 (Flapjack.Spt.ln)

def loopBody792_23 : HolLoopProg 64 :=
.mark loopBody792_22

def loopBody792_24 : HolLoopProg 64 :=
.seq loopBody792_23 loopBody792_17

def loopBody792_25 : HolLoopProg 64 :=
.mark loopBody792_24

def loopBody792_26 : HolLoopProg 64 :=
.seq loopBody792_11 loopBody792_25

def loopBody792_27 : HolLoopProg 64 :=
.mark loopBody792_26

def loopBody792_28 : HolLoopProg 64 :=
.seq loopBody792_9 loopBody792_27

def loopBody792_29 : HolLoopProg 64 :=
.mark loopBody792_28

def loopBody792_30 : HolLoopProg 64 :=
.seq loopBody792_3 loopBody792_29

def loopBody792_31 : HolLoopProg 64 :=
.mark loopBody792_30

def loopBody792_32 : HolLoopProg 64 :=
.seq loopBody792_1 loopBody792_31

def loopBody792_33 : HolLoopProg 64 :=
.mark loopBody792_32

def loopBody792_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody792_35 : HolLoopProg 64 :=
.mark loopBody792_34

def loopBody792_36 : HolLoopProg 64 :=
.seq loopBody792_35 loopBody792_19

def loopBody792_37 : HolLoopProg 64 :=
.mark loopBody792_36

def loopBody792_38 : HolLoopProg 64 :=
.seq loopBody792_33 loopBody792_37

def loopBody792_39 : HolLoopProg 64 :=
.mark loopBody792_38

def output792 : Nat × List Nat × HolLoopProg 64 :=
  (856, [0], loopBody792_39)
end InitECandidate.Proofs.FrontendStages.Loop
