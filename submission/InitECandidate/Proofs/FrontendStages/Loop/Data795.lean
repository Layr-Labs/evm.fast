import InitECandidate.Proofs.FrontendStages.Loop.Translate779
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody795_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody795_1 : HolLoopProg 64 :=
.mark loopBody795_0

def loopBody795_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 200#64)

def loopBody795_3 : HolLoopProg 64 :=
.mark loopBody795_2

def loopBody795_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody795_5 : HolLoopProg 64 :=
.mark loopBody795_4

def loopBody795_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody795_5, loopBody795_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody795_7 : HolLoopProg 64 :=
.mark loopBody795_6

def loopBody795_8 : HolLoopProg 64 :=
.seq loopBody795_7 loopBody795_1

def loopBody795_9 : HolLoopProg 64 :=
.mark loopBody795_8

def loopBody795_10 : HolLoopProg 64 :=
.seq loopBody795_3 loopBody795_9

def loopBody795_11 : HolLoopProg 64 :=
.mark loopBody795_10

def loopBody795_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody795_13 : HolLoopProg 64 :=
.mark loopBody795_12

def loopBody795_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 200#64)

def loopBody795_15 : HolLoopProg 64 :=
.mark loopBody795_14

def loopBody795_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody795_17 : HolLoopProg 64 :=
.mark loopBody795_16

def loopBody795_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 78) ([3, 4]) (some (3, loopBody795_17, loopBody795_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody795_19 : HolLoopProg 64 :=
.mark loopBody795_18

def loopBody795_20 : HolLoopProg 64 :=
.seq loopBody795_19 loopBody795_1

def loopBody795_21 : HolLoopProg 64 :=
.mark loopBody795_20

def loopBody795_22 : HolLoopProg 64 :=
.seq loopBody795_15 loopBody795_21

def loopBody795_23 : HolLoopProg 64 :=
.mark loopBody795_22

def loopBody795_24 : HolLoopProg 64 :=
.seq loopBody795_13 loopBody795_23

def loopBody795_25 : HolLoopProg 64 :=
.mark loopBody795_24

def loopBody795_26 : HolLoopProg 64 :=
.seq loopBody795_1 loopBody795_25

def loopBody795_27 : HolLoopProg 64 :=
.mark loopBody795_26

def loopBody795_28 : HolLoopProg 64 :=
.seq loopBody795_1 loopBody795_27

def loopBody795_29 : HolLoopProg 64 :=
.mark loopBody795_28

def loopBody795_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody795_31 : HolLoopProg 64 :=
.mark loopBody795_30

def loopBody795_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody795_33 : HolLoopProg 64 :=
.mark loopBody795_32

def loopBody795_34 : HolLoopProg 64 :=
.seq loopBody795_33 loopBody795_1

def loopBody795_35 : HolLoopProg 64 :=
.mark loopBody795_34

def loopBody795_36 : HolLoopProg 64 :=
.seq loopBody795_31 loopBody795_35

def loopBody795_37 : HolLoopProg 64 :=
.mark loopBody795_36

def loopBody795_38 : HolLoopProg 64 :=
.seq loopBody795_29 loopBody795_37

def loopBody795_39 : HolLoopProg 64 :=
.mark loopBody795_38

def loopBody795_40 : HolLoopProg 64 :=
.seq loopBody795_11 loopBody795_39

def loopBody795_41 : HolLoopProg 64 :=
.mark loopBody795_40

def loopBody795_42 : HolLoopProg 64 :=
.seq loopBody795_1 loopBody795_41

def loopBody795_43 : HolLoopProg 64 :=
.mark loopBody795_42

def loopBody795_44 : HolLoopProg 64 :=
.seq loopBody795_1 loopBody795_43

def loopBody795_45 : HolLoopProg 64 :=
.mark loopBody795_44

def output795 : Nat × List Nat × HolLoopProg 64 :=
  (859, [], loopBody795_45)
end InitECandidate.Proofs.FrontendStages.Loop
