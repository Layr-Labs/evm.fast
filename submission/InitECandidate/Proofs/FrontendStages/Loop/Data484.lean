import InitECandidate.Proofs.FrontendStages.Loop.Translate468
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody484_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody484_1 : HolLoopProg 64 :=
.mark loopBody484_0

def loopBody484_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 0)

def loopBody484_3 : HolLoopProg 64 :=
.mark loopBody484_2

def loopBody484_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody484_5 : HolLoopProg 64 :=
.mark loopBody484_4

def loopBody484_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody484_7 : HolLoopProg 64 :=
.mark loopBody484_6

def loopBody484_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 392) ([3, 4]) (some (3, loopBody484_7, loopBody484_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody484_9 : HolLoopProg 64 :=
.mark loopBody484_8

def loopBody484_10 : HolLoopProg 64 :=
.seq loopBody484_9 loopBody484_1

def loopBody484_11 : HolLoopProg 64 :=
.mark loopBody484_10

def loopBody484_12 : HolLoopProg 64 :=
.seq loopBody484_5 loopBody484_11

def loopBody484_13 : HolLoopProg 64 :=
.mark loopBody484_12

def loopBody484_14 : HolLoopProg 64 :=
.seq loopBody484_3 loopBody484_13

def loopBody484_15 : HolLoopProg 64 :=
.mark loopBody484_14

def loopBody484_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 176#64]))

def loopBody484_17 : HolLoopProg 64 :=
.mark loopBody484_16

def loopBody484_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody484_19 : HolLoopProg 64 :=
.mark loopBody484_18

def loopBody484_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody484_21 : HolLoopProg 64 :=
.mark loopBody484_20

def loopBody484_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody484_23 : HolLoopProg 64 :=
.mark loopBody484_22

def loopBody484_24 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 192) ([4, 5, 6]) (some (4, loopBody484_23, loopBody484_1, (Flapjack.Spt.ln)))

def loopBody484_25 : HolLoopProg 64 :=
.mark loopBody484_24

def loopBody484_26 : HolLoopProg 64 :=
.seq loopBody484_25 loopBody484_1

def loopBody484_27 : HolLoopProg 64 :=
.mark loopBody484_26

def loopBody484_28 : HolLoopProg 64 :=
.seq loopBody484_21 loopBody484_27

def loopBody484_29 : HolLoopProg 64 :=
.mark loopBody484_28

def loopBody484_30 : HolLoopProg 64 :=
.seq loopBody484_19 loopBody484_29

def loopBody484_31 : HolLoopProg 64 :=
.mark loopBody484_30

def loopBody484_32 : HolLoopProg 64 :=
.seq loopBody484_17 loopBody484_31

def loopBody484_33 : HolLoopProg 64 :=
.mark loopBody484_32

def loopBody484_34 : HolLoopProg 64 :=
.seq loopBody484_1 loopBody484_33

def loopBody484_35 : HolLoopProg 64 :=
.mark loopBody484_34

def loopBody484_36 : HolLoopProg 64 :=
.seq loopBody484_1 loopBody484_35

def loopBody484_37 : HolLoopProg 64 :=
.mark loopBody484_36

def loopBody484_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody484_39 : HolLoopProg 64 :=
.mark loopBody484_38

def loopBody484_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody484_41 : HolLoopProg 64 :=
.mark loopBody484_40

def loopBody484_42 : HolLoopProg 64 :=
.seq loopBody484_41 loopBody484_1

def loopBody484_43 : HolLoopProg 64 :=
.mark loopBody484_42

def loopBody484_44 : HolLoopProg 64 :=
.seq loopBody484_39 loopBody484_43

def loopBody484_45 : HolLoopProg 64 :=
.mark loopBody484_44

def loopBody484_46 : HolLoopProg 64 :=
.seq loopBody484_37 loopBody484_45

def loopBody484_47 : HolLoopProg 64 :=
.mark loopBody484_46

def loopBody484_48 : HolLoopProg 64 :=
.seq loopBody484_15 loopBody484_47

def loopBody484_49 : HolLoopProg 64 :=
.mark loopBody484_48

def loopBody484_50 : HolLoopProg 64 :=
.seq loopBody484_1 loopBody484_49

def loopBody484_51 : HolLoopProg 64 :=
.mark loopBody484_50

def loopBody484_52 : HolLoopProg 64 :=
.seq loopBody484_1 loopBody484_51

def loopBody484_53 : HolLoopProg 64 :=
.mark loopBody484_52

def output484 : Nat × List Nat × HolLoopProg 64 :=
  (548, [0, 1], loopBody484_53)
end InitECandidate.Proofs.FrontendStages.Loop
