import InitECandidate.Proofs.FrontendStages.Loop.Translate601
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody617_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody617_1 : HolLoopProg 64 :=
.mark loopBody617_0

def loopBody617_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 5#64))
        (Flapjack.HolLoopExp.const 1#64)])

def loopBody617_3 : HolLoopProg 64 :=
.mark loopBody617_2

def loopBody617_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 676) [2, 3] none

def loopBody617_5 : HolLoopProg 64 :=
.mark loopBody617_4

def loopBody617_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody617_7 : HolLoopProg 64 :=
.mark loopBody617_6

def loopBody617_8 : HolLoopProg 64 :=
.seq loopBody617_5 loopBody617_7

def loopBody617_9 : HolLoopProg 64 :=
.mark loopBody617_8

def loopBody617_10 : HolLoopProg 64 :=
.seq loopBody617_3 loopBody617_9

def loopBody617_11 : HolLoopProg 64 :=
.mark loopBody617_10

def loopBody617_12 : HolLoopProg 64 :=
.seq loopBody617_1 loopBody617_11

def loopBody617_13 : HolLoopProg 64 :=
.mark loopBody617_12

def output617 : Nat × List Nat × HolLoopProg 64 :=
  (681, [0, 1], loopBody617_13)
end InitECandidate.Proofs.FrontendStages.Loop
