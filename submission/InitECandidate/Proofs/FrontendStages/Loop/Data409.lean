import InitECandidate.Proofs.FrontendStages.Loop.Translate393
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody409_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody409_1 : HolLoopProg 64 :=
.mark loopBody409_0

def loopBody409_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 112#64]))

def loopBody409_3 : HolLoopProg 64 :=
.mark loopBody409_2

def loopBody409_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.op Flapjack.BinOp.sub
        [Flapjack.HolLoopExp.load
            (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 48#64]),
          Flapjack.HolLoopExp.load
            (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 72#64])],
      Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])])

def loopBody409_5 : HolLoopProg 64 :=
.mark loopBody409_4

def loopBody409_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody409_7 : HolLoopProg 64 :=
.mark loopBody409_6

def loopBody409_8 : HolLoopProg 64 :=
.seq loopBody409_7 loopBody409_1

def loopBody409_9 : HolLoopProg 64 :=
.mark loopBody409_8

def loopBody409_10 : HolLoopProg 64 :=
.seq loopBody409_5 loopBody409_9

def loopBody409_11 : HolLoopProg 64 :=
.mark loopBody409_10

def loopBody409_12 : HolLoopProg 64 :=
.seq loopBody409_3 loopBody409_11

def loopBody409_13 : HolLoopProg 64 :=
.mark loopBody409_12

def loopBody409_14 : HolLoopProg 64 :=
.seq loopBody409_1 loopBody409_13

def loopBody409_15 : HolLoopProg 64 :=
.mark loopBody409_14

def output409 : Nat × List Nat × HolLoopProg 64 :=
  (473, [0], loopBody409_15)
end InitECandidate.Proofs.FrontendStages.Loop
