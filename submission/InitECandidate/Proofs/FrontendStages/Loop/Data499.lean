import InitECandidate.Proofs.FrontendStages.Loop.Translate483
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody499_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody499_1 : HolLoopProg 64 :=
.mark loopBody499_0

def loopBody499_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 3#64)

def loopBody499_3 : HolLoopProg 64 :=
.mark loopBody499_2

def loopBody499_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 48#64]))

def loopBody499_5 : HolLoopProg 64 :=
.mark loopBody499_4

def loopBody499_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody499_7 : HolLoopProg 64 :=
.mark loopBody499_6

def loopBody499_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody499_9 : HolLoopProg 64 :=
.mark loopBody499_8

def loopBody499_10 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 560) ([2, 3, 4]) (some (2, loopBody499_9, loopBody499_1, (Flapjack.Spt.ln)))

def loopBody499_11 : HolLoopProg 64 :=
.mark loopBody499_10

def loopBody499_12 : HolLoopProg 64 :=
.seq loopBody499_11 loopBody499_1

def loopBody499_13 : HolLoopProg 64 :=
.mark loopBody499_12

def loopBody499_14 : HolLoopProg 64 :=
.seq loopBody499_7 loopBody499_13

def loopBody499_15 : HolLoopProg 64 :=
.mark loopBody499_14

def loopBody499_16 : HolLoopProg 64 :=
.seq loopBody499_5 loopBody499_15

def loopBody499_17 : HolLoopProg 64 :=
.mark loopBody499_16

def loopBody499_18 : HolLoopProg 64 :=
.seq loopBody499_3 loopBody499_17

def loopBody499_19 : HolLoopProg 64 :=
.mark loopBody499_18

def loopBody499_20 : HolLoopProg 64 :=
.seq loopBody499_1 loopBody499_19

def loopBody499_21 : HolLoopProg 64 :=
.mark loopBody499_20

def loopBody499_22 : HolLoopProg 64 :=
.seq loopBody499_1 loopBody499_21

def loopBody499_23 : HolLoopProg 64 :=
.mark loopBody499_22

def loopBody499_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody499_25 : HolLoopProg 64 :=
.mark loopBody499_24

def loopBody499_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody499_27 : HolLoopProg 64 :=
.mark loopBody499_26

def loopBody499_28 : HolLoopProg 64 :=
.seq loopBody499_27 loopBody499_1

def loopBody499_29 : HolLoopProg 64 :=
.mark loopBody499_28

def loopBody499_30 : HolLoopProg 64 :=
.seq loopBody499_25 loopBody499_29

def loopBody499_31 : HolLoopProg 64 :=
.mark loopBody499_30

def loopBody499_32 : HolLoopProg 64 :=
.seq loopBody499_23 loopBody499_31

def loopBody499_33 : HolLoopProg 64 :=
.mark loopBody499_32

def output499 : Nat × List Nat × HolLoopProg 64 :=
  (563, [], loopBody499_33)
end InitECandidate.Proofs.FrontendStages.Loop
