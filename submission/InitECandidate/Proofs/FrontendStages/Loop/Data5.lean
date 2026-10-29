import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody5_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 8#64]))

def loopBody5_1 : HolLoopProg 64 :=
.mark loopBody5_0

def loopBody5_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody5_3 : HolLoopProg 64 :=
.mark loopBody5_2

def loopBody5_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody5_5 : HolLoopProg 64 :=
.mark loopBody5_4

def loopBody5_6 : HolLoopProg 64 :=
.seq loopBody5_3 loopBody5_5

def loopBody5_7 : HolLoopProg 64 :=
.mark loopBody5_6

def loopBody5_8 : HolLoopProg 64 :=
.seq loopBody5_1 loopBody5_7

def loopBody5_9 : HolLoopProg 64 :=
.mark loopBody5_8

def output5 : Nat × List Nat × HolLoopProg 64 :=
  (69, [], loopBody5_9)
end InitECandidate.Proofs.FrontendStages.Loop
