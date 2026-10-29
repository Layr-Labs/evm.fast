import InitECandidate.Proofs.FrontendStages.Loop.Translate271
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody287_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64]))

def loopBody287_1 : HolLoopProg 64 :=
.mark loopBody287_0

def loopBody287_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 200#64]))

def loopBody287_3 : HolLoopProg 64 :=
.mark loopBody287_2

def loopBody287_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1, 2]

def loopBody287_5 : HolLoopProg 64 :=
.mark loopBody287_4

def loopBody287_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody287_7 : HolLoopProg 64 :=
.mark loopBody287_6

def loopBody287_8 : HolLoopProg 64 :=
.seq loopBody287_5 loopBody287_7

def loopBody287_9 : HolLoopProg 64 :=
.mark loopBody287_8

def loopBody287_10 : HolLoopProg 64 :=
.seq loopBody287_3 loopBody287_9

def loopBody287_11 : HolLoopProg 64 :=
.mark loopBody287_10

def loopBody287_12 : HolLoopProg 64 :=
.seq loopBody287_1 loopBody287_11

def loopBody287_13 : HolLoopProg 64 :=
.mark loopBody287_12

def output287 : Nat × List Nat × HolLoopProg 64 :=
  (351, [0], loopBody287_13)
end InitECandidate.Proofs.FrontendStages.Loop
