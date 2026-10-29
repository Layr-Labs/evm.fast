import InitECandidate.Proofs.FrontendStages.Loop.Translate7
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody23_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody23_1 : HolLoopProg 64 :=
.mark loopBody23_0

def loopBody23_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody23_3 : HolLoopProg 64 :=
.mark loopBody23_2

def loopBody23_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody23_5 : HolLoopProg 64 :=
.mark loopBody23_4

def loopBody23_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody23_7 : HolLoopProg 64 :=
.mark loopBody23_6

def loopBody23_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 86) ([3, 4]) (some (3, loopBody23_7, loopBody23_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody23_9 : HolLoopProg 64 :=
.mark loopBody23_8

def loopBody23_10 : HolLoopProg 64 :=
.seq loopBody23_9 loopBody23_1

def loopBody23_11 : HolLoopProg 64 :=
.mark loopBody23_10

def loopBody23_12 : HolLoopProg 64 :=
.seq loopBody23_5 loopBody23_11

def loopBody23_13 : HolLoopProg 64 :=
.mark loopBody23_12

def loopBody23_14 : HolLoopProg 64 :=
.seq loopBody23_3 loopBody23_13

def loopBody23_15 : HolLoopProg 64 :=
.mark loopBody23_14

def loopBody23_16 : HolLoopProg 64 :=
.seq loopBody23_1 loopBody23_15

def loopBody23_17 : HolLoopProg 64 :=
.mark loopBody23_16

def loopBody23_18 : HolLoopProg 64 :=
.seq loopBody23_1 loopBody23_17

def loopBody23_19 : HolLoopProg 64 :=
.mark loopBody23_18

def loopBody23_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 4#64])

def loopBody23_21 : HolLoopProg 64 :=
.mark loopBody23_20

def loopBody23_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 1) (Flapjack.HolLoopExp.const 32#64))

def loopBody23_23 : HolLoopProg 64 :=
.mark loopBody23_22

def loopBody23_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 86) ([3, 4]) (some (3, loopBody23_7, loopBody23_1, (Flapjack.Spt.ln)))

def loopBody23_25 : HolLoopProg 64 :=
.mark loopBody23_24

def loopBody23_26 : HolLoopProg 64 :=
.seq loopBody23_25 loopBody23_1

def loopBody23_27 : HolLoopProg 64 :=
.mark loopBody23_26

def loopBody23_28 : HolLoopProg 64 :=
.seq loopBody23_23 loopBody23_27

def loopBody23_29 : HolLoopProg 64 :=
.mark loopBody23_28

def loopBody23_30 : HolLoopProg 64 :=
.seq loopBody23_21 loopBody23_29

def loopBody23_31 : HolLoopProg 64 :=
.mark loopBody23_30

def loopBody23_32 : HolLoopProg 64 :=
.seq loopBody23_1 loopBody23_31

def loopBody23_33 : HolLoopProg 64 :=
.mark loopBody23_32

def loopBody23_34 : HolLoopProg 64 :=
.seq loopBody23_1 loopBody23_33

def loopBody23_35 : HolLoopProg 64 :=
.mark loopBody23_34

def loopBody23_36 : HolLoopProg 64 :=
.seq loopBody23_19 loopBody23_35

def loopBody23_37 : HolLoopProg 64 :=
.mark loopBody23_36

def loopBody23_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody23_39 : HolLoopProg 64 :=
.mark loopBody23_38

def loopBody23_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody23_41 : HolLoopProg 64 :=
.mark loopBody23_40

def loopBody23_42 : HolLoopProg 64 :=
.seq loopBody23_41 loopBody23_1

def loopBody23_43 : HolLoopProg 64 :=
.mark loopBody23_42

def loopBody23_44 : HolLoopProg 64 :=
.seq loopBody23_39 loopBody23_43

def loopBody23_45 : HolLoopProg 64 :=
.mark loopBody23_44

def loopBody23_46 : HolLoopProg 64 :=
.seq loopBody23_37 loopBody23_45

def loopBody23_47 : HolLoopProg 64 :=
.mark loopBody23_46

def output23 : Nat × List Nat × HolLoopProg 64 :=
  (87, [0, 1], loopBody23_47)
end InitECandidate.Proofs.FrontendStages.Loop
