import InitECandidate.Proofs.FrontendStages.Loop.Translate447
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody463_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody463_1 : HolLoopProg 64 :=
.mark loopBody463_0

def loopBody463_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody463_3 : HolLoopProg 64 :=
.mark loopBody463_2

def loopBody463_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody463_5 : HolLoopProg 64 :=
.mark loopBody463_4

def loopBody463_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody463_5, loopBody463_1, (Flapjack.Spt.ln)))

def loopBody463_7 : HolLoopProg 64 :=
.mark loopBody463_6

def loopBody463_8 : HolLoopProg 64 :=
.seq loopBody463_7 loopBody463_1

def loopBody463_9 : HolLoopProg 64 :=
.mark loopBody463_8

def loopBody463_10 : HolLoopProg 64 :=
.seq loopBody463_3 loopBody463_9

def loopBody463_11 : HolLoopProg 64 :=
.mark loopBody463_10

def loopBody463_12 : HolLoopProg 64 :=
.seq loopBody463_1 loopBody463_11

def loopBody463_13 : HolLoopProg 64 :=
.mark loopBody463_12

def loopBody463_14 : HolLoopProg 64 :=
.seq loopBody463_1 loopBody463_13

def loopBody463_15 : HolLoopProg 64 :=
.mark loopBody463_14

def loopBody463_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 0#64]))

def loopBody463_17 : HolLoopProg 64 :=
.mark loopBody463_16

def loopBody463_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 477) ([2]) (some (2, loopBody463_5, loopBody463_1, (Flapjack.Spt.ln)))

def loopBody463_19 : HolLoopProg 64 :=
.mark loopBody463_18

def loopBody463_20 : HolLoopProg 64 :=
.seq loopBody463_19 loopBody463_1

def loopBody463_21 : HolLoopProg 64 :=
.mark loopBody463_20

def loopBody463_22 : HolLoopProg 64 :=
.seq loopBody463_17 loopBody463_21

def loopBody463_23 : HolLoopProg 64 :=
.mark loopBody463_22

def loopBody463_24 : HolLoopProg 64 :=
.seq loopBody463_1 loopBody463_23

def loopBody463_25 : HolLoopProg 64 :=
.mark loopBody463_24

def loopBody463_26 : HolLoopProg 64 :=
.seq loopBody463_1 loopBody463_25

def loopBody463_27 : HolLoopProg 64 :=
.mark loopBody463_26

def loopBody463_28 : HolLoopProg 64 :=
.seq loopBody463_15 loopBody463_27

def loopBody463_29 : HolLoopProg 64 :=
.mark loopBody463_28

def loopBody463_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody463_31 : HolLoopProg 64 :=
.mark loopBody463_30

def loopBody463_32 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody463_5, loopBody463_1, (Flapjack.Spt.ln)))

def loopBody463_33 : HolLoopProg 64 :=
.mark loopBody463_32

def loopBody463_34 : HolLoopProg 64 :=
.seq loopBody463_33 loopBody463_1

def loopBody463_35 : HolLoopProg 64 :=
.mark loopBody463_34

def loopBody463_36 : HolLoopProg 64 :=
.seq loopBody463_31 loopBody463_35

def loopBody463_37 : HolLoopProg 64 :=
.mark loopBody463_36

def loopBody463_38 : HolLoopProg 64 :=
.seq loopBody463_1 loopBody463_37

def loopBody463_39 : HolLoopProg 64 :=
.mark loopBody463_38

def loopBody463_40 : HolLoopProg 64 :=
.seq loopBody463_1 loopBody463_39

def loopBody463_41 : HolLoopProg 64 :=
.mark loopBody463_40

def loopBody463_42 : HolLoopProg 64 :=
.seq loopBody463_29 loopBody463_41

def loopBody463_43 : HolLoopProg 64 :=
.mark loopBody463_42

def loopBody463_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody463_45 : HolLoopProg 64 :=
.mark loopBody463_44

def loopBody463_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody463_47 : HolLoopProg 64 :=
.mark loopBody463_46

def loopBody463_48 : HolLoopProg 64 :=
.seq loopBody463_47 loopBody463_1

def loopBody463_49 : HolLoopProg 64 :=
.mark loopBody463_48

def loopBody463_50 : HolLoopProg 64 :=
.seq loopBody463_45 loopBody463_49

def loopBody463_51 : HolLoopProg 64 :=
.mark loopBody463_50

def loopBody463_52 : HolLoopProg 64 :=
.seq loopBody463_43 loopBody463_51

def loopBody463_53 : HolLoopProg 64 :=
.mark loopBody463_52

def output463 : Nat × List Nat × HolLoopProg 64 :=
  (527, [], loopBody463_53)
end InitECandidate.Proofs.FrontendStages.Loop
