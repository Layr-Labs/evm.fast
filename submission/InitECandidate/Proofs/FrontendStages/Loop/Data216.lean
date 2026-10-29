import InitECandidate.Proofs.FrontendStages.Loop.Translate200
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody216_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody216_1 : HolLoopProg 64 :=
.mark loopBody216_0

def loopBody216_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody216_3 : HolLoopProg 64 :=
.mark loopBody216_2

def loopBody216_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody216_5 : HolLoopProg 64 :=
.mark loopBody216_4

def loopBody216_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 11684671#64)

def loopBody216_7 : HolLoopProg 64 :=
.mark loopBody216_6

def loopBody216_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody216_9 : HolLoopProg 64 :=
.mark loopBody216_8

def loopBody216_10 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 279) ([5, 6, 7]) (some (5, loopBody216_9, loopBody216_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody216_11 : HolLoopProg 64 :=
.mark loopBody216_10

def loopBody216_12 : HolLoopProg 64 :=
.seq loopBody216_11 loopBody216_1

def loopBody216_13 : HolLoopProg 64 :=
.mark loopBody216_12

def loopBody216_14 : HolLoopProg 64 :=
.seq loopBody216_7 loopBody216_13

def loopBody216_15 : HolLoopProg 64 :=
.mark loopBody216_14

def loopBody216_16 : HolLoopProg 64 :=
.seq loopBody216_5 loopBody216_15

def loopBody216_17 : HolLoopProg 64 :=
.mark loopBody216_16

def loopBody216_18 : HolLoopProg 64 :=
.seq loopBody216_3 loopBody216_17

def loopBody216_19 : HolLoopProg 64 :=
.mark loopBody216_18

def loopBody216_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody216_21 : HolLoopProg 64 :=
.mark loopBody216_20

def loopBody216_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody216_23 : HolLoopProg 64 :=
.mark loopBody216_22

def loopBody216_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody216_25 : HolLoopProg 64 :=
.mark loopBody216_24

def loopBody216_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody216_27 : HolLoopProg 64 :=
.mark loopBody216_26

def loopBody216_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6, 7, 8]

def loopBody216_29 : HolLoopProg 64 :=
.mark loopBody216_28

def loopBody216_30 : HolLoopProg 64 :=
.seq loopBody216_29 loopBody216_1

def loopBody216_31 : HolLoopProg 64 :=
.mark loopBody216_30

def loopBody216_32 : HolLoopProg 64 :=
.seq loopBody216_27 loopBody216_31

def loopBody216_33 : HolLoopProg 64 :=
.mark loopBody216_32

def loopBody216_34 : HolLoopProg 64 :=
.seq loopBody216_25 loopBody216_33

def loopBody216_35 : HolLoopProg 64 :=
.mark loopBody216_34

def loopBody216_36 : HolLoopProg 64 :=
.seq loopBody216_23 loopBody216_35

def loopBody216_37 : HolLoopProg 64 :=
.mark loopBody216_36

def loopBody216_38 : HolLoopProg 64 :=
.seq loopBody216_21 loopBody216_37

def loopBody216_39 : HolLoopProg 64 :=
.mark loopBody216_38

def loopBody216_40 : HolLoopProg 64 :=
.seq loopBody216_19 loopBody216_39

def loopBody216_41 : HolLoopProg 64 :=
.mark loopBody216_40

def loopBody216_42 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_41

def loopBody216_43 : HolLoopProg 64 :=
.mark loopBody216_42

def loopBody216_44 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_43

def loopBody216_45 : HolLoopProg 64 :=
.mark loopBody216_44

def loopBody216_46 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_45

def loopBody216_47 : HolLoopProg 64 :=
.mark loopBody216_46

def loopBody216_48 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_47

def loopBody216_49 : HolLoopProg 64 :=
.mark loopBody216_48

def loopBody216_50 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_49

def loopBody216_51 : HolLoopProg 64 :=
.mark loopBody216_50

def loopBody216_52 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_51

def loopBody216_53 : HolLoopProg 64 :=
.mark loopBody216_52

def loopBody216_54 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_53

def loopBody216_55 : HolLoopProg 64 :=
.mark loopBody216_54

def loopBody216_56 : HolLoopProg 64 :=
.seq loopBody216_1 loopBody216_55

def loopBody216_57 : HolLoopProg 64 :=
.mark loopBody216_56

def output216 : Nat × List Nat × HolLoopProg 64 :=
  (280, [0], loopBody216_57)
end InitECandidate.Proofs.FrontendStages.Loop
