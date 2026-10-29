import InitECandidate.Proofs.FrontendStages.Loop.Translate15
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody31_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody31_1 : HolLoopProg 64 :=
.mark loopBody31_0

def loopBody31_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody31_3 : HolLoopProg 64 :=
.mark loopBody31_2

def loopBody31_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody31_5 : HolLoopProg 64 :=
.mark loopBody31_4

def loopBody31_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody31_7 : HolLoopProg 64 :=
.mark loopBody31_6

def loopBody31_8 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.ln)) (some 94) ([4, 5]) (some (4, loopBody31_7, loopBody31_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody31_9 : HolLoopProg 64 :=
.mark loopBody31_8

def loopBody31_10 : HolLoopProg 64 :=
.seq loopBody31_9 loopBody31_1

def loopBody31_11 : HolLoopProg 64 :=
.mark loopBody31_10

def loopBody31_12 : HolLoopProg 64 :=
.seq loopBody31_5 loopBody31_11

def loopBody31_13 : HolLoopProg 64 :=
.mark loopBody31_12

def loopBody31_14 : HolLoopProg 64 :=
.seq loopBody31_3 loopBody31_13

def loopBody31_15 : HolLoopProg 64 :=
.mark loopBody31_14

def loopBody31_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody31_17 : HolLoopProg 64 :=
.mark loopBody31_16

def loopBody31_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody31_19 : HolLoopProg 64 :=
.mark loopBody31_18

def loopBody31_20 : HolLoopProg 64 :=
.seq loopBody31_19 loopBody31_1

def loopBody31_21 : HolLoopProg 64 :=
.mark loopBody31_20

def loopBody31_22 : HolLoopProg 64 :=
.seq loopBody31_17 loopBody31_21

def loopBody31_23 : HolLoopProg 64 :=
.mark loopBody31_22

def loopBody31_24 : HolLoopProg 64 :=
.seq loopBody31_15 loopBody31_23

def loopBody31_25 : HolLoopProg 64 :=
.mark loopBody31_24

def loopBody31_26 : HolLoopProg 64 :=
.seq loopBody31_1 loopBody31_25

def loopBody31_27 : HolLoopProg 64 :=
.mark loopBody31_26

def loopBody31_28 : HolLoopProg 64 :=
.seq loopBody31_1 loopBody31_27

def loopBody31_29 : HolLoopProg 64 :=
.mark loopBody31_28

def loopBody31_30 : HolLoopProg 64 :=
.seq loopBody31_1 loopBody31_29

def loopBody31_31 : HolLoopProg 64 :=
.mark loopBody31_30

def loopBody31_32 : HolLoopProg 64 :=
.seq loopBody31_1 loopBody31_31

def loopBody31_33 : HolLoopProg 64 :=
.mark loopBody31_32

def output31 : Nat × List Nat × HolLoopProg 64 :=
  (95, [0, 1], loopBody31_33)
end InitECandidate.Proofs.FrontendStages.Loop
