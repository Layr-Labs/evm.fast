import InitECandidate.Proofs.FrontendStages.Loop.Translate273
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody289_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64]))

def loopBody289_1 : HolLoopProg 64 :=
.mark loopBody289_0

def loopBody289_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody289_3 : HolLoopProg 64 :=
.mark loopBody289_2

def loopBody289_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody289_5 : HolLoopProg 64 :=
.mark loopBody289_4

def loopBody289_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 352#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody289_7 : HolLoopProg 64 :=
.mark loopBody289_6

def loopBody289_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1, 2, 3, 4]

def loopBody289_9 : HolLoopProg 64 :=
.mark loopBody289_8

def loopBody289_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody289_11 : HolLoopProg 64 :=
.mark loopBody289_10

def loopBody289_12 : HolLoopProg 64 :=
.seq loopBody289_9 loopBody289_11

def loopBody289_13 : HolLoopProg 64 :=
.mark loopBody289_12

def loopBody289_14 : HolLoopProg 64 :=
.seq loopBody289_7 loopBody289_13

def loopBody289_15 : HolLoopProg 64 :=
.mark loopBody289_14

def loopBody289_16 : HolLoopProg 64 :=
.seq loopBody289_5 loopBody289_15

def loopBody289_17 : HolLoopProg 64 :=
.mark loopBody289_16

def loopBody289_18 : HolLoopProg 64 :=
.seq loopBody289_3 loopBody289_17

def loopBody289_19 : HolLoopProg 64 :=
.mark loopBody289_18

def loopBody289_20 : HolLoopProg 64 :=
.seq loopBody289_1 loopBody289_19

def loopBody289_21 : HolLoopProg 64 :=
.mark loopBody289_20

def output289 : Nat × List Nat × HolLoopProg 64 :=
  (353, [0], loopBody289_21)
end InitECandidate.Proofs.FrontendStages.Loop
