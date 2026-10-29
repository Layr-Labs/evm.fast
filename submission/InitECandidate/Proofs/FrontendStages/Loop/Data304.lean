import InitECandidate.Proofs.FrontendStages.Loop.Translate288
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody304_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody304_1 : HolLoopProg 64 :=
.mark loopBody304_0

def loopBody304_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody304_3 : HolLoopProg 64 :=
.mark loopBody304_2

def loopBody304_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody304_5 : HolLoopProg 64 :=
.mark loopBody304_4

def loopBody304_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 367) [1, 2, 3] none

def loopBody304_7 : HolLoopProg 64 :=
.mark loopBody304_6

def loopBody304_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody304_9 : HolLoopProg 64 :=
.mark loopBody304_8

def loopBody304_10 : HolLoopProg 64 :=
.seq loopBody304_7 loopBody304_9

def loopBody304_11 : HolLoopProg 64 :=
.mark loopBody304_10

def loopBody304_12 : HolLoopProg 64 :=
.seq loopBody304_5 loopBody304_11

def loopBody304_13 : HolLoopProg 64 :=
.mark loopBody304_12

def loopBody304_14 : HolLoopProg 64 :=
.seq loopBody304_3 loopBody304_13

def loopBody304_15 : HolLoopProg 64 :=
.mark loopBody304_14

def loopBody304_16 : HolLoopProg 64 :=
.seq loopBody304_1 loopBody304_15

def loopBody304_17 : HolLoopProg 64 :=
.mark loopBody304_16

def output304 : Nat × List Nat × HolLoopProg 64 :=
  (368, [0], loopBody304_17)
end InitECandidate.Proofs.FrontendStages.Loop
