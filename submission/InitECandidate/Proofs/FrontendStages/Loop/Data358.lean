import InitECandidate.Proofs.FrontendStages.Loop.Translate342
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody358_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody358_1 : HolLoopProg 64 :=
.mark loopBody358_0

def loopBody358_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody358_3 : HolLoopProg 64 :=
.mark loopBody358_2

def loopBody358_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody358_5 : HolLoopProg 64 :=
.mark loopBody358_4

def loopBody358_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 421) ([2]) (some (2, loopBody358_5, loopBody358_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody358_7 : HolLoopProg 64 :=
.mark loopBody358_6

def loopBody358_8 : HolLoopProg 64 :=
.seq loopBody358_7 loopBody358_1

def loopBody358_9 : HolLoopProg 64 :=
.mark loopBody358_8

def loopBody358_10 : HolLoopProg 64 :=
.seq loopBody358_3 loopBody358_9

def loopBody358_11 : HolLoopProg 64 :=
.mark loopBody358_10

def loopBody358_12 : HolLoopProg 64 :=
.seq loopBody358_1 loopBody358_11

def loopBody358_13 : HolLoopProg 64 :=
.mark loopBody358_12

def loopBody358_14 : HolLoopProg 64 :=
.seq loopBody358_1 loopBody358_13

def loopBody358_15 : HolLoopProg 64 :=
.mark loopBody358_14

def loopBody358_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody358_17 : HolLoopProg 64 :=
.mark loopBody358_16

def loopBody358_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 419) ([2, 3]) (some (2, loopBody358_5, loopBody358_1, (Flapjack.Spt.ln)))

def loopBody358_19 : HolLoopProg 64 :=
.mark loopBody358_18

def loopBody358_20 : HolLoopProg 64 :=
.seq loopBody358_19 loopBody358_1

def loopBody358_21 : HolLoopProg 64 :=
.mark loopBody358_20

def loopBody358_22 : HolLoopProg 64 :=
.seq loopBody358_17 loopBody358_21

def loopBody358_23 : HolLoopProg 64 :=
.mark loopBody358_22

def loopBody358_24 : HolLoopProg 64 :=
.seq loopBody358_3 loopBody358_23

def loopBody358_25 : HolLoopProg 64 :=
.mark loopBody358_24

def loopBody358_26 : HolLoopProg 64 :=
.seq loopBody358_1 loopBody358_25

def loopBody358_27 : HolLoopProg 64 :=
.mark loopBody358_26

def loopBody358_28 : HolLoopProg 64 :=
.seq loopBody358_1 loopBody358_27

def loopBody358_29 : HolLoopProg 64 :=
.mark loopBody358_28

def loopBody358_30 : HolLoopProg 64 :=
.seq loopBody358_15 loopBody358_29

def loopBody358_31 : HolLoopProg 64 :=
.mark loopBody358_30

def loopBody358_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody358_33 : HolLoopProg 64 :=
.mark loopBody358_32

def loopBody358_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody358_35 : HolLoopProg 64 :=
.mark loopBody358_34

def loopBody358_36 : HolLoopProg 64 :=
.seq loopBody358_35 loopBody358_1

def loopBody358_37 : HolLoopProg 64 :=
.mark loopBody358_36

def loopBody358_38 : HolLoopProg 64 :=
.seq loopBody358_33 loopBody358_37

def loopBody358_39 : HolLoopProg 64 :=
.mark loopBody358_38

def loopBody358_40 : HolLoopProg 64 :=
.seq loopBody358_31 loopBody358_39

def loopBody358_41 : HolLoopProg 64 :=
.mark loopBody358_40

def output358 : Nat × List Nat × HolLoopProg 64 :=
  (422, [0], loopBody358_41)
end InitECandidate.Proofs.FrontendStages.Loop
