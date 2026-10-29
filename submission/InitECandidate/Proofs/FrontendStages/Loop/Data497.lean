import InitECandidate.Proofs.FrontendStages.Loop.Translate481
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody497_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody497_1 : HolLoopProg 64 :=
.mark loopBody497_0

def loopBody497_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 112#64]))

def loopBody497_3 : HolLoopProg 64 :=
.mark loopBody497_2

def loopBody497_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 3#64)

def loopBody497_5 : HolLoopProg 64 :=
.mark loopBody497_4

def loopBody497_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 88#64]))

def loopBody497_7 : HolLoopProg 64 :=
.mark loopBody497_6

def loopBody497_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64]))

def loopBody497_9 : HolLoopProg 64 :=
.mark loopBody497_8

def loopBody497_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody497_11 : HolLoopProg 64 :=
.mark loopBody497_10

def loopBody497_12 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 560) ([3, 4, 5]) (some (3, loopBody497_11, loopBody497_1, (Flapjack.Spt.ln)))

def loopBody497_13 : HolLoopProg 64 :=
.mark loopBody497_12

def loopBody497_14 : HolLoopProg 64 :=
.seq loopBody497_13 loopBody497_1

def loopBody497_15 : HolLoopProg 64 :=
.mark loopBody497_14

def loopBody497_16 : HolLoopProg 64 :=
.seq loopBody497_9 loopBody497_15

def loopBody497_17 : HolLoopProg 64 :=
.mark loopBody497_16

def loopBody497_18 : HolLoopProg 64 :=
.seq loopBody497_7 loopBody497_17

def loopBody497_19 : HolLoopProg 64 :=
.mark loopBody497_18

def loopBody497_20 : HolLoopProg 64 :=
.seq loopBody497_5 loopBody497_19

def loopBody497_21 : HolLoopProg 64 :=
.mark loopBody497_20

def loopBody497_22 : HolLoopProg 64 :=
.seq loopBody497_1 loopBody497_21

def loopBody497_23 : HolLoopProg 64 :=
.mark loopBody497_22

def loopBody497_24 : HolLoopProg 64 :=
.seq loopBody497_1 loopBody497_23

def loopBody497_25 : HolLoopProg 64 :=
.mark loopBody497_24

def loopBody497_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody497_27 : HolLoopProg 64 :=
.mark loopBody497_26

def loopBody497_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody497_29 : HolLoopProg 64 :=
.mark loopBody497_28

def loopBody497_30 : HolLoopProg 64 :=
.seq loopBody497_29 loopBody497_1

def loopBody497_31 : HolLoopProg 64 :=
.mark loopBody497_30

def loopBody497_32 : HolLoopProg 64 :=
.seq loopBody497_27 loopBody497_31

def loopBody497_33 : HolLoopProg 64 :=
.mark loopBody497_32

def loopBody497_34 : HolLoopProg 64 :=
.seq loopBody497_25 loopBody497_33

def loopBody497_35 : HolLoopProg 64 :=
.mark loopBody497_34

def loopBody497_36 : HolLoopProg 64 :=
.seq loopBody497_3 loopBody497_35

def loopBody497_37 : HolLoopProg 64 :=
.mark loopBody497_36

def loopBody497_38 : HolLoopProg 64 :=
.seq loopBody497_1 loopBody497_37

def loopBody497_39 : HolLoopProg 64 :=
.mark loopBody497_38

def output497 : Nat × List Nat × HolLoopProg 64 :=
  (561, [], loopBody497_39)
end InitECandidate.Proofs.FrontendStages.Loop
