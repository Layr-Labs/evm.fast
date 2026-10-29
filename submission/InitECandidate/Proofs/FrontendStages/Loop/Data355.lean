import InitECandidate.Proofs.FrontendStages.Loop.Translate339
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody355_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody355_1 : HolLoopProg 64 :=
.mark loopBody355_0

def loopBody355_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody355_3 : HolLoopProg 64 :=
.mark loopBody355_2

def loopBody355_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody355_5 : HolLoopProg 64 :=
.mark loopBody355_4

def loopBody355_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody355_7 : HolLoopProg 64 :=
.mark loopBody355_6

def loopBody355_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody355_9 : HolLoopProg 64 :=
.mark loopBody355_8

def loopBody355_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 388) ([3, 4, 5]) (some (3, loopBody355_9, loopBody355_1, (Flapjack.Spt.ln)))

def loopBody355_11 : HolLoopProg 64 :=
.mark loopBody355_10

def loopBody355_12 : HolLoopProg 64 :=
.seq loopBody355_11 loopBody355_1

def loopBody355_13 : HolLoopProg 64 :=
.mark loopBody355_12

def loopBody355_14 : HolLoopProg 64 :=
.seq loopBody355_7 loopBody355_13

def loopBody355_15 : HolLoopProg 64 :=
.mark loopBody355_14

def loopBody355_16 : HolLoopProg 64 :=
.seq loopBody355_5 loopBody355_15

def loopBody355_17 : HolLoopProg 64 :=
.mark loopBody355_16

def loopBody355_18 : HolLoopProg 64 :=
.seq loopBody355_3 loopBody355_17

def loopBody355_19 : HolLoopProg 64 :=
.mark loopBody355_18

def loopBody355_20 : HolLoopProg 64 :=
.seq loopBody355_1 loopBody355_19

def loopBody355_21 : HolLoopProg 64 :=
.mark loopBody355_20

def loopBody355_22 : HolLoopProg 64 :=
.seq loopBody355_1 loopBody355_21

def loopBody355_23 : HolLoopProg 64 :=
.mark loopBody355_22

def loopBody355_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody355_25 : HolLoopProg 64 :=
.mark loopBody355_24

def loopBody355_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody355_27 : HolLoopProg 64 :=
.mark loopBody355_26

def loopBody355_28 : HolLoopProg 64 :=
.seq loopBody355_27 loopBody355_1

def loopBody355_29 : HolLoopProg 64 :=
.mark loopBody355_28

def loopBody355_30 : HolLoopProg 64 :=
.seq loopBody355_25 loopBody355_29

def loopBody355_31 : HolLoopProg 64 :=
.mark loopBody355_30

def loopBody355_32 : HolLoopProg 64 :=
.seq loopBody355_23 loopBody355_31

def loopBody355_33 : HolLoopProg 64 :=
.mark loopBody355_32

def output355 : Nat × List Nat × HolLoopProg 64 :=
  (419, [0, 1], loopBody355_33)
end InitECandidate.Proofs.FrontendStages.Loop
