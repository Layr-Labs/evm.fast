import InitECandidate.Proofs.FrontendStages.Loop.Translate227
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody243_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody243_1 : HolLoopProg 64 :=
.mark loopBody243_0

def loopBody243_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody243_3 : HolLoopProg 64 :=
.mark loopBody243_2

def loopBody243_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 32#64)

def loopBody243_5 : HolLoopProg 64 :=
.mark loopBody243_4

def loopBody243_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 144#64]))

def loopBody243_7 : HolLoopProg 64 :=
.mark loopBody243_6

def loopBody243_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody243_9 : HolLoopProg 64 :=
.mark loopBody243_8

def loopBody243_10 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ls PUnit.unit)) (some 288) ([3, 4, 5]) (some (3, loopBody243_9, loopBody243_1, (Flapjack.Spt.ls PUnit.unit)))

def loopBody243_11 : HolLoopProg 64 :=
.mark loopBody243_10

def loopBody243_12 : HolLoopProg 64 :=
.seq loopBody243_11 loopBody243_1

def loopBody243_13 : HolLoopProg 64 :=
.mark loopBody243_12

def loopBody243_14 : HolLoopProg 64 :=
.seq loopBody243_7 loopBody243_13

def loopBody243_15 : HolLoopProg 64 :=
.mark loopBody243_14

def loopBody243_16 : HolLoopProg 64 :=
.seq loopBody243_5 loopBody243_15

def loopBody243_17 : HolLoopProg 64 :=
.mark loopBody243_16

def loopBody243_18 : HolLoopProg 64 :=
.seq loopBody243_3 loopBody243_17

def loopBody243_19 : HolLoopProg 64 :=
.mark loopBody243_18

def loopBody243_20 : HolLoopProg 64 :=
.seq loopBody243_1 loopBody243_19

def loopBody243_21 : HolLoopProg 64 :=
.mark loopBody243_20

def loopBody243_22 : HolLoopProg 64 :=
.seq loopBody243_1 loopBody243_21

def loopBody243_23 : HolLoopProg 64 :=
.mark loopBody243_22

def loopBody243_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody243_25 : HolLoopProg 64 :=
.mark loopBody243_24

def loopBody243_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 144#64]))

def loopBody243_27 : HolLoopProg 64 :=
.mark loopBody243_26

def loopBody243_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 64#64)

def loopBody243_29 : HolLoopProg 64 :=
.mark loopBody243_28

def loopBody243_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 306) [2, 3, 4] none

def loopBody243_31 : HolLoopProg 64 :=
.mark loopBody243_30

def loopBody243_32 : HolLoopProg 64 :=
.seq loopBody243_31 loopBody243_1

def loopBody243_33 : HolLoopProg 64 :=
.mark loopBody243_32

def loopBody243_34 : HolLoopProg 64 :=
.seq loopBody243_29 loopBody243_33

def loopBody243_35 : HolLoopProg 64 :=
.mark loopBody243_34

def loopBody243_36 : HolLoopProg 64 :=
.seq loopBody243_27 loopBody243_35

def loopBody243_37 : HolLoopProg 64 :=
.mark loopBody243_36

def loopBody243_38 : HolLoopProg 64 :=
.seq loopBody243_25 loopBody243_37

def loopBody243_39 : HolLoopProg 64 :=
.mark loopBody243_38

def loopBody243_40 : HolLoopProg 64 :=
.seq loopBody243_23 loopBody243_39

def loopBody243_41 : HolLoopProg 64 :=
.mark loopBody243_40

def output243 : Nat × List Nat × HolLoopProg 64 :=
  (307, [0, 1], loopBody243_41)
end InitECandidate.Proofs.FrontendStages.Loop
