import InitECandidate.Proofs.FrontendStages.Loop.Translate139
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody155_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody155_1 : HolLoopProg 64 :=
.mark loopBody155_0

def loopBody155_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody155_3 : HolLoopProg 64 :=
.mark loopBody155_2

def loopBody155_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody155_5 : HolLoopProg 64 :=
.mark loopBody155_4

def loopBody155_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody155_7 : HolLoopProg 64 :=
.mark loopBody155_6

def loopBody155_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 13822214165235122497#64)

def loopBody155_9 : HolLoopProg 64 :=
.mark loopBody155_8

def loopBody155_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 13451932020343611451#64)

def loopBody155_11 : HolLoopProg 64 :=
.mark loopBody155_10

def loopBody155_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 18446744073709551614#64)

def loopBody155_13 : HolLoopProg 64 :=
.mark loopBody155_12

def loopBody155_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody155_15 : HolLoopProg 64 :=
.mark loopBody155_14

def loopBody155_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 210) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody155_17 : HolLoopProg 64 :=
.mark loopBody155_16

def loopBody155_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody155_19 : HolLoopProg 64 :=
.mark loopBody155_18

def loopBody155_20 : HolLoopProg 64 :=
.seq loopBody155_17 loopBody155_19

def loopBody155_21 : HolLoopProg 64 :=
.mark loopBody155_20

def loopBody155_22 : HolLoopProg 64 :=
.seq loopBody155_15 loopBody155_21

def loopBody155_23 : HolLoopProg 64 :=
.mark loopBody155_22

def loopBody155_24 : HolLoopProg 64 :=
.seq loopBody155_13 loopBody155_23

def loopBody155_25 : HolLoopProg 64 :=
.mark loopBody155_24

def loopBody155_26 : HolLoopProg 64 :=
.seq loopBody155_11 loopBody155_25

def loopBody155_27 : HolLoopProg 64 :=
.mark loopBody155_26

def loopBody155_28 : HolLoopProg 64 :=
.seq loopBody155_9 loopBody155_27

def loopBody155_29 : HolLoopProg 64 :=
.mark loopBody155_28

def loopBody155_30 : HolLoopProg 64 :=
.seq loopBody155_7 loopBody155_29

def loopBody155_31 : HolLoopProg 64 :=
.mark loopBody155_30

def loopBody155_32 : HolLoopProg 64 :=
.seq loopBody155_5 loopBody155_31

def loopBody155_33 : HolLoopProg 64 :=
.mark loopBody155_32

def loopBody155_34 : HolLoopProg 64 :=
.seq loopBody155_3 loopBody155_33

def loopBody155_35 : HolLoopProg 64 :=
.mark loopBody155_34

def loopBody155_36 : HolLoopProg 64 :=
.seq loopBody155_1 loopBody155_35

def loopBody155_37 : HolLoopProg 64 :=
.mark loopBody155_36

def output155 : Nat × List Nat × HolLoopProg 64 :=
  (219, [0, 1, 2, 3], loopBody155_37)
end InitECandidate.Proofs.FrontendStages.Loop
