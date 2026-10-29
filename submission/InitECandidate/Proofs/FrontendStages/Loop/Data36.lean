import InitECandidate.Proofs.FrontendStages.Loop.Translate20
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody36_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody36_1 : HolLoopProg 64 :=
.mark loopBody36_0

def loopBody36_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody36_3 : HolLoopProg 64 :=
.mark loopBody36_2

def loopBody36_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody36_5 : HolLoopProg 64 :=
.mark loopBody36_4

def loopBody36_6 : HolLoopProg 64 :=
.seq loopBody36_3 loopBody36_5

def loopBody36_7 : HolLoopProg 64 :=
.mark loopBody36_6

def loopBody36_8 : HolLoopProg 64 :=
.seq loopBody36_1 loopBody36_7

def loopBody36_9 : HolLoopProg 64 :=
.mark loopBody36_8

def output36 : Nat × List Nat × HolLoopProg 64 :=
  (100, [0, 1, 2, 3], loopBody36_9)
end InitECandidate.Proofs.FrontendStages.Loop
