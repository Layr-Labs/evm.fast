import InitECandidate.Proofs.FrontendStages.Loop.Translate135
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody151_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 0)

def loopBody151_1 : HolLoopProg 64 :=
.mark loopBody151_0

def loopBody151_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody151_3 : HolLoopProg 64 :=
.mark loopBody151_2

def loopBody151_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 2)

def loopBody151_5 : HolLoopProg 64 :=
.mark loopBody151_4

def loopBody151_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 3)

def loopBody151_7 : HolLoopProg 64 :=
.mark loopBody151_6

def loopBody151_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody151_9 : HolLoopProg 64 :=
.mark loopBody151_8

def loopBody151_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 5)

def loopBody151_11 : HolLoopProg 64 :=
.mark loopBody151_10

def loopBody151_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 6)

def loopBody151_13 : HolLoopProg 64 :=
.mark loopBody151_12

def loopBody151_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 7)

def loopBody151_15 : HolLoopProg 64 :=
.mark loopBody151_14

def loopBody151_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 13822214165235122497#64)

def loopBody151_17 : HolLoopProg 64 :=
.mark loopBody151_16

def loopBody151_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.const 13451932020343611451#64)

def loopBody151_19 : HolLoopProg 64 :=
.mark loopBody151_18

def loopBody151_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.const 18446744073709551614#64)

def loopBody151_21 : HolLoopProg 64 :=
.mark loopBody151_20

def loopBody151_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody151_23 : HolLoopProg 64 :=
.mark loopBody151_22

def loopBody151_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 136) [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19] none

def loopBody151_25 : HolLoopProg 64 :=
.mark loopBody151_24

def loopBody151_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody151_27 : HolLoopProg 64 :=
.mark loopBody151_26

def loopBody151_28 : HolLoopProg 64 :=
.seq loopBody151_25 loopBody151_27

def loopBody151_29 : HolLoopProg 64 :=
.mark loopBody151_28

def loopBody151_30 : HolLoopProg 64 :=
.seq loopBody151_23 loopBody151_29

def loopBody151_31 : HolLoopProg 64 :=
.mark loopBody151_30

def loopBody151_32 : HolLoopProg 64 :=
.seq loopBody151_21 loopBody151_31

def loopBody151_33 : HolLoopProg 64 :=
.mark loopBody151_32

def loopBody151_34 : HolLoopProg 64 :=
.seq loopBody151_19 loopBody151_33

def loopBody151_35 : HolLoopProg 64 :=
.mark loopBody151_34

def loopBody151_36 : HolLoopProg 64 :=
.seq loopBody151_17 loopBody151_35

def loopBody151_37 : HolLoopProg 64 :=
.mark loopBody151_36

def loopBody151_38 : HolLoopProg 64 :=
.seq loopBody151_15 loopBody151_37

def loopBody151_39 : HolLoopProg 64 :=
.mark loopBody151_38

def loopBody151_40 : HolLoopProg 64 :=
.seq loopBody151_13 loopBody151_39

def loopBody151_41 : HolLoopProg 64 :=
.mark loopBody151_40

def loopBody151_42 : HolLoopProg 64 :=
.seq loopBody151_11 loopBody151_41

def loopBody151_43 : HolLoopProg 64 :=
.mark loopBody151_42

def loopBody151_44 : HolLoopProg 64 :=
.seq loopBody151_9 loopBody151_43

def loopBody151_45 : HolLoopProg 64 :=
.mark loopBody151_44

def loopBody151_46 : HolLoopProg 64 :=
.seq loopBody151_7 loopBody151_45

def loopBody151_47 : HolLoopProg 64 :=
.mark loopBody151_46

def loopBody151_48 : HolLoopProg 64 :=
.seq loopBody151_5 loopBody151_47

def loopBody151_49 : HolLoopProg 64 :=
.mark loopBody151_48

def loopBody151_50 : HolLoopProg 64 :=
.seq loopBody151_3 loopBody151_49

def loopBody151_51 : HolLoopProg 64 :=
.mark loopBody151_50

def loopBody151_52 : HolLoopProg 64 :=
.seq loopBody151_1 loopBody151_51

def loopBody151_53 : HolLoopProg 64 :=
.mark loopBody151_52

def output151 : Nat × List Nat × HolLoopProg 64 :=
  (215, [0, 1, 2, 3, 4, 5, 6, 7], loopBody151_53)
end InitECandidate.Proofs.FrontendStages.Loop
