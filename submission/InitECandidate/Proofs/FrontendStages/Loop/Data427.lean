import InitECandidate.Proofs.FrontendStages.Loop.Translate411
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody427_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody427_1 : HolLoopProg 64 :=
.mark loopBody427_0

def loopBody427_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody427_3 : HolLoopProg 64 :=
.mark loopBody427_2

def loopBody427_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody427_5 : HolLoopProg 64 :=
.mark loopBody427_4

def loopBody427_6 : HolLoopProg 64 :=
.seq loopBody427_3 loopBody427_5

def loopBody427_7 : HolLoopProg 64 :=
.mark loopBody427_6

def loopBody427_8 : HolLoopProg 64 :=
.seq loopBody427_1 loopBody427_7

def loopBody427_9 : HolLoopProg 64 :=
.mark loopBody427_8

def output427 : Nat × List Nat × HolLoopProg 64 :=
  (491, [], loopBody427_9)
end InitECandidate.Proofs.FrontendStages.Loop
