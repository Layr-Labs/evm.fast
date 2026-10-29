import InitECandidate.Proofs.FrontendStages.Loop.Translate276
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody292_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
    (Flapjack.HolLoopExp.load
      (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 264#64]))
    (Flapjack.HolLoopExp.const 17#64))

def loopBody292_1 : HolLoopProg 64 :=
.mark loopBody292_0

def loopBody292_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody292_3 : HolLoopProg 64 :=
.mark loopBody292_2

def loopBody292_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody292_5 : HolLoopProg 64 :=
.mark loopBody292_4

def loopBody292_6 : HolLoopProg 64 :=
.seq loopBody292_3 loopBody292_5

def loopBody292_7 : HolLoopProg 64 :=
.mark loopBody292_6

def loopBody292_8 : HolLoopProg 64 :=
.seq loopBody292_1 loopBody292_7

def loopBody292_9 : HolLoopProg 64 :=
.mark loopBody292_8

def output292 : Nat × List Nat × HolLoopProg 64 :=
  (356, [0], loopBody292_9)
end InitECandidate.Proofs.FrontendStages.Loop
