import InitECandidate.Proofs.FrontendStages.Loop.Translate492
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody508_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 0#64]))

def loopBody508_1 : HolLoopProg 64 :=
.mark loopBody508_0

def loopBody508_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody508_3 : HolLoopProg 64 :=
.mark loopBody508_2

def loopBody508_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody508_5 : HolLoopProg 64 :=
.mark loopBody508_4

def loopBody508_6 : HolLoopProg 64 :=
.seq loopBody508_3 loopBody508_5

def loopBody508_7 : HolLoopProg 64 :=
.mark loopBody508_6

def loopBody508_8 : HolLoopProg 64 :=
.seq loopBody508_1 loopBody508_7

def loopBody508_9 : HolLoopProg 64 :=
.mark loopBody508_8

def output508 : Nat × List Nat × HolLoopProg 64 :=
  (572, [], loopBody508_9)
end InitECandidate.Proofs.FrontendStages.Loop
