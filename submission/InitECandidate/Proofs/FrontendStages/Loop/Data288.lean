import InitECandidate.Proofs.FrontendStages.Loop.Translate272
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody288_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64]))

def loopBody288_1 : HolLoopProg 64 :=
.mark loopBody288_0

def loopBody288_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64],
        Flapjack.HolLoopExp.const 8#64]))

def loopBody288_3 : HolLoopProg 64 :=
.mark loopBody288_2

def loopBody288_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64],
        Flapjack.HolLoopExp.const 16#64]))

def loopBody288_5 : HolLoopProg 64 :=
.mark loopBody288_4

def loopBody288_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 320#64],
        Flapjack.HolLoopExp.const 24#64]))

def loopBody288_7 : HolLoopProg 64 :=
.mark loopBody288_6

def loopBody288_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1, 2, 3, 4]

def loopBody288_9 : HolLoopProg 64 :=
.mark loopBody288_8

def loopBody288_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody288_11 : HolLoopProg 64 :=
.mark loopBody288_10

def loopBody288_12 : HolLoopProg 64 :=
.seq loopBody288_9 loopBody288_11

def loopBody288_13 : HolLoopProg 64 :=
.mark loopBody288_12

def loopBody288_14 : HolLoopProg 64 :=
.seq loopBody288_7 loopBody288_13

def loopBody288_15 : HolLoopProg 64 :=
.mark loopBody288_14

def loopBody288_16 : HolLoopProg 64 :=
.seq loopBody288_5 loopBody288_15

def loopBody288_17 : HolLoopProg 64 :=
.mark loopBody288_16

def loopBody288_18 : HolLoopProg 64 :=
.seq loopBody288_3 loopBody288_17

def loopBody288_19 : HolLoopProg 64 :=
.mark loopBody288_18

def loopBody288_20 : HolLoopProg 64 :=
.seq loopBody288_1 loopBody288_19

def loopBody288_21 : HolLoopProg 64 :=
.mark loopBody288_20

def output288 : Nat × List Nat × HolLoopProg 64 :=
  (352, [0], loopBody288_21)
end InitECandidate.Proofs.FrontendStages.Loop
