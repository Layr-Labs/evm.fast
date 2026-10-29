import InitECandidate.Proofs.FrontendStages.Loop.Translate13
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody29_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody29_1 : HolLoopProg 64 :=
.mark loopBody29_0

def loopBody29_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody29_3 : HolLoopProg 64 :=
.mark loopBody29_2

def loopBody29_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody29_5 : HolLoopProg 64 :=
.mark loopBody29_4

def loopBody29_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody29_7 : HolLoopProg 64 :=
.mark loopBody29_6

def loopBody29_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody29_5 loopBody29_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody29_9 : HolLoopProg 64 :=
.mark loopBody29_8

def loopBody29_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody29_11 : HolLoopProg 64 :=
.mark loopBody29_10

def loopBody29_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody29_13 : HolLoopProg 64 :=
.mark loopBody29_12

def loopBody29_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody29_15 : HolLoopProg 64 :=
.mark loopBody29_14

def loopBody29_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody29_17 : HolLoopProg 64 :=
.mark loopBody29_16

def loopBody29_18 : HolLoopProg 64 :=
.seq loopBody29_15 loopBody29_17

def loopBody29_19 : HolLoopProg 64 :=
.mark loopBody29_18

def loopBody29_20 : HolLoopProg 64 :=
.seq loopBody29_13 loopBody29_19

def loopBody29_21 : HolLoopProg 64 :=
.mark loopBody29_20

def loopBody29_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody29_21 loopBody29_17 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody29_23 : HolLoopProg 64 :=
.mark loopBody29_22

def loopBody29_24 : HolLoopProg 64 :=
.seq loopBody29_23 loopBody29_17

def loopBody29_25 : HolLoopProg 64 :=
.mark loopBody29_24

def loopBody29_26 : HolLoopProg 64 :=
.seq loopBody29_11 loopBody29_25

def loopBody29_27 : HolLoopProg 64 :=
.mark loopBody29_26

def loopBody29_28 : HolLoopProg 64 :=
.seq loopBody29_9 loopBody29_27

def loopBody29_29 : HolLoopProg 64 :=
.mark loopBody29_28

def loopBody29_30 : HolLoopProg 64 :=
.seq loopBody29_3 loopBody29_29

def loopBody29_31 : HolLoopProg 64 :=
.mark loopBody29_30

def loopBody29_32 : HolLoopProg 64 :=
.seq loopBody29_1 loopBody29_31

def loopBody29_33 : HolLoopProg 64 :=
.mark loopBody29_32

def loopBody29_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody29_35 : HolLoopProg 64 :=
.mark loopBody29_34

def loopBody29_36 : HolLoopProg 64 :=
.seq loopBody29_35 loopBody29_19

def loopBody29_37 : HolLoopProg 64 :=
.mark loopBody29_36

def loopBody29_38 : HolLoopProg 64 :=
.seq loopBody29_33 loopBody29_37

def loopBody29_39 : HolLoopProg 64 :=
.mark loopBody29_38

def output29 : Nat × List Nat × HolLoopProg 64 :=
  (93, [0, 1], loopBody29_39)
end InitECandidate.Proofs.FrontendStages.Loop
