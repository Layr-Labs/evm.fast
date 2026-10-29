import InitECandidate.Proofs.FrontendStages.Loop.Translate169
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody185_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody185_1 : HolLoopProg 64 :=
.mark loopBody185_0

def loopBody185_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody185_3 : HolLoopProg 64 :=
.mark loopBody185_2

def loopBody185_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 248) ([]) (some (2, loopBody185_3, loopBody185_1, (Flapjack.Spt.ln)))

def loopBody185_5 : HolLoopProg 64 :=
.mark loopBody185_4

def loopBody185_6 : HolLoopProg 64 :=
.seq loopBody185_5 loopBody185_1

def loopBody185_7 : HolLoopProg 64 :=
.mark loopBody185_6

def loopBody185_8 : HolLoopProg 64 :=
.seq loopBody185_1 loopBody185_7

def loopBody185_9 : HolLoopProg 64 :=
.mark loopBody185_8

def loopBody185_10 : HolLoopProg 64 :=
.seq loopBody185_1 loopBody185_9

def loopBody185_11 : HolLoopProg 64 :=
.mark loopBody185_10

def loopBody185_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody185_13 : HolLoopProg 64 :=
.mark loopBody185_12

def loopBody185_14 : HolLoopProg 64 :=
.call (some ([1, 2], Flapjack.Spt.ln)) (some 90) ([]) (some (3, loopBody185_13, loopBody185_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody185_15 : HolLoopProg 64 :=
.mark loopBody185_14

def loopBody185_16 : HolLoopProg 64 :=
.seq loopBody185_15 loopBody185_1

def loopBody185_17 : HolLoopProg 64 :=
.mark loopBody185_16

def loopBody185_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody185_19 : HolLoopProg 64 :=
.mark loopBody185_18

def loopBody185_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody185_21 : HolLoopProg 64 :=
.mark loopBody185_20

def loopBody185_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 256) [3, 4] none

def loopBody185_23 : HolLoopProg 64 :=
.mark loopBody185_22

def loopBody185_24 : HolLoopProg 64 :=
.seq loopBody185_23 loopBody185_1

def loopBody185_25 : HolLoopProg 64 :=
.mark loopBody185_24

def loopBody185_26 : HolLoopProg 64 :=
.seq loopBody185_21 loopBody185_25

def loopBody185_27 : HolLoopProg 64 :=
.mark loopBody185_26

def loopBody185_28 : HolLoopProg 64 :=
.seq loopBody185_19 loopBody185_27

def loopBody185_29 : HolLoopProg 64 :=
.mark loopBody185_28

def loopBody185_30 : HolLoopProg 64 :=
.seq loopBody185_17 loopBody185_29

def loopBody185_31 : HolLoopProg 64 :=
.mark loopBody185_30

def loopBody185_32 : HolLoopProg 64 :=
.seq loopBody185_1 loopBody185_31

def loopBody185_33 : HolLoopProg 64 :=
.mark loopBody185_32

def loopBody185_34 : HolLoopProg 64 :=
.seq loopBody185_1 loopBody185_33

def loopBody185_35 : HolLoopProg 64 :=
.mark loopBody185_34

def loopBody185_36 : HolLoopProg 64 :=
.seq loopBody185_1 loopBody185_35

def loopBody185_37 : HolLoopProg 64 :=
.mark loopBody185_36

def loopBody185_38 : HolLoopProg 64 :=
.seq loopBody185_1 loopBody185_37

def loopBody185_39 : HolLoopProg 64 :=
.mark loopBody185_38

def loopBody185_40 : HolLoopProg 64 :=
.seq loopBody185_11 loopBody185_39

def loopBody185_41 : HolLoopProg 64 :=
.mark loopBody185_40

def output185 : Nat × List Nat × HolLoopProg 64 :=
  (249, [], loopBody185_41)
end InitECandidate.Proofs.FrontendStages.Loop
