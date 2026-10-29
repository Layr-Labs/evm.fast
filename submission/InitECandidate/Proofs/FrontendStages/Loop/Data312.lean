import InitECandidate.Proofs.FrontendStages.Loop.Translate296
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody312_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody312_1 : HolLoopProg 64 :=
.mark loopBody312_0

def loopBody312_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody312_3 : HolLoopProg 64 :=
.mark loopBody312_2

def loopBody312_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody312_5 : HolLoopProg 64 :=
.mark loopBody312_4

def loopBody312_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody312_7 : HolLoopProg 64 :=
.mark loopBody312_6

def loopBody312_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 370) [2, 3, 4, 5] none

def loopBody312_9 : HolLoopProg 64 :=
.mark loopBody312_8

def loopBody312_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody312_11 : HolLoopProg 64 :=
.mark loopBody312_10

def loopBody312_12 : HolLoopProg 64 :=
.seq loopBody312_9 loopBody312_11

def loopBody312_13 : HolLoopProg 64 :=
.mark loopBody312_12

def loopBody312_14 : HolLoopProg 64 :=
.seq loopBody312_7 loopBody312_13

def loopBody312_15 : HolLoopProg 64 :=
.mark loopBody312_14

def loopBody312_16 : HolLoopProg 64 :=
.seq loopBody312_5 loopBody312_15

def loopBody312_17 : HolLoopProg 64 :=
.mark loopBody312_16

def loopBody312_18 : HolLoopProg 64 :=
.seq loopBody312_3 loopBody312_17

def loopBody312_19 : HolLoopProg 64 :=
.mark loopBody312_18

def loopBody312_20 : HolLoopProg 64 :=
.seq loopBody312_1 loopBody312_19

def loopBody312_21 : HolLoopProg 64 :=
.mark loopBody312_20

def output312 : Nat × List Nat × HolLoopProg 64 :=
  (376, [0, 1], loopBody312_21)
end InitECandidate.Proofs.FrontendStages.Loop
