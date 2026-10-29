import InitECandidate.Proofs.FrontendStages.Loop.Translate366
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody382_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody382_1 : HolLoopProg 64 :=
.mark loopBody382_0

def loopBody382_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody382_3 : HolLoopProg 64 :=
.mark loopBody382_2

def loopBody382_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody382_5 : HolLoopProg 64 :=
.mark loopBody382_4

def loopBody382_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 439) ([2]) (some (2, loopBody382_5, loopBody382_1, (Flapjack.Spt.ln)))

def loopBody382_7 : HolLoopProg 64 :=
.mark loopBody382_6

def loopBody382_8 : HolLoopProg 64 :=
.seq loopBody382_7 loopBody382_1

def loopBody382_9 : HolLoopProg 64 :=
.mark loopBody382_8

def loopBody382_10 : HolLoopProg 64 :=
.seq loopBody382_3 loopBody382_9

def loopBody382_11 : HolLoopProg 64 :=
.mark loopBody382_10

def loopBody382_12 : HolLoopProg 64 :=
.seq loopBody382_1 loopBody382_11

def loopBody382_13 : HolLoopProg 64 :=
.mark loopBody382_12

def loopBody382_14 : HolLoopProg 64 :=
.seq loopBody382_1 loopBody382_13

def loopBody382_15 : HolLoopProg 64 :=
.mark loopBody382_14

def loopBody382_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody382_17 : HolLoopProg 64 :=
.mark loopBody382_16

def loopBody382_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody382_19 : HolLoopProg 64 :=
.mark loopBody382_18

def loopBody382_20 : HolLoopProg 64 :=
.seq loopBody382_19 loopBody382_1

def loopBody382_21 : HolLoopProg 64 :=
.mark loopBody382_20

def loopBody382_22 : HolLoopProg 64 :=
.seq loopBody382_17 loopBody382_21

def loopBody382_23 : HolLoopProg 64 :=
.mark loopBody382_22

def loopBody382_24 : HolLoopProg 64 :=
.seq loopBody382_15 loopBody382_23

def loopBody382_25 : HolLoopProg 64 :=
.mark loopBody382_24

def output382 : Nat × List Nat × HolLoopProg 64 :=
  (446, [0], loopBody382_25)
end InitECandidate.Proofs.FrontendStages.Loop
