import InitECandidate.Proofs.FrontendStages.Loop.Translate165
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody181_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody181_1 : HolLoopProg 64 :=
.mark loopBody181_0

def loopBody181_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.var 0)

def loopBody181_3 : HolLoopProg 64 :=
.mark loopBody181_2

def loopBody181_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 1)

def loopBody181_5 : HolLoopProg 64 :=
.mark loopBody181_4

def loopBody181_6 : HolLoopProg 64 :=
.seq loopBody181_5 loopBody181_1

def loopBody181_7 : HolLoopProg 64 :=
.mark loopBody181_6

def loopBody181_8 : HolLoopProg 64 :=
.seq loopBody181_7 loopBody181_1

def loopBody181_9 : HolLoopProg 64 :=
.mark loopBody181_8

def loopBody181_10 : HolLoopProg 64 :=
.seq loopBody181_3 loopBody181_9

def loopBody181_11 : HolLoopProg 64 :=
.mark loopBody181_10

def loopBody181_12 : HolLoopProg 64 :=
.seq loopBody181_1 loopBody181_11

def loopBody181_13 : HolLoopProg 64 :=
.mark loopBody181_12

def loopBody181_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 2#64)

def loopBody181_15 : HolLoopProg 64 :=
.mark loopBody181_14

def loopBody181_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 1

def loopBody181_17 : HolLoopProg 64 :=
.mark loopBody181_16

def loopBody181_18 : HolLoopProg 64 :=
.seq loopBody181_15 loopBody181_17

def loopBody181_19 : HolLoopProg 64 :=
.mark loopBody181_18

def loopBody181_20 : HolLoopProg 64 :=
.seq loopBody181_13 loopBody181_19

def loopBody181_21 : HolLoopProg 64 :=
.mark loopBody181_20

def loopBody181_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody181_23 : HolLoopProg 64 :=
.mark loopBody181_22

def loopBody181_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody181_25 : HolLoopProg 64 :=
.mark loopBody181_24

def loopBody181_26 : HolLoopProg 64 :=
.seq loopBody181_25 loopBody181_1

def loopBody181_27 : HolLoopProg 64 :=
.mark loopBody181_26

def loopBody181_28 : HolLoopProg 64 :=
.seq loopBody181_23 loopBody181_27

def loopBody181_29 : HolLoopProg 64 :=
.mark loopBody181_28

def loopBody181_30 : HolLoopProg 64 :=
.seq loopBody181_21 loopBody181_29

def loopBody181_31 : HolLoopProg 64 :=
.mark loopBody181_30

def output181 : Nat × List Nat × HolLoopProg 64 :=
  (245, [0], loopBody181_31)
end InitECandidate.Proofs.FrontendStages.Loop
