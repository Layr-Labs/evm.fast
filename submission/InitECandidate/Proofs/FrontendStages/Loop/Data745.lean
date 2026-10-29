import InitECandidate.Proofs.FrontendStages.Loop.Translate729
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody745_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody745_1 : HolLoopProg 64 :=
.mark loopBody745_0

def loopBody745_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody745_3 : HolLoopProg 64 :=
.mark loopBody745_2

def loopBody745_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 704) ([]) (some (2, loopBody745_3, loopBody745_1, (Flapjack.Spt.ln)))

def loopBody745_5 : HolLoopProg 64 :=
.mark loopBody745_4

def loopBody745_6 : HolLoopProg 64 :=
.seq loopBody745_5 loopBody745_1

def loopBody745_7 : HolLoopProg 64 :=
.mark loopBody745_6

def loopBody745_8 : HolLoopProg 64 :=
.seq loopBody745_1 loopBody745_7

def loopBody745_9 : HolLoopProg 64 :=
.mark loopBody745_8

def loopBody745_10 : HolLoopProg 64 :=
.seq loopBody745_1 loopBody745_9

def loopBody745_11 : HolLoopProg 64 :=
.mark loopBody745_10

def loopBody745_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody745_13 : HolLoopProg 64 :=
.mark loopBody745_12

def loopBody745_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody745_15 : HolLoopProg 64 :=
.mark loopBody745_14

def loopBody745_16 : HolLoopProg 64 :=
.seq loopBody745_15 loopBody745_1

def loopBody745_17 : HolLoopProg 64 :=
.mark loopBody745_16

def loopBody745_18 : HolLoopProg 64 :=
.seq loopBody745_13 loopBody745_17

def loopBody745_19 : HolLoopProg 64 :=
.mark loopBody745_18

def loopBody745_20 : HolLoopProg 64 :=
.seq loopBody745_11 loopBody745_19

def loopBody745_21 : HolLoopProg 64 :=
.mark loopBody745_20

def output745 : Nat × List Nat × HolLoopProg 64 :=
  (809, [], loopBody745_21)
end InitECandidate.Proofs.FrontendStages.Loop
