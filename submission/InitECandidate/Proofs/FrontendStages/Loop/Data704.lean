import InitECandidate.Proofs.FrontendStages.Loop.Translate688
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody704_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody704_1 : HolLoopProg 64 :=
.mark loopBody704_0

def loopBody704_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody704_3 : HolLoopProg 64 :=
.mark loopBody704_2

def loopBody704_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody704_5 : HolLoopProg 64 :=
.mark loopBody704_4

def loopBody704_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 144#64)

def loopBody704_7 : HolLoopProg 64 :=
.mark loopBody704_6

def loopBody704_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody704_9 : HolLoopProg 64 :=
.mark loopBody704_8

def loopBody704_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 77) ([3, 4, 5]) (some (3, loopBody704_9, loopBody704_1, (Flapjack.Spt.ln)))

def loopBody704_11 : HolLoopProg 64 :=
.mark loopBody704_10

def loopBody704_12 : HolLoopProg 64 :=
.seq loopBody704_11 loopBody704_1

def loopBody704_13 : HolLoopProg 64 :=
.mark loopBody704_12

def loopBody704_14 : HolLoopProg 64 :=
.seq loopBody704_7 loopBody704_13

def loopBody704_15 : HolLoopProg 64 :=
.mark loopBody704_14

def loopBody704_16 : HolLoopProg 64 :=
.seq loopBody704_5 loopBody704_15

def loopBody704_17 : HolLoopProg 64 :=
.mark loopBody704_16

def loopBody704_18 : HolLoopProg 64 :=
.seq loopBody704_3 loopBody704_17

def loopBody704_19 : HolLoopProg 64 :=
.mark loopBody704_18

def loopBody704_20 : HolLoopProg 64 :=
.seq loopBody704_1 loopBody704_19

def loopBody704_21 : HolLoopProg 64 :=
.mark loopBody704_20

def loopBody704_22 : HolLoopProg 64 :=
.seq loopBody704_1 loopBody704_21

def loopBody704_23 : HolLoopProg 64 :=
.mark loopBody704_22

def loopBody704_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody704_25 : HolLoopProg 64 :=
.mark loopBody704_24

def loopBody704_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody704_27 : HolLoopProg 64 :=
.mark loopBody704_26

def loopBody704_28 : HolLoopProg 64 :=
.seq loopBody704_27 loopBody704_1

def loopBody704_29 : HolLoopProg 64 :=
.mark loopBody704_28

def loopBody704_30 : HolLoopProg 64 :=
.seq loopBody704_25 loopBody704_29

def loopBody704_31 : HolLoopProg 64 :=
.mark loopBody704_30

def loopBody704_32 : HolLoopProg 64 :=
.seq loopBody704_23 loopBody704_31

def loopBody704_33 : HolLoopProg 64 :=
.mark loopBody704_32

def output704 : Nat × List Nat × HolLoopProg 64 :=
  (768, [0, 1], loopBody704_33)
end InitECandidate.Proofs.FrontendStages.Loop
