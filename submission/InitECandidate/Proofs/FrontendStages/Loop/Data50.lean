import InitECandidate.Proofs.FrontendStages.Loop.Translate34
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody50_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 4])

def loopBody50_1 : HolLoopProg 64 :=
.mark loopBody50_0

def loopBody50_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 5])

def loopBody50_3 : HolLoopProg 64 :=
.mark loopBody50_2

def loopBody50_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 6])

def loopBody50_5 : HolLoopProg 64 :=
.mark loopBody50_4

def loopBody50_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 7])

def loopBody50_7 : HolLoopProg 64 :=
.mark loopBody50_6

def loopBody50_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8, 9, 10, 11]

def loopBody50_9 : HolLoopProg 64 :=
.mark loopBody50_8

def loopBody50_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody50_11 : HolLoopProg 64 :=
.mark loopBody50_10

def loopBody50_12 : HolLoopProg 64 :=
.seq loopBody50_9 loopBody50_11

def loopBody50_13 : HolLoopProg 64 :=
.mark loopBody50_12

def loopBody50_14 : HolLoopProg 64 :=
.seq loopBody50_7 loopBody50_13

def loopBody50_15 : HolLoopProg 64 :=
.mark loopBody50_14

def loopBody50_16 : HolLoopProg 64 :=
.seq loopBody50_5 loopBody50_15

def loopBody50_17 : HolLoopProg 64 :=
.mark loopBody50_16

def loopBody50_18 : HolLoopProg 64 :=
.seq loopBody50_3 loopBody50_17

def loopBody50_19 : HolLoopProg 64 :=
.mark loopBody50_18

def loopBody50_20 : HolLoopProg 64 :=
.seq loopBody50_1 loopBody50_19

def loopBody50_21 : HolLoopProg 64 :=
.mark loopBody50_20

def output50 : Nat × List Nat × HolLoopProg 64 :=
  (114, [0, 1, 2, 3, 4, 5, 6, 7], loopBody50_21)
end InitECandidate.Proofs.FrontendStages.Loop
