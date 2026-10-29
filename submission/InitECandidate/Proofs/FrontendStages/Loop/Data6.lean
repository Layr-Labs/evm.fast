import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody6_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody6_1 : HolLoopProg 64 :=
.mark loopBody6_0

def loopBody6_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 8#64])

def loopBody6_3 : HolLoopProg 64 :=
.mark loopBody6_2

def loopBody6_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody6_5 : HolLoopProg 64 :=
.mark loopBody6_4

def loopBody6_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody6_7 : HolLoopProg 64 :=
.mark loopBody6_6

def loopBody6_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody6_9 : HolLoopProg 64 :=
.mark loopBody6_8

def loopBody6_10 : HolLoopProg 64 :=
.seq loopBody6_9 loopBody6_1

def loopBody6_11 : HolLoopProg 64 :=
.mark loopBody6_10

def loopBody6_12 : HolLoopProg 64 :=
.seq loopBody6_7 loopBody6_11

def loopBody6_13 : HolLoopProg 64 :=
.mark loopBody6_12

def loopBody6_14 : HolLoopProg 64 :=
.seq loopBody6_13 loopBody6_1

def loopBody6_15 : HolLoopProg 64 :=
.mark loopBody6_14

def loopBody6_16 : HolLoopProg 64 :=
.seq loopBody6_5 loopBody6_15

def loopBody6_17 : HolLoopProg 64 :=
.mark loopBody6_16

def loopBody6_18 : HolLoopProg 64 :=
.seq loopBody6_1 loopBody6_17

def loopBody6_19 : HolLoopProg 64 :=
.mark loopBody6_18

def loopBody6_20 : HolLoopProg 64 :=
.seq loopBody6_3 loopBody6_19

def loopBody6_21 : HolLoopProg 64 :=
.mark loopBody6_20

def loopBody6_22 : HolLoopProg 64 :=
.seq loopBody6_1 loopBody6_21

def loopBody6_23 : HolLoopProg 64 :=
.mark loopBody6_22

def loopBody6_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody6_25 : HolLoopProg 64 :=
.mark loopBody6_24

def loopBody6_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody6_27 : HolLoopProg 64 :=
.mark loopBody6_26

def loopBody6_28 : HolLoopProg 64 :=
.seq loopBody6_27 loopBody6_1

def loopBody6_29 : HolLoopProg 64 :=
.mark loopBody6_28

def loopBody6_30 : HolLoopProg 64 :=
.seq loopBody6_25 loopBody6_29

def loopBody6_31 : HolLoopProg 64 :=
.mark loopBody6_30

def loopBody6_32 : HolLoopProg 64 :=
.seq loopBody6_23 loopBody6_31

def loopBody6_33 : HolLoopProg 64 :=
.mark loopBody6_32

def output6 : Nat × List Nat × HolLoopProg 64 :=
  (70, [0], loopBody6_33)
end InitECandidate.Proofs.FrontendStages.Loop
