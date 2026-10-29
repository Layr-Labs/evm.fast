import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody8_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 32#64]))

def loopBody8_1 : HolLoopProg 64 :=
.mark loopBody8_0

def loopBody8_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody8_3 : HolLoopProg 64 :=
.mark loopBody8_2

def loopBody8_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody8_5 : HolLoopProg 64 :=
.mark loopBody8_4

def loopBody8_6 : HolLoopProg 64 :=
.seq loopBody8_3 loopBody8_5

def loopBody8_7 : HolLoopProg 64 :=
.mark loopBody8_6

def loopBody8_8 : HolLoopProg 64 :=
.seq loopBody8_1 loopBody8_7

def loopBody8_9 : HolLoopProg 64 :=
.mark loopBody8_8

def output8 : Nat × List Nat × HolLoopProg 64 :=
  (72, [], loopBody8_9)
end InitECandidate.Proofs.FrontendStages.Loop
