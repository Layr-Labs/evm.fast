import InitECandidate.Proofs.FrontendStages.Loop.Translate567
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody583_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody583_1 : HolLoopProg 64 :=
.mark loopBody583_0

def loopBody583_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody583_3 : HolLoopProg 64 :=
.mark loopBody583_2

def loopBody583_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody583_5 : HolLoopProg 64 :=
.mark loopBody583_4

def loopBody583_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody583_7 : HolLoopProg 64 :=
.mark loopBody583_6

def loopBody583_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody583_9 : HolLoopProg 64 :=
.mark loopBody583_8

def loopBody583_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 4294967295#64)

def loopBody583_11 : HolLoopProg 64 :=
.mark loopBody583_10

def loopBody583_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody583_13 : HolLoopProg 64 :=
.mark loopBody583_12

def loopBody583_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 18446744069414584321#64)

def loopBody583_15 : HolLoopProg 64 :=
.mark loopBody583_14

def loopBody583_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 210) [4, 5, 6, 7, 8, 9, 10, 11] none

def loopBody583_17 : HolLoopProg 64 :=
.mark loopBody583_16

def loopBody583_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody583_19 : HolLoopProg 64 :=
.mark loopBody583_18

def loopBody583_20 : HolLoopProg 64 :=
.seq loopBody583_17 loopBody583_19

def loopBody583_21 : HolLoopProg 64 :=
.mark loopBody583_20

def loopBody583_22 : HolLoopProg 64 :=
.seq loopBody583_15 loopBody583_21

def loopBody583_23 : HolLoopProg 64 :=
.mark loopBody583_22

def loopBody583_24 : HolLoopProg 64 :=
.seq loopBody583_13 loopBody583_23

def loopBody583_25 : HolLoopProg 64 :=
.mark loopBody583_24

def loopBody583_26 : HolLoopProg 64 :=
.seq loopBody583_11 loopBody583_25

def loopBody583_27 : HolLoopProg 64 :=
.mark loopBody583_26

def loopBody583_28 : HolLoopProg 64 :=
.seq loopBody583_9 loopBody583_27

def loopBody583_29 : HolLoopProg 64 :=
.mark loopBody583_28

def loopBody583_30 : HolLoopProg 64 :=
.seq loopBody583_7 loopBody583_29

def loopBody583_31 : HolLoopProg 64 :=
.mark loopBody583_30

def loopBody583_32 : HolLoopProg 64 :=
.seq loopBody583_5 loopBody583_31

def loopBody583_33 : HolLoopProg 64 :=
.mark loopBody583_32

def loopBody583_34 : HolLoopProg 64 :=
.seq loopBody583_3 loopBody583_33

def loopBody583_35 : HolLoopProg 64 :=
.mark loopBody583_34

def loopBody583_36 : HolLoopProg 64 :=
.seq loopBody583_1 loopBody583_35

def loopBody583_37 : HolLoopProg 64 :=
.mark loopBody583_36

def output583 : Nat × List Nat × HolLoopProg 64 :=
  (647, [0, 1, 2, 3], loopBody583_37)
end InitECandidate.Proofs.FrontendStages.Loop
