import InitECandidate.Proofs.FrontendStages.Loop.Translate19
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody35_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody35_1 : HolLoopProg 64 :=
.mark loopBody35_0

def loopBody35_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody35_3 : HolLoopProg 64 :=
.mark loopBody35_2

def loopBody35_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody35_5 : HolLoopProg 64 :=
.mark loopBody35_4

def loopBody35_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody35_7 : HolLoopProg 64 :=
.mark loopBody35_6

def loopBody35_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1, 2, 3, 4]

def loopBody35_9 : HolLoopProg 64 :=
.mark loopBody35_8

def loopBody35_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody35_11 : HolLoopProg 64 :=
.mark loopBody35_10

def loopBody35_12 : HolLoopProg 64 :=
.seq loopBody35_9 loopBody35_11

def loopBody35_13 : HolLoopProg 64 :=
.mark loopBody35_12

def loopBody35_14 : HolLoopProg 64 :=
.seq loopBody35_7 loopBody35_13

def loopBody35_15 : HolLoopProg 64 :=
.mark loopBody35_14

def loopBody35_16 : HolLoopProg 64 :=
.seq loopBody35_5 loopBody35_15

def loopBody35_17 : HolLoopProg 64 :=
.mark loopBody35_16

def loopBody35_18 : HolLoopProg 64 :=
.seq loopBody35_3 loopBody35_17

def loopBody35_19 : HolLoopProg 64 :=
.mark loopBody35_18

def loopBody35_20 : HolLoopProg 64 :=
.seq loopBody35_1 loopBody35_19

def loopBody35_21 : HolLoopProg 64 :=
.mark loopBody35_20

def output35 : Nat × List Nat × HolLoopProg 64 :=
  (99, [0], loopBody35_21)
end InitECandidate.Proofs.FrontendStages.Loop
