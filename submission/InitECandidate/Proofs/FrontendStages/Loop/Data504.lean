import InitECandidate.Proofs.FrontendStages.Loop.Translate488
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody504_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody504_1 : HolLoopProg 64 :=
.mark loopBody504_0

def loopBody504_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody504_3 : HolLoopProg 64 :=
.mark loopBody504_2

def loopBody504_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody504_5 : HolLoopProg 64 :=
.mark loopBody504_4

def loopBody504_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody504_5, loopBody504_1, (Flapjack.Spt.ln)))

def loopBody504_7 : HolLoopProg 64 :=
.mark loopBody504_6

def loopBody504_8 : HolLoopProg 64 :=
.seq loopBody504_7 loopBody504_1

def loopBody504_9 : HolLoopProg 64 :=
.mark loopBody504_8

def loopBody504_10 : HolLoopProg 64 :=
.seq loopBody504_3 loopBody504_9

def loopBody504_11 : HolLoopProg 64 :=
.mark loopBody504_10

def loopBody504_12 : HolLoopProg 64 :=
.seq loopBody504_1 loopBody504_11

def loopBody504_13 : HolLoopProg 64 :=
.mark loopBody504_12

def loopBody504_14 : HolLoopProg 64 :=
.seq loopBody504_1 loopBody504_13

def loopBody504_15 : HolLoopProg 64 :=
.mark loopBody504_14

def loopBody504_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 152#64]))

def loopBody504_17 : HolLoopProg 64 :=
.mark loopBody504_16

def loopBody504_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 477) ([2]) (some (2, loopBody504_5, loopBody504_1, (Flapjack.Spt.ln)))

def loopBody504_19 : HolLoopProg 64 :=
.mark loopBody504_18

def loopBody504_20 : HolLoopProg 64 :=
.seq loopBody504_19 loopBody504_1

def loopBody504_21 : HolLoopProg 64 :=
.mark loopBody504_20

def loopBody504_22 : HolLoopProg 64 :=
.seq loopBody504_17 loopBody504_21

def loopBody504_23 : HolLoopProg 64 :=
.mark loopBody504_22

def loopBody504_24 : HolLoopProg 64 :=
.seq loopBody504_1 loopBody504_23

def loopBody504_25 : HolLoopProg 64 :=
.mark loopBody504_24

def loopBody504_26 : HolLoopProg 64 :=
.seq loopBody504_1 loopBody504_25

def loopBody504_27 : HolLoopProg 64 :=
.mark loopBody504_26

def loopBody504_28 : HolLoopProg 64 :=
.seq loopBody504_15 loopBody504_27

def loopBody504_29 : HolLoopProg 64 :=
.mark loopBody504_28

def loopBody504_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody504_31 : HolLoopProg 64 :=
.mark loopBody504_30

def loopBody504_32 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody504_5, loopBody504_1, (Flapjack.Spt.ln)))

def loopBody504_33 : HolLoopProg 64 :=
.mark loopBody504_32

def loopBody504_34 : HolLoopProg 64 :=
.seq loopBody504_33 loopBody504_1

def loopBody504_35 : HolLoopProg 64 :=
.mark loopBody504_34

def loopBody504_36 : HolLoopProg 64 :=
.seq loopBody504_31 loopBody504_35

def loopBody504_37 : HolLoopProg 64 :=
.mark loopBody504_36

def loopBody504_38 : HolLoopProg 64 :=
.seq loopBody504_1 loopBody504_37

def loopBody504_39 : HolLoopProg 64 :=
.mark loopBody504_38

def loopBody504_40 : HolLoopProg 64 :=
.seq loopBody504_1 loopBody504_39

def loopBody504_41 : HolLoopProg 64 :=
.mark loopBody504_40

def loopBody504_42 : HolLoopProg 64 :=
.seq loopBody504_29 loopBody504_41

def loopBody504_43 : HolLoopProg 64 :=
.mark loopBody504_42

def loopBody504_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody504_45 : HolLoopProg 64 :=
.mark loopBody504_44

def loopBody504_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody504_47 : HolLoopProg 64 :=
.mark loopBody504_46

def loopBody504_48 : HolLoopProg 64 :=
.seq loopBody504_47 loopBody504_1

def loopBody504_49 : HolLoopProg 64 :=
.mark loopBody504_48

def loopBody504_50 : HolLoopProg 64 :=
.seq loopBody504_45 loopBody504_49

def loopBody504_51 : HolLoopProg 64 :=
.mark loopBody504_50

def loopBody504_52 : HolLoopProg 64 :=
.seq loopBody504_43 loopBody504_51

def loopBody504_53 : HolLoopProg 64 :=
.mark loopBody504_52

def output504 : Nat × List Nat × HolLoopProg 64 :=
  (568, [], loopBody504_53)
end InitECandidate.Proofs.FrontendStages.Loop
