import InitECandidate.Proofs.FrontendStages.Loop.Translate397
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody413_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody413_1 : HolLoopProg 64 :=
.mark loopBody413_0

def loopBody413_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody413_3 : HolLoopProg 64 :=
.mark loopBody413_2

def loopBody413_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody413_5 : HolLoopProg 64 :=
.mark loopBody413_4

def loopBody413_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody413_7 : HolLoopProg 64 :=
.mark loopBody413_6

def loopBody413_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody413_9 : HolLoopProg 64 :=
.mark loopBody413_8

def loopBody413_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody413_11 : HolLoopProg 64 :=
.mark loopBody413_10

def loopBody413_12 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 476) ([2, 3, 4, 5]) (some (2, loopBody413_11, loopBody413_1, (Flapjack.Spt.ln)))

def loopBody413_13 : HolLoopProg 64 :=
.mark loopBody413_12

def loopBody413_14 : HolLoopProg 64 :=
.seq loopBody413_13 loopBody413_1

def loopBody413_15 : HolLoopProg 64 :=
.mark loopBody413_14

def loopBody413_16 : HolLoopProg 64 :=
.seq loopBody413_9 loopBody413_15

def loopBody413_17 : HolLoopProg 64 :=
.mark loopBody413_16

def loopBody413_18 : HolLoopProg 64 :=
.seq loopBody413_7 loopBody413_17

def loopBody413_19 : HolLoopProg 64 :=
.mark loopBody413_18

def loopBody413_20 : HolLoopProg 64 :=
.seq loopBody413_5 loopBody413_19

def loopBody413_21 : HolLoopProg 64 :=
.mark loopBody413_20

def loopBody413_22 : HolLoopProg 64 :=
.seq loopBody413_3 loopBody413_21

def loopBody413_23 : HolLoopProg 64 :=
.mark loopBody413_22

def loopBody413_24 : HolLoopProg 64 :=
.seq loopBody413_1 loopBody413_23

def loopBody413_25 : HolLoopProg 64 :=
.mark loopBody413_24

def loopBody413_26 : HolLoopProg 64 :=
.seq loopBody413_1 loopBody413_25

def loopBody413_27 : HolLoopProg 64 :=
.mark loopBody413_26

def loopBody413_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody413_29 : HolLoopProg 64 :=
.mark loopBody413_28

def loopBody413_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody413_31 : HolLoopProg 64 :=
.mark loopBody413_30

def loopBody413_32 : HolLoopProg 64 :=
.seq loopBody413_31 loopBody413_1

def loopBody413_33 : HolLoopProg 64 :=
.mark loopBody413_32

def loopBody413_34 : HolLoopProg 64 :=
.seq loopBody413_29 loopBody413_33

def loopBody413_35 : HolLoopProg 64 :=
.mark loopBody413_34

def loopBody413_36 : HolLoopProg 64 :=
.seq loopBody413_27 loopBody413_35

def loopBody413_37 : HolLoopProg 64 :=
.mark loopBody413_36

def output413 : Nat × List Nat × HolLoopProg 64 :=
  (477, [0], loopBody413_37)
end InitECandidate.Proofs.FrontendStages.Loop
