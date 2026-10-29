import InitECandidate.Proofs.FrontendStages.Loop.Translate385
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody401_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody401_1 : HolLoopProg 64 :=
.mark loopBody401_0

def loopBody401_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody401_3 : HolLoopProg 64 :=
.mark loopBody401_2

def loopBody401_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody401_5 : HolLoopProg 64 :=
.mark loopBody401_4

def loopBody401_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 464) ([2]) (some (2, loopBody401_5, loopBody401_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody401_7 : HolLoopProg 64 :=
.mark loopBody401_6

def loopBody401_8 : HolLoopProg 64 :=
.seq loopBody401_7 loopBody401_1

def loopBody401_9 : HolLoopProg 64 :=
.mark loopBody401_8

def loopBody401_10 : HolLoopProg 64 :=
.seq loopBody401_3 loopBody401_9

def loopBody401_11 : HolLoopProg 64 :=
.mark loopBody401_10

def loopBody401_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 5#64))

def loopBody401_13 : HolLoopProg 64 :=
.mark loopBody401_12

def loopBody401_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody401_15 : HolLoopProg 64 :=
.mark loopBody401_14

def loopBody401_16 : HolLoopProg 64 :=
.seq loopBody401_15 loopBody401_1

def loopBody401_17 : HolLoopProg 64 :=
.mark loopBody401_16

def loopBody401_18 : HolLoopProg 64 :=
.seq loopBody401_13 loopBody401_17

def loopBody401_19 : HolLoopProg 64 :=
.mark loopBody401_18

def loopBody401_20 : HolLoopProg 64 :=
.seq loopBody401_11 loopBody401_19

def loopBody401_21 : HolLoopProg 64 :=
.mark loopBody401_20

def loopBody401_22 : HolLoopProg 64 :=
.seq loopBody401_1 loopBody401_21

def loopBody401_23 : HolLoopProg 64 :=
.mark loopBody401_22

def loopBody401_24 : HolLoopProg 64 :=
.seq loopBody401_1 loopBody401_23

def loopBody401_25 : HolLoopProg 64 :=
.mark loopBody401_24

def output401 : Nat × List Nat × HolLoopProg 64 :=
  (465, [0], loopBody401_25)
end InitECandidate.Proofs.FrontendStages.Loop
