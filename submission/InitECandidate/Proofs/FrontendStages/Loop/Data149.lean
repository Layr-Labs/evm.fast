import InitECandidate.Proofs.FrontendStages.Loop.Translate133
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody149_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody149_1 : HolLoopProg 64 :=
.mark loopBody149_0

def loopBody149_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody149_3 : HolLoopProg 64 :=
.mark loopBody149_2

def loopBody149_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody149_5 : HolLoopProg 64 :=
.mark loopBody149_4

def loopBody149_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody149_7 : HolLoopProg 64 :=
.mark loopBody149_6

def loopBody149_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 18446744069414583343#64)

def loopBody149_9 : HolLoopProg 64 :=
.mark loopBody149_8

def loopBody149_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody149_11 : HolLoopProg 64 :=
.mark loopBody149_10

def loopBody149_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody149_13 : HolLoopProg 64 :=
.mark loopBody149_12

def loopBody149_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody149_15 : HolLoopProg 64 :=
.mark loopBody149_14

def loopBody149_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 210) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody149_17 : HolLoopProg 64 :=
.mark loopBody149_16

def loopBody149_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody149_19 : HolLoopProg 64 :=
.mark loopBody149_18

def loopBody149_20 : HolLoopProg 64 :=
.seq loopBody149_17 loopBody149_19

def loopBody149_21 : HolLoopProg 64 :=
.mark loopBody149_20

def loopBody149_22 : HolLoopProg 64 :=
.seq loopBody149_15 loopBody149_21

def loopBody149_23 : HolLoopProg 64 :=
.mark loopBody149_22

def loopBody149_24 : HolLoopProg 64 :=
.seq loopBody149_13 loopBody149_23

def loopBody149_25 : HolLoopProg 64 :=
.mark loopBody149_24

def loopBody149_26 : HolLoopProg 64 :=
.seq loopBody149_11 loopBody149_25

def loopBody149_27 : HolLoopProg 64 :=
.mark loopBody149_26

def loopBody149_28 : HolLoopProg 64 :=
.seq loopBody149_9 loopBody149_27

def loopBody149_29 : HolLoopProg 64 :=
.mark loopBody149_28

def loopBody149_30 : HolLoopProg 64 :=
.seq loopBody149_7 loopBody149_29

def loopBody149_31 : HolLoopProg 64 :=
.mark loopBody149_30

def loopBody149_32 : HolLoopProg 64 :=
.seq loopBody149_5 loopBody149_31

def loopBody149_33 : HolLoopProg 64 :=
.mark loopBody149_32

def loopBody149_34 : HolLoopProg 64 :=
.seq loopBody149_3 loopBody149_33

def loopBody149_35 : HolLoopProg 64 :=
.mark loopBody149_34

def loopBody149_36 : HolLoopProg 64 :=
.seq loopBody149_1 loopBody149_35

def loopBody149_37 : HolLoopProg 64 :=
.mark loopBody149_36

def output149 : Nat × List Nat × HolLoopProg 64 :=
  (213, [0, 1, 2, 3], loopBody149_37)
end InitECandidate.Proofs.FrontendStages.Loop
