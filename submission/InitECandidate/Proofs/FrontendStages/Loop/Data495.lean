import InitECandidate.Proofs.FrontendStages.Loop.Translate479
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody495_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody495_1 : HolLoopProg 64 :=
.mark loopBody495_0

def loopBody495_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody495_3 : HolLoopProg 64 :=
.mark loopBody495_2

def loopBody495_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody495_5 : HolLoopProg 64 :=
.mark loopBody495_4

def loopBody495_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody495_5, loopBody495_1, (Flapjack.Spt.ln)))

def loopBody495_7 : HolLoopProg 64 :=
.mark loopBody495_6

def loopBody495_8 : HolLoopProg 64 :=
.seq loopBody495_7 loopBody495_1

def loopBody495_9 : HolLoopProg 64 :=
.mark loopBody495_8

def loopBody495_10 : HolLoopProg 64 :=
.seq loopBody495_3 loopBody495_9

def loopBody495_11 : HolLoopProg 64 :=
.mark loopBody495_10

def loopBody495_12 : HolLoopProg 64 :=
.seq loopBody495_1 loopBody495_11

def loopBody495_13 : HolLoopProg 64 :=
.mark loopBody495_12

def loopBody495_14 : HolLoopProg 64 :=
.seq loopBody495_1 loopBody495_13

def loopBody495_15 : HolLoopProg 64 :=
.mark loopBody495_14

def loopBody495_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.add
            [Flapjack.HolLoopExp.load
                (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
                  [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
              Flapjack.HolLoopExp.const 112#64]),
        Flapjack.HolLoopExp.const 96#64]))

def loopBody495_17 : HolLoopProg 64 :=
.mark loopBody495_16

def loopBody495_18 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 477) ([2]) (some (2, loopBody495_5, loopBody495_1, (Flapjack.Spt.ln)))

def loopBody495_19 : HolLoopProg 64 :=
.mark loopBody495_18

def loopBody495_20 : HolLoopProg 64 :=
.seq loopBody495_19 loopBody495_1

def loopBody495_21 : HolLoopProg 64 :=
.mark loopBody495_20

def loopBody495_22 : HolLoopProg 64 :=
.seq loopBody495_17 loopBody495_21

def loopBody495_23 : HolLoopProg 64 :=
.mark loopBody495_22

def loopBody495_24 : HolLoopProg 64 :=
.seq loopBody495_1 loopBody495_23

def loopBody495_25 : HolLoopProg 64 :=
.mark loopBody495_24

def loopBody495_26 : HolLoopProg 64 :=
.seq loopBody495_1 loopBody495_25

def loopBody495_27 : HolLoopProg 64 :=
.mark loopBody495_26

def loopBody495_28 : HolLoopProg 64 :=
.seq loopBody495_15 loopBody495_27

def loopBody495_29 : HolLoopProg 64 :=
.mark loopBody495_28

def loopBody495_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody495_31 : HolLoopProg 64 :=
.mark loopBody495_30

def loopBody495_32 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody495_5, loopBody495_1, (Flapjack.Spt.ln)))

def loopBody495_33 : HolLoopProg 64 :=
.mark loopBody495_32

def loopBody495_34 : HolLoopProg 64 :=
.seq loopBody495_33 loopBody495_1

def loopBody495_35 : HolLoopProg 64 :=
.mark loopBody495_34

def loopBody495_36 : HolLoopProg 64 :=
.seq loopBody495_31 loopBody495_35

def loopBody495_37 : HolLoopProg 64 :=
.mark loopBody495_36

def loopBody495_38 : HolLoopProg 64 :=
.seq loopBody495_1 loopBody495_37

def loopBody495_39 : HolLoopProg 64 :=
.mark loopBody495_38

def loopBody495_40 : HolLoopProg 64 :=
.seq loopBody495_1 loopBody495_39

def loopBody495_41 : HolLoopProg 64 :=
.mark loopBody495_40

def loopBody495_42 : HolLoopProg 64 :=
.seq loopBody495_29 loopBody495_41

def loopBody495_43 : HolLoopProg 64 :=
.mark loopBody495_42

def loopBody495_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody495_45 : HolLoopProg 64 :=
.mark loopBody495_44

def loopBody495_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody495_47 : HolLoopProg 64 :=
.mark loopBody495_46

def loopBody495_48 : HolLoopProg 64 :=
.seq loopBody495_47 loopBody495_1

def loopBody495_49 : HolLoopProg 64 :=
.mark loopBody495_48

def loopBody495_50 : HolLoopProg 64 :=
.seq loopBody495_45 loopBody495_49

def loopBody495_51 : HolLoopProg 64 :=
.mark loopBody495_50

def loopBody495_52 : HolLoopProg 64 :=
.seq loopBody495_43 loopBody495_51

def loopBody495_53 : HolLoopProg 64 :=
.mark loopBody495_52

def output495 : Nat × List Nat × HolLoopProg 64 :=
  (559, [], loopBody495_53)
end InitECandidate.Proofs.FrontendStages.Loop
