import InitECandidate.Proofs.FrontendStages.Loop.Translate596
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody612_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody612_1 : HolLoopProg 64 :=
.mark loopBody612_0

def loopBody612_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 5#64))

def loopBody612_3 : HolLoopProg 64 :=
.mark loopBody612_2

def loopBody612_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 80) [2, 3] none

def loopBody612_5 : HolLoopProg 64 :=
.mark loopBody612_4

def loopBody612_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody612_7 : HolLoopProg 64 :=
.mark loopBody612_6

def loopBody612_8 : HolLoopProg 64 :=
.seq loopBody612_5 loopBody612_7

def loopBody612_9 : HolLoopProg 64 :=
.mark loopBody612_8

def loopBody612_10 : HolLoopProg 64 :=
.seq loopBody612_3 loopBody612_9

def loopBody612_11 : HolLoopProg 64 :=
.mark loopBody612_10

def loopBody612_12 : HolLoopProg 64 :=
.seq loopBody612_1 loopBody612_11

def loopBody612_13 : HolLoopProg 64 :=
.mark loopBody612_12

def output612 : Nat × List Nat × HolLoopProg 64 :=
  (676, [0, 1], loopBody612_13)
end InitECandidate.Proofs.FrontendStages.Loop
