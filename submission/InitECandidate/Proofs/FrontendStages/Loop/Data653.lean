import InitECandidate.Proofs.FrontendStages.Loop.Translate637
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody653_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody653_1 : HolLoopProg 64 :=
.mark loopBody653_0

def loopBody653_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody653_3 : HolLoopProg 64 :=
.mark loopBody653_2

def loopBody653_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody653_5 : HolLoopProg 64 :=
.mark loopBody653_4

def loopBody653_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody653_7 : HolLoopProg 64 :=
.mark loopBody653_6

def loopBody653_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody653_9 : HolLoopProg 64 :=
.mark loopBody653_8

def loopBody653_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody653_11 : HolLoopProg 64 :=
.mark loopBody653_10

def loopBody653_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody653_13 : HolLoopProg 64 :=
.mark loopBody653_12

def loopBody653_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody653_15 : HolLoopProg 64 :=
.mark loopBody653_14

def loopBody653_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody653_17 : HolLoopProg 64 :=
.mark loopBody653_16

def loopBody653_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 0#64)

def loopBody653_19 : HolLoopProg 64 :=
.mark loopBody653_18

def loopBody653_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody653_21 : HolLoopProg 64 :=
.mark loopBody653_20

def loopBody653_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 0#64)

def loopBody653_23 : HolLoopProg 64 :=
.mark loopBody653_22

def loopBody653_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 714) [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17] none

def loopBody653_25 : HolLoopProg 64 :=
.mark loopBody653_24

def loopBody653_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody653_27 : HolLoopProg 64 :=
.mark loopBody653_26

def loopBody653_28 : HolLoopProg 64 :=
.seq loopBody653_25 loopBody653_27

def loopBody653_29 : HolLoopProg 64 :=
.mark loopBody653_28

def loopBody653_30 : HolLoopProg 64 :=
.seq loopBody653_23 loopBody653_29

def loopBody653_31 : HolLoopProg 64 :=
.mark loopBody653_30

def loopBody653_32 : HolLoopProg 64 :=
.seq loopBody653_21 loopBody653_31

def loopBody653_33 : HolLoopProg 64 :=
.mark loopBody653_32

def loopBody653_34 : HolLoopProg 64 :=
.seq loopBody653_19 loopBody653_33

def loopBody653_35 : HolLoopProg 64 :=
.mark loopBody653_34

def loopBody653_36 : HolLoopProg 64 :=
.seq loopBody653_17 loopBody653_35

def loopBody653_37 : HolLoopProg 64 :=
.mark loopBody653_36

def loopBody653_38 : HolLoopProg 64 :=
.seq loopBody653_15 loopBody653_37

def loopBody653_39 : HolLoopProg 64 :=
.mark loopBody653_38

def loopBody653_40 : HolLoopProg 64 :=
.seq loopBody653_13 loopBody653_39

def loopBody653_41 : HolLoopProg 64 :=
.mark loopBody653_40

def loopBody653_42 : HolLoopProg 64 :=
.seq loopBody653_11 loopBody653_41

def loopBody653_43 : HolLoopProg 64 :=
.mark loopBody653_42

def loopBody653_44 : HolLoopProg 64 :=
.seq loopBody653_9 loopBody653_43

def loopBody653_45 : HolLoopProg 64 :=
.mark loopBody653_44

def loopBody653_46 : HolLoopProg 64 :=
.seq loopBody653_7 loopBody653_45

def loopBody653_47 : HolLoopProg 64 :=
.mark loopBody653_46

def loopBody653_48 : HolLoopProg 64 :=
.seq loopBody653_5 loopBody653_47

def loopBody653_49 : HolLoopProg 64 :=
.mark loopBody653_48

def loopBody653_50 : HolLoopProg 64 :=
.seq loopBody653_3 loopBody653_49

def loopBody653_51 : HolLoopProg 64 :=
.mark loopBody653_50

def loopBody653_52 : HolLoopProg 64 :=
.seq loopBody653_1 loopBody653_51

def loopBody653_53 : HolLoopProg 64 :=
.mark loopBody653_52

def output653 : Nat × List Nat × HolLoopProg 64 :=
  (717, [0, 1, 2, 3, 4, 5], loopBody653_53)
end InitECandidate.Proofs.FrontendStages.Loop
