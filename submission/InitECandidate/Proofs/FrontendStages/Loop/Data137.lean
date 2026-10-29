import InitECandidate.Proofs.FrontendStages.Loop.Translate121
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody137_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody137_1 : HolLoopProg 64 :=
.mark loopBody137_0

def loopBody137_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody137_3 : HolLoopProg 64 :=
.mark loopBody137_2

def loopBody137_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody137_5 : HolLoopProg 64 :=
.mark loopBody137_4

def loopBody137_6 : HolLoopProg 64 :=
.seq loopBody137_3 loopBody137_5

def loopBody137_7 : HolLoopProg 64 :=
.mark loopBody137_6

def loopBody137_8 : HolLoopProg 64 :=
.seq loopBody137_1 loopBody137_7

def loopBody137_9 : HolLoopProg 64 :=
.mark loopBody137_8

def output137 : Nat × List Nat × HolLoopProg 64 :=
  (201, [], loopBody137_9)
end InitECandidate.Proofs.FrontendStages.Loop
