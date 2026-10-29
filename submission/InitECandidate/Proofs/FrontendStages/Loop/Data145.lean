import InitECandidate.Proofs.FrontendStages.Loop.Translate129
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody145_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody145_1 : HolLoopProg 64 :=
.mark loopBody145_0

def loopBody145_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody145_3 : HolLoopProg 64 :=
.mark loopBody145_2

def loopBody145_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody145_5 : HolLoopProg 64 :=
.mark loopBody145_4

def loopBody145_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody145_7 : HolLoopProg 64 :=
.mark loopBody145_6

def loopBody145_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 18446744069414583341#64)

def loopBody145_9 : HolLoopProg 64 :=
.mark loopBody145_8

def loopBody145_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody145_11 : HolLoopProg 64 :=
.mark loopBody145_10

def loopBody145_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody145_13 : HolLoopProg 64 :=
.mark loopBody145_12

def loopBody145_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody145_15 : HolLoopProg 64 :=
.mark loopBody145_14

def loopBody145_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 208) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody145_17 : HolLoopProg 64 :=
.mark loopBody145_16

def loopBody145_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody145_19 : HolLoopProg 64 :=
.mark loopBody145_18

def loopBody145_20 : HolLoopProg 64 :=
.seq loopBody145_17 loopBody145_19

def loopBody145_21 : HolLoopProg 64 :=
.mark loopBody145_20

def loopBody145_22 : HolLoopProg 64 :=
.seq loopBody145_15 loopBody145_21

def loopBody145_23 : HolLoopProg 64 :=
.mark loopBody145_22

def loopBody145_24 : HolLoopProg 64 :=
.seq loopBody145_13 loopBody145_23

def loopBody145_25 : HolLoopProg 64 :=
.mark loopBody145_24

def loopBody145_26 : HolLoopProg 64 :=
.seq loopBody145_11 loopBody145_25

def loopBody145_27 : HolLoopProg 64 :=
.mark loopBody145_26

def loopBody145_28 : HolLoopProg 64 :=
.seq loopBody145_9 loopBody145_27

def loopBody145_29 : HolLoopProg 64 :=
.mark loopBody145_28

def loopBody145_30 : HolLoopProg 64 :=
.seq loopBody145_7 loopBody145_29

def loopBody145_31 : HolLoopProg 64 :=
.mark loopBody145_30

def loopBody145_32 : HolLoopProg 64 :=
.seq loopBody145_5 loopBody145_31

def loopBody145_33 : HolLoopProg 64 :=
.mark loopBody145_32

def loopBody145_34 : HolLoopProg 64 :=
.seq loopBody145_3 loopBody145_33

def loopBody145_35 : HolLoopProg 64 :=
.mark loopBody145_34

def loopBody145_36 : HolLoopProg 64 :=
.seq loopBody145_1 loopBody145_35

def loopBody145_37 : HolLoopProg 64 :=
.mark loopBody145_36

def output145 : Nat × List Nat × HolLoopProg 64 :=
  (209, [0, 1, 2, 3], loopBody145_37)
end InitECandidate.Proofs.FrontendStages.Loop
