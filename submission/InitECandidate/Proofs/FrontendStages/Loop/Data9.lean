import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody9_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody9_1 : HolLoopProg 64 :=
.mark loopBody9_0

def loopBody9_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 32#64])

def loopBody9_3 : HolLoopProg 64 :=
.mark loopBody9_2

def loopBody9_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody9_5 : HolLoopProg 64 :=
.mark loopBody9_4

def loopBody9_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody9_7 : HolLoopProg 64 :=
.mark loopBody9_6

def loopBody9_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody9_9 : HolLoopProg 64 :=
.mark loopBody9_8

def loopBody9_10 : HolLoopProg 64 :=
.seq loopBody9_9 loopBody9_1

def loopBody9_11 : HolLoopProg 64 :=
.mark loopBody9_10

def loopBody9_12 : HolLoopProg 64 :=
.seq loopBody9_7 loopBody9_11

def loopBody9_13 : HolLoopProg 64 :=
.mark loopBody9_12

def loopBody9_14 : HolLoopProg 64 :=
.seq loopBody9_13 loopBody9_1

def loopBody9_15 : HolLoopProg 64 :=
.mark loopBody9_14

def loopBody9_16 : HolLoopProg 64 :=
.seq loopBody9_5 loopBody9_15

def loopBody9_17 : HolLoopProg 64 :=
.mark loopBody9_16

def loopBody9_18 : HolLoopProg 64 :=
.seq loopBody9_1 loopBody9_17

def loopBody9_19 : HolLoopProg 64 :=
.mark loopBody9_18

def loopBody9_20 : HolLoopProg 64 :=
.seq loopBody9_3 loopBody9_19

def loopBody9_21 : HolLoopProg 64 :=
.mark loopBody9_20

def loopBody9_22 : HolLoopProg 64 :=
.seq loopBody9_1 loopBody9_21

def loopBody9_23 : HolLoopProg 64 :=
.mark loopBody9_22

def loopBody9_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody9_25 : HolLoopProg 64 :=
.mark loopBody9_24

def loopBody9_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody9_27 : HolLoopProg 64 :=
.mark loopBody9_26

def loopBody9_28 : HolLoopProg 64 :=
.seq loopBody9_27 loopBody9_1

def loopBody9_29 : HolLoopProg 64 :=
.mark loopBody9_28

def loopBody9_30 : HolLoopProg 64 :=
.seq loopBody9_25 loopBody9_29

def loopBody9_31 : HolLoopProg 64 :=
.mark loopBody9_30

def loopBody9_32 : HolLoopProg 64 :=
.seq loopBody9_23 loopBody9_31

def loopBody9_33 : HolLoopProg 64 :=
.mark loopBody9_32

def output9 : Nat × List Nat × HolLoopProg 64 :=
  (73, [0], loopBody9_33)
end InitECandidate.Proofs.FrontendStages.Loop
