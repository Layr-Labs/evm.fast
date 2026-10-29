import InitECandidate.Proofs.FrontendStages.Loop.Translate582
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody598_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody598_1 : HolLoopProg 64 :=
.mark loopBody598_0

def loopBody598_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody598_3 : HolLoopProg 64 :=
.mark loopBody598_2

def loopBody598_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody598_5 : HolLoopProg 64 :=
.mark loopBody598_4

def loopBody598_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody598_7 : HolLoopProg 64 :=
.mark loopBody598_6

def loopBody598_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 17522657719365597833#64)

def loopBody598_9 : HolLoopProg 64 :=
.mark loopBody598_8

def loopBody598_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 13107472804851548667#64)

def loopBody598_11 : HolLoopProg 64 :=
.mark loopBody598_10

def loopBody598_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 5164255478447964150#64)

def loopBody598_13 : HolLoopProg 64 :=
.mark loopBody598_12

def loopBody598_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 493319470278259999#64)

def loopBody598_15 : HolLoopProg 64 :=
.mark loopBody598_14

def loopBody598_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 661) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody598_17 : HolLoopProg 64 :=
.mark loopBody598_16

def loopBody598_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody598_19 : HolLoopProg 64 :=
.mark loopBody598_18

def loopBody598_20 : HolLoopProg 64 :=
.seq loopBody598_17 loopBody598_19

def loopBody598_21 : HolLoopProg 64 :=
.mark loopBody598_20

def loopBody598_22 : HolLoopProg 64 :=
.seq loopBody598_15 loopBody598_21

def loopBody598_23 : HolLoopProg 64 :=
.mark loopBody598_22

def loopBody598_24 : HolLoopProg 64 :=
.seq loopBody598_13 loopBody598_23

def loopBody598_25 : HolLoopProg 64 :=
.mark loopBody598_24

def loopBody598_26 : HolLoopProg 64 :=
.seq loopBody598_11 loopBody598_25

def loopBody598_27 : HolLoopProg 64 :=
.mark loopBody598_26

def loopBody598_28 : HolLoopProg 64 :=
.seq loopBody598_9 loopBody598_27

def loopBody598_29 : HolLoopProg 64 :=
.mark loopBody598_28

def loopBody598_30 : HolLoopProg 64 :=
.seq loopBody598_7 loopBody598_29

def loopBody598_31 : HolLoopProg 64 :=
.mark loopBody598_30

def loopBody598_32 : HolLoopProg 64 :=
.seq loopBody598_5 loopBody598_31

def loopBody598_33 : HolLoopProg 64 :=
.mark loopBody598_32

def loopBody598_34 : HolLoopProg 64 :=
.seq loopBody598_3 loopBody598_33

def loopBody598_35 : HolLoopProg 64 :=
.mark loopBody598_34

def loopBody598_36 : HolLoopProg 64 :=
.seq loopBody598_1 loopBody598_35

def loopBody598_37 : HolLoopProg 64 :=
.mark loopBody598_36

def output598 : Nat × List Nat × HolLoopProg 64 :=
  (662, [0, 1, 2, 3], loopBody598_37)
end InitECandidate.Proofs.FrontendStages.Loop
