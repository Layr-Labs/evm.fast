import InitECandidate.Proofs.FrontendStages.Loop.Translate158
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody174_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody174_1 : HolLoopProg 64 :=
.mark loopBody174_0

def loopBody174_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody174_3 : HolLoopProg 64 :=
.mark loopBody174_2

def loopBody174_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody174_5 : HolLoopProg 64 :=
.mark loopBody174_4

def loopBody174_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody174_7 : HolLoopProg 64 :=
.mark loopBody174_6

def loopBody174_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody174_9 : HolLoopProg 64 :=
.mark loopBody174_8

def loopBody174_10 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 237) ([5, 6, 7]) (some (5, loopBody174_9, loopBody174_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody174_11 : HolLoopProg 64 :=
.mark loopBody174_10

def loopBody174_12 : HolLoopProg 64 :=
.seq loopBody174_11 loopBody174_1

def loopBody174_13 : HolLoopProg 64 :=
.mark loopBody174_12

def loopBody174_14 : HolLoopProg 64 :=
.seq loopBody174_7 loopBody174_13

def loopBody174_15 : HolLoopProg 64 :=
.mark loopBody174_14

def loopBody174_16 : HolLoopProg 64 :=
.seq loopBody174_5 loopBody174_15

def loopBody174_17 : HolLoopProg 64 :=
.mark loopBody174_16

def loopBody174_18 : HolLoopProg 64 :=
.seq loopBody174_3 loopBody174_17

def loopBody174_19 : HolLoopProg 64 :=
.mark loopBody174_18

def loopBody174_20 : HolLoopProg 64 :=
.seq loopBody174_1 loopBody174_19

def loopBody174_21 : HolLoopProg 64 :=
.mark loopBody174_20

def loopBody174_22 : HolLoopProg 64 :=
.seq loopBody174_1 loopBody174_21

def loopBody174_23 : HolLoopProg 64 :=
.mark loopBody174_22

def loopBody174_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody174_25 : HolLoopProg 64 :=
.mark loopBody174_24

def loopBody174_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody174_27 : HolLoopProg 64 :=
.mark loopBody174_26

def loopBody174_28 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 236) ([5, 6, 7]) (some (5, loopBody174_9, loopBody174_1, (Flapjack.Spt.ln)))

def loopBody174_29 : HolLoopProg 64 :=
.mark loopBody174_28

def loopBody174_30 : HolLoopProg 64 :=
.seq loopBody174_29 loopBody174_1

def loopBody174_31 : HolLoopProg 64 :=
.mark loopBody174_30

def loopBody174_32 : HolLoopProg 64 :=
.seq loopBody174_7 loopBody174_31

def loopBody174_33 : HolLoopProg 64 :=
.mark loopBody174_32

def loopBody174_34 : HolLoopProg 64 :=
.seq loopBody174_27 loopBody174_33

def loopBody174_35 : HolLoopProg 64 :=
.mark loopBody174_34

def loopBody174_36 : HolLoopProg 64 :=
.seq loopBody174_25 loopBody174_35

def loopBody174_37 : HolLoopProg 64 :=
.mark loopBody174_36

def loopBody174_38 : HolLoopProg 64 :=
.seq loopBody174_1 loopBody174_37

def loopBody174_39 : HolLoopProg 64 :=
.mark loopBody174_38

def loopBody174_40 : HolLoopProg 64 :=
.seq loopBody174_1 loopBody174_39

def loopBody174_41 : HolLoopProg 64 :=
.mark loopBody174_40

def loopBody174_42 : HolLoopProg 64 :=
.seq loopBody174_23 loopBody174_41

def loopBody174_43 : HolLoopProg 64 :=
.mark loopBody174_42

def loopBody174_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody174_45 : HolLoopProg 64 :=
.mark loopBody174_44

def loopBody174_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody174_47 : HolLoopProg 64 :=
.mark loopBody174_46

def loopBody174_48 : HolLoopProg 64 :=
.seq loopBody174_47 loopBody174_1

def loopBody174_49 : HolLoopProg 64 :=
.mark loopBody174_48

def loopBody174_50 : HolLoopProg 64 :=
.seq loopBody174_45 loopBody174_49

def loopBody174_51 : HolLoopProg 64 :=
.mark loopBody174_50

def loopBody174_52 : HolLoopProg 64 :=
.seq loopBody174_43 loopBody174_51

def loopBody174_53 : HolLoopProg 64 :=
.mark loopBody174_52

def output174 : Nat × List Nat × HolLoopProg 64 :=
  (238, [0, 1, 2, 3], loopBody174_53)
end InitECandidate.Proofs.FrontendStages.Loop
