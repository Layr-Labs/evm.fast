import InitECandidate.Proofs.FrontendStages.Loop.Translate345
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody361_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody361_1 : HolLoopProg 64 :=
.mark loopBody361_0

def loopBody361_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 184#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody361_3 : HolLoopProg 64 :=
.mark loopBody361_2

def loopBody361_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody361_5 : HolLoopProg 64 :=
.mark loopBody361_4

def loopBody361_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody361_7 : HolLoopProg 64 :=
.mark loopBody361_6

def loopBody361_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody361_9 : HolLoopProg 64 :=
.mark loopBody361_8

def loopBody361_10 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 192) ([2, 3, 4]) (some (2, loopBody361_9, loopBody361_1, (Flapjack.Spt.ln)))

def loopBody361_11 : HolLoopProg 64 :=
.mark loopBody361_10

def loopBody361_12 : HolLoopProg 64 :=
.seq loopBody361_11 loopBody361_1

def loopBody361_13 : HolLoopProg 64 :=
.mark loopBody361_12

def loopBody361_14 : HolLoopProg 64 :=
.seq loopBody361_7 loopBody361_13

def loopBody361_15 : HolLoopProg 64 :=
.mark loopBody361_14

def loopBody361_16 : HolLoopProg 64 :=
.seq loopBody361_5 loopBody361_15

def loopBody361_17 : HolLoopProg 64 :=
.mark loopBody361_16

def loopBody361_18 : HolLoopProg 64 :=
.seq loopBody361_3 loopBody361_17

def loopBody361_19 : HolLoopProg 64 :=
.mark loopBody361_18

def loopBody361_20 : HolLoopProg 64 :=
.seq loopBody361_1 loopBody361_19

def loopBody361_21 : HolLoopProg 64 :=
.mark loopBody361_20

def loopBody361_22 : HolLoopProg 64 :=
.seq loopBody361_1 loopBody361_21

def loopBody361_23 : HolLoopProg 64 :=
.mark loopBody361_22

def loopBody361_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody361_25 : HolLoopProg 64 :=
.mark loopBody361_24

def loopBody361_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody361_27 : HolLoopProg 64 :=
.mark loopBody361_26

def loopBody361_28 : HolLoopProg 64 :=
.seq loopBody361_27 loopBody361_1

def loopBody361_29 : HolLoopProg 64 :=
.mark loopBody361_28

def loopBody361_30 : HolLoopProg 64 :=
.seq loopBody361_25 loopBody361_29

def loopBody361_31 : HolLoopProg 64 :=
.mark loopBody361_30

def loopBody361_32 : HolLoopProg 64 :=
.seq loopBody361_23 loopBody361_31

def loopBody361_33 : HolLoopProg 64 :=
.mark loopBody361_32

def output361 : Nat × List Nat × HolLoopProg 64 :=
  (425, [0], loopBody361_33)
end InitECandidate.Proofs.FrontendStages.Loop
