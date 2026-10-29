import InitECandidate.Proofs.FrontendStages.Loop.Translate206
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody222_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody222_1 : HolLoopProg 64 :=
.mark loopBody222_0

def loopBody222_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody222_3 : HolLoopProg 64 :=
.mark loopBody222_2

def loopBody222_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 1)

def loopBody222_5 : HolLoopProg 64 :=
.mark loopBody222_4

def loopBody222_6 : HolLoopProg 64 :=
.seq loopBody222_5 loopBody222_1

def loopBody222_7 : HolLoopProg 64 :=
.mark loopBody222_6

def loopBody222_8 : HolLoopProg 64 :=
.seq loopBody222_7 loopBody222_1

def loopBody222_9 : HolLoopProg 64 :=
.mark loopBody222_8

def loopBody222_10 : HolLoopProg 64 :=
.seq loopBody222_3 loopBody222_9

def loopBody222_11 : HolLoopProg 64 :=
.mark loopBody222_10

def loopBody222_12 : HolLoopProg 64 :=
.seq loopBody222_1 loopBody222_11

def loopBody222_13 : HolLoopProg 64 :=
.mark loopBody222_12

def loopBody222_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 5#64)

def loopBody222_15 : HolLoopProg 64 :=
.mark loopBody222_14

def loopBody222_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 1

def loopBody222_17 : HolLoopProg 64 :=
.mark loopBody222_16

def loopBody222_18 : HolLoopProg 64 :=
.seq loopBody222_15 loopBody222_17

def loopBody222_19 : HolLoopProg 64 :=
.mark loopBody222_18

def loopBody222_20 : HolLoopProg 64 :=
.seq loopBody222_13 loopBody222_19

def loopBody222_21 : HolLoopProg 64 :=
.mark loopBody222_20

def loopBody222_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody222_23 : HolLoopProg 64 :=
.mark loopBody222_22

def loopBody222_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody222_25 : HolLoopProg 64 :=
.mark loopBody222_24

def loopBody222_26 : HolLoopProg 64 :=
.seq loopBody222_25 loopBody222_1

def loopBody222_27 : HolLoopProg 64 :=
.mark loopBody222_26

def loopBody222_28 : HolLoopProg 64 :=
.seq loopBody222_23 loopBody222_27

def loopBody222_29 : HolLoopProg 64 :=
.mark loopBody222_28

def loopBody222_30 : HolLoopProg 64 :=
.seq loopBody222_21 loopBody222_29

def loopBody222_31 : HolLoopProg 64 :=
.mark loopBody222_30

def output222 : Nat × List Nat × HolLoopProg 64 :=
  (286, [0], loopBody222_31)
end InitECandidate.Proofs.FrontendStages.Loop
