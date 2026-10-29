import InitECandidate.Proofs.FrontendStages.Loop.Translate448
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody464_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody464_1 : HolLoopProg 64 :=
.mark loopBody464_0

def loopBody464_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody464_3 : HolLoopProg 64 :=
.mark loopBody464_2

def loopBody464_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody464_5 : HolLoopProg 64 :=
.mark loopBody464_4

def loopBody464_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody464_5, loopBody464_1, (Flapjack.Spt.ln)))

def loopBody464_7 : HolLoopProg 64 :=
.mark loopBody464_6

def loopBody464_8 : HolLoopProg 64 :=
.seq loopBody464_7 loopBody464_1

def loopBody464_9 : HolLoopProg 64 :=
.mark loopBody464_8

def loopBody464_10 : HolLoopProg 64 :=
.seq loopBody464_3 loopBody464_9

def loopBody464_11 : HolLoopProg 64 :=
.mark loopBody464_10

def loopBody464_12 : HolLoopProg 64 :=
.seq loopBody464_1 loopBody464_11

def loopBody464_13 : HolLoopProg 64 :=
.mark loopBody464_12

def loopBody464_14 : HolLoopProg 64 :=
.seq loopBody464_1 loopBody464_13

def loopBody464_15 : HolLoopProg 64 :=
.mark loopBody464_14

def loopBody464_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 64#64]))

def loopBody464_17 : HolLoopProg 64 :=
.mark loopBody464_16

def loopBody464_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 477) ([2]) (some (2, loopBody464_5, loopBody464_1, (Flapjack.Spt.ln)))

def loopBody464_19 : HolLoopProg 64 :=
.mark loopBody464_18

def loopBody464_20 : HolLoopProg 64 :=
.seq loopBody464_19 loopBody464_1

def loopBody464_21 : HolLoopProg 64 :=
.mark loopBody464_20

def loopBody464_22 : HolLoopProg 64 :=
.seq loopBody464_17 loopBody464_21

def loopBody464_23 : HolLoopProg 64 :=
.mark loopBody464_22

def loopBody464_24 : HolLoopProg 64 :=
.seq loopBody464_1 loopBody464_23

def loopBody464_25 : HolLoopProg 64 :=
.mark loopBody464_24

def loopBody464_26 : HolLoopProg 64 :=
.seq loopBody464_1 loopBody464_25

def loopBody464_27 : HolLoopProg 64 :=
.mark loopBody464_26

def loopBody464_28 : HolLoopProg 64 :=
.seq loopBody464_15 loopBody464_27

def loopBody464_29 : HolLoopProg 64 :=
.mark loopBody464_28

def loopBody464_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody464_31 : HolLoopProg 64 :=
.mark loopBody464_30

def loopBody464_32 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody464_5, loopBody464_1, (Flapjack.Spt.ln)))

def loopBody464_33 : HolLoopProg 64 :=
.mark loopBody464_32

def loopBody464_34 : HolLoopProg 64 :=
.seq loopBody464_33 loopBody464_1

def loopBody464_35 : HolLoopProg 64 :=
.mark loopBody464_34

def loopBody464_36 : HolLoopProg 64 :=
.seq loopBody464_31 loopBody464_35

def loopBody464_37 : HolLoopProg 64 :=
.mark loopBody464_36

def loopBody464_38 : HolLoopProg 64 :=
.seq loopBody464_1 loopBody464_37

def loopBody464_39 : HolLoopProg 64 :=
.mark loopBody464_38

def loopBody464_40 : HolLoopProg 64 :=
.seq loopBody464_1 loopBody464_39

def loopBody464_41 : HolLoopProg 64 :=
.mark loopBody464_40

def loopBody464_42 : HolLoopProg 64 :=
.seq loopBody464_29 loopBody464_41

def loopBody464_43 : HolLoopProg 64 :=
.mark loopBody464_42

def loopBody464_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody464_45 : HolLoopProg 64 :=
.mark loopBody464_44

def loopBody464_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody464_47 : HolLoopProg 64 :=
.mark loopBody464_46

def loopBody464_48 : HolLoopProg 64 :=
.seq loopBody464_47 loopBody464_1

def loopBody464_49 : HolLoopProg 64 :=
.mark loopBody464_48

def loopBody464_50 : HolLoopProg 64 :=
.seq loopBody464_45 loopBody464_49

def loopBody464_51 : HolLoopProg 64 :=
.mark loopBody464_50

def loopBody464_52 : HolLoopProg 64 :=
.seq loopBody464_43 loopBody464_51

def loopBody464_53 : HolLoopProg 64 :=
.mark loopBody464_52

def output464 : Nat × List Nat × HolLoopProg 64 :=
  (528, [], loopBody464_53)
end InitECandidate.Proofs.FrontendStages.Loop
