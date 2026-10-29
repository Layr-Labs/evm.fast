import InitECandidate.Proofs.FrontendStages.Loop.Translate79
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody95_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody95_1 : HolLoopProg 64 :=
.mark loopBody95_0

def loopBody95_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody95_3 : HolLoopProg 64 :=
.mark loopBody95_2

def loopBody95_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 1)

def loopBody95_5 : HolLoopProg 64 :=
.mark loopBody95_4

def loopBody95_6 : HolLoopProg 64 :=
.seq loopBody95_5 loopBody95_1

def loopBody95_7 : HolLoopProg 64 :=
.mark loopBody95_6

def loopBody95_8 : HolLoopProg 64 :=
.seq loopBody95_7 loopBody95_1

def loopBody95_9 : HolLoopProg 64 :=
.mark loopBody95_8

def loopBody95_10 : HolLoopProg 64 :=
.seq loopBody95_3 loopBody95_9

def loopBody95_11 : HolLoopProg 64 :=
.mark loopBody95_10

def loopBody95_12 : HolLoopProg 64 :=
.seq loopBody95_1 loopBody95_11

def loopBody95_13 : HolLoopProg 64 :=
.mark loopBody95_12

def loopBody95_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1#64)

def loopBody95_15 : HolLoopProg 64 :=
.mark loopBody95_14

def loopBody95_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 1

def loopBody95_17 : HolLoopProg 64 :=
.mark loopBody95_16

def loopBody95_18 : HolLoopProg 64 :=
.seq loopBody95_15 loopBody95_17

def loopBody95_19 : HolLoopProg 64 :=
.mark loopBody95_18

def loopBody95_20 : HolLoopProg 64 :=
.seq loopBody95_13 loopBody95_19

def loopBody95_21 : HolLoopProg 64 :=
.mark loopBody95_20

def loopBody95_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody95_23 : HolLoopProg 64 :=
.mark loopBody95_22

def loopBody95_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody95_25 : HolLoopProg 64 :=
.mark loopBody95_24

def loopBody95_26 : HolLoopProg 64 :=
.seq loopBody95_25 loopBody95_1

def loopBody95_27 : HolLoopProg 64 :=
.mark loopBody95_26

def loopBody95_28 : HolLoopProg 64 :=
.seq loopBody95_23 loopBody95_27

def loopBody95_29 : HolLoopProg 64 :=
.mark loopBody95_28

def loopBody95_30 : HolLoopProg 64 :=
.seq loopBody95_21 loopBody95_29

def loopBody95_31 : HolLoopProg 64 :=
.mark loopBody95_30

def output95 : Nat × List Nat × HolLoopProg 64 :=
  (159, [0], loopBody95_31)
end InitECandidate.Proofs.FrontendStages.Loop
