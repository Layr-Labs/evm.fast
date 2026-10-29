import InitECandidate.Proofs.FrontendStages.Loop.Translate178
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody194_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody194_1 : HolLoopProg 64 :=
.mark loopBody194_0

def loopBody194_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody194_3 : HolLoopProg 64 :=
.mark loopBody194_2

def loopBody194_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody194_5 : HolLoopProg 64 :=
.mark loopBody194_4

def loopBody194_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody194_7 : HolLoopProg 64 :=
.mark loopBody194_6

def loopBody194_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody194_9 : HolLoopProg 64 :=
.mark loopBody194_8

def loopBody194_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody194_11 : HolLoopProg 64 :=
.mark loopBody194_10

def loopBody194_12 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 235) ([5, 6, 7, 8]) (some (5, loopBody194_11, loopBody194_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody194_13 : HolLoopProg 64 :=
.mark loopBody194_12

def loopBody194_14 : HolLoopProg 64 :=
.seq loopBody194_13 loopBody194_1

def loopBody194_15 : HolLoopProg 64 :=
.mark loopBody194_14

def loopBody194_16 : HolLoopProg 64 :=
.seq loopBody194_9 loopBody194_15

def loopBody194_17 : HolLoopProg 64 :=
.mark loopBody194_16

def loopBody194_18 : HolLoopProg 64 :=
.seq loopBody194_7 loopBody194_17

def loopBody194_19 : HolLoopProg 64 :=
.mark loopBody194_18

def loopBody194_20 : HolLoopProg 64 :=
.seq loopBody194_5 loopBody194_19

def loopBody194_21 : HolLoopProg 64 :=
.mark loopBody194_20

def loopBody194_22 : HolLoopProg 64 :=
.seq loopBody194_3 loopBody194_21

def loopBody194_23 : HolLoopProg 64 :=
.mark loopBody194_22

def loopBody194_24 : HolLoopProg 64 :=
.seq loopBody194_1 loopBody194_23

def loopBody194_25 : HolLoopProg 64 :=
.mark loopBody194_24

def loopBody194_26 : HolLoopProg 64 :=
.seq loopBody194_1 loopBody194_25

def loopBody194_27 : HolLoopProg 64 :=
.mark loopBody194_26

def loopBody194_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody194_29 : HolLoopProg 64 :=
.mark loopBody194_28

def loopBody194_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody194_31 : HolLoopProg 64 :=
.mark loopBody194_30

def loopBody194_32 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 236) ([5, 6, 7]) (some (5, loopBody194_11, loopBody194_1, (Flapjack.Spt.ln)))

def loopBody194_33 : HolLoopProg 64 :=
.mark loopBody194_32

def loopBody194_34 : HolLoopProg 64 :=
.seq loopBody194_33 loopBody194_1

def loopBody194_35 : HolLoopProg 64 :=
.mark loopBody194_34

def loopBody194_36 : HolLoopProg 64 :=
.seq loopBody194_31 loopBody194_35

def loopBody194_37 : HolLoopProg 64 :=
.mark loopBody194_36

def loopBody194_38 : HolLoopProg 64 :=
.seq loopBody194_5 loopBody194_37

def loopBody194_39 : HolLoopProg 64 :=
.mark loopBody194_38

def loopBody194_40 : HolLoopProg 64 :=
.seq loopBody194_29 loopBody194_39

def loopBody194_41 : HolLoopProg 64 :=
.mark loopBody194_40

def loopBody194_42 : HolLoopProg 64 :=
.seq loopBody194_1 loopBody194_41

def loopBody194_43 : HolLoopProg 64 :=
.mark loopBody194_42

def loopBody194_44 : HolLoopProg 64 :=
.seq loopBody194_1 loopBody194_43

def loopBody194_45 : HolLoopProg 64 :=
.mark loopBody194_44

def loopBody194_46 : HolLoopProg 64 :=
.seq loopBody194_27 loopBody194_45

def loopBody194_47 : HolLoopProg 64 :=
.mark loopBody194_46

def loopBody194_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody194_49 : HolLoopProg 64 :=
.mark loopBody194_48

def loopBody194_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody194_51 : HolLoopProg 64 :=
.mark loopBody194_50

def loopBody194_52 : HolLoopProg 64 :=
.seq loopBody194_51 loopBody194_1

def loopBody194_53 : HolLoopProg 64 :=
.mark loopBody194_52

def loopBody194_54 : HolLoopProg 64 :=
.seq loopBody194_49 loopBody194_53

def loopBody194_55 : HolLoopProg 64 :=
.mark loopBody194_54

def loopBody194_56 : HolLoopProg 64 :=
.seq loopBody194_47 loopBody194_55

def loopBody194_57 : HolLoopProg 64 :=
.mark loopBody194_56

def output194 : Nat × List Nat × HolLoopProg 64 :=
  (258, [0, 1, 2, 3], loopBody194_57)
end InitECandidate.Proofs.FrontendStages.Loop
