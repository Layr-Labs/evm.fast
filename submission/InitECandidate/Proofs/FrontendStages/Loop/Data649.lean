import InitECandidate.Proofs.FrontendStages.Loop.Translate633
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody649_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody649_1 : HolLoopProg 64 :=
.mark loopBody649_0

def loopBody649_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody649_3 : HolLoopProg 64 :=
.mark loopBody649_2

def loopBody649_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody649_5 : HolLoopProg 64 :=
.mark loopBody649_4

def loopBody649_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody649_7 : HolLoopProg 64 :=
.mark loopBody649_6

def loopBody649_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody649_9 : HolLoopProg 64 :=
.mark loopBody649_8

def loopBody649_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody649_11 : HolLoopProg 64 :=
.mark loopBody649_10

def loopBody649_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody649_13 : HolLoopProg 64 :=
.mark loopBody649_12

def loopBody649_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody649_15 : HolLoopProg 64 :=
.mark loopBody649_14

def loopBody649_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody649_17 : HolLoopProg 64 :=
.mark loopBody649_16

def loopBody649_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody649_19 : HolLoopProg 64 :=
.mark loopBody649_18

def loopBody649_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody649_21 : HolLoopProg 64 :=
.mark loopBody649_20

def loopBody649_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody649_23 : HolLoopProg 64 :=
.mark loopBody649_22

def loopBody649_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 710) [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17] none

def loopBody649_25 : HolLoopProg 64 :=
.mark loopBody649_24

def loopBody649_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody649_27 : HolLoopProg 64 :=
.mark loopBody649_26

def loopBody649_28 : HolLoopProg 64 :=
.seq loopBody649_25 loopBody649_27

def loopBody649_29 : HolLoopProg 64 :=
.mark loopBody649_28

def loopBody649_30 : HolLoopProg 64 :=
.seq loopBody649_23 loopBody649_29

def loopBody649_31 : HolLoopProg 64 :=
.mark loopBody649_30

def loopBody649_32 : HolLoopProg 64 :=
.seq loopBody649_21 loopBody649_31

def loopBody649_33 : HolLoopProg 64 :=
.mark loopBody649_32

def loopBody649_34 : HolLoopProg 64 :=
.seq loopBody649_19 loopBody649_33

def loopBody649_35 : HolLoopProg 64 :=
.mark loopBody649_34

def loopBody649_36 : HolLoopProg 64 :=
.seq loopBody649_17 loopBody649_35

def loopBody649_37 : HolLoopProg 64 :=
.mark loopBody649_36

def loopBody649_38 : HolLoopProg 64 :=
.seq loopBody649_15 loopBody649_37

def loopBody649_39 : HolLoopProg 64 :=
.mark loopBody649_38

def loopBody649_40 : HolLoopProg 64 :=
.seq loopBody649_13 loopBody649_39

def loopBody649_41 : HolLoopProg 64 :=
.mark loopBody649_40

def loopBody649_42 : HolLoopProg 64 :=
.seq loopBody649_11 loopBody649_41

def loopBody649_43 : HolLoopProg 64 :=
.mark loopBody649_42

def loopBody649_44 : HolLoopProg 64 :=
.seq loopBody649_9 loopBody649_43

def loopBody649_45 : HolLoopProg 64 :=
.mark loopBody649_44

def loopBody649_46 : HolLoopProg 64 :=
.seq loopBody649_7 loopBody649_45

def loopBody649_47 : HolLoopProg 64 :=
.mark loopBody649_46

def loopBody649_48 : HolLoopProg 64 :=
.seq loopBody649_5 loopBody649_47

def loopBody649_49 : HolLoopProg 64 :=
.mark loopBody649_48

def loopBody649_50 : HolLoopProg 64 :=
.seq loopBody649_3 loopBody649_49

def loopBody649_51 : HolLoopProg 64 :=
.mark loopBody649_50

def loopBody649_52 : HolLoopProg 64 :=
.seq loopBody649_1 loopBody649_51

def loopBody649_53 : HolLoopProg 64 :=
.mark loopBody649_52

def output649 : Nat × List Nat × HolLoopProg 64 :=
  (713, [0, 1, 2, 3, 4, 5], loopBody649_53)
end InitECandidate.Proofs.FrontendStages.Loop
