import InitECandidate.Proofs.FrontendStages.Loop.Translate635
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody651_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody651_1 : HolLoopProg 64 :=
.mark loopBody651_0

def loopBody651_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody651_3 : HolLoopProg 64 :=
.mark loopBody651_2

def loopBody651_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody651_5 : HolLoopProg 64 :=
.mark loopBody651_4

def loopBody651_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody651_7 : HolLoopProg 64 :=
.mark loopBody651_6

def loopBody651_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody651_9 : HolLoopProg 64 :=
.mark loopBody651_8

def loopBody651_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody651_11 : HolLoopProg 64 :=
.mark loopBody651_10

def loopBody651_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 0)

def loopBody651_13 : HolLoopProg 64 :=
.mark loopBody651_12

def loopBody651_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 1)

def loopBody651_15 : HolLoopProg 64 :=
.mark loopBody651_14

def loopBody651_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 2)

def loopBody651_17 : HolLoopProg 64 :=
.mark loopBody651_16

def loopBody651_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 3)

def loopBody651_19 : HolLoopProg 64 :=
.mark loopBody651_18

def loopBody651_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 4)

def loopBody651_21 : HolLoopProg 64 :=
.mark loopBody651_20

def loopBody651_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 5)

def loopBody651_23 : HolLoopProg 64 :=
.mark loopBody651_22

def loopBody651_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 714) [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17] none

def loopBody651_25 : HolLoopProg 64 :=
.mark loopBody651_24

def loopBody651_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody651_27 : HolLoopProg 64 :=
.mark loopBody651_26

def loopBody651_28 : HolLoopProg 64 :=
.seq loopBody651_25 loopBody651_27

def loopBody651_29 : HolLoopProg 64 :=
.mark loopBody651_28

def loopBody651_30 : HolLoopProg 64 :=
.seq loopBody651_23 loopBody651_29

def loopBody651_31 : HolLoopProg 64 :=
.mark loopBody651_30

def loopBody651_32 : HolLoopProg 64 :=
.seq loopBody651_21 loopBody651_31

def loopBody651_33 : HolLoopProg 64 :=
.mark loopBody651_32

def loopBody651_34 : HolLoopProg 64 :=
.seq loopBody651_19 loopBody651_33

def loopBody651_35 : HolLoopProg 64 :=
.mark loopBody651_34

def loopBody651_36 : HolLoopProg 64 :=
.seq loopBody651_17 loopBody651_35

def loopBody651_37 : HolLoopProg 64 :=
.mark loopBody651_36

def loopBody651_38 : HolLoopProg 64 :=
.seq loopBody651_15 loopBody651_37

def loopBody651_39 : HolLoopProg 64 :=
.mark loopBody651_38

def loopBody651_40 : HolLoopProg 64 :=
.seq loopBody651_13 loopBody651_39

def loopBody651_41 : HolLoopProg 64 :=
.mark loopBody651_40

def loopBody651_42 : HolLoopProg 64 :=
.seq loopBody651_11 loopBody651_41

def loopBody651_43 : HolLoopProg 64 :=
.mark loopBody651_42

def loopBody651_44 : HolLoopProg 64 :=
.seq loopBody651_9 loopBody651_43

def loopBody651_45 : HolLoopProg 64 :=
.mark loopBody651_44

def loopBody651_46 : HolLoopProg 64 :=
.seq loopBody651_7 loopBody651_45

def loopBody651_47 : HolLoopProg 64 :=
.mark loopBody651_46

def loopBody651_48 : HolLoopProg 64 :=
.seq loopBody651_5 loopBody651_47

def loopBody651_49 : HolLoopProg 64 :=
.mark loopBody651_48

def loopBody651_50 : HolLoopProg 64 :=
.seq loopBody651_3 loopBody651_49

def loopBody651_51 : HolLoopProg 64 :=
.mark loopBody651_50

def loopBody651_52 : HolLoopProg 64 :=
.seq loopBody651_1 loopBody651_51

def loopBody651_53 : HolLoopProg 64 :=
.mark loopBody651_52

def output651 : Nat × List Nat × HolLoopProg 64 :=
  (715, [0, 1, 2, 3, 4, 5], loopBody651_53)
end InitECandidate.Proofs.FrontendStages.Loop
