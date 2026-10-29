import InitECandidate.Proofs.FrontendStages.Loop.Translate699
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody715_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody715_1 : HolLoopProg 64 :=
.mark loopBody715_0

def loopBody715_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 732) [1] none

def loopBody715_3 : HolLoopProg 64 :=
.mark loopBody715_2

def loopBody715_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody715_5 : HolLoopProg 64 :=
.mark loopBody715_4

def loopBody715_6 : HolLoopProg 64 :=
.seq loopBody715_3 loopBody715_5

def loopBody715_7 : HolLoopProg 64 :=
.mark loopBody715_6

def loopBody715_8 : HolLoopProg 64 :=
.seq loopBody715_1 loopBody715_7

def loopBody715_9 : HolLoopProg 64 :=
.mark loopBody715_8

def output715 : Nat × List Nat × HolLoopProg 64 :=
  (779, [0], loopBody715_9)
end InitECandidate.Proofs.FrontendStages.Loop
