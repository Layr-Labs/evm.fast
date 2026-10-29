import InitECandidate.Proofs.FrontendStages.Loop.Translate45
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody61_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 0),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody61_1 : HolLoopProg 64 :=
.mark loopBody61_0

def loopBody61_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody61_3 : HolLoopProg 64 :=
.mark loopBody61_2

def loopBody61_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody61_5 : HolLoopProg 64 :=
.mark loopBody61_4

def loopBody61_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 56#64]))
        (Flapjack.HolLoopExp.const 32#64)])

def loopBody61_7 : HolLoopProg 64 :=
.mark loopBody61_6

def loopBody61_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1, 2, 3, 4]

def loopBody61_9 : HolLoopProg 64 :=
.mark loopBody61_8

def loopBody61_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody61_11 : HolLoopProg 64 :=
.mark loopBody61_10

def loopBody61_12 : HolLoopProg 64 :=
.seq loopBody61_9 loopBody61_11

def loopBody61_13 : HolLoopProg 64 :=
.mark loopBody61_12

def loopBody61_14 : HolLoopProg 64 :=
.seq loopBody61_7 loopBody61_13

def loopBody61_15 : HolLoopProg 64 :=
.mark loopBody61_14

def loopBody61_16 : HolLoopProg 64 :=
.seq loopBody61_5 loopBody61_15

def loopBody61_17 : HolLoopProg 64 :=
.mark loopBody61_16

def loopBody61_18 : HolLoopProg 64 :=
.seq loopBody61_3 loopBody61_17

def loopBody61_19 : HolLoopProg 64 :=
.mark loopBody61_18

def loopBody61_20 : HolLoopProg 64 :=
.seq loopBody61_1 loopBody61_19

def loopBody61_21 : HolLoopProg 64 :=
.mark loopBody61_20

def output61 : Nat × List Nat × HolLoopProg 64 :=
  (125, [0], loopBody61_21)
end InitECandidate.Proofs.FrontendStages.Loop
