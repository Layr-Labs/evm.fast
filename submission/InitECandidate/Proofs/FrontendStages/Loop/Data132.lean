import InitECandidate.Proofs.FrontendStages.Loop.Translate116
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody132_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody132_1 : HolLoopProg 64 :=
.mark loopBody132_0

def loopBody132_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody132_3 : HolLoopProg 64 :=
.mark loopBody132_2

def loopBody132_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody132_5 : HolLoopProg 64 :=
.mark loopBody132_4

def loopBody132_6 : HolLoopProg 64 :=
.seq loopBody132_3 loopBody132_5

def loopBody132_7 : HolLoopProg 64 :=
.mark loopBody132_6

def loopBody132_8 : HolLoopProg 64 :=
.seq loopBody132_1 loopBody132_7

def loopBody132_9 : HolLoopProg 64 :=
.mark loopBody132_8

def output132 : Nat × List Nat × HolLoopProg 64 :=
  (196, [0], loopBody132_9)
end InitECandidate.Proofs.FrontendStages.Loop
