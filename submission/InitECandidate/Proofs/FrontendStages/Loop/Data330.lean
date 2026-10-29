import InitECandidate.Proofs.FrontendStages.Loop.Translate314
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody330_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody330_1 : HolLoopProg 64 :=
.mark loopBody330_0

def loopBody330_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody330_3 : HolLoopProg 64 :=
.mark loopBody330_2

def loopBody330_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody330_5 : HolLoopProg 64 :=
.mark loopBody330_4

def loopBody330_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody330_7 : HolLoopProg 64 :=
.mark loopBody330_6

def loopBody330_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody330_9 : HolLoopProg 64 :=
.mark loopBody330_8

def loopBody330_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody330_11 : HolLoopProg 64 :=
.mark loopBody330_10

def loopBody330_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 136#64]))

def loopBody330_13 : HolLoopProg 64 :=
.mark loopBody330_12

def loopBody330_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody330_15 : HolLoopProg 64 :=
.mark loopBody330_14

def loopBody330_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 393) ([2, 3, 4, 5, 6, 7]) (some (2, loopBody330_15, loopBody330_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody330_17 : HolLoopProg 64 :=
.mark loopBody330_16

def loopBody330_18 : HolLoopProg 64 :=
.seq loopBody330_17 loopBody330_1

def loopBody330_19 : HolLoopProg 64 :=
.mark loopBody330_18

def loopBody330_20 : HolLoopProg 64 :=
.seq loopBody330_13 loopBody330_19

def loopBody330_21 : HolLoopProg 64 :=
.mark loopBody330_20

def loopBody330_22 : HolLoopProg 64 :=
.seq loopBody330_11 loopBody330_21

def loopBody330_23 : HolLoopProg 64 :=
.mark loopBody330_22

def loopBody330_24 : HolLoopProg 64 :=
.seq loopBody330_9 loopBody330_23

def loopBody330_25 : HolLoopProg 64 :=
.mark loopBody330_24

def loopBody330_26 : HolLoopProg 64 :=
.seq loopBody330_7 loopBody330_25

def loopBody330_27 : HolLoopProg 64 :=
.mark loopBody330_26

def loopBody330_28 : HolLoopProg 64 :=
.seq loopBody330_5 loopBody330_27

def loopBody330_29 : HolLoopProg 64 :=
.mark loopBody330_28

def loopBody330_30 : HolLoopProg 64 :=
.seq loopBody330_3 loopBody330_29

def loopBody330_31 : HolLoopProg 64 :=
.mark loopBody330_30

def loopBody330_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody330_33 : HolLoopProg 64 :=
.mark loopBody330_32

def loopBody330_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody330_35 : HolLoopProg 64 :=
.mark loopBody330_34

def loopBody330_36 : HolLoopProg 64 :=
.seq loopBody330_35 loopBody330_1

def loopBody330_37 : HolLoopProg 64 :=
.mark loopBody330_36

def loopBody330_38 : HolLoopProg 64 :=
.seq loopBody330_33 loopBody330_37

def loopBody330_39 : HolLoopProg 64 :=
.mark loopBody330_38

def loopBody330_40 : HolLoopProg 64 :=
.seq loopBody330_31 loopBody330_39

def loopBody330_41 : HolLoopProg 64 :=
.mark loopBody330_40

def loopBody330_42 : HolLoopProg 64 :=
.seq loopBody330_1 loopBody330_41

def loopBody330_43 : HolLoopProg 64 :=
.mark loopBody330_42

def loopBody330_44 : HolLoopProg 64 :=
.seq loopBody330_1 loopBody330_43

def loopBody330_45 : HolLoopProg 64 :=
.mark loopBody330_44

def output330 : Nat × List Nat × HolLoopProg 64 :=
  (394, [], loopBody330_45)
end InitECandidate.Proofs.FrontendStages.Loop
