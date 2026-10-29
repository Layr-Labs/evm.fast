import InitECandidate.Proofs.FrontendStages.Loop.Translate4
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody20_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody20_1 : HolLoopProg 64 :=
.mark loopBody20_0

def loopBody20_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and
          [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 71777214294589695#64])
        (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.op Flapjack.BinOp.and
        [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 8#64),
          Flapjack.HolLoopExp.const 71777214294589695#64]])

def loopBody20_3 : HolLoopProg 64 :=
.mark loopBody20_2

def loopBody20_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 0 (Flapjack.HolLoopExp.var 1)

def loopBody20_5 : HolLoopProg 64 :=
.mark loopBody20_4

def loopBody20_6 : HolLoopProg 64 :=
.seq loopBody20_5 loopBody20_1

def loopBody20_7 : HolLoopProg 64 :=
.mark loopBody20_6

def loopBody20_8 : HolLoopProg 64 :=
.seq loopBody20_7 loopBody20_1

def loopBody20_9 : HolLoopProg 64 :=
.mark loopBody20_8

def loopBody20_10 : HolLoopProg 64 :=
.seq loopBody20_3 loopBody20_9

def loopBody20_11 : HolLoopProg 64 :=
.mark loopBody20_10

def loopBody20_12 : HolLoopProg 64 :=
.seq loopBody20_1 loopBody20_11

def loopBody20_13 : HolLoopProg 64 :=
.mark loopBody20_12

def loopBody20_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.and
          [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 281470681808895#64])
        (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.op Flapjack.BinOp.and
        [Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 16#64),
          Flapjack.HolLoopExp.const 281470681808895#64]])

def loopBody20_15 : HolLoopProg 64 :=
.mark loopBody20_14

def loopBody20_16 : HolLoopProg 64 :=
.seq loopBody20_15 loopBody20_9

def loopBody20_17 : HolLoopProg 64 :=
.mark loopBody20_16

def loopBody20_18 : HolLoopProg 64 :=
.seq loopBody20_1 loopBody20_17

def loopBody20_19 : HolLoopProg 64 :=
.mark loopBody20_18

def loopBody20_20 : HolLoopProg 64 :=
.seq loopBody20_13 loopBody20_19

def loopBody20_21 : HolLoopProg 64 :=
.mark loopBody20_20

def loopBody20_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 32#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 32#64)])

def loopBody20_23 : HolLoopProg 64 :=
.mark loopBody20_22

def loopBody20_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody20_25 : HolLoopProg 64 :=
.mark loopBody20_24

def loopBody20_26 : HolLoopProg 64 :=
.seq loopBody20_25 loopBody20_1

def loopBody20_27 : HolLoopProg 64 :=
.mark loopBody20_26

def loopBody20_28 : HolLoopProg 64 :=
.seq loopBody20_23 loopBody20_27

def loopBody20_29 : HolLoopProg 64 :=
.mark loopBody20_28

def loopBody20_30 : HolLoopProg 64 :=
.seq loopBody20_21 loopBody20_29

def loopBody20_31 : HolLoopProg 64 :=
.mark loopBody20_30

def output20 : Nat × List Nat × HolLoopProg 64 :=
  (84, [0], loopBody20_31)
end InitECandidate.Proofs.FrontendStages.Loop
