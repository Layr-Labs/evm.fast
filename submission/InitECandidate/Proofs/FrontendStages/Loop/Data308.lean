import InitECandidate.Proofs.FrontendStages.Loop.Translate292
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody308_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody308_1 : HolLoopProg 64 :=
.mark loopBody308_0

def loopBody308_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 2#64)

def loopBody308_3 : HolLoopProg 64 :=
.mark loopBody308_2

def loopBody308_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody308_5 : HolLoopProg 64 :=
.mark loopBody308_4

def loopBody308_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody308_7 : HolLoopProg 64 :=
.mark loopBody308_6

def loopBody308_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 370) [3, 4, 5, 6] none

def loopBody308_9 : HolLoopProg 64 :=
.mark loopBody308_8

def loopBody308_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody308_11 : HolLoopProg 64 :=
.mark loopBody308_10

def loopBody308_12 : HolLoopProg 64 :=
.seq loopBody308_9 loopBody308_11

def loopBody308_13 : HolLoopProg 64 :=
.mark loopBody308_12

def loopBody308_14 : HolLoopProg 64 :=
.seq loopBody308_7 loopBody308_13

def loopBody308_15 : HolLoopProg 64 :=
.mark loopBody308_14

def loopBody308_16 : HolLoopProg 64 :=
.seq loopBody308_5 loopBody308_15

def loopBody308_17 : HolLoopProg 64 :=
.mark loopBody308_16

def loopBody308_18 : HolLoopProg 64 :=
.seq loopBody308_3 loopBody308_17

def loopBody308_19 : HolLoopProg 64 :=
.mark loopBody308_18

def loopBody308_20 : HolLoopProg 64 :=
.seq loopBody308_1 loopBody308_19

def loopBody308_21 : HolLoopProg 64 :=
.mark loopBody308_20

def output308 : Nat × List Nat × HolLoopProg 64 :=
  (372, [0, 1, 2], loopBody308_21)
end InitECandidate.Proofs.FrontendStages.Loop
