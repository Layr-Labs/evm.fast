import InitECandidate.Proofs.FrontendStages.Loop.Translate700
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody716_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody716_1 : HolLoopProg 64 :=
.mark loopBody716_0

def loopBody716_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody716_3 : HolLoopProg 64 :=
.mark loopBody716_2

def loopBody716_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody716_5 : HolLoopProg 64 :=
.mark loopBody716_4

def loopBody716_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 288#64)

def loopBody716_7 : HolLoopProg 64 :=
.mark loopBody716_6

def loopBody716_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody716_9 : HolLoopProg 64 :=
.mark loopBody716_8

def loopBody716_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 77) ([3, 4, 5]) (some (3, loopBody716_9, loopBody716_1, (Flapjack.Spt.ln)))

def loopBody716_11 : HolLoopProg 64 :=
.mark loopBody716_10

def loopBody716_12 : HolLoopProg 64 :=
.seq loopBody716_11 loopBody716_1

def loopBody716_13 : HolLoopProg 64 :=
.mark loopBody716_12

def loopBody716_14 : HolLoopProg 64 :=
.seq loopBody716_7 loopBody716_13

def loopBody716_15 : HolLoopProg 64 :=
.mark loopBody716_14

def loopBody716_16 : HolLoopProg 64 :=
.seq loopBody716_5 loopBody716_15

def loopBody716_17 : HolLoopProg 64 :=
.mark loopBody716_16

def loopBody716_18 : HolLoopProg 64 :=
.seq loopBody716_3 loopBody716_17

def loopBody716_19 : HolLoopProg 64 :=
.mark loopBody716_18

def loopBody716_20 : HolLoopProg 64 :=
.seq loopBody716_1 loopBody716_19

def loopBody716_21 : HolLoopProg 64 :=
.mark loopBody716_20

def loopBody716_22 : HolLoopProg 64 :=
.seq loopBody716_1 loopBody716_21

def loopBody716_23 : HolLoopProg 64 :=
.mark loopBody716_22

def loopBody716_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody716_25 : HolLoopProg 64 :=
.mark loopBody716_24

def loopBody716_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody716_27 : HolLoopProg 64 :=
.mark loopBody716_26

def loopBody716_28 : HolLoopProg 64 :=
.seq loopBody716_27 loopBody716_1

def loopBody716_29 : HolLoopProg 64 :=
.mark loopBody716_28

def loopBody716_30 : HolLoopProg 64 :=
.seq loopBody716_25 loopBody716_29

def loopBody716_31 : HolLoopProg 64 :=
.mark loopBody716_30

def loopBody716_32 : HolLoopProg 64 :=
.seq loopBody716_23 loopBody716_31

def loopBody716_33 : HolLoopProg 64 :=
.mark loopBody716_32

def output716 : Nat × List Nat × HolLoopProg 64 :=
  (780, [0, 1], loopBody716_33)
end InitECandidate.Proofs.FrontendStages.Loop
