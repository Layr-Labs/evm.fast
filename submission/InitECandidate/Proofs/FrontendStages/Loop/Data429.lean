import InitECandidate.Proofs.FrontendStages.Loop.Translate413
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody429_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody429_1 : HolLoopProg 64 :=
.mark loopBody429_0

def loopBody429_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 168#64]))

def loopBody429_3 : HolLoopProg 64 :=
.mark loopBody429_2

def loopBody429_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody429_5 : HolLoopProg 64 :=
.mark loopBody429_4

def loopBody429_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody429_7 : HolLoopProg 64 :=
.mark loopBody429_6

def loopBody429_8 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 187) ([2, 3]) (some (2, loopBody429_7, loopBody429_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody429_9 : HolLoopProg 64 :=
.mark loopBody429_8

def loopBody429_10 : HolLoopProg 64 :=
.seq loopBody429_9 loopBody429_1

def loopBody429_11 : HolLoopProg 64 :=
.mark loopBody429_10

def loopBody429_12 : HolLoopProg 64 :=
.seq loopBody429_5 loopBody429_11

def loopBody429_13 : HolLoopProg 64 :=
.mark loopBody429_12

def loopBody429_14 : HolLoopProg 64 :=
.seq loopBody429_3 loopBody429_13

def loopBody429_15 : HolLoopProg 64 :=
.mark loopBody429_14

def loopBody429_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody429_17 : HolLoopProg 64 :=
.mark loopBody429_16

def loopBody429_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody429_19 : HolLoopProg 64 :=
.mark loopBody429_18

def loopBody429_20 : HolLoopProg 64 :=
.seq loopBody429_19 loopBody429_1

def loopBody429_21 : HolLoopProg 64 :=
.mark loopBody429_20

def loopBody429_22 : HolLoopProg 64 :=
.seq loopBody429_17 loopBody429_21

def loopBody429_23 : HolLoopProg 64 :=
.mark loopBody429_22

def loopBody429_24 : HolLoopProg 64 :=
.seq loopBody429_15 loopBody429_23

def loopBody429_25 : HolLoopProg 64 :=
.mark loopBody429_24

def loopBody429_26 : HolLoopProg 64 :=
.seq loopBody429_1 loopBody429_25

def loopBody429_27 : HolLoopProg 64 :=
.mark loopBody429_26

def loopBody429_28 : HolLoopProg 64 :=
.seq loopBody429_1 loopBody429_27

def loopBody429_29 : HolLoopProg 64 :=
.mark loopBody429_28

def output429 : Nat × List Nat × HolLoopProg 64 :=
  (493, [0], loopBody429_29)
end InitECandidate.Proofs.FrontendStages.Loop
