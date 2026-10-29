import InitECandidate.Proofs.FrontendStages.Loop.Translate407
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody423_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody423_1 : HolLoopProg 64 :=
.mark loopBody423_0

def loopBody423_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 176#64)

def loopBody423_3 : HolLoopProg 64 :=
.mark loopBody423_2

def loopBody423_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody423_5 : HolLoopProg 64 :=
.mark loopBody423_4

def loopBody423_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody423_5, loopBody423_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody423_7 : HolLoopProg 64 :=
.mark loopBody423_6

def loopBody423_8 : HolLoopProg 64 :=
.seq loopBody423_7 loopBody423_1

def loopBody423_9 : HolLoopProg 64 :=
.mark loopBody423_8

def loopBody423_10 : HolLoopProg 64 :=
.seq loopBody423_3 loopBody423_9

def loopBody423_11 : HolLoopProg 64 :=
.mark loopBody423_10

def loopBody423_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody423_13 : HolLoopProg 64 :=
.mark loopBody423_12

def loopBody423_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 176#64)

def loopBody423_15 : HolLoopProg 64 :=
.mark loopBody423_14

def loopBody423_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody423_17 : HolLoopProg 64 :=
.mark loopBody423_16

def loopBody423_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 78) ([3, 4]) (some (3, loopBody423_17, loopBody423_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody423_19 : HolLoopProg 64 :=
.mark loopBody423_18

def loopBody423_20 : HolLoopProg 64 :=
.seq loopBody423_19 loopBody423_1

def loopBody423_21 : HolLoopProg 64 :=
.mark loopBody423_20

def loopBody423_22 : HolLoopProg 64 :=
.seq loopBody423_15 loopBody423_21

def loopBody423_23 : HolLoopProg 64 :=
.mark loopBody423_22

def loopBody423_24 : HolLoopProg 64 :=
.seq loopBody423_13 loopBody423_23

def loopBody423_25 : HolLoopProg 64 :=
.mark loopBody423_24

def loopBody423_26 : HolLoopProg 64 :=
.seq loopBody423_1 loopBody423_25

def loopBody423_27 : HolLoopProg 64 :=
.mark loopBody423_26

def loopBody423_28 : HolLoopProg 64 :=
.seq loopBody423_1 loopBody423_27

def loopBody423_29 : HolLoopProg 64 :=
.mark loopBody423_28

def loopBody423_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody423_31 : HolLoopProg 64 :=
.mark loopBody423_30

def loopBody423_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody423_33 : HolLoopProg 64 :=
.mark loopBody423_32

def loopBody423_34 : HolLoopProg 64 :=
.seq loopBody423_33 loopBody423_1

def loopBody423_35 : HolLoopProg 64 :=
.mark loopBody423_34

def loopBody423_36 : HolLoopProg 64 :=
.seq loopBody423_31 loopBody423_35

def loopBody423_37 : HolLoopProg 64 :=
.mark loopBody423_36

def loopBody423_38 : HolLoopProg 64 :=
.seq loopBody423_29 loopBody423_37

def loopBody423_39 : HolLoopProg 64 :=
.mark loopBody423_38

def loopBody423_40 : HolLoopProg 64 :=
.seq loopBody423_11 loopBody423_39

def loopBody423_41 : HolLoopProg 64 :=
.mark loopBody423_40

def loopBody423_42 : HolLoopProg 64 :=
.seq loopBody423_1 loopBody423_41

def loopBody423_43 : HolLoopProg 64 :=
.mark loopBody423_42

def loopBody423_44 : HolLoopProg 64 :=
.seq loopBody423_1 loopBody423_43

def loopBody423_45 : HolLoopProg 64 :=
.mark loopBody423_44

def output423 : Nat × List Nat × HolLoopProg 64 :=
  (487, [], loopBody423_45)
end InitECandidate.Proofs.FrontendStages.Loop
