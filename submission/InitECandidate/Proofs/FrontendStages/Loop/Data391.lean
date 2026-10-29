import InitECandidate.Proofs.FrontendStages.Loop.Translate375
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody391_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody391_1 : HolLoopProg 64 :=
.mark loopBody391_0

def loopBody391_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody391_3 : HolLoopProg 64 :=
.mark loopBody391_2

def loopBody391_4 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 454) ([]) (some (2, loopBody391_3, loopBody391_1, (Flapjack.Spt.ln)))

def loopBody391_5 : HolLoopProg 64 :=
.mark loopBody391_4

def loopBody391_6 : HolLoopProg 64 :=
.seq loopBody391_5 loopBody391_1

def loopBody391_7 : HolLoopProg 64 :=
.mark loopBody391_6

def loopBody391_8 : HolLoopProg 64 :=
.seq loopBody391_1 loopBody391_7

def loopBody391_9 : HolLoopProg 64 :=
.mark loopBody391_8

def loopBody391_10 : HolLoopProg 64 :=
.seq loopBody391_1 loopBody391_9

def loopBody391_11 : HolLoopProg 64 :=
.mark loopBody391_10

def loopBody391_12 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 433) ([]) (some (2, loopBody391_3, loopBody391_1, (Flapjack.Spt.ln)))

def loopBody391_13 : HolLoopProg 64 :=
.mark loopBody391_12

def loopBody391_14 : HolLoopProg 64 :=
.seq loopBody391_13 loopBody391_1

def loopBody391_15 : HolLoopProg 64 :=
.mark loopBody391_14

def loopBody391_16 : HolLoopProg 64 :=
.seq loopBody391_1 loopBody391_15

def loopBody391_17 : HolLoopProg 64 :=
.mark loopBody391_16

def loopBody391_18 : HolLoopProg 64 :=
.seq loopBody391_1 loopBody391_17

def loopBody391_19 : HolLoopProg 64 :=
.mark loopBody391_18

def loopBody391_20 : HolLoopProg 64 :=
.seq loopBody391_11 loopBody391_19

def loopBody391_21 : HolLoopProg 64 :=
.mark loopBody391_20

def loopBody391_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody391_23 : HolLoopProg 64 :=
.mark loopBody391_22

def loopBody391_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody391_25 : HolLoopProg 64 :=
.mark loopBody391_24

def loopBody391_26 : HolLoopProg 64 :=
.seq loopBody391_25 loopBody391_1

def loopBody391_27 : HolLoopProg 64 :=
.mark loopBody391_26

def loopBody391_28 : HolLoopProg 64 :=
.seq loopBody391_23 loopBody391_27

def loopBody391_29 : HolLoopProg 64 :=
.mark loopBody391_28

def loopBody391_30 : HolLoopProg 64 :=
.seq loopBody391_21 loopBody391_29

def loopBody391_31 : HolLoopProg 64 :=
.mark loopBody391_30

def output391 : Nat × List Nat × HolLoopProg 64 :=
  (455, [], loopBody391_31)
end InitECandidate.Proofs.FrontendStages.Loop
