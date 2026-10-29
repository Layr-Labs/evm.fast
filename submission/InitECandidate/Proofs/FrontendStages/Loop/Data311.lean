import InitECandidate.Proofs.FrontendStages.Loop.Translate295
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody311_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody311_1 : HolLoopProg 64 :=
.mark loopBody311_0

def loopBody311_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody311_3 : HolLoopProg 64 :=
.mark loopBody311_2

def loopBody311_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody311_5 : HolLoopProg 64 :=
.mark loopBody311_4

def loopBody311_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody311_7 : HolLoopProg 64 :=
.mark loopBody311_6

def loopBody311_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 370) [2, 3, 4, 5] none

def loopBody311_9 : HolLoopProg 64 :=
.mark loopBody311_8

def loopBody311_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody311_11 : HolLoopProg 64 :=
.mark loopBody311_10

def loopBody311_12 : HolLoopProg 64 :=
.seq loopBody311_9 loopBody311_11

def loopBody311_13 : HolLoopProg 64 :=
.mark loopBody311_12

def loopBody311_14 : HolLoopProg 64 :=
.seq loopBody311_7 loopBody311_13

def loopBody311_15 : HolLoopProg 64 :=
.mark loopBody311_14

def loopBody311_16 : HolLoopProg 64 :=
.seq loopBody311_5 loopBody311_15

def loopBody311_17 : HolLoopProg 64 :=
.mark loopBody311_16

def loopBody311_18 : HolLoopProg 64 :=
.seq loopBody311_3 loopBody311_17

def loopBody311_19 : HolLoopProg 64 :=
.mark loopBody311_18

def loopBody311_20 : HolLoopProg 64 :=
.seq loopBody311_1 loopBody311_19

def loopBody311_21 : HolLoopProg 64 :=
.mark loopBody311_20

def output311 : Nat × List Nat × HolLoopProg 64 :=
  (375, [0, 1], loopBody311_21)
end InitECandidate.Proofs.FrontendStages.Loop
