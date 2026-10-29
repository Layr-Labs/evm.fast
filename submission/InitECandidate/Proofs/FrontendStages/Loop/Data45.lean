import InitECandidate.Proofs.FrontendStages.Loop.Translate29
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody45_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody45_1 : HolLoopProg 64 :=
.mark loopBody45_0

def loopBody45_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody45_3 : HolLoopProg 64 :=
.mark loopBody45_2

def loopBody45_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody45_5 : HolLoopProg 64 :=
.mark loopBody45_4

def loopBody45_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody45_7 : HolLoopProg 64 :=
.mark loopBody45_6

def loopBody45_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody45_9 : HolLoopProg 64 :=
.mark loopBody45_8

def loopBody45_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody45_11 : HolLoopProg 64 :=
.mark loopBody45_10

def loopBody45_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody45_13 : HolLoopProg 64 :=
.mark loopBody45_12

def loopBody45_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody45_15 : HolLoopProg 64 :=
.mark loopBody45_14

def loopBody45_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 108) [8, 9, 10, 11, 12, 13, 14, 15] none

def loopBody45_17 : HolLoopProg 64 :=
.mark loopBody45_16

def loopBody45_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody45_19 : HolLoopProg 64 :=
.mark loopBody45_18

def loopBody45_20 : HolLoopProg 64 :=
.seq loopBody45_17 loopBody45_19

def loopBody45_21 : HolLoopProg 64 :=
.mark loopBody45_20

def loopBody45_22 : HolLoopProg 64 :=
.seq loopBody45_15 loopBody45_21

def loopBody45_23 : HolLoopProg 64 :=
.mark loopBody45_22

def loopBody45_24 : HolLoopProg 64 :=
.seq loopBody45_13 loopBody45_23

def loopBody45_25 : HolLoopProg 64 :=
.mark loopBody45_24

def loopBody45_26 : HolLoopProg 64 :=
.seq loopBody45_11 loopBody45_25

def loopBody45_27 : HolLoopProg 64 :=
.mark loopBody45_26

def loopBody45_28 : HolLoopProg 64 :=
.seq loopBody45_9 loopBody45_27

def loopBody45_29 : HolLoopProg 64 :=
.mark loopBody45_28

def loopBody45_30 : HolLoopProg 64 :=
.seq loopBody45_7 loopBody45_29

def loopBody45_31 : HolLoopProg 64 :=
.mark loopBody45_30

def loopBody45_32 : HolLoopProg 64 :=
.seq loopBody45_5 loopBody45_31

def loopBody45_33 : HolLoopProg 64 :=
.mark loopBody45_32

def loopBody45_34 : HolLoopProg 64 :=
.seq loopBody45_3 loopBody45_33

def loopBody45_35 : HolLoopProg 64 :=
.mark loopBody45_34

def loopBody45_36 : HolLoopProg 64 :=
.seq loopBody45_1 loopBody45_35

def loopBody45_37 : HolLoopProg 64 :=
.mark loopBody45_36

def output45 : Nat × List Nat × HolLoopProg 64 :=
  (109, [0, 1, 2, 3, 4, 5, 6, 7], loopBody45_37)
end InitECandidate.Proofs.FrontendStages.Loop
