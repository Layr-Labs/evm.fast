import InitECandidate.Proofs.FrontendStages.Loop.Translate166
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody182_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody182_1 : HolLoopProg 64 :=
.mark loopBody182_0

def loopBody182_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody182_3 : HolLoopProg 64 :=
.mark loopBody182_2

def loopBody182_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.load 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.const 1073741840#64,
      Flapjack.HolLoopExp.op Flapjack.BinOp.and
        [Flapjack.HolLoopExp.var 0,
          Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.const 0#64, Flapjack.HolLoopExp.const 8#64]]])

def loopBody182_5 : HolLoopProg 64 :=
.mark loopBody182_4

def loopBody182_6 : HolLoopProg 64 :=
.seq loopBody182_5 loopBody182_1

def loopBody182_7 : HolLoopProg 64 :=
.mark loopBody182_6

def loopBody182_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1)
        (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
          (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 7#64])
          (Flapjack.HolLoopExp.const 3#64)),
      Flapjack.HolLoopExp.const 255#64])

def loopBody182_9 : HolLoopProg 64 :=
.mark loopBody182_8

def loopBody182_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody182_11 : HolLoopProg 64 :=
.mark loopBody182_10

def loopBody182_12 : HolLoopProg 64 :=
.seq loopBody182_11 loopBody182_1

def loopBody182_13 : HolLoopProg 64 :=
.mark loopBody182_12

def loopBody182_14 : HolLoopProg 64 :=
.seq loopBody182_9 loopBody182_13

def loopBody182_15 : HolLoopProg 64 :=
.mark loopBody182_14

def loopBody182_16 : HolLoopProg 64 :=
.seq loopBody182_7 loopBody182_15

def loopBody182_17 : HolLoopProg 64 :=
.mark loopBody182_16

def loopBody182_18 : HolLoopProg 64 :=
.seq loopBody182_3 loopBody182_17

def loopBody182_19 : HolLoopProg 64 :=
.mark loopBody182_18

def loopBody182_20 : HolLoopProg 64 :=
.seq loopBody182_1 loopBody182_19

def loopBody182_21 : HolLoopProg 64 :=
.mark loopBody182_20

def output182 : Nat × List Nat × HolLoopProg 64 :=
  (246, [0], loopBody182_21)
end InitECandidate.Proofs.FrontendStages.Loop
