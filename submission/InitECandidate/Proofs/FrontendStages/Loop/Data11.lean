import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody11_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 24#64]))

def loopBody11_1 : HolLoopProg 64 :=
.mark loopBody11_0

def loopBody11_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody11_3 : HolLoopProg 64 :=
.mark loopBody11_2

def loopBody11_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody11_5 : HolLoopProg 64 :=
.mark loopBody11_4

def loopBody11_6 : HolLoopProg 64 :=
.seq loopBody11_3 loopBody11_5

def loopBody11_7 : HolLoopProg 64 :=
.mark loopBody11_6

def loopBody11_8 : HolLoopProg 64 :=
.seq loopBody11_1 loopBody11_7

def loopBody11_9 : HolLoopProg 64 :=
.mark loopBody11_8

def output11 : Nat × List Nat × HolLoopProg 64 :=
  (75, [], loopBody11_9)
end InitECandidate.Proofs.FrontendStages.Loop
