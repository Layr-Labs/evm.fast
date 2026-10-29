import InitECandidate.Proofs.FrontendStages.Loop.Translate293
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody309_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody309_1 : HolLoopProg 64 :=
.mark loopBody309_0

def loopBody309_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody309_3 : HolLoopProg 64 :=
.mark loopBody309_2

def loopBody309_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody309_5 : HolLoopProg 64 :=
.mark loopBody309_4

def loopBody309_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody309_7 : HolLoopProg 64 :=
.mark loopBody309_6

def loopBody309_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 370) [2, 3, 4, 5] none

def loopBody309_9 : HolLoopProg 64 :=
.mark loopBody309_8

def loopBody309_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody309_11 : HolLoopProg 64 :=
.mark loopBody309_10

def loopBody309_12 : HolLoopProg 64 :=
.seq loopBody309_9 loopBody309_11

def loopBody309_13 : HolLoopProg 64 :=
.mark loopBody309_12

def loopBody309_14 : HolLoopProg 64 :=
.seq loopBody309_7 loopBody309_13

def loopBody309_15 : HolLoopProg 64 :=
.mark loopBody309_14

def loopBody309_16 : HolLoopProg 64 :=
.seq loopBody309_5 loopBody309_15

def loopBody309_17 : HolLoopProg 64 :=
.mark loopBody309_16

def loopBody309_18 : HolLoopProg 64 :=
.seq loopBody309_3 loopBody309_17

def loopBody309_19 : HolLoopProg 64 :=
.mark loopBody309_18

def loopBody309_20 : HolLoopProg 64 :=
.seq loopBody309_1 loopBody309_19

def loopBody309_21 : HolLoopProg 64 :=
.mark loopBody309_20

def output309 : Nat × List Nat × HolLoopProg 64 :=
  (373, [0, 1], loopBody309_21)
end InitECandidate.Proofs.FrontendStages.Loop
