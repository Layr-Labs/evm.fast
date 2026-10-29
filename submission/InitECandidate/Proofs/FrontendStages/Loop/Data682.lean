import InitECandidate.Proofs.FrontendStages.Loop.Translate666
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody682_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody682_1 : HolLoopProg 64 :=
.mark loopBody682_0

def loopBody682_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody682_3 : HolLoopProg 64 :=
.mark loopBody682_2

def loopBody682_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody682_5 : HolLoopProg 64 :=
.mark loopBody682_4

def loopBody682_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 288#64)

def loopBody682_7 : HolLoopProg 64 :=
.mark loopBody682_6

def loopBody682_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody682_9 : HolLoopProg 64 :=
.mark loopBody682_8

def loopBody682_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 77) ([3, 4, 5]) (some (3, loopBody682_9, loopBody682_1, (Flapjack.Spt.ln)))

def loopBody682_11 : HolLoopProg 64 :=
.mark loopBody682_10

def loopBody682_12 : HolLoopProg 64 :=
.seq loopBody682_11 loopBody682_1

def loopBody682_13 : HolLoopProg 64 :=
.mark loopBody682_12

def loopBody682_14 : HolLoopProg 64 :=
.seq loopBody682_7 loopBody682_13

def loopBody682_15 : HolLoopProg 64 :=
.mark loopBody682_14

def loopBody682_16 : HolLoopProg 64 :=
.seq loopBody682_5 loopBody682_15

def loopBody682_17 : HolLoopProg 64 :=
.mark loopBody682_16

def loopBody682_18 : HolLoopProg 64 :=
.seq loopBody682_3 loopBody682_17

def loopBody682_19 : HolLoopProg 64 :=
.mark loopBody682_18

def loopBody682_20 : HolLoopProg 64 :=
.seq loopBody682_1 loopBody682_19

def loopBody682_21 : HolLoopProg 64 :=
.mark loopBody682_20

def loopBody682_22 : HolLoopProg 64 :=
.seq loopBody682_1 loopBody682_21

def loopBody682_23 : HolLoopProg 64 :=
.mark loopBody682_22

def loopBody682_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody682_25 : HolLoopProg 64 :=
.mark loopBody682_24

def loopBody682_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody682_27 : HolLoopProg 64 :=
.mark loopBody682_26

def loopBody682_28 : HolLoopProg 64 :=
.seq loopBody682_27 loopBody682_1

def loopBody682_29 : HolLoopProg 64 :=
.mark loopBody682_28

def loopBody682_30 : HolLoopProg 64 :=
.seq loopBody682_25 loopBody682_29

def loopBody682_31 : HolLoopProg 64 :=
.mark loopBody682_30

def loopBody682_32 : HolLoopProg 64 :=
.seq loopBody682_23 loopBody682_31

def loopBody682_33 : HolLoopProg 64 :=
.mark loopBody682_32

def output682 : Nat × List Nat × HolLoopProg 64 :=
  (746, [0, 1], loopBody682_33)
end InitECandidate.Proofs.FrontendStages.Loop
