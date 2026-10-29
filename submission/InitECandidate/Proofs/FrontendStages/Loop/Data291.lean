import InitECandidate.Proofs.FrontendStages.Loop.Translate275
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody291_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 264#64]))

def loopBody291_1 : HolLoopProg 64 :=
.mark loopBody291_0

def loopBody291_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody291_3 : HolLoopProg 64 :=
.mark loopBody291_2

def loopBody291_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody291_5 : HolLoopProg 64 :=
.mark loopBody291_4

def loopBody291_6 : HolLoopProg 64 :=
.seq loopBody291_3 loopBody291_5

def loopBody291_7 : HolLoopProg 64 :=
.mark loopBody291_6

def loopBody291_8 : HolLoopProg 64 :=
.seq loopBody291_1 loopBody291_7

def loopBody291_9 : HolLoopProg 64 :=
.mark loopBody291_8

def output291 : Nat × List Nat × HolLoopProg 64 :=
  (355, [0], loopBody291_9)
end InitECandidate.Proofs.FrontendStages.Loop
