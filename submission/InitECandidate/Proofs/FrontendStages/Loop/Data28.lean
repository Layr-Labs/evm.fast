import InitECandidate.Proofs.FrontendStages.Loop.Translate12
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody28_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody28_1 : HolLoopProg 64 :=
.mark loopBody28_0

def loopBody28_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody28_3 : HolLoopProg 64 :=
.mark loopBody28_2

def loopBody28_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody28_5 : HolLoopProg 64 :=
.mark loopBody28_4

def loopBody28_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody28_7 : HolLoopProg 64 :=
.mark loopBody28_6

def loopBody28_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody28_5 loopBody28_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody28_9 : HolLoopProg 64 :=
.mark loopBody28_8

def loopBody28_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody28_11 : HolLoopProg 64 :=
.mark loopBody28_10

def loopBody28_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody28_13 : HolLoopProg 64 :=
.mark loopBody28_12

def loopBody28_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody28_15 : HolLoopProg 64 :=
.mark loopBody28_14

def loopBody28_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody28_17 : HolLoopProg 64 :=
.mark loopBody28_16

def loopBody28_18 : HolLoopProg 64 :=
.seq loopBody28_15 loopBody28_17

def loopBody28_19 : HolLoopProg 64 :=
.mark loopBody28_18

def loopBody28_20 : HolLoopProg 64 :=
.seq loopBody28_13 loopBody28_19

def loopBody28_21 : HolLoopProg 64 :=
.mark loopBody28_20

def loopBody28_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody28_21 loopBody28_17 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody28_23 : HolLoopProg 64 :=
.mark loopBody28_22

def loopBody28_24 : HolLoopProg 64 :=
.seq loopBody28_23 loopBody28_17

def loopBody28_25 : HolLoopProg 64 :=
.mark loopBody28_24

def loopBody28_26 : HolLoopProg 64 :=
.seq loopBody28_11 loopBody28_25

def loopBody28_27 : HolLoopProg 64 :=
.mark loopBody28_26

def loopBody28_28 : HolLoopProg 64 :=
.seq loopBody28_9 loopBody28_27

def loopBody28_29 : HolLoopProg 64 :=
.mark loopBody28_28

def loopBody28_30 : HolLoopProg 64 :=
.seq loopBody28_3 loopBody28_29

def loopBody28_31 : HolLoopProg 64 :=
.mark loopBody28_30

def loopBody28_32 : HolLoopProg 64 :=
.seq loopBody28_1 loopBody28_31

def loopBody28_33 : HolLoopProg 64 :=
.mark loopBody28_32

def loopBody28_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody28_35 : HolLoopProg 64 :=
.mark loopBody28_34

def loopBody28_36 : HolLoopProg 64 :=
.seq loopBody28_35 loopBody28_19

def loopBody28_37 : HolLoopProg 64 :=
.mark loopBody28_36

def loopBody28_38 : HolLoopProg 64 :=
.seq loopBody28_33 loopBody28_37

def loopBody28_39 : HolLoopProg 64 :=
.mark loopBody28_38

def output28 : Nat × List Nat × HolLoopProg 64 :=
  (92, [0, 1], loopBody28_39)
end InitECandidate.Proofs.FrontendStages.Loop
