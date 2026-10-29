import InitECandidate.Proofs.FrontendStages.Loop.Translate638
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody654_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 63#64)])

def loopBody654_1 : HolLoopProg 64 :=
.mark loopBody654_0

def loopBody654_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 63#64)])

def loopBody654_3 : HolLoopProg 64 :=
.mark loopBody654_2

def loopBody654_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 63#64)])

def loopBody654_5 : HolLoopProg 64 :=
.mark loopBody654_4

def loopBody654_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 63#64)])

def loopBody654_7 : HolLoopProg 64 :=
.mark loopBody654_6

def loopBody654_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 1#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 63#64)])

def loopBody654_9 : HolLoopProg 64 :=
.mark loopBody654_8

def loopBody654_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 5) (Flapjack.HolLoopExp.const 1#64))

def loopBody654_11 : HolLoopProg 64 :=
.mark loopBody654_10

def loopBody654_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7, 8, 9, 10, 11]

def loopBody654_13 : HolLoopProg 64 :=
.mark loopBody654_12

def loopBody654_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody654_15 : HolLoopProg 64 :=
.mark loopBody654_14

def loopBody654_16 : HolLoopProg 64 :=
.seq loopBody654_13 loopBody654_15

def loopBody654_17 : HolLoopProg 64 :=
.mark loopBody654_16

def loopBody654_18 : HolLoopProg 64 :=
.seq loopBody654_11 loopBody654_17

def loopBody654_19 : HolLoopProg 64 :=
.mark loopBody654_18

def loopBody654_20 : HolLoopProg 64 :=
.seq loopBody654_9 loopBody654_19

def loopBody654_21 : HolLoopProg 64 :=
.mark loopBody654_20

def loopBody654_22 : HolLoopProg 64 :=
.seq loopBody654_7 loopBody654_21

def loopBody654_23 : HolLoopProg 64 :=
.mark loopBody654_22

def loopBody654_24 : HolLoopProg 64 :=
.seq loopBody654_5 loopBody654_23

def loopBody654_25 : HolLoopProg 64 :=
.mark loopBody654_24

def loopBody654_26 : HolLoopProg 64 :=
.seq loopBody654_3 loopBody654_25

def loopBody654_27 : HolLoopProg 64 :=
.mark loopBody654_26

def loopBody654_28 : HolLoopProg 64 :=
.seq loopBody654_1 loopBody654_27

def loopBody654_29 : HolLoopProg 64 :=
.mark loopBody654_28

def output654 : Nat × List Nat × HolLoopProg 64 :=
  (718, [0, 1, 2, 3, 4, 5], loopBody654_29)
end InitECandidate.Proofs.FrontendStages.Loop
