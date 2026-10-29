import InitECandidate.Proofs.FrontendStages.Loop.Translate449
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody465_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody465_1 : HolLoopProg 64 :=
.mark loopBody465_0

def loopBody465_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody465_3 : HolLoopProg 64 :=
.mark loopBody465_2

def loopBody465_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody465_5 : HolLoopProg 64 :=
.mark loopBody465_4

def loopBody465_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody465_5, loopBody465_1, (Flapjack.Spt.ln)))

def loopBody465_7 : HolLoopProg 64 :=
.mark loopBody465_6

def loopBody465_8 : HolLoopProg 64 :=
.seq loopBody465_7 loopBody465_1

def loopBody465_9 : HolLoopProg 64 :=
.mark loopBody465_8

def loopBody465_10 : HolLoopProg 64 :=
.seq loopBody465_3 loopBody465_9

def loopBody465_11 : HolLoopProg 64 :=
.mark loopBody465_10

def loopBody465_12 : HolLoopProg 64 :=
.seq loopBody465_1 loopBody465_11

def loopBody465_13 : HolLoopProg 64 :=
.mark loopBody465_12

def loopBody465_14 : HolLoopProg 64 :=
.seq loopBody465_1 loopBody465_13

def loopBody465_15 : HolLoopProg 64 :=
.mark loopBody465_14

def loopBody465_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody465_5, loopBody465_1, (Flapjack.Spt.ln)))

def loopBody465_17 : HolLoopProg 64 :=
.mark loopBody465_16

def loopBody465_18 : HolLoopProg 64 :=
.seq loopBody465_17 loopBody465_1

def loopBody465_19 : HolLoopProg 64 :=
.mark loopBody465_18

def loopBody465_20 : HolLoopProg 64 :=
.seq loopBody465_3 loopBody465_19

def loopBody465_21 : HolLoopProg 64 :=
.mark loopBody465_20

def loopBody465_22 : HolLoopProg 64 :=
.seq loopBody465_1 loopBody465_21

def loopBody465_23 : HolLoopProg 64 :=
.mark loopBody465_22

def loopBody465_24 : HolLoopProg 64 :=
.seq loopBody465_1 loopBody465_23

def loopBody465_25 : HolLoopProg 64 :=
.mark loopBody465_24

def loopBody465_26 : HolLoopProg 64 :=
.seq loopBody465_15 loopBody465_25

def loopBody465_27 : HolLoopProg 64 :=
.mark loopBody465_26

def loopBody465_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody465_29 : HolLoopProg 64 :=
.mark loopBody465_28

def loopBody465_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody465_31 : HolLoopProg 64 :=
.mark loopBody465_30

def loopBody465_32 : HolLoopProg 64 :=
.seq loopBody465_31 loopBody465_1

def loopBody465_33 : HolLoopProg 64 :=
.mark loopBody465_32

def loopBody465_34 : HolLoopProg 64 :=
.seq loopBody465_29 loopBody465_33

def loopBody465_35 : HolLoopProg 64 :=
.mark loopBody465_34

def loopBody465_36 : HolLoopProg 64 :=
.seq loopBody465_27 loopBody465_35

def loopBody465_37 : HolLoopProg 64 :=
.mark loopBody465_36

def output465 : Nat × List Nat × HolLoopProg 64 :=
  (529, [], loopBody465_37)
end InitECandidate.Proofs.FrontendStages.Loop
