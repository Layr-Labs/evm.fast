import InitECandidate.Proofs.FrontendStages.Loop.Translate598
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody614_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody614_1 : HolLoopProg 64 :=
.mark loopBody614_0

def loopBody614_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody614_3 : HolLoopProg 64 :=
.mark loopBody614_2

def loopBody614_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 0) (Flapjack.HolLoopExp.const 5#64))

def loopBody614_5 : HolLoopProg 64 :=
.mark loopBody614_4

def loopBody614_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody614_7 : HolLoopProg 64 :=
.mark loopBody614_6

def loopBody614_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 78) ([3, 4]) (some (3, loopBody614_7, loopBody614_1, (Flapjack.Spt.ln)))

def loopBody614_9 : HolLoopProg 64 :=
.mark loopBody614_8

def loopBody614_10 : HolLoopProg 64 :=
.seq loopBody614_9 loopBody614_1

def loopBody614_11 : HolLoopProg 64 :=
.mark loopBody614_10

def loopBody614_12 : HolLoopProg 64 :=
.seq loopBody614_5 loopBody614_11

def loopBody614_13 : HolLoopProg 64 :=
.mark loopBody614_12

def loopBody614_14 : HolLoopProg 64 :=
.seq loopBody614_3 loopBody614_13

def loopBody614_15 : HolLoopProg 64 :=
.mark loopBody614_14

def loopBody614_16 : HolLoopProg 64 :=
.seq loopBody614_1 loopBody614_15

def loopBody614_17 : HolLoopProg 64 :=
.mark loopBody614_16

def loopBody614_18 : HolLoopProg 64 :=
.seq loopBody614_1 loopBody614_17

def loopBody614_19 : HolLoopProg 64 :=
.mark loopBody614_18

def loopBody614_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody614_21 : HolLoopProg 64 :=
.mark loopBody614_20

def loopBody614_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody614_23 : HolLoopProg 64 :=
.mark loopBody614_22

def loopBody614_24 : HolLoopProg 64 :=
.seq loopBody614_23 loopBody614_1

def loopBody614_25 : HolLoopProg 64 :=
.mark loopBody614_24

def loopBody614_26 : HolLoopProg 64 :=
.seq loopBody614_21 loopBody614_25

def loopBody614_27 : HolLoopProg 64 :=
.mark loopBody614_26

def loopBody614_28 : HolLoopProg 64 :=
.seq loopBody614_19 loopBody614_27

def loopBody614_29 : HolLoopProg 64 :=
.mark loopBody614_28

def output614 : Nat × List Nat × HolLoopProg 64 :=
  (678, [0, 1], loopBody614_29)
end InitECandidate.Proofs.FrontendStages.Loop
