import InitECandidate.Proofs.FrontendStages.Loop.Translate289
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody305_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody305_1 : HolLoopProg 64 :=
.mark loopBody305_0

def loopBody305_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 384#64]))

def loopBody305_3 : HolLoopProg 64 :=
.mark loopBody305_2

def loopBody305_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 392#64]))

def loopBody305_5 : HolLoopProg 64 :=
.mark loopBody305_4

def loopBody305_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody305_7 : HolLoopProg 64 :=
.mark loopBody305_6

def loopBody305_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody305_9 : HolLoopProg 64 :=
.mark loopBody305_8

def loopBody305_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 158) ([3, 4, 5]) (some (3, loopBody305_9, loopBody305_1, (Flapjack.Spt.ln)))

def loopBody305_11 : HolLoopProg 64 :=
.mark loopBody305_10

def loopBody305_12 : HolLoopProg 64 :=
.seq loopBody305_11 loopBody305_1

def loopBody305_13 : HolLoopProg 64 :=
.mark loopBody305_12

def loopBody305_14 : HolLoopProg 64 :=
.seq loopBody305_7 loopBody305_13

def loopBody305_15 : HolLoopProg 64 :=
.mark loopBody305_14

def loopBody305_16 : HolLoopProg 64 :=
.seq loopBody305_5 loopBody305_15

def loopBody305_17 : HolLoopProg 64 :=
.mark loopBody305_16

def loopBody305_18 : HolLoopProg 64 :=
.seq loopBody305_3 loopBody305_17

def loopBody305_19 : HolLoopProg 64 :=
.mark loopBody305_18

def loopBody305_20 : HolLoopProg 64 :=
.seq loopBody305_1 loopBody305_19

def loopBody305_21 : HolLoopProg 64 :=
.mark loopBody305_20

def loopBody305_22 : HolLoopProg 64 :=
.seq loopBody305_1 loopBody305_21

def loopBody305_23 : HolLoopProg 64 :=
.mark loopBody305_22

def loopBody305_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody305_25 : HolLoopProg 64 :=
.mark loopBody305_24

def loopBody305_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody305_27 : HolLoopProg 64 :=
.mark loopBody305_26

def loopBody305_28 : HolLoopProg 64 :=
.seq loopBody305_27 loopBody305_1

def loopBody305_29 : HolLoopProg 64 :=
.mark loopBody305_28

def loopBody305_30 : HolLoopProg 64 :=
.seq loopBody305_25 loopBody305_29

def loopBody305_31 : HolLoopProg 64 :=
.mark loopBody305_30

def loopBody305_32 : HolLoopProg 64 :=
.seq loopBody305_23 loopBody305_31

def loopBody305_33 : HolLoopProg 64 :=
.mark loopBody305_32

def output305 : Nat × List Nat × HolLoopProg 64 :=
  (369, [0, 1], loopBody305_33)
end InitECandidate.Proofs.FrontendStages.Loop
