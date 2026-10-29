import InitECandidate.Proofs.FrontendStages.Loop.Translate650
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody666_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody666_1 : HolLoopProg 64 :=
.mark loopBody666_0

def loopBody666_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody666_3 : HolLoopProg 64 :=
.mark loopBody666_2

def loopBody666_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 96#64)

def loopBody666_5 : HolLoopProg 64 :=
.mark loopBody666_4

def loopBody666_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody666_7 : HolLoopProg 64 :=
.mark loopBody666_6

def loopBody666_8 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 78) ([2, 3]) (some (2, loopBody666_7, loopBody666_1, (Flapjack.Spt.ln)))

def loopBody666_9 : HolLoopProg 64 :=
.mark loopBody666_8

def loopBody666_10 : HolLoopProg 64 :=
.seq loopBody666_9 loopBody666_1

def loopBody666_11 : HolLoopProg 64 :=
.mark loopBody666_10

def loopBody666_12 : HolLoopProg 64 :=
.seq loopBody666_5 loopBody666_11

def loopBody666_13 : HolLoopProg 64 :=
.mark loopBody666_12

def loopBody666_14 : HolLoopProg 64 :=
.seq loopBody666_3 loopBody666_13

def loopBody666_15 : HolLoopProg 64 :=
.mark loopBody666_14

def loopBody666_16 : HolLoopProg 64 :=
.seq loopBody666_1 loopBody666_15

def loopBody666_17 : HolLoopProg 64 :=
.mark loopBody666_16

def loopBody666_18 : HolLoopProg 64 :=
.seq loopBody666_1 loopBody666_17

def loopBody666_19 : HolLoopProg 64 :=
.mark loopBody666_18

def loopBody666_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody666_21 : HolLoopProg 64 :=
.mark loopBody666_20

def loopBody666_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody666_23 : HolLoopProg 64 :=
.mark loopBody666_22

def loopBody666_24 : HolLoopProg 64 :=
.seq loopBody666_23 loopBody666_1

def loopBody666_25 : HolLoopProg 64 :=
.mark loopBody666_24

def loopBody666_26 : HolLoopProg 64 :=
.seq loopBody666_21 loopBody666_25

def loopBody666_27 : HolLoopProg 64 :=
.mark loopBody666_26

def loopBody666_28 : HolLoopProg 64 :=
.seq loopBody666_19 loopBody666_27

def loopBody666_29 : HolLoopProg 64 :=
.mark loopBody666_28

def output666 : Nat × List Nat × HolLoopProg 64 :=
  (730, [0], loopBody666_29)
end InitECandidate.Proofs.FrontendStages.Loop
