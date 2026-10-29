import InitECandidate.Proofs.FrontendStages.Loop.Translate294
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody310_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody310_1 : HolLoopProg 64 :=
.mark loopBody310_0

def loopBody310_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody310_3 : HolLoopProg 64 :=
.mark loopBody310_2

def loopBody310_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody310_5 : HolLoopProg 64 :=
.mark loopBody310_4

def loopBody310_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody310_7 : HolLoopProg 64 :=
.mark loopBody310_6

def loopBody310_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 370) [2, 3, 4, 5] none

def loopBody310_9 : HolLoopProg 64 :=
.mark loopBody310_8

def loopBody310_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody310_11 : HolLoopProg 64 :=
.mark loopBody310_10

def loopBody310_12 : HolLoopProg 64 :=
.seq loopBody310_9 loopBody310_11

def loopBody310_13 : HolLoopProg 64 :=
.mark loopBody310_12

def loopBody310_14 : HolLoopProg 64 :=
.seq loopBody310_7 loopBody310_13

def loopBody310_15 : HolLoopProg 64 :=
.mark loopBody310_14

def loopBody310_16 : HolLoopProg 64 :=
.seq loopBody310_5 loopBody310_15

def loopBody310_17 : HolLoopProg 64 :=
.mark loopBody310_16

def loopBody310_18 : HolLoopProg 64 :=
.seq loopBody310_3 loopBody310_17

def loopBody310_19 : HolLoopProg 64 :=
.mark loopBody310_18

def loopBody310_20 : HolLoopProg 64 :=
.seq loopBody310_1 loopBody310_19

def loopBody310_21 : HolLoopProg 64 :=
.mark loopBody310_20

def output310 : Nat × List Nat × HolLoopProg 64 :=
  (374, [0, 1], loopBody310_21)
end InitECandidate.Proofs.FrontendStages.Loop
