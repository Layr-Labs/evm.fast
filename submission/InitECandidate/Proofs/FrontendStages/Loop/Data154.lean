import InitECandidate.Proofs.FrontendStages.Loop.Translate138
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody154_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody154_1 : HolLoopProg 64 :=
.mark loopBody154_0

def loopBody154_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody154_3 : HolLoopProg 64 :=
.mark loopBody154_2

def loopBody154_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody154_5 : HolLoopProg 64 :=
.mark loopBody154_4

def loopBody154_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody154_7 : HolLoopProg 64 :=
.mark loopBody154_6

def loopBody154_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 13822214165235122495#64)

def loopBody154_9 : HolLoopProg 64 :=
.mark loopBody154_8

def loopBody154_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 13451932020343611451#64)

def loopBody154_11 : HolLoopProg 64 :=
.mark loopBody154_10

def loopBody154_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 18446744073709551614#64)

def loopBody154_13 : HolLoopProg 64 :=
.mark loopBody154_12

def loopBody154_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody154_15 : HolLoopProg 64 :=
.mark loopBody154_14

def loopBody154_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 217) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody154_17 : HolLoopProg 64 :=
.mark loopBody154_16

def loopBody154_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody154_19 : HolLoopProg 64 :=
.mark loopBody154_18

def loopBody154_20 : HolLoopProg 64 :=
.seq loopBody154_17 loopBody154_19

def loopBody154_21 : HolLoopProg 64 :=
.mark loopBody154_20

def loopBody154_22 : HolLoopProg 64 :=
.seq loopBody154_15 loopBody154_21

def loopBody154_23 : HolLoopProg 64 :=
.mark loopBody154_22

def loopBody154_24 : HolLoopProg 64 :=
.seq loopBody154_13 loopBody154_23

def loopBody154_25 : HolLoopProg 64 :=
.mark loopBody154_24

def loopBody154_26 : HolLoopProg 64 :=
.seq loopBody154_11 loopBody154_25

def loopBody154_27 : HolLoopProg 64 :=
.mark loopBody154_26

def loopBody154_28 : HolLoopProg 64 :=
.seq loopBody154_9 loopBody154_27

def loopBody154_29 : HolLoopProg 64 :=
.mark loopBody154_28

def loopBody154_30 : HolLoopProg 64 :=
.seq loopBody154_7 loopBody154_29

def loopBody154_31 : HolLoopProg 64 :=
.mark loopBody154_30

def loopBody154_32 : HolLoopProg 64 :=
.seq loopBody154_5 loopBody154_31

def loopBody154_33 : HolLoopProg 64 :=
.mark loopBody154_32

def loopBody154_34 : HolLoopProg 64 :=
.seq loopBody154_3 loopBody154_33

def loopBody154_35 : HolLoopProg 64 :=
.mark loopBody154_34

def loopBody154_36 : HolLoopProg 64 :=
.seq loopBody154_1 loopBody154_35

def loopBody154_37 : HolLoopProg 64 :=
.mark loopBody154_36

def output154 : Nat × List Nat × HolLoopProg 64 :=
  (218, [0, 1, 2, 3], loopBody154_37)
end InitECandidate.Proofs.FrontendStages.Loop
