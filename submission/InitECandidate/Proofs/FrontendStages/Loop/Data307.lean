import InitECandidate.Proofs.FrontendStages.Loop.Translate291
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody307_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody307_1 : HolLoopProg 64 :=
.mark loopBody307_0

def loopBody307_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody307_3 : HolLoopProg 64 :=
.mark loopBody307_2

def loopBody307_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody307_5 : HolLoopProg 64 :=
.mark loopBody307_4

def loopBody307_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody307_7 : HolLoopProg 64 :=
.mark loopBody307_6

def loopBody307_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 370) [2, 3, 4, 5] none

def loopBody307_9 : HolLoopProg 64 :=
.mark loopBody307_8

def loopBody307_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody307_11 : HolLoopProg 64 :=
.mark loopBody307_10

def loopBody307_12 : HolLoopProg 64 :=
.seq loopBody307_9 loopBody307_11

def loopBody307_13 : HolLoopProg 64 :=
.mark loopBody307_12

def loopBody307_14 : HolLoopProg 64 :=
.seq loopBody307_7 loopBody307_13

def loopBody307_15 : HolLoopProg 64 :=
.mark loopBody307_14

def loopBody307_16 : HolLoopProg 64 :=
.seq loopBody307_5 loopBody307_15

def loopBody307_17 : HolLoopProg 64 :=
.mark loopBody307_16

def loopBody307_18 : HolLoopProg 64 :=
.seq loopBody307_3 loopBody307_17

def loopBody307_19 : HolLoopProg 64 :=
.mark loopBody307_18

def loopBody307_20 : HolLoopProg 64 :=
.seq loopBody307_1 loopBody307_19

def loopBody307_21 : HolLoopProg 64 :=
.mark loopBody307_20

def output307 : Nat × List Nat × HolLoopProg 64 :=
  (371, [0, 1], loopBody307_21)
end InitECandidate.Proofs.FrontendStages.Loop
