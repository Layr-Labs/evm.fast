import InitECandidate.Proofs.FrontendStages.Loop.Translate270
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody286_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64]))

def loopBody286_1 : HolLoopProg 64 :=
.mark loopBody286_0

def loopBody286_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody286_3 : HolLoopProg 64 :=
.mark loopBody286_2

def loopBody286_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody286_5 : HolLoopProg 64 :=
.mark loopBody286_4

def loopBody286_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 160#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody286_7 : HolLoopProg 64 :=
.mark loopBody286_6

def loopBody286_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1, 2, 3, 4]

def loopBody286_9 : HolLoopProg 64 :=
.mark loopBody286_8

def loopBody286_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody286_11 : HolLoopProg 64 :=
.mark loopBody286_10

def loopBody286_12 : HolLoopProg 64 :=
.seq loopBody286_9 loopBody286_11

def loopBody286_13 : HolLoopProg 64 :=
.mark loopBody286_12

def loopBody286_14 : HolLoopProg 64 :=
.seq loopBody286_7 loopBody286_13

def loopBody286_15 : HolLoopProg 64 :=
.mark loopBody286_14

def loopBody286_16 : HolLoopProg 64 :=
.seq loopBody286_5 loopBody286_15

def loopBody286_17 : HolLoopProg 64 :=
.mark loopBody286_16

def loopBody286_18 : HolLoopProg 64 :=
.seq loopBody286_3 loopBody286_17

def loopBody286_19 : HolLoopProg 64 :=
.mark loopBody286_18

def loopBody286_20 : HolLoopProg 64 :=
.seq loopBody286_1 loopBody286_19

def loopBody286_21 : HolLoopProg 64 :=
.mark loopBody286_20

def output286 : Nat × List Nat × HolLoopProg 64 :=
  (350, [0], loopBody286_21)
end InitECandidate.Proofs.FrontendStages.Loop
