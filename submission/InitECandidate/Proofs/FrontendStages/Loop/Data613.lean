import InitECandidate.Proofs.FrontendStages.Loop.Translate597
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody613_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody613_1 : HolLoopProg 64 :=
.mark loopBody613_0

def loopBody613_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody613_3 : HolLoopProg 64 :=
.mark loopBody613_2

def loopBody613_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 5#64))

def loopBody613_5 : HolLoopProg 64 :=
.mark loopBody613_4

def loopBody613_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 79) [3, 4, 5] none

def loopBody613_7 : HolLoopProg 64 :=
.mark loopBody613_6

def loopBody613_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody613_9 : HolLoopProg 64 :=
.mark loopBody613_8

def loopBody613_10 : HolLoopProg 64 :=
.seq loopBody613_7 loopBody613_9

def loopBody613_11 : HolLoopProg 64 :=
.mark loopBody613_10

def loopBody613_12 : HolLoopProg 64 :=
.seq loopBody613_5 loopBody613_11

def loopBody613_13 : HolLoopProg 64 :=
.mark loopBody613_12

def loopBody613_14 : HolLoopProg 64 :=
.seq loopBody613_3 loopBody613_13

def loopBody613_15 : HolLoopProg 64 :=
.mark loopBody613_14

def loopBody613_16 : HolLoopProg 64 :=
.seq loopBody613_1 loopBody613_15

def loopBody613_17 : HolLoopProg 64 :=
.mark loopBody613_16

def output613 : Nat × List Nat × HolLoopProg 64 :=
  (677, [0, 1, 2], loopBody613_17)
end InitECandidate.Proofs.FrontendStages.Loop
