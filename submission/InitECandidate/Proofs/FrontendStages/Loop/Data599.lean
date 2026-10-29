import InitECandidate.Proofs.FrontendStages.Loop.Translate583
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody599_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody599_1 : HolLoopProg 64 :=
.mark loopBody599_0

def loopBody599_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody599_3 : HolLoopProg 64 :=
.mark loopBody599_2

def loopBody599_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody599_5 : HolLoopProg 64 :=
.mark loopBody599_4

def loopBody599_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody599_7 : HolLoopProg 64 :=
.mark loopBody599_6

def loopBody599_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody599_9 : HolLoopProg 64 :=
.mark loopBody599_8

def loopBody599_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody599_11 : HolLoopProg 64 :=
.mark loopBody599_10

def loopBody599_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody599_13 : HolLoopProg 64 :=
.mark loopBody599_12

def loopBody599_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody599_15 : HolLoopProg 64 :=
.mark loopBody599_14

def loopBody599_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 661) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody599_17 : HolLoopProg 64 :=
.mark loopBody599_16

def loopBody599_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody599_19 : HolLoopProg 64 :=
.mark loopBody599_18

def loopBody599_20 : HolLoopProg 64 :=
.seq loopBody599_17 loopBody599_19

def loopBody599_21 : HolLoopProg 64 :=
.mark loopBody599_20

def loopBody599_22 : HolLoopProg 64 :=
.seq loopBody599_15 loopBody599_21

def loopBody599_23 : HolLoopProg 64 :=
.mark loopBody599_22

def loopBody599_24 : HolLoopProg 64 :=
.seq loopBody599_13 loopBody599_23

def loopBody599_25 : HolLoopProg 64 :=
.mark loopBody599_24

def loopBody599_26 : HolLoopProg 64 :=
.seq loopBody599_11 loopBody599_25

def loopBody599_27 : HolLoopProg 64 :=
.mark loopBody599_26

def loopBody599_28 : HolLoopProg 64 :=
.seq loopBody599_9 loopBody599_27

def loopBody599_29 : HolLoopProg 64 :=
.mark loopBody599_28

def loopBody599_30 : HolLoopProg 64 :=
.seq loopBody599_7 loopBody599_29

def loopBody599_31 : HolLoopProg 64 :=
.mark loopBody599_30

def loopBody599_32 : HolLoopProg 64 :=
.seq loopBody599_5 loopBody599_31

def loopBody599_33 : HolLoopProg 64 :=
.mark loopBody599_32

def loopBody599_34 : HolLoopProg 64 :=
.seq loopBody599_3 loopBody599_33

def loopBody599_35 : HolLoopProg 64 :=
.mark loopBody599_34

def loopBody599_36 : HolLoopProg 64 :=
.seq loopBody599_1 loopBody599_35

def loopBody599_37 : HolLoopProg 64 :=
.mark loopBody599_36

def output599 : Nat × List Nat × HolLoopProg 64 :=
  (663, [0, 1, 2, 3], loopBody599_37)
end InitECandidate.Proofs.FrontendStages.Loop
