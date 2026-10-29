import InitECandidate.Proofs.FrontendStages.Loop.Translate675
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody691_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody691_1 : HolLoopProg 64 :=
.mark loopBody691_0

def loopBody691_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody691_3 : HolLoopProg 64 :=
.mark loopBody691_2

def loopBody691_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody691_5 : HolLoopProg 64 :=
.mark loopBody691_4

def loopBody691_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 576#64)

def loopBody691_7 : HolLoopProg 64 :=
.mark loopBody691_6

def loopBody691_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody691_9 : HolLoopProg 64 :=
.mark loopBody691_8

def loopBody691_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 77) ([3, 4, 5]) (some (3, loopBody691_9, loopBody691_1, (Flapjack.Spt.ln)))

def loopBody691_11 : HolLoopProg 64 :=
.mark loopBody691_10

def loopBody691_12 : HolLoopProg 64 :=
.seq loopBody691_11 loopBody691_1

def loopBody691_13 : HolLoopProg 64 :=
.mark loopBody691_12

def loopBody691_14 : HolLoopProg 64 :=
.seq loopBody691_7 loopBody691_13

def loopBody691_15 : HolLoopProg 64 :=
.mark loopBody691_14

def loopBody691_16 : HolLoopProg 64 :=
.seq loopBody691_5 loopBody691_15

def loopBody691_17 : HolLoopProg 64 :=
.mark loopBody691_16

def loopBody691_18 : HolLoopProg 64 :=
.seq loopBody691_3 loopBody691_17

def loopBody691_19 : HolLoopProg 64 :=
.mark loopBody691_18

def loopBody691_20 : HolLoopProg 64 :=
.seq loopBody691_1 loopBody691_19

def loopBody691_21 : HolLoopProg 64 :=
.mark loopBody691_20

def loopBody691_22 : HolLoopProg 64 :=
.seq loopBody691_1 loopBody691_21

def loopBody691_23 : HolLoopProg 64 :=
.mark loopBody691_22

def loopBody691_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody691_25 : HolLoopProg 64 :=
.mark loopBody691_24

def loopBody691_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody691_27 : HolLoopProg 64 :=
.mark loopBody691_26

def loopBody691_28 : HolLoopProg 64 :=
.seq loopBody691_27 loopBody691_1

def loopBody691_29 : HolLoopProg 64 :=
.mark loopBody691_28

def loopBody691_30 : HolLoopProg 64 :=
.seq loopBody691_25 loopBody691_29

def loopBody691_31 : HolLoopProg 64 :=
.mark loopBody691_30

def loopBody691_32 : HolLoopProg 64 :=
.seq loopBody691_23 loopBody691_31

def loopBody691_33 : HolLoopProg 64 :=
.mark loopBody691_32

def output691 : Nat × List Nat × HolLoopProg 64 :=
  (755, [0, 1], loopBody691_33)
end InitECandidate.Proofs.FrontendStages.Loop
