import InitECandidate.Proofs.FrontendStages.Loop.Translate98
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody114_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody114_1 : HolLoopProg 64 :=
.mark loopBody114_0

def loopBody114_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 192#64)

def loopBody114_3 : HolLoopProg 64 :=
.mark loopBody114_2

def loopBody114_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody114_5 : HolLoopProg 64 :=
.mark loopBody114_4

def loopBody114_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 174) [2, 3, 4] none

def loopBody114_7 : HolLoopProg 64 :=
.mark loopBody114_6

def loopBody114_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody114_9 : HolLoopProg 64 :=
.mark loopBody114_8

def loopBody114_10 : HolLoopProg 64 :=
.seq loopBody114_7 loopBody114_9

def loopBody114_11 : HolLoopProg 64 :=
.mark loopBody114_10

def loopBody114_12 : HolLoopProg 64 :=
.seq loopBody114_5 loopBody114_11

def loopBody114_13 : HolLoopProg 64 :=
.mark loopBody114_12

def loopBody114_14 : HolLoopProg 64 :=
.seq loopBody114_3 loopBody114_13

def loopBody114_15 : HolLoopProg 64 :=
.mark loopBody114_14

def loopBody114_16 : HolLoopProg 64 :=
.seq loopBody114_1 loopBody114_15

def loopBody114_17 : HolLoopProg 64 :=
.mark loopBody114_16

def output114 : Nat × List Nat × HolLoopProg 64 :=
  (178, [0, 1], loopBody114_17)
end InitECandidate.Proofs.FrontendStages.Loop
