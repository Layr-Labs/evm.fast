import InitECandidate.Proofs.FrontendStages.Loop.Translate27
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody43_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody43_1 : HolLoopProg 64 :=
.mark loopBody43_0

def loopBody43_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody43_3 : HolLoopProg 64 :=
.mark loopBody43_2

def loopBody43_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody43_5 : HolLoopProg 64 :=
.mark loopBody43_4

def loopBody43_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody43_7 : HolLoopProg 64 :=
.mark loopBody43_6

def loopBody43_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody43_9 : HolLoopProg 64 :=
.mark loopBody43_8

def loopBody43_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody43_11 : HolLoopProg 64 :=
.mark loopBody43_10

def loopBody43_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody43_13 : HolLoopProg 64 :=
.mark loopBody43_12

def loopBody43_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody43_15 : HolLoopProg 64 :=
.mark loopBody43_14

def loopBody43_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 106) [8, 9, 10, 11, 12, 13, 14, 15] none

def loopBody43_17 : HolLoopProg 64 :=
.mark loopBody43_16

def loopBody43_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody43_19 : HolLoopProg 64 :=
.mark loopBody43_18

def loopBody43_20 : HolLoopProg 64 :=
.seq loopBody43_17 loopBody43_19

def loopBody43_21 : HolLoopProg 64 :=
.mark loopBody43_20

def loopBody43_22 : HolLoopProg 64 :=
.seq loopBody43_15 loopBody43_21

def loopBody43_23 : HolLoopProg 64 :=
.mark loopBody43_22

def loopBody43_24 : HolLoopProg 64 :=
.seq loopBody43_13 loopBody43_23

def loopBody43_25 : HolLoopProg 64 :=
.mark loopBody43_24

def loopBody43_26 : HolLoopProg 64 :=
.seq loopBody43_11 loopBody43_25

def loopBody43_27 : HolLoopProg 64 :=
.mark loopBody43_26

def loopBody43_28 : HolLoopProg 64 :=
.seq loopBody43_9 loopBody43_27

def loopBody43_29 : HolLoopProg 64 :=
.mark loopBody43_28

def loopBody43_30 : HolLoopProg 64 :=
.seq loopBody43_7 loopBody43_29

def loopBody43_31 : HolLoopProg 64 :=
.mark loopBody43_30

def loopBody43_32 : HolLoopProg 64 :=
.seq loopBody43_5 loopBody43_31

def loopBody43_33 : HolLoopProg 64 :=
.mark loopBody43_32

def loopBody43_34 : HolLoopProg 64 :=
.seq loopBody43_3 loopBody43_33

def loopBody43_35 : HolLoopProg 64 :=
.mark loopBody43_34

def loopBody43_36 : HolLoopProg 64 :=
.seq loopBody43_1 loopBody43_35

def loopBody43_37 : HolLoopProg 64 :=
.mark loopBody43_36

def output43 : Nat × List Nat × HolLoopProg 64 :=
  (107, [0, 1, 2, 3, 4, 5, 6, 7], loopBody43_37)
end InitECandidate.Proofs.FrontendStages.Loop
