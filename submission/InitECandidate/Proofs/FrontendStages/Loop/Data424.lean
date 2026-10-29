import InitECandidate.Proofs.FrontendStages.Loop.Translate408
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody424_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody424_1 : HolLoopProg 64 :=
.mark loopBody424_0

def loopBody424_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 176#64)

def loopBody424_3 : HolLoopProg 64 :=
.mark loopBody424_2

def loopBody424_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody424_5 : HolLoopProg 64 :=
.mark loopBody424_4

def loopBody424_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 74) ([2]) (some (2, loopBody424_5, loopBody424_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody424_7 : HolLoopProg 64 :=
.mark loopBody424_6

def loopBody424_8 : HolLoopProg 64 :=
.seq loopBody424_7 loopBody424_1

def loopBody424_9 : HolLoopProg 64 :=
.mark loopBody424_8

def loopBody424_10 : HolLoopProg 64 :=
.seq loopBody424_3 loopBody424_9

def loopBody424_11 : HolLoopProg 64 :=
.mark loopBody424_10

def loopBody424_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody424_13 : HolLoopProg 64 :=
.mark loopBody424_12

def loopBody424_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 176#64)

def loopBody424_15 : HolLoopProg 64 :=
.mark loopBody424_14

def loopBody424_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody424_17 : HolLoopProg 64 :=
.mark loopBody424_16

def loopBody424_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 78) ([3, 4]) (some (3, loopBody424_17, loopBody424_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody424_19 : HolLoopProg 64 :=
.mark loopBody424_18

def loopBody424_20 : HolLoopProg 64 :=
.seq loopBody424_19 loopBody424_1

def loopBody424_21 : HolLoopProg 64 :=
.mark loopBody424_20

def loopBody424_22 : HolLoopProg 64 :=
.seq loopBody424_15 loopBody424_21

def loopBody424_23 : HolLoopProg 64 :=
.mark loopBody424_22

def loopBody424_24 : HolLoopProg 64 :=
.seq loopBody424_13 loopBody424_23

def loopBody424_25 : HolLoopProg 64 :=
.mark loopBody424_24

def loopBody424_26 : HolLoopProg 64 :=
.seq loopBody424_1 loopBody424_25

def loopBody424_27 : HolLoopProg 64 :=
.mark loopBody424_26

def loopBody424_28 : HolLoopProg 64 :=
.seq loopBody424_1 loopBody424_27

def loopBody424_29 : HolLoopProg 64 :=
.mark loopBody424_28

def loopBody424_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody424_31 : HolLoopProg 64 :=
.mark loopBody424_30

def loopBody424_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody424_33 : HolLoopProg 64 :=
.mark loopBody424_32

def loopBody424_34 : HolLoopProg 64 :=
.seq loopBody424_33 loopBody424_1

def loopBody424_35 : HolLoopProg 64 :=
.mark loopBody424_34

def loopBody424_36 : HolLoopProg 64 :=
.seq loopBody424_31 loopBody424_35

def loopBody424_37 : HolLoopProg 64 :=
.mark loopBody424_36

def loopBody424_38 : HolLoopProg 64 :=
.seq loopBody424_29 loopBody424_37

def loopBody424_39 : HolLoopProg 64 :=
.mark loopBody424_38

def loopBody424_40 : HolLoopProg 64 :=
.seq loopBody424_11 loopBody424_39

def loopBody424_41 : HolLoopProg 64 :=
.mark loopBody424_40

def loopBody424_42 : HolLoopProg 64 :=
.seq loopBody424_1 loopBody424_41

def loopBody424_43 : HolLoopProg 64 :=
.mark loopBody424_42

def loopBody424_44 : HolLoopProg 64 :=
.seq loopBody424_1 loopBody424_43

def loopBody424_45 : HolLoopProg 64 :=
.mark loopBody424_44

def output424 : Nat × List Nat × HolLoopProg 64 :=
  (488, [], loopBody424_45)
end InitECandidate.Proofs.FrontendStages.Loop
