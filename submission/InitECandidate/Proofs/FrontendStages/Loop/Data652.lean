import InitECandidate.Proofs.FrontendStages.Loop.Translate636
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody652_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody652_1 : HolLoopProg 64 :=
.mark loopBody652_0

def loopBody652_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody652_3 : HolLoopProg 64 :=
.mark loopBody652_2

def loopBody652_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody652_5 : HolLoopProg 64 :=
.mark loopBody652_4

def loopBody652_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody652_7 : HolLoopProg 64 :=
.mark loopBody652_6

def loopBody652_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody652_9 : HolLoopProg 64 :=
.mark loopBody652_8

def loopBody652_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 5)

def loopBody652_11 : HolLoopProg 64 :=
.mark loopBody652_10

def loopBody652_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 17644856173732828998#64)

def loopBody652_13 : HolLoopProg 64 :=
.mark loopBody652_12

def loopBody652_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 754043588434789617#64)

def loopBody652_15 : HolLoopProg 64 :=
.mark loopBody652_14

def loopBody652_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 10224657059481499349#64)

def loopBody652_17 : HolLoopProg 64 :=
.mark loopBody652_16

def loopBody652_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 7488229067341005760#64)

def loopBody652_19 : HolLoopProg 64 :=
.mark loopBody652_18

def loopBody652_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 11130996698012816685#64)

def loopBody652_21 : HolLoopProg 64 :=
.mark loopBody652_20

def loopBody652_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 1267921511277847466#64)

def loopBody652_23 : HolLoopProg 64 :=
.mark loopBody652_22

def loopBody652_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 714) [6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17] none

def loopBody652_25 : HolLoopProg 64 :=
.mark loopBody652_24

def loopBody652_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody652_27 : HolLoopProg 64 :=
.mark loopBody652_26

def loopBody652_28 : HolLoopProg 64 :=
.seq loopBody652_25 loopBody652_27

def loopBody652_29 : HolLoopProg 64 :=
.mark loopBody652_28

def loopBody652_30 : HolLoopProg 64 :=
.seq loopBody652_23 loopBody652_29

def loopBody652_31 : HolLoopProg 64 :=
.mark loopBody652_30

def loopBody652_32 : HolLoopProg 64 :=
.seq loopBody652_21 loopBody652_31

def loopBody652_33 : HolLoopProg 64 :=
.mark loopBody652_32

def loopBody652_34 : HolLoopProg 64 :=
.seq loopBody652_19 loopBody652_33

def loopBody652_35 : HolLoopProg 64 :=
.mark loopBody652_34

def loopBody652_36 : HolLoopProg 64 :=
.seq loopBody652_17 loopBody652_35

def loopBody652_37 : HolLoopProg 64 :=
.mark loopBody652_36

def loopBody652_38 : HolLoopProg 64 :=
.seq loopBody652_15 loopBody652_37

def loopBody652_39 : HolLoopProg 64 :=
.mark loopBody652_38

def loopBody652_40 : HolLoopProg 64 :=
.seq loopBody652_13 loopBody652_39

def loopBody652_41 : HolLoopProg 64 :=
.mark loopBody652_40

def loopBody652_42 : HolLoopProg 64 :=
.seq loopBody652_11 loopBody652_41

def loopBody652_43 : HolLoopProg 64 :=
.mark loopBody652_42

def loopBody652_44 : HolLoopProg 64 :=
.seq loopBody652_9 loopBody652_43

def loopBody652_45 : HolLoopProg 64 :=
.mark loopBody652_44

def loopBody652_46 : HolLoopProg 64 :=
.seq loopBody652_7 loopBody652_45

def loopBody652_47 : HolLoopProg 64 :=
.mark loopBody652_46

def loopBody652_48 : HolLoopProg 64 :=
.seq loopBody652_5 loopBody652_47

def loopBody652_49 : HolLoopProg 64 :=
.mark loopBody652_48

def loopBody652_50 : HolLoopProg 64 :=
.seq loopBody652_3 loopBody652_49

def loopBody652_51 : HolLoopProg 64 :=
.mark loopBody652_50

def loopBody652_52 : HolLoopProg 64 :=
.seq loopBody652_1 loopBody652_51

def loopBody652_53 : HolLoopProg 64 :=
.mark loopBody652_52

def output652 : Nat × List Nat × HolLoopProg 64 :=
  (716, [0, 1, 2, 3, 4, 5], loopBody652_53)
end InitECandidate.Proofs.FrontendStages.Loop
