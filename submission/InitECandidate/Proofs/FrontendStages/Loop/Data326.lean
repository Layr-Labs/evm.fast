import InitECandidate.Proofs.FrontendStages.Loop.Translate310
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody326_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 16#64]))

def loopBody326_1 : HolLoopProg 64 :=
.mark loopBody326_0

def loopBody326_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody326_3 : HolLoopProg 64 :=
.mark loopBody326_2

def loopBody326_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody326_5 : HolLoopProg 64 :=
.mark loopBody326_4

def loopBody326_6 : HolLoopProg 64 :=
.seq loopBody326_3 loopBody326_5

def loopBody326_7 : HolLoopProg 64 :=
.mark loopBody326_6

def loopBody326_8 : HolLoopProg 64 :=
.seq loopBody326_1 loopBody326_7

def loopBody326_9 : HolLoopProg 64 :=
.mark loopBody326_8

def output326 : Nat × List Nat × HolLoopProg 64 :=
  (390, [], loopBody326_9)
end InitECandidate.Proofs.FrontendStages.Loop
