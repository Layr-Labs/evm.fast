import InitECandidate.Proofs.FrontendStages.Loop.Translate680
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody696_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody696_1 : HolLoopProg 64 :=
.mark loopBody696_0

def loopBody696_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody696_3 : HolLoopProg 64 :=
.mark loopBody696_2

def loopBody696_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody696_5 : HolLoopProg 64 :=
.mark loopBody696_4

def loopBody696_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody696_7 : HolLoopProg 64 :=
.mark loopBody696_6

def loopBody696_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 746) ([3, 4]) (some (3, loopBody696_7, loopBody696_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody696_9 : HolLoopProg 64 :=
.mark loopBody696_8

def loopBody696_10 : HolLoopProg 64 :=
.seq loopBody696_9 loopBody696_1

def loopBody696_11 : HolLoopProg 64 :=
.mark loopBody696_10

def loopBody696_12 : HolLoopProg 64 :=
.seq loopBody696_5 loopBody696_11

def loopBody696_13 : HolLoopProg 64 :=
.mark loopBody696_12

def loopBody696_14 : HolLoopProg 64 :=
.seq loopBody696_3 loopBody696_13

def loopBody696_15 : HolLoopProg 64 :=
.mark loopBody696_14

def loopBody696_16 : HolLoopProg 64 :=
.seq loopBody696_1 loopBody696_15

def loopBody696_17 : HolLoopProg 64 :=
.mark loopBody696_16

def loopBody696_18 : HolLoopProg 64 :=
.seq loopBody696_1 loopBody696_17

def loopBody696_19 : HolLoopProg 64 :=
.mark loopBody696_18

def loopBody696_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 288#64])

def loopBody696_21 : HolLoopProg 64 :=
.mark loopBody696_20

def loopBody696_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 288#64])

def loopBody696_23 : HolLoopProg 64 :=
.mark loopBody696_22

def loopBody696_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 751) ([3, 4]) (some (3, loopBody696_7, loopBody696_1, (Flapjack.Spt.ln)))

def loopBody696_25 : HolLoopProg 64 :=
.mark loopBody696_24

def loopBody696_26 : HolLoopProg 64 :=
.seq loopBody696_25 loopBody696_1

def loopBody696_27 : HolLoopProg 64 :=
.mark loopBody696_26

def loopBody696_28 : HolLoopProg 64 :=
.seq loopBody696_23 loopBody696_27

def loopBody696_29 : HolLoopProg 64 :=
.mark loopBody696_28

def loopBody696_30 : HolLoopProg 64 :=
.seq loopBody696_21 loopBody696_29

def loopBody696_31 : HolLoopProg 64 :=
.mark loopBody696_30

def loopBody696_32 : HolLoopProg 64 :=
.seq loopBody696_1 loopBody696_31

def loopBody696_33 : HolLoopProg 64 :=
.mark loopBody696_32

def loopBody696_34 : HolLoopProg 64 :=
.seq loopBody696_1 loopBody696_33

def loopBody696_35 : HolLoopProg 64 :=
.mark loopBody696_34

def loopBody696_36 : HolLoopProg 64 :=
.seq loopBody696_19 loopBody696_35

def loopBody696_37 : HolLoopProg 64 :=
.mark loopBody696_36

def loopBody696_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody696_39 : HolLoopProg 64 :=
.mark loopBody696_38

def loopBody696_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody696_41 : HolLoopProg 64 :=
.mark loopBody696_40

def loopBody696_42 : HolLoopProg 64 :=
.seq loopBody696_41 loopBody696_1

def loopBody696_43 : HolLoopProg 64 :=
.mark loopBody696_42

def loopBody696_44 : HolLoopProg 64 :=
.seq loopBody696_39 loopBody696_43

def loopBody696_45 : HolLoopProg 64 :=
.mark loopBody696_44

def loopBody696_46 : HolLoopProg 64 :=
.seq loopBody696_37 loopBody696_45

def loopBody696_47 : HolLoopProg 64 :=
.mark loopBody696_46

def output696 : Nat × List Nat × HolLoopProg 64 :=
  (760, [0, 1], loopBody696_47)
end InitECandidate.Proofs.FrontendStages.Loop
