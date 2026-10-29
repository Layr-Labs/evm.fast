import InitECandidate.Proofs.FrontendStages.Loop.Translate59
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody75_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody75_1 : HolLoopProg 64 :=
.mark loopBody75_0

def loopBody75_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody75_3 : HolLoopProg 64 :=
.mark loopBody75_2

def loopBody75_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody75_5 : HolLoopProg 64 :=
.mark loopBody75_4

def loopBody75_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody75_7 : HolLoopProg 64 :=
.mark loopBody75_6

def loopBody75_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody75_9 : HolLoopProg 64 :=
.mark loopBody75_8

def loopBody75_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody75_11 : HolLoopProg 64 :=
.mark loopBody75_10

def loopBody75_12 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 138) ([5, 6, 7, 8]) (some (5, loopBody75_11, loopBody75_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody75_13 : HolLoopProg 64 :=
.mark loopBody75_12

def loopBody75_14 : HolLoopProg 64 :=
.seq loopBody75_13 loopBody75_1

def loopBody75_15 : HolLoopProg 64 :=
.mark loopBody75_14

def loopBody75_16 : HolLoopProg 64 :=
.seq loopBody75_9 loopBody75_15

def loopBody75_17 : HolLoopProg 64 :=
.mark loopBody75_16

def loopBody75_18 : HolLoopProg 64 :=
.seq loopBody75_7 loopBody75_17

def loopBody75_19 : HolLoopProg 64 :=
.mark loopBody75_18

def loopBody75_20 : HolLoopProg 64 :=
.seq loopBody75_5 loopBody75_19

def loopBody75_21 : HolLoopProg 64 :=
.mark loopBody75_20

def loopBody75_22 : HolLoopProg 64 :=
.seq loopBody75_3 loopBody75_21

def loopBody75_23 : HolLoopProg 64 :=
.mark loopBody75_22

def loopBody75_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 7#64])
    (Flapjack.HolLoopExp.const 3#64))

def loopBody75_25 : HolLoopProg 64 :=
.mark loopBody75_24

def loopBody75_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody75_27 : HolLoopProg 64 :=
.mark loopBody75_26

def loopBody75_28 : HolLoopProg 64 :=
.seq loopBody75_27 loopBody75_1

def loopBody75_29 : HolLoopProg 64 :=
.mark loopBody75_28

def loopBody75_30 : HolLoopProg 64 :=
.seq loopBody75_25 loopBody75_29

def loopBody75_31 : HolLoopProg 64 :=
.mark loopBody75_30

def loopBody75_32 : HolLoopProg 64 :=
.seq loopBody75_23 loopBody75_31

def loopBody75_33 : HolLoopProg 64 :=
.mark loopBody75_32

def loopBody75_34 : HolLoopProg 64 :=
.seq loopBody75_1 loopBody75_33

def loopBody75_35 : HolLoopProg 64 :=
.mark loopBody75_34

def loopBody75_36 : HolLoopProg 64 :=
.seq loopBody75_1 loopBody75_35

def loopBody75_37 : HolLoopProg 64 :=
.mark loopBody75_36

def output75 : Nat × List Nat × HolLoopProg 64 :=
  (139, [0, 1, 2, 3], loopBody75_37)
end InitECandidate.Proofs.FrontendStages.Loop
