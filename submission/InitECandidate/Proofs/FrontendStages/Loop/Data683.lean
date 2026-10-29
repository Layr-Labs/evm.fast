import InitECandidate.Proofs.FrontendStages.Loop.Translate667
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody683_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody683_1 : HolLoopProg 64 :=
.mark loopBody683_0

def loopBody683_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody683_3 : HolLoopProg 64 :=
.mark loopBody683_2

def loopBody683_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 288#64)

def loopBody683_5 : HolLoopProg 64 :=
.mark loopBody683_4

def loopBody683_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody683_7 : HolLoopProg 64 :=
.mark loopBody683_6

def loopBody683_8 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 78) ([2, 3]) (some (2, loopBody683_7, loopBody683_1, (Flapjack.Spt.ln)))

def loopBody683_9 : HolLoopProg 64 :=
.mark loopBody683_8

def loopBody683_10 : HolLoopProg 64 :=
.seq loopBody683_9 loopBody683_1

def loopBody683_11 : HolLoopProg 64 :=
.mark loopBody683_10

def loopBody683_12 : HolLoopProg 64 :=
.seq loopBody683_5 loopBody683_11

def loopBody683_13 : HolLoopProg 64 :=
.mark loopBody683_12

def loopBody683_14 : HolLoopProg 64 :=
.seq loopBody683_3 loopBody683_13

def loopBody683_15 : HolLoopProg 64 :=
.mark loopBody683_14

def loopBody683_16 : HolLoopProg 64 :=
.seq loopBody683_1 loopBody683_15

def loopBody683_17 : HolLoopProg 64 :=
.mark loopBody683_16

def loopBody683_18 : HolLoopProg 64 :=
.seq loopBody683_1 loopBody683_17

def loopBody683_19 : HolLoopProg 64 :=
.mark loopBody683_18

def loopBody683_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody683_21 : HolLoopProg 64 :=
.mark loopBody683_20

def loopBody683_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody683_23 : HolLoopProg 64 :=
.mark loopBody683_22

def loopBody683_24 : HolLoopProg 64 :=
.seq loopBody683_23 loopBody683_1

def loopBody683_25 : HolLoopProg 64 :=
.mark loopBody683_24

def loopBody683_26 : HolLoopProg 64 :=
.seq loopBody683_21 loopBody683_25

def loopBody683_27 : HolLoopProg 64 :=
.mark loopBody683_26

def loopBody683_28 : HolLoopProg 64 :=
.seq loopBody683_19 loopBody683_27

def loopBody683_29 : HolLoopProg 64 :=
.mark loopBody683_28

def output683 : Nat × List Nat × HolLoopProg 64 :=
  (747, [0], loopBody683_29)
end InitECandidate.Proofs.FrontendStages.Loop
