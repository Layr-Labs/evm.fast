import InitECandidate.Proofs.FrontendStages.Loop.Translate32
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody48_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody48_1 : HolLoopProg 64 :=
.mark loopBody48_0

def loopBody48_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 5])

def loopBody48_3 : HolLoopProg 64 :=
.mark loopBody48_2

def loopBody48_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6])

def loopBody48_5 : HolLoopProg 64 :=
.mark loopBody48_4

def loopBody48_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7])

def loopBody48_7 : HolLoopProg 64 :=
.mark loopBody48_6

def loopBody48_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8, 9, 10, 11]

def loopBody48_9 : HolLoopProg 64 :=
.mark loopBody48_8

def loopBody48_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody48_11 : HolLoopProg 64 :=
.mark loopBody48_10

def loopBody48_12 : HolLoopProg 64 :=
.seq loopBody48_9 loopBody48_11

def loopBody48_13 : HolLoopProg 64 :=
.mark loopBody48_12

def loopBody48_14 : HolLoopProg 64 :=
.seq loopBody48_7 loopBody48_13

def loopBody48_15 : HolLoopProg 64 :=
.mark loopBody48_14

def loopBody48_16 : HolLoopProg 64 :=
.seq loopBody48_5 loopBody48_15

def loopBody48_17 : HolLoopProg 64 :=
.mark loopBody48_16

def loopBody48_18 : HolLoopProg 64 :=
.seq loopBody48_3 loopBody48_17

def loopBody48_19 : HolLoopProg 64 :=
.mark loopBody48_18

def loopBody48_20 : HolLoopProg 64 :=
.seq loopBody48_1 loopBody48_19

def loopBody48_21 : HolLoopProg 64 :=
.mark loopBody48_20

def output48 : Nat × List Nat × HolLoopProg 64 :=
  (112, [0, 1, 2, 3, 4, 5, 6, 7], loopBody48_21)
end InitECandidate.Proofs.FrontendStages.Loop
