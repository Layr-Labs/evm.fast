import InitECandidate.Proofs.FrontendStages.Loop.Translate649
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody665_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody665_1 : HolLoopProg 64 :=
.mark loopBody665_0

def loopBody665_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody665_3 : HolLoopProg 64 :=
.mark loopBody665_2

def loopBody665_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody665_5 : HolLoopProg 64 :=
.mark loopBody665_4

def loopBody665_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 96#64)

def loopBody665_7 : HolLoopProg 64 :=
.mark loopBody665_6

def loopBody665_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody665_9 : HolLoopProg 64 :=
.mark loopBody665_8

def loopBody665_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 77) ([3, 4, 5]) (some (3, loopBody665_9, loopBody665_1, (Flapjack.Spt.ln)))

def loopBody665_11 : HolLoopProg 64 :=
.mark loopBody665_10

def loopBody665_12 : HolLoopProg 64 :=
.seq loopBody665_11 loopBody665_1

def loopBody665_13 : HolLoopProg 64 :=
.mark loopBody665_12

def loopBody665_14 : HolLoopProg 64 :=
.seq loopBody665_7 loopBody665_13

def loopBody665_15 : HolLoopProg 64 :=
.mark loopBody665_14

def loopBody665_16 : HolLoopProg 64 :=
.seq loopBody665_5 loopBody665_15

def loopBody665_17 : HolLoopProg 64 :=
.mark loopBody665_16

def loopBody665_18 : HolLoopProg 64 :=
.seq loopBody665_3 loopBody665_17

def loopBody665_19 : HolLoopProg 64 :=
.mark loopBody665_18

def loopBody665_20 : HolLoopProg 64 :=
.seq loopBody665_1 loopBody665_19

def loopBody665_21 : HolLoopProg 64 :=
.mark loopBody665_20

def loopBody665_22 : HolLoopProg 64 :=
.seq loopBody665_1 loopBody665_21

def loopBody665_23 : HolLoopProg 64 :=
.mark loopBody665_22

def loopBody665_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody665_25 : HolLoopProg 64 :=
.mark loopBody665_24

def loopBody665_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody665_27 : HolLoopProg 64 :=
.mark loopBody665_26

def loopBody665_28 : HolLoopProg 64 :=
.seq loopBody665_27 loopBody665_1

def loopBody665_29 : HolLoopProg 64 :=
.mark loopBody665_28

def loopBody665_30 : HolLoopProg 64 :=
.seq loopBody665_25 loopBody665_29

def loopBody665_31 : HolLoopProg 64 :=
.mark loopBody665_30

def loopBody665_32 : HolLoopProg 64 :=
.seq loopBody665_23 loopBody665_31

def loopBody665_33 : HolLoopProg 64 :=
.mark loopBody665_32

def output665 : Nat × List Nat × HolLoopProg 64 :=
  (729, [0, 1], loopBody665_33)
end InitECandidate.Proofs.FrontendStages.Loop
