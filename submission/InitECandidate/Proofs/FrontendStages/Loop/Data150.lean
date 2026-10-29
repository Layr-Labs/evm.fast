import InitECandidate.Proofs.FrontendStages.Loop.Translate134
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody150_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody150_1 : HolLoopProg 64 :=
.mark loopBody150_0

def loopBody150_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody150_3 : HolLoopProg 64 :=
.mark loopBody150_2

def loopBody150_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody150_5 : HolLoopProg 64 :=
.mark loopBody150_4

def loopBody150_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody150_7 : HolLoopProg 64 :=
.mark loopBody150_6

def loopBody150_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 18446744072635809548#64)

def loopBody150_9 : HolLoopProg 64 :=
.mark loopBody150_8

def loopBody150_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody150_11 : HolLoopProg 64 :=
.mark loopBody150_10

def loopBody150_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody150_13 : HolLoopProg 64 :=
.mark loopBody150_12

def loopBody150_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 4611686018427387903#64)

def loopBody150_15 : HolLoopProg 64 :=
.mark loopBody150_14

def loopBody150_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 208) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody150_17 : HolLoopProg 64 :=
.mark loopBody150_16

def loopBody150_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody150_19 : HolLoopProg 64 :=
.mark loopBody150_18

def loopBody150_20 : HolLoopProg 64 :=
.seq loopBody150_17 loopBody150_19

def loopBody150_21 : HolLoopProg 64 :=
.mark loopBody150_20

def loopBody150_22 : HolLoopProg 64 :=
.seq loopBody150_15 loopBody150_21

def loopBody150_23 : HolLoopProg 64 :=
.mark loopBody150_22

def loopBody150_24 : HolLoopProg 64 :=
.seq loopBody150_13 loopBody150_23

def loopBody150_25 : HolLoopProg 64 :=
.mark loopBody150_24

def loopBody150_26 : HolLoopProg 64 :=
.seq loopBody150_11 loopBody150_25

def loopBody150_27 : HolLoopProg 64 :=
.mark loopBody150_26

def loopBody150_28 : HolLoopProg 64 :=
.seq loopBody150_9 loopBody150_27

def loopBody150_29 : HolLoopProg 64 :=
.mark loopBody150_28

def loopBody150_30 : HolLoopProg 64 :=
.seq loopBody150_7 loopBody150_29

def loopBody150_31 : HolLoopProg 64 :=
.mark loopBody150_30

def loopBody150_32 : HolLoopProg 64 :=
.seq loopBody150_5 loopBody150_31

def loopBody150_33 : HolLoopProg 64 :=
.mark loopBody150_32

def loopBody150_34 : HolLoopProg 64 :=
.seq loopBody150_3 loopBody150_33

def loopBody150_35 : HolLoopProg 64 :=
.mark loopBody150_34

def loopBody150_36 : HolLoopProg 64 :=
.seq loopBody150_1 loopBody150_35

def loopBody150_37 : HolLoopProg 64 :=
.mark loopBody150_36

def output150 : Nat × List Nat × HolLoopProg 64 :=
  (214, [0, 1, 2, 3], loopBody150_37)
end InitECandidate.Proofs.FrontendStages.Loop
