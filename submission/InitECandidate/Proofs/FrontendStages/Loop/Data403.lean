import InitECandidate.Proofs.FrontendStages.Loop.Translate387
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody403_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody403_1 : HolLoopProg 64 :=
.mark loopBody403_0

def loopBody403_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody403_3 : HolLoopProg 64 :=
.mark loopBody403_2

def loopBody403_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 20#64)

def loopBody403_5 : HolLoopProg 64 :=
.mark loopBody403_4

def loopBody403_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody403_7 : HolLoopProg 64 :=
.mark loopBody403_6

def loopBody403_8 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 146) ([5, 6]) (some (5, loopBody403_7, loopBody403_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody403_9 : HolLoopProg 64 :=
.mark loopBody403_8

def loopBody403_10 : HolLoopProg 64 :=
.seq loopBody403_9 loopBody403_1

def loopBody403_11 : HolLoopProg 64 :=
.mark loopBody403_10

def loopBody403_12 : HolLoopProg 64 :=
.seq loopBody403_5 loopBody403_11

def loopBody403_13 : HolLoopProg 64 :=
.mark loopBody403_12

def loopBody403_14 : HolLoopProg 64 :=
.seq loopBody403_3 loopBody403_13

def loopBody403_15 : HolLoopProg 64 :=
.mark loopBody403_14

def loopBody403_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody403_17 : HolLoopProg 64 :=
.mark loopBody403_16

def loopBody403_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody403_19 : HolLoopProg 64 :=
.mark loopBody403_18

def loopBody403_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody403_21 : HolLoopProg 64 :=
.mark loopBody403_20

def loopBody403_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody403_23 : HolLoopProg 64 :=
.mark loopBody403_22

def loopBody403_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody403_25 : HolLoopProg 64 :=
.mark loopBody403_24

def loopBody403_26 : HolLoopProg 64 :=
.seq loopBody403_25 loopBody403_1

def loopBody403_27 : HolLoopProg 64 :=
.mark loopBody403_26

def loopBody403_28 : HolLoopProg 64 :=
.seq loopBody403_23 loopBody403_27

def loopBody403_29 : HolLoopProg 64 :=
.mark loopBody403_28

def loopBody403_30 : HolLoopProg 64 :=
.seq loopBody403_21 loopBody403_29

def loopBody403_31 : HolLoopProg 64 :=
.mark loopBody403_30

def loopBody403_32 : HolLoopProg 64 :=
.seq loopBody403_19 loopBody403_31

def loopBody403_33 : HolLoopProg 64 :=
.mark loopBody403_32

def loopBody403_34 : HolLoopProg 64 :=
.seq loopBody403_17 loopBody403_33

def loopBody403_35 : HolLoopProg 64 :=
.mark loopBody403_34

def loopBody403_36 : HolLoopProg 64 :=
.seq loopBody403_15 loopBody403_35

def loopBody403_37 : HolLoopProg 64 :=
.mark loopBody403_36

def loopBody403_38 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_37

def loopBody403_39 : HolLoopProg 64 :=
.mark loopBody403_38

def loopBody403_40 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_39

def loopBody403_41 : HolLoopProg 64 :=
.mark loopBody403_40

def loopBody403_42 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_41

def loopBody403_43 : HolLoopProg 64 :=
.mark loopBody403_42

def loopBody403_44 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_43

def loopBody403_45 : HolLoopProg 64 :=
.mark loopBody403_44

def loopBody403_46 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_45

def loopBody403_47 : HolLoopProg 64 :=
.mark loopBody403_46

def loopBody403_48 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_47

def loopBody403_49 : HolLoopProg 64 :=
.mark loopBody403_48

def loopBody403_50 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_49

def loopBody403_51 : HolLoopProg 64 :=
.mark loopBody403_50

def loopBody403_52 : HolLoopProg 64 :=
.seq loopBody403_1 loopBody403_51

def loopBody403_53 : HolLoopProg 64 :=
.mark loopBody403_52

def output403 : Nat × List Nat × HolLoopProg 64 :=
  (467, [0], loopBody403_53)
end InitECandidate.Proofs.FrontendStages.Loop
