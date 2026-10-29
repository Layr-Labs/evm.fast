import InitECandidate.Proofs.FrontendStages.Loop.Translate268
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody284_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody284_1 : HolLoopProg 64 :=
.mark loopBody284_0

def loopBody284_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody284_3 : HolLoopProg 64 :=
.mark loopBody284_2

def loopBody284_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody284_5 : HolLoopProg 64 :=
.mark loopBody284_4

def loopBody284_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody284_7 : HolLoopProg 64 :=
.mark loopBody284_6

def loopBody284_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1, 2, 3, 4]

def loopBody284_9 : HolLoopProg 64 :=
.mark loopBody284_8

def loopBody284_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody284_11 : HolLoopProg 64 :=
.mark loopBody284_10

def loopBody284_12 : HolLoopProg 64 :=
.seq loopBody284_9 loopBody284_11

def loopBody284_13 : HolLoopProg 64 :=
.mark loopBody284_12

def loopBody284_14 : HolLoopProg 64 :=
.seq loopBody284_7 loopBody284_13

def loopBody284_15 : HolLoopProg 64 :=
.mark loopBody284_14

def loopBody284_16 : HolLoopProg 64 :=
.seq loopBody284_5 loopBody284_15

def loopBody284_17 : HolLoopProg 64 :=
.mark loopBody284_16

def loopBody284_18 : HolLoopProg 64 :=
.seq loopBody284_3 loopBody284_17

def loopBody284_19 : HolLoopProg 64 :=
.mark loopBody284_18

def loopBody284_20 : HolLoopProg 64 :=
.seq loopBody284_1 loopBody284_19

def loopBody284_21 : HolLoopProg 64 :=
.mark loopBody284_20

def output284 : Nat × List Nat × HolLoopProg 64 :=
  (348, [0], loopBody284_21)
end InitECandidate.Proofs.FrontendStages.Loop
