import InitECandidate.Proofs.FrontendStages.Loop.Translate684
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody700_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody700_1 : HolLoopProg 64 :=
.mark loopBody700_0

def loopBody700_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody700_3 : HolLoopProg 64 :=
.mark loopBody700_2

def loopBody700_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody700_5 : HolLoopProg 64 :=
.mark loopBody700_4

def loopBody700_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody700_7 : HolLoopProg 64 :=
.mark loopBody700_6

def loopBody700_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 763) ([3, 4]) (some (3, loopBody700_7, loopBody700_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody700_9 : HolLoopProg 64 :=
.mark loopBody700_8

def loopBody700_10 : HolLoopProg 64 :=
.seq loopBody700_9 loopBody700_1

def loopBody700_11 : HolLoopProg 64 :=
.mark loopBody700_10

def loopBody700_12 : HolLoopProg 64 :=
.seq loopBody700_5 loopBody700_11

def loopBody700_13 : HolLoopProg 64 :=
.mark loopBody700_12

def loopBody700_14 : HolLoopProg 64 :=
.seq loopBody700_3 loopBody700_13

def loopBody700_15 : HolLoopProg 64 :=
.mark loopBody700_14

def loopBody700_16 : HolLoopProg 64 :=
.seq loopBody700_1 loopBody700_15

def loopBody700_17 : HolLoopProg 64 :=
.mark loopBody700_16

def loopBody700_18 : HolLoopProg 64 :=
.seq loopBody700_1 loopBody700_17

def loopBody700_19 : HolLoopProg 64 :=
.mark loopBody700_18

def loopBody700_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody700_21 : HolLoopProg 64 :=
.mark loopBody700_20

def loopBody700_22 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 760) ([3, 4]) (some (3, loopBody700_7, loopBody700_1, (Flapjack.Spt.ln)))

def loopBody700_23 : HolLoopProg 64 :=
.mark loopBody700_22

def loopBody700_24 : HolLoopProg 64 :=
.seq loopBody700_23 loopBody700_1

def loopBody700_25 : HolLoopProg 64 :=
.mark loopBody700_24

def loopBody700_26 : HolLoopProg 64 :=
.seq loopBody700_21 loopBody700_25

def loopBody700_27 : HolLoopProg 64 :=
.mark loopBody700_26

def loopBody700_28 : HolLoopProg 64 :=
.seq loopBody700_3 loopBody700_27

def loopBody700_29 : HolLoopProg 64 :=
.mark loopBody700_28

def loopBody700_30 : HolLoopProg 64 :=
.seq loopBody700_1 loopBody700_29

def loopBody700_31 : HolLoopProg 64 :=
.mark loopBody700_30

def loopBody700_32 : HolLoopProg 64 :=
.seq loopBody700_1 loopBody700_31

def loopBody700_33 : HolLoopProg 64 :=
.mark loopBody700_32

def loopBody700_34 : HolLoopProg 64 :=
.seq loopBody700_19 loopBody700_33

def loopBody700_35 : HolLoopProg 64 :=
.mark loopBody700_34

def loopBody700_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody700_37 : HolLoopProg 64 :=
.mark loopBody700_36

def loopBody700_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody700_39 : HolLoopProg 64 :=
.mark loopBody700_38

def loopBody700_40 : HolLoopProg 64 :=
.seq loopBody700_39 loopBody700_1

def loopBody700_41 : HolLoopProg 64 :=
.mark loopBody700_40

def loopBody700_42 : HolLoopProg 64 :=
.seq loopBody700_37 loopBody700_41

def loopBody700_43 : HolLoopProg 64 :=
.mark loopBody700_42

def loopBody700_44 : HolLoopProg 64 :=
.seq loopBody700_35 loopBody700_43

def loopBody700_45 : HolLoopProg 64 :=
.mark loopBody700_44

def output700 : Nat × List Nat × HolLoopProg 64 :=
  (764, [0, 1], loopBody700_45)
end InitECandidate.Proofs.FrontendStages.Loop
