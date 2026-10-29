import InitECandidate.Proofs.FrontendStages.Loop.Translate657
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody673_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody673_1 : HolLoopProg 64 :=
.mark loopBody673_0

def loopBody673_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody673_3 : HolLoopProg 64 :=
.mark loopBody673_2

def loopBody673_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody673_5 : HolLoopProg 64 :=
.mark loopBody673_4

def loopBody673_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 734) [2, 3, 4] none

def loopBody673_7 : HolLoopProg 64 :=
.mark loopBody673_6

def loopBody673_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody673_9 : HolLoopProg 64 :=
.mark loopBody673_8

def loopBody673_10 : HolLoopProg 64 :=
.seq loopBody673_7 loopBody673_9

def loopBody673_11 : HolLoopProg 64 :=
.mark loopBody673_10

def loopBody673_12 : HolLoopProg 64 :=
.seq loopBody673_5 loopBody673_11

def loopBody673_13 : HolLoopProg 64 :=
.mark loopBody673_12

def loopBody673_14 : HolLoopProg 64 :=
.seq loopBody673_3 loopBody673_13

def loopBody673_15 : HolLoopProg 64 :=
.mark loopBody673_14

def loopBody673_16 : HolLoopProg 64 :=
.seq loopBody673_1 loopBody673_15

def loopBody673_17 : HolLoopProg 64 :=
.mark loopBody673_16

def output673 : Nat × List Nat × HolLoopProg 64 :=
  (737, [0, 1], loopBody673_17)
end InitECandidate.Proofs.FrontendStages.Loop
