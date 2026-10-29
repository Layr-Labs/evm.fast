import InitECandidate.Proofs.FrontendStages.Loop.Translate115
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody131_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody131_1 : HolLoopProg 64 :=
.mark loopBody131_0

def loopBody131_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody131_3 : HolLoopProg 64 :=
.mark loopBody131_2

def loopBody131_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody131_5 : HolLoopProg 64 :=
.mark loopBody131_4

def loopBody131_6 : HolLoopProg 64 :=
.seq loopBody131_3 loopBody131_5

def loopBody131_7 : HolLoopProg 64 :=
.mark loopBody131_6

def loopBody131_8 : HolLoopProg 64 :=
.seq loopBody131_1 loopBody131_7

def loopBody131_9 : HolLoopProg 64 :=
.mark loopBody131_8

def output131 : Nat × List Nat × HolLoopProg 64 :=
  (195, [0], loopBody131_9)
end InitECandidate.Proofs.FrontendStages.Loop
