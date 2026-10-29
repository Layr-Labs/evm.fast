import InitECandidate.Proofs.FrontendStages.Loop.Translate453
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody469_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody469_1 : HolLoopProg 64 :=
.mark loopBody469_0

def loopBody469_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody469_3 : HolLoopProg 64 :=
.mark loopBody469_2

def loopBody469_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody469_5 : HolLoopProg 64 :=
.mark loopBody469_4

def loopBody469_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody469_5, loopBody469_1, (Flapjack.Spt.ln)))

def loopBody469_7 : HolLoopProg 64 :=
.mark loopBody469_6

def loopBody469_8 : HolLoopProg 64 :=
.seq loopBody469_7 loopBody469_1

def loopBody469_9 : HolLoopProg 64 :=
.mark loopBody469_8

def loopBody469_10 : HolLoopProg 64 :=
.seq loopBody469_3 loopBody469_9

def loopBody469_11 : HolLoopProg 64 :=
.mark loopBody469_10

def loopBody469_12 : HolLoopProg 64 :=
.seq loopBody469_1 loopBody469_11

def loopBody469_13 : HolLoopProg 64 :=
.mark loopBody469_12

def loopBody469_14 : HolLoopProg 64 :=
.seq loopBody469_1 loopBody469_13

def loopBody469_15 : HolLoopProg 64 :=
.mark loopBody469_14

def loopBody469_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 32#64]))

def loopBody469_17 : HolLoopProg 64 :=
.mark loopBody469_16

def loopBody469_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 477) ([2]) (some (2, loopBody469_5, loopBody469_1, (Flapjack.Spt.ln)))

def loopBody469_19 : HolLoopProg 64 :=
.mark loopBody469_18

def loopBody469_20 : HolLoopProg 64 :=
.seq loopBody469_19 loopBody469_1

def loopBody469_21 : HolLoopProg 64 :=
.mark loopBody469_20

def loopBody469_22 : HolLoopProg 64 :=
.seq loopBody469_17 loopBody469_21

def loopBody469_23 : HolLoopProg 64 :=
.mark loopBody469_22

def loopBody469_24 : HolLoopProg 64 :=
.seq loopBody469_1 loopBody469_23

def loopBody469_25 : HolLoopProg 64 :=
.mark loopBody469_24

def loopBody469_26 : HolLoopProg 64 :=
.seq loopBody469_1 loopBody469_25

def loopBody469_27 : HolLoopProg 64 :=
.mark loopBody469_26

def loopBody469_28 : HolLoopProg 64 :=
.seq loopBody469_15 loopBody469_27

def loopBody469_29 : HolLoopProg 64 :=
.mark loopBody469_28

def loopBody469_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody469_31 : HolLoopProg 64 :=
.mark loopBody469_30

def loopBody469_32 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody469_5, loopBody469_1, (Flapjack.Spt.ln)))

def loopBody469_33 : HolLoopProg 64 :=
.mark loopBody469_32

def loopBody469_34 : HolLoopProg 64 :=
.seq loopBody469_33 loopBody469_1

def loopBody469_35 : HolLoopProg 64 :=
.mark loopBody469_34

def loopBody469_36 : HolLoopProg 64 :=
.seq loopBody469_31 loopBody469_35

def loopBody469_37 : HolLoopProg 64 :=
.mark loopBody469_36

def loopBody469_38 : HolLoopProg 64 :=
.seq loopBody469_1 loopBody469_37

def loopBody469_39 : HolLoopProg 64 :=
.mark loopBody469_38

def loopBody469_40 : HolLoopProg 64 :=
.seq loopBody469_1 loopBody469_39

def loopBody469_41 : HolLoopProg 64 :=
.mark loopBody469_40

def loopBody469_42 : HolLoopProg 64 :=
.seq loopBody469_29 loopBody469_41

def loopBody469_43 : HolLoopProg 64 :=
.mark loopBody469_42

def loopBody469_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody469_45 : HolLoopProg 64 :=
.mark loopBody469_44

def loopBody469_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody469_47 : HolLoopProg 64 :=
.mark loopBody469_46

def loopBody469_48 : HolLoopProg 64 :=
.seq loopBody469_47 loopBody469_1

def loopBody469_49 : HolLoopProg 64 :=
.mark loopBody469_48

def loopBody469_50 : HolLoopProg 64 :=
.seq loopBody469_45 loopBody469_49

def loopBody469_51 : HolLoopProg 64 :=
.mark loopBody469_50

def loopBody469_52 : HolLoopProg 64 :=
.seq loopBody469_43 loopBody469_51

def loopBody469_53 : HolLoopProg 64 :=
.mark loopBody469_52

def output469 : Nat × List Nat × HolLoopProg 64 :=
  (533, [], loopBody469_53)
end InitECandidate.Proofs.FrontendStages.Loop
