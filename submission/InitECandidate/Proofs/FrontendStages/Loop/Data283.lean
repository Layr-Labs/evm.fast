import InitECandidate.Proofs.FrontendStages.Loop.Translate267
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody283_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 144#64]))

def loopBody283_1 : HolLoopProg 64 :=
.mark loopBody283_0

def loopBody283_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody283_3 : HolLoopProg 64 :=
.mark loopBody283_2

def loopBody283_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody283_5 : HolLoopProg 64 :=
.mark loopBody283_4

def loopBody283_6 : HolLoopProg 64 :=
.seq loopBody283_3 loopBody283_5

def loopBody283_7 : HolLoopProg 64 :=
.mark loopBody283_6

def loopBody283_8 : HolLoopProg 64 :=
.seq loopBody283_1 loopBody283_7

def loopBody283_9 : HolLoopProg 64 :=
.mark loopBody283_8

def output283 : Nat × List Nat × HolLoopProg 64 :=
  (347, [0], loopBody283_9)
end InitECandidate.Proofs.FrontendStages.Loop
