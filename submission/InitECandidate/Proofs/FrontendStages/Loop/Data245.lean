import InitECandidate.Proofs.FrontendStages.Loop.Translate229
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody245_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody245_1 : HolLoopProg 64 :=
.mark loopBody245_0

def loopBody245_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody245_3 : HolLoopProg 64 :=
.mark loopBody245_2

def loopBody245_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody245_5 : HolLoopProg 64 :=
.mark loopBody245_4

def loopBody245_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody245_7 : HolLoopProg 64 :=
.mark loopBody245_6

def loopBody245_8 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 305) ([4, 5]) (some (4, loopBody245_7, loopBody245_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody245_9 : HolLoopProg 64 :=
.mark loopBody245_8

def loopBody245_10 : HolLoopProg 64 :=
.seq loopBody245_9 loopBody245_1

def loopBody245_11 : HolLoopProg 64 :=
.mark loopBody245_10

def loopBody245_12 : HolLoopProg 64 :=
.seq loopBody245_5 loopBody245_11

def loopBody245_13 : HolLoopProg 64 :=
.mark loopBody245_12

def loopBody245_14 : HolLoopProg 64 :=
.seq loopBody245_3 loopBody245_13

def loopBody245_15 : HolLoopProg 64 :=
.mark loopBody245_14

def loopBody245_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody245_17 : HolLoopProg 64 :=
.mark loopBody245_16

def loopBody245_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody245_19 : HolLoopProg 64 :=
.mark loopBody245_18

def loopBody245_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 308) [4, 5] none

def loopBody245_21 : HolLoopProg 64 :=
.mark loopBody245_20

def loopBody245_22 : HolLoopProg 64 :=
.seq loopBody245_21 loopBody245_1

def loopBody245_23 : HolLoopProg 64 :=
.mark loopBody245_22

def loopBody245_24 : HolLoopProg 64 :=
.seq loopBody245_19 loopBody245_23

def loopBody245_25 : HolLoopProg 64 :=
.mark loopBody245_24

def loopBody245_26 : HolLoopProg 64 :=
.seq loopBody245_17 loopBody245_25

def loopBody245_27 : HolLoopProg 64 :=
.mark loopBody245_26

def loopBody245_28 : HolLoopProg 64 :=
.seq loopBody245_15 loopBody245_27

def loopBody245_29 : HolLoopProg 64 :=
.mark loopBody245_28

def loopBody245_30 : HolLoopProg 64 :=
.seq loopBody245_1 loopBody245_29

def loopBody245_31 : HolLoopProg 64 :=
.mark loopBody245_30

def loopBody245_32 : HolLoopProg 64 :=
.seq loopBody245_1 loopBody245_31

def loopBody245_33 : HolLoopProg 64 :=
.mark loopBody245_32

def output245 : Nat × List Nat × HolLoopProg 64 :=
  (309, [0, 1, 2], loopBody245_33)
end InitECandidate.Proofs.FrontendStages.Loop
