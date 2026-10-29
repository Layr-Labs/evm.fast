import InitECandidate.Proofs.FrontendStages.Loop.Translate784
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody800_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody800_1 : HolLoopProg 64 :=
.mark loopBody800_0

def loopBody800_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody800_3 : HolLoopProg 64 :=
.mark loopBody800_2

def loopBody800_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 5#64)

def loopBody800_5 : HolLoopProg 64 :=
.mark loopBody800_4

def loopBody800_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody800_7 : HolLoopProg 64 :=
.mark loopBody800_6

def loopBody800_8 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 95) ([2, 3]) (some (2, loopBody800_7, loopBody800_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody800_9 : HolLoopProg 64 :=
.mark loopBody800_8

def loopBody800_10 : HolLoopProg 64 :=
.seq loopBody800_9 loopBody800_1

def loopBody800_11 : HolLoopProg 64 :=
.mark loopBody800_10

def loopBody800_12 : HolLoopProg 64 :=
.seq loopBody800_5 loopBody800_11

def loopBody800_13 : HolLoopProg 64 :=
.mark loopBody800_12

def loopBody800_14 : HolLoopProg 64 :=
.seq loopBody800_3 loopBody800_13

def loopBody800_15 : HolLoopProg 64 :=
.mark loopBody800_14

def loopBody800_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody800_17 : HolLoopProg 64 :=
.mark loopBody800_16

def loopBody800_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody800_19 : HolLoopProg 64 :=
.mark loopBody800_18

def loopBody800_20 : HolLoopProg 64 :=
.seq loopBody800_19 loopBody800_1

def loopBody800_21 : HolLoopProg 64 :=
.mark loopBody800_20

def loopBody800_22 : HolLoopProg 64 :=
.seq loopBody800_17 loopBody800_21

def loopBody800_23 : HolLoopProg 64 :=
.mark loopBody800_22

def loopBody800_24 : HolLoopProg 64 :=
.seq loopBody800_15 loopBody800_23

def loopBody800_25 : HolLoopProg 64 :=
.mark loopBody800_24

def loopBody800_26 : HolLoopProg 64 :=
.seq loopBody800_1 loopBody800_25

def loopBody800_27 : HolLoopProg 64 :=
.mark loopBody800_26

def loopBody800_28 : HolLoopProg 64 :=
.seq loopBody800_1 loopBody800_27

def loopBody800_29 : HolLoopProg 64 :=
.mark loopBody800_28

def output800 : Nat × List Nat × HolLoopProg 64 :=
  (864, [0], loopBody800_29)
end InitECandidate.Proofs.FrontendStages.Loop
