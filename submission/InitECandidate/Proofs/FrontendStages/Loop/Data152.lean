import InitECandidate.Proofs.FrontendStages.Loop.Translate136
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody152_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody152_1 : HolLoopProg 64 :=
.mark loopBody152_0

def loopBody152_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody152_3 : HolLoopProg 64 :=
.mark loopBody152_2

def loopBody152_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody152_5 : HolLoopProg 64 :=
.mark loopBody152_4

def loopBody152_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 3)

def loopBody152_7 : HolLoopProg 64 :=
.mark loopBody152_6

def loopBody152_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody152_9 : HolLoopProg 64 :=
.mark loopBody152_8

def loopBody152_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 5)

def loopBody152_11 : HolLoopProg 64 :=
.mark loopBody152_10

def loopBody152_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 6)

def loopBody152_13 : HolLoopProg 64 :=
.mark loopBody152_12

def loopBody152_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 7)

def loopBody152_15 : HolLoopProg 64 :=
.mark loopBody152_14

def loopBody152_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 13822214165235122497#64)

def loopBody152_17 : HolLoopProg 64 :=
.mark loopBody152_16

def loopBody152_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 13451932020343611451#64)

def loopBody152_19 : HolLoopProg 64 :=
.mark loopBody152_18

def loopBody152_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 18446744073709551614#64)

def loopBody152_21 : HolLoopProg 64 :=
.mark loopBody152_20

def loopBody152_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody152_23 : HolLoopProg 64 :=
.mark loopBody152_22

def loopBody152_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 135) [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19] none

def loopBody152_25 : HolLoopProg 64 :=
.mark loopBody152_24

def loopBody152_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody152_27 : HolLoopProg 64 :=
.mark loopBody152_26

def loopBody152_28 : HolLoopProg 64 :=
.seq loopBody152_25 loopBody152_27

def loopBody152_29 : HolLoopProg 64 :=
.mark loopBody152_28

def loopBody152_30 : HolLoopProg 64 :=
.seq loopBody152_23 loopBody152_29

def loopBody152_31 : HolLoopProg 64 :=
.mark loopBody152_30

def loopBody152_32 : HolLoopProg 64 :=
.seq loopBody152_21 loopBody152_31

def loopBody152_33 : HolLoopProg 64 :=
.mark loopBody152_32

def loopBody152_34 : HolLoopProg 64 :=
.seq loopBody152_19 loopBody152_33

def loopBody152_35 : HolLoopProg 64 :=
.mark loopBody152_34

def loopBody152_36 : HolLoopProg 64 :=
.seq loopBody152_17 loopBody152_35

def loopBody152_37 : HolLoopProg 64 :=
.mark loopBody152_36

def loopBody152_38 : HolLoopProg 64 :=
.seq loopBody152_15 loopBody152_37

def loopBody152_39 : HolLoopProg 64 :=
.mark loopBody152_38

def loopBody152_40 : HolLoopProg 64 :=
.seq loopBody152_13 loopBody152_39

def loopBody152_41 : HolLoopProg 64 :=
.mark loopBody152_40

def loopBody152_42 : HolLoopProg 64 :=
.seq loopBody152_11 loopBody152_41

def loopBody152_43 : HolLoopProg 64 :=
.mark loopBody152_42

def loopBody152_44 : HolLoopProg 64 :=
.seq loopBody152_9 loopBody152_43

def loopBody152_45 : HolLoopProg 64 :=
.mark loopBody152_44

def loopBody152_46 : HolLoopProg 64 :=
.seq loopBody152_7 loopBody152_45

def loopBody152_47 : HolLoopProg 64 :=
.mark loopBody152_46

def loopBody152_48 : HolLoopProg 64 :=
.seq loopBody152_5 loopBody152_47

def loopBody152_49 : HolLoopProg 64 :=
.mark loopBody152_48

def loopBody152_50 : HolLoopProg 64 :=
.seq loopBody152_3 loopBody152_49

def loopBody152_51 : HolLoopProg 64 :=
.mark loopBody152_50

def loopBody152_52 : HolLoopProg 64 :=
.seq loopBody152_1 loopBody152_51

def loopBody152_53 : HolLoopProg 64 :=
.mark loopBody152_52

def output152 : Nat × List Nat × HolLoopProg 64 :=
  (216, [0, 1, 2, 3, 4, 5, 6, 7], loopBody152_53)
end InitECandidate.Proofs.FrontendStages.Loop
