import InitECandidate.Proofs.FrontendStages.Loop.Translate100
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody116_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody116_1 : HolLoopProg 64 :=
.mark loopBody116_0

def loopBody116_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 175) [1] none

def loopBody116_3 : HolLoopProg 64 :=
.mark loopBody116_2

def loopBody116_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody116_5 : HolLoopProg 64 :=
.mark loopBody116_4

def loopBody116_6 : HolLoopProg 64 :=
.seq loopBody116_3 loopBody116_5

def loopBody116_7 : HolLoopProg 64 :=
.mark loopBody116_6

def loopBody116_8 : HolLoopProg 64 :=
.seq loopBody116_1 loopBody116_7

def loopBody116_9 : HolLoopProg 64 :=
.mark loopBody116_8

def output116 : Nat × List Nat × HolLoopProg 64 :=
  (180, [0], loopBody116_9)
end InitECandidate.Proofs.FrontendStages.Loop
