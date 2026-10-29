import InitECandidate.Proofs.FrontendStages.Loop.Translate315
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody331_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody331_1 : HolLoopProg 64 :=
.mark loopBody331_0

def loopBody331_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 56#64)

def loopBody331_3 : HolLoopProg 64 :=
.mark loopBody331_2

def loopBody331_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody331_5 : HolLoopProg 64 :=
.mark loopBody331_4

def loopBody331_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 68) ([2]) (some (2, loopBody331_5, loopBody331_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody331_7 : HolLoopProg 64 :=
.mark loopBody331_6

def loopBody331_8 : HolLoopProg 64 :=
.seq loopBody331_7 loopBody331_1

def loopBody331_9 : HolLoopProg 64 :=
.mark loopBody331_8

def loopBody331_10 : HolLoopProg 64 :=
.seq loopBody331_3 loopBody331_9

def loopBody331_11 : HolLoopProg 64 :=
.mark loopBody331_10

def loopBody331_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody331_13 : HolLoopProg 64 :=
.mark loopBody331_12

def loopBody331_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody331_15 : HolLoopProg 64 :=
.mark loopBody331_14

def loopBody331_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 56#64)

def loopBody331_17 : HolLoopProg 64 :=
.mark loopBody331_16

def loopBody331_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody331_19 : HolLoopProg 64 :=
.mark loopBody331_18

def loopBody331_20 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 77) ([3, 4, 5]) (some (3, loopBody331_19, loopBody331_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody331_21 : HolLoopProg 64 :=
.mark loopBody331_20

def loopBody331_22 : HolLoopProg 64 :=
.seq loopBody331_21 loopBody331_1

def loopBody331_23 : HolLoopProg 64 :=
.mark loopBody331_22

def loopBody331_24 : HolLoopProg 64 :=
.seq loopBody331_17 loopBody331_23

def loopBody331_25 : HolLoopProg 64 :=
.mark loopBody331_24

def loopBody331_26 : HolLoopProg 64 :=
.seq loopBody331_15 loopBody331_25

def loopBody331_27 : HolLoopProg 64 :=
.mark loopBody331_26

def loopBody331_28 : HolLoopProg 64 :=
.seq loopBody331_13 loopBody331_27

def loopBody331_29 : HolLoopProg 64 :=
.mark loopBody331_28

def loopBody331_30 : HolLoopProg 64 :=
.seq loopBody331_1 loopBody331_29

def loopBody331_31 : HolLoopProg 64 :=
.mark loopBody331_30

def loopBody331_32 : HolLoopProg 64 :=
.seq loopBody331_1 loopBody331_31

def loopBody331_33 : HolLoopProg 64 :=
.mark loopBody331_32

def loopBody331_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody331_35 : HolLoopProg 64 :=
.mark loopBody331_34

def loopBody331_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody331_37 : HolLoopProg 64 :=
.mark loopBody331_36

def loopBody331_38 : HolLoopProg 64 :=
.seq loopBody331_37 loopBody331_1

def loopBody331_39 : HolLoopProg 64 :=
.mark loopBody331_38

def loopBody331_40 : HolLoopProg 64 :=
.seq loopBody331_35 loopBody331_39

def loopBody331_41 : HolLoopProg 64 :=
.mark loopBody331_40

def loopBody331_42 : HolLoopProg 64 :=
.seq loopBody331_33 loopBody331_41

def loopBody331_43 : HolLoopProg 64 :=
.mark loopBody331_42

def loopBody331_44 : HolLoopProg 64 :=
.seq loopBody331_11 loopBody331_43

def loopBody331_45 : HolLoopProg 64 :=
.mark loopBody331_44

def loopBody331_46 : HolLoopProg 64 :=
.seq loopBody331_1 loopBody331_45

def loopBody331_47 : HolLoopProg 64 :=
.mark loopBody331_46

def loopBody331_48 : HolLoopProg 64 :=
.seq loopBody331_1 loopBody331_47

def loopBody331_49 : HolLoopProg 64 :=
.mark loopBody331_48

def output331 : Nat × List Nat × HolLoopProg 64 :=
  (395, [0], loopBody331_49)
end InitECandidate.Proofs.FrontendStages.Loop
