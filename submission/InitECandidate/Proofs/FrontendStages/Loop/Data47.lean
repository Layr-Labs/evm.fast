import InitECandidate.Proofs.FrontendStages.Loop.Translate31
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody47_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 0,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody47_1 : HolLoopProg 64 :=
.mark loopBody47_0

def loopBody47_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody47_3 : HolLoopProg 64 :=
.mark loopBody47_2

def loopBody47_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 2,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody47_5 : HolLoopProg 64 :=
.mark loopBody47_4

def loopBody47_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.xor
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 1#64]])

def loopBody47_7 : HolLoopProg 64 :=
.mark loopBody47_6

def loopBody47_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5, 6, 7]

def loopBody47_9 : HolLoopProg 64 :=
.mark loopBody47_8

def loopBody47_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody47_11 : HolLoopProg 64 :=
.mark loopBody47_10

def loopBody47_12 : HolLoopProg 64 :=
.seq loopBody47_9 loopBody47_11

def loopBody47_13 : HolLoopProg 64 :=
.mark loopBody47_12

def loopBody47_14 : HolLoopProg 64 :=
.seq loopBody47_7 loopBody47_13

def loopBody47_15 : HolLoopProg 64 :=
.mark loopBody47_14

def loopBody47_16 : HolLoopProg 64 :=
.seq loopBody47_5 loopBody47_15

def loopBody47_17 : HolLoopProg 64 :=
.mark loopBody47_16

def loopBody47_18 : HolLoopProg 64 :=
.seq loopBody47_3 loopBody47_17

def loopBody47_19 : HolLoopProg 64 :=
.mark loopBody47_18

def loopBody47_20 : HolLoopProg 64 :=
.seq loopBody47_1 loopBody47_19

def loopBody47_21 : HolLoopProg 64 :=
.mark loopBody47_20

def output47 : Nat × List Nat × HolLoopProg 64 :=
  (111, [0, 1, 2, 3], loopBody47_21)
end InitECandidate.Proofs.FrontendStages.Loop
