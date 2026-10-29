import InitECandidate.Proofs.FrontendStages.Loop.Translate679
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody695_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody695_1 : HolLoopProg 64 :=
.mark loopBody695_0

def loopBody695_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody695_3 : HolLoopProg 64 :=
.mark loopBody695_2

def loopBody695_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody695_5 : HolLoopProg 64 :=
.mark loopBody695_4

def loopBody695_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 758) [2, 3, 4] none

def loopBody695_7 : HolLoopProg 64 :=
.mark loopBody695_6

def loopBody695_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody695_9 : HolLoopProg 64 :=
.mark loopBody695_8

def loopBody695_10 : HolLoopProg 64 :=
.seq loopBody695_7 loopBody695_9

def loopBody695_11 : HolLoopProg 64 :=
.mark loopBody695_10

def loopBody695_12 : HolLoopProg 64 :=
.seq loopBody695_5 loopBody695_11

def loopBody695_13 : HolLoopProg 64 :=
.mark loopBody695_12

def loopBody695_14 : HolLoopProg 64 :=
.seq loopBody695_3 loopBody695_13

def loopBody695_15 : HolLoopProg 64 :=
.mark loopBody695_14

def loopBody695_16 : HolLoopProg 64 :=
.seq loopBody695_1 loopBody695_15

def loopBody695_17 : HolLoopProg 64 :=
.mark loopBody695_16

def output695 : Nat × List Nat × HolLoopProg 64 :=
  (759, [0, 1], loopBody695_17)
end InitECandidate.Proofs.FrontendStages.Loop
