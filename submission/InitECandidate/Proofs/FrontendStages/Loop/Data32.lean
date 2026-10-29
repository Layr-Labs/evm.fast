import InitECandidate.Proofs.FrontendStages.Loop.Translate16
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody32_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody32_1 : HolLoopProg 64 :=
.mark loopBody32_0

def loopBody32_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody32_3 : HolLoopProg 64 :=
.mark loopBody32_2

def loopBody32_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody32_5 : HolLoopProg 64 :=
.mark loopBody32_4

def loopBody32_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody32_7 : HolLoopProg 64 :=
.mark loopBody32_6

def loopBody32_8 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.ln)) (some 94) ([4, 5]) (some (4, loopBody32_7, loopBody32_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody32_9 : HolLoopProg 64 :=
.mark loopBody32_8

def loopBody32_10 : HolLoopProg 64 :=
.seq loopBody32_9 loopBody32_1

def loopBody32_11 : HolLoopProg 64 :=
.mark loopBody32_10

def loopBody32_12 : HolLoopProg 64 :=
.seq loopBody32_5 loopBody32_11

def loopBody32_13 : HolLoopProg 64 :=
.mark loopBody32_12

def loopBody32_14 : HolLoopProg 64 :=
.seq loopBody32_3 loopBody32_13

def loopBody32_15 : HolLoopProg 64 :=
.mark loopBody32_14

def loopBody32_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody32_17 : HolLoopProg 64 :=
.mark loopBody32_16

def loopBody32_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody32_19 : HolLoopProg 64 :=
.mark loopBody32_18

def loopBody32_20 : HolLoopProg 64 :=
.seq loopBody32_19 loopBody32_1

def loopBody32_21 : HolLoopProg 64 :=
.mark loopBody32_20

def loopBody32_22 : HolLoopProg 64 :=
.seq loopBody32_17 loopBody32_21

def loopBody32_23 : HolLoopProg 64 :=
.mark loopBody32_22

def loopBody32_24 : HolLoopProg 64 :=
.seq loopBody32_15 loopBody32_23

def loopBody32_25 : HolLoopProg 64 :=
.mark loopBody32_24

def loopBody32_26 : HolLoopProg 64 :=
.seq loopBody32_1 loopBody32_25

def loopBody32_27 : HolLoopProg 64 :=
.mark loopBody32_26

def loopBody32_28 : HolLoopProg 64 :=
.seq loopBody32_1 loopBody32_27

def loopBody32_29 : HolLoopProg 64 :=
.mark loopBody32_28

def loopBody32_30 : HolLoopProg 64 :=
.seq loopBody32_1 loopBody32_29

def loopBody32_31 : HolLoopProg 64 :=
.mark loopBody32_30

def loopBody32_32 : HolLoopProg 64 :=
.seq loopBody32_1 loopBody32_31

def loopBody32_33 : HolLoopProg 64 :=
.mark loopBody32_32

def output32 : Nat × List Nat × HolLoopProg 64 :=
  (96, [0, 1], loopBody32_33)
end InitECandidate.Proofs.FrontendStages.Loop
