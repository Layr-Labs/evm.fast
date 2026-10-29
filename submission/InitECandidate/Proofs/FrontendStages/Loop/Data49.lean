import InitECandidate.Proofs.FrontendStages.Loop.Translate33
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody49_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody49_1 : HolLoopProg 64 :=
.mark loopBody49_0

def loopBody49_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 5])

def loopBody49_3 : HolLoopProg 64 :=
.mark loopBody49_2

def loopBody49_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6])

def loopBody49_5 : HolLoopProg 64 :=
.mark loopBody49_4

def loopBody49_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7])

def loopBody49_7 : HolLoopProg 64 :=
.mark loopBody49_6

def loopBody49_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8, 9, 10, 11]

def loopBody49_9 : HolLoopProg 64 :=
.mark loopBody49_8

def loopBody49_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody49_11 : HolLoopProg 64 :=
.mark loopBody49_10

def loopBody49_12 : HolLoopProg 64 :=
.seq loopBody49_9 loopBody49_11

def loopBody49_13 : HolLoopProg 64 :=
.mark loopBody49_12

def loopBody49_14 : HolLoopProg 64 :=
.seq loopBody49_7 loopBody49_13

def loopBody49_15 : HolLoopProg 64 :=
.mark loopBody49_14

def loopBody49_16 : HolLoopProg 64 :=
.seq loopBody49_5 loopBody49_15

def loopBody49_17 : HolLoopProg 64 :=
.mark loopBody49_16

def loopBody49_18 : HolLoopProg 64 :=
.seq loopBody49_3 loopBody49_17

def loopBody49_19 : HolLoopProg 64 :=
.mark loopBody49_18

def loopBody49_20 : HolLoopProg 64 :=
.seq loopBody49_1 loopBody49_19

def loopBody49_21 : HolLoopProg 64 :=
.mark loopBody49_20

def output49 : Nat × List Nat × HolLoopProg 64 :=
  (113, [0, 1, 2, 3, 4, 5, 6, 7], loopBody49_21)
end InitECandidate.Proofs.FrontendStages.Loop
