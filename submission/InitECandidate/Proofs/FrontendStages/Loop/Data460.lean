import InitECandidate.Proofs.FrontendStages.Loop.Translate444
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody460_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody460_1 : HolLoopProg 64 :=
.mark loopBody460_0

def loopBody460_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
      Flapjack.HolLoopExp.const 104#64])

def loopBody460_3 : HolLoopProg 64 :=
.mark loopBody460_2

def loopBody460_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody460_5 : HolLoopProg 64 :=
.mark loopBody460_4

def loopBody460_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody460_7 : HolLoopProg 64 :=
.mark loopBody460_6

def loopBody460_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 1) 3

def loopBody460_9 : HolLoopProg 64 :=
.mark loopBody460_8

def loopBody460_10 : HolLoopProg 64 :=
.seq loopBody460_9 loopBody460_1

def loopBody460_11 : HolLoopProg 64 :=
.mark loopBody460_10

def loopBody460_12 : HolLoopProg 64 :=
.seq loopBody460_7 loopBody460_11

def loopBody460_13 : HolLoopProg 64 :=
.mark loopBody460_12

def loopBody460_14 : HolLoopProg 64 :=
.seq loopBody460_13 loopBody460_1

def loopBody460_15 : HolLoopProg 64 :=
.mark loopBody460_14

def loopBody460_16 : HolLoopProg 64 :=
.seq loopBody460_5 loopBody460_15

def loopBody460_17 : HolLoopProg 64 :=
.mark loopBody460_16

def loopBody460_18 : HolLoopProg 64 :=
.seq loopBody460_1 loopBody460_17

def loopBody460_19 : HolLoopProg 64 :=
.mark loopBody460_18

def loopBody460_20 : HolLoopProg 64 :=
.seq loopBody460_3 loopBody460_19

def loopBody460_21 : HolLoopProg 64 :=
.mark loopBody460_20

def loopBody460_22 : HolLoopProg 64 :=
.seq loopBody460_1 loopBody460_21

def loopBody460_23 : HolLoopProg 64 :=
.mark loopBody460_22

def loopBody460_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody460_25 : HolLoopProg 64 :=
.mark loopBody460_24

def loopBody460_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody460_27 : HolLoopProg 64 :=
.mark loopBody460_26

def loopBody460_28 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 490) ([2]) (some (2, loopBody460_27, loopBody460_1, (Flapjack.Spt.ln)))

def loopBody460_29 : HolLoopProg 64 :=
.mark loopBody460_28

def loopBody460_30 : HolLoopProg 64 :=
.seq loopBody460_29 loopBody460_1

def loopBody460_31 : HolLoopProg 64 :=
.mark loopBody460_30

def loopBody460_32 : HolLoopProg 64 :=
.seq loopBody460_25 loopBody460_31

def loopBody460_33 : HolLoopProg 64 :=
.mark loopBody460_32

def loopBody460_34 : HolLoopProg 64 :=
.seq loopBody460_1 loopBody460_33

def loopBody460_35 : HolLoopProg 64 :=
.mark loopBody460_34

def loopBody460_36 : HolLoopProg 64 :=
.seq loopBody460_1 loopBody460_35

def loopBody460_37 : HolLoopProg 64 :=
.mark loopBody460_36

def loopBody460_38 : HolLoopProg 64 :=
.seq loopBody460_23 loopBody460_37

def loopBody460_39 : HolLoopProg 64 :=
.mark loopBody460_38

def loopBody460_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody460_41 : HolLoopProg 64 :=
.mark loopBody460_40

def loopBody460_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody460_43 : HolLoopProg 64 :=
.mark loopBody460_42

def loopBody460_44 : HolLoopProg 64 :=
.seq loopBody460_43 loopBody460_1

def loopBody460_45 : HolLoopProg 64 :=
.mark loopBody460_44

def loopBody460_46 : HolLoopProg 64 :=
.seq loopBody460_41 loopBody460_45

def loopBody460_47 : HolLoopProg 64 :=
.mark loopBody460_46

def loopBody460_48 : HolLoopProg 64 :=
.seq loopBody460_39 loopBody460_47

def loopBody460_49 : HolLoopProg 64 :=
.mark loopBody460_48

def output460 : Nat × List Nat × HolLoopProg 64 :=
  (524, [], loopBody460_49)
end InitECandidate.Proofs.FrontendStages.Loop
