import InitECandidate.Proofs.FrontendStages.Loop.Translate362
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody378_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody378_1 : HolLoopProg 64 :=
.mark loopBody378_0

def loopBody378_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody378_3 : HolLoopProg 64 :=
.mark loopBody378_2

def loopBody378_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody378_5 : HolLoopProg 64 :=
.mark loopBody378_4

def loopBody378_6 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 439) ([3]) (some (3, loopBody378_5, loopBody378_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody378_7 : HolLoopProg 64 :=
.mark loopBody378_6

def loopBody378_8 : HolLoopProg 64 :=
.seq loopBody378_7 loopBody378_1

def loopBody378_9 : HolLoopProg 64 :=
.mark loopBody378_8

def loopBody378_10 : HolLoopProg 64 :=
.seq loopBody378_3 loopBody378_9

def loopBody378_11 : HolLoopProg 64 :=
.mark loopBody378_10

def loopBody378_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 8#64]))

def loopBody378_13 : HolLoopProg 64 :=
.mark loopBody378_12

def loopBody378_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody378_15 : HolLoopProg 64 :=
.mark loopBody378_14

def loopBody378_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody378_17 : HolLoopProg 64 :=
.mark loopBody378_16

def loopBody378_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody378_19 : HolLoopProg 64 :=
.mark loopBody378_18

def loopBody378_20 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 192) ([4, 5, 6]) (some (4, loopBody378_19, loopBody378_1, (Flapjack.Spt.ln)))

def loopBody378_21 : HolLoopProg 64 :=
.mark loopBody378_20

def loopBody378_22 : HolLoopProg 64 :=
.seq loopBody378_21 loopBody378_1

def loopBody378_23 : HolLoopProg 64 :=
.mark loopBody378_22

def loopBody378_24 : HolLoopProg 64 :=
.seq loopBody378_17 loopBody378_23

def loopBody378_25 : HolLoopProg 64 :=
.mark loopBody378_24

def loopBody378_26 : HolLoopProg 64 :=
.seq loopBody378_15 loopBody378_25

def loopBody378_27 : HolLoopProg 64 :=
.mark loopBody378_26

def loopBody378_28 : HolLoopProg 64 :=
.seq loopBody378_13 loopBody378_27

def loopBody378_29 : HolLoopProg 64 :=
.mark loopBody378_28

def loopBody378_30 : HolLoopProg 64 :=
.seq loopBody378_1 loopBody378_29

def loopBody378_31 : HolLoopProg 64 :=
.mark loopBody378_30

def loopBody378_32 : HolLoopProg 64 :=
.seq loopBody378_1 loopBody378_31

def loopBody378_33 : HolLoopProg 64 :=
.mark loopBody378_32

def loopBody378_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody378_35 : HolLoopProg 64 :=
.mark loopBody378_34

def loopBody378_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody378_37 : HolLoopProg 64 :=
.mark loopBody378_36

def loopBody378_38 : HolLoopProg 64 :=
.seq loopBody378_37 loopBody378_1

def loopBody378_39 : HolLoopProg 64 :=
.mark loopBody378_38

def loopBody378_40 : HolLoopProg 64 :=
.seq loopBody378_35 loopBody378_39

def loopBody378_41 : HolLoopProg 64 :=
.mark loopBody378_40

def loopBody378_42 : HolLoopProg 64 :=
.seq loopBody378_33 loopBody378_41

def loopBody378_43 : HolLoopProg 64 :=
.mark loopBody378_42

def loopBody378_44 : HolLoopProg 64 :=
.seq loopBody378_11 loopBody378_43

def loopBody378_45 : HolLoopProg 64 :=
.mark loopBody378_44

def loopBody378_46 : HolLoopProg 64 :=
.seq loopBody378_1 loopBody378_45

def loopBody378_47 : HolLoopProg 64 :=
.mark loopBody378_46

def loopBody378_48 : HolLoopProg 64 :=
.seq loopBody378_1 loopBody378_47

def loopBody378_49 : HolLoopProg 64 :=
.mark loopBody378_48

def output378 : Nat × List Nat × HolLoopProg 64 :=
  (442, [0, 1], loopBody378_49)
end InitECandidate.Proofs.FrontendStages.Loop
