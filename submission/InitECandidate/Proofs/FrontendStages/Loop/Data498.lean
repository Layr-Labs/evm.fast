import InitECandidate.Proofs.FrontendStages.Loop.Translate482
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody498_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody498_1 : HolLoopProg 64 :=
.mark loopBody498_0

def loopBody498_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody498_3 : HolLoopProg 64 :=
.mark loopBody498_2

def loopBody498_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody498_5 : HolLoopProg 64 :=
.mark loopBody498_4

def loopBody498_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody498_5, loopBody498_1, (Flapjack.Spt.ln)))

def loopBody498_7 : HolLoopProg 64 :=
.mark loopBody498_6

def loopBody498_8 : HolLoopProg 64 :=
.seq loopBody498_7 loopBody498_1

def loopBody498_9 : HolLoopProg 64 :=
.mark loopBody498_8

def loopBody498_10 : HolLoopProg 64 :=
.seq loopBody498_3 loopBody498_9

def loopBody498_11 : HolLoopProg 64 :=
.mark loopBody498_10

def loopBody498_12 : HolLoopProg 64 :=
.seq loopBody498_1 loopBody498_11

def loopBody498_13 : HolLoopProg 64 :=
.mark loopBody498_12

def loopBody498_14 : HolLoopProg 64 :=
.seq loopBody498_1 loopBody498_13

def loopBody498_15 : HolLoopProg 64 :=
.mark loopBody498_14

def loopBody498_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 56#64]))

def loopBody498_17 : HolLoopProg 64 :=
.mark loopBody498_16

def loopBody498_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 477) ([2]) (some (2, loopBody498_5, loopBody498_1, (Flapjack.Spt.ln)))

def loopBody498_19 : HolLoopProg 64 :=
.mark loopBody498_18

def loopBody498_20 : HolLoopProg 64 :=
.seq loopBody498_19 loopBody498_1

def loopBody498_21 : HolLoopProg 64 :=
.mark loopBody498_20

def loopBody498_22 : HolLoopProg 64 :=
.seq loopBody498_17 loopBody498_21

def loopBody498_23 : HolLoopProg 64 :=
.mark loopBody498_22

def loopBody498_24 : HolLoopProg 64 :=
.seq loopBody498_1 loopBody498_23

def loopBody498_25 : HolLoopProg 64 :=
.mark loopBody498_24

def loopBody498_26 : HolLoopProg 64 :=
.seq loopBody498_1 loopBody498_25

def loopBody498_27 : HolLoopProg 64 :=
.mark loopBody498_26

def loopBody498_28 : HolLoopProg 64 :=
.seq loopBody498_15 loopBody498_27

def loopBody498_29 : HolLoopProg 64 :=
.mark loopBody498_28

def loopBody498_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody498_31 : HolLoopProg 64 :=
.mark loopBody498_30

def loopBody498_32 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody498_5, loopBody498_1, (Flapjack.Spt.ln)))

def loopBody498_33 : HolLoopProg 64 :=
.mark loopBody498_32

def loopBody498_34 : HolLoopProg 64 :=
.seq loopBody498_33 loopBody498_1

def loopBody498_35 : HolLoopProg 64 :=
.mark loopBody498_34

def loopBody498_36 : HolLoopProg 64 :=
.seq loopBody498_31 loopBody498_35

def loopBody498_37 : HolLoopProg 64 :=
.mark loopBody498_36

def loopBody498_38 : HolLoopProg 64 :=
.seq loopBody498_1 loopBody498_37

def loopBody498_39 : HolLoopProg 64 :=
.mark loopBody498_38

def loopBody498_40 : HolLoopProg 64 :=
.seq loopBody498_1 loopBody498_39

def loopBody498_41 : HolLoopProg 64 :=
.mark loopBody498_40

def loopBody498_42 : HolLoopProg 64 :=
.seq loopBody498_29 loopBody498_41

def loopBody498_43 : HolLoopProg 64 :=
.mark loopBody498_42

def loopBody498_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody498_45 : HolLoopProg 64 :=
.mark loopBody498_44

def loopBody498_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody498_47 : HolLoopProg 64 :=
.mark loopBody498_46

def loopBody498_48 : HolLoopProg 64 :=
.seq loopBody498_47 loopBody498_1

def loopBody498_49 : HolLoopProg 64 :=
.mark loopBody498_48

def loopBody498_50 : HolLoopProg 64 :=
.seq loopBody498_45 loopBody498_49

def loopBody498_51 : HolLoopProg 64 :=
.mark loopBody498_50

def loopBody498_52 : HolLoopProg 64 :=
.seq loopBody498_43 loopBody498_51

def loopBody498_53 : HolLoopProg 64 :=
.mark loopBody498_52

def output498 : Nat × List Nat × HolLoopProg 64 :=
  (562, [], loopBody498_53)
end InitECandidate.Proofs.FrontendStages.Loop
