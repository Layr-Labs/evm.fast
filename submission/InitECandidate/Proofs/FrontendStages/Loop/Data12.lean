import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody12_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody12_1 : HolLoopProg 64 :=
.mark loopBody12_0

def loopBody12_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 24#64])

def loopBody12_3 : HolLoopProg 64 :=
.mark loopBody12_2

def loopBody12_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody12_5 : HolLoopProg 64 :=
.mark loopBody12_4

def loopBody12_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody12_7 : HolLoopProg 64 :=
.mark loopBody12_6

def loopBody12_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody12_9 : HolLoopProg 64 :=
.mark loopBody12_8

def loopBody12_10 : HolLoopProg 64 :=
.seq loopBody12_9 loopBody12_1

def loopBody12_11 : HolLoopProg 64 :=
.mark loopBody12_10

def loopBody12_12 : HolLoopProg 64 :=
.seq loopBody12_7 loopBody12_11

def loopBody12_13 : HolLoopProg 64 :=
.mark loopBody12_12

def loopBody12_14 : HolLoopProg 64 :=
.seq loopBody12_13 loopBody12_1

def loopBody12_15 : HolLoopProg 64 :=
.mark loopBody12_14

def loopBody12_16 : HolLoopProg 64 :=
.seq loopBody12_5 loopBody12_15

def loopBody12_17 : HolLoopProg 64 :=
.mark loopBody12_16

def loopBody12_18 : HolLoopProg 64 :=
.seq loopBody12_1 loopBody12_17

def loopBody12_19 : HolLoopProg 64 :=
.mark loopBody12_18

def loopBody12_20 : HolLoopProg 64 :=
.seq loopBody12_3 loopBody12_19

def loopBody12_21 : HolLoopProg 64 :=
.mark loopBody12_20

def loopBody12_22 : HolLoopProg 64 :=
.seq loopBody12_1 loopBody12_21

def loopBody12_23 : HolLoopProg 64 :=
.mark loopBody12_22

def loopBody12_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody12_25 : HolLoopProg 64 :=
.mark loopBody12_24

def loopBody12_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody12_27 : HolLoopProg 64 :=
.mark loopBody12_26

def loopBody12_28 : HolLoopProg 64 :=
.seq loopBody12_27 loopBody12_1

def loopBody12_29 : HolLoopProg 64 :=
.mark loopBody12_28

def loopBody12_30 : HolLoopProg 64 :=
.seq loopBody12_25 loopBody12_29

def loopBody12_31 : HolLoopProg 64 :=
.mark loopBody12_30

def loopBody12_32 : HolLoopProg 64 :=
.seq loopBody12_23 loopBody12_31

def loopBody12_33 : HolLoopProg 64 :=
.mark loopBody12_32

def output12 : Nat × List Nat × HolLoopProg 64 :=
  (76, [0], loopBody12_33)
end InitECandidate.Proofs.FrontendStages.Loop
