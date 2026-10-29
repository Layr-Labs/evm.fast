import InitECandidate.Proofs.FrontendStages.Loop.Translate465
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody481_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody481_1 : HolLoopProg 64 :=
.mark loopBody481_0

def loopBody481_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64]))

def loopBody481_3 : HolLoopProg 64 :=
.mark loopBody481_2

def loopBody481_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 8#64)

def loopBody481_5 : HolLoopProg 64 :=
.mark loopBody481_4

def loopBody481_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody481_7 : HolLoopProg 64 :=
.mark loopBody481_6

def loopBody481_8 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 437) ([3, 4]) (some (3, loopBody481_7, loopBody481_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody481_9 : HolLoopProg 64 :=
.mark loopBody481_8

def loopBody481_10 : HolLoopProg 64 :=
.seq loopBody481_9 loopBody481_1

def loopBody481_11 : HolLoopProg 64 :=
.mark loopBody481_10

def loopBody481_12 : HolLoopProg 64 :=
.seq loopBody481_5 loopBody481_11

def loopBody481_13 : HolLoopProg 64 :=
.mark loopBody481_12

def loopBody481_14 : HolLoopProg 64 :=
.seq loopBody481_3 loopBody481_13

def loopBody481_15 : HolLoopProg 64 :=
.mark loopBody481_14

def loopBody481_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 2)

def loopBody481_17 : HolLoopProg 64 :=
.mark loopBody481_16

def loopBody481_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody481_19 : HolLoopProg 64 :=
.mark loopBody481_18

def loopBody481_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody481_21 : HolLoopProg 64 :=
.mark loopBody481_20

def loopBody481_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 3) 5

def loopBody481_23 : HolLoopProg 64 :=
.mark loopBody481_22

def loopBody481_24 : HolLoopProg 64 :=
.seq loopBody481_23 loopBody481_1

def loopBody481_25 : HolLoopProg 64 :=
.mark loopBody481_24

def loopBody481_26 : HolLoopProg 64 :=
.seq loopBody481_21 loopBody481_25

def loopBody481_27 : HolLoopProg 64 :=
.mark loopBody481_26

def loopBody481_28 : HolLoopProg 64 :=
.seq loopBody481_27 loopBody481_1

def loopBody481_29 : HolLoopProg 64 :=
.mark loopBody481_28

def loopBody481_30 : HolLoopProg 64 :=
.seq loopBody481_19 loopBody481_29

def loopBody481_31 : HolLoopProg 64 :=
.mark loopBody481_30

def loopBody481_32 : HolLoopProg 64 :=
.seq loopBody481_1 loopBody481_31

def loopBody481_33 : HolLoopProg 64 :=
.mark loopBody481_32

def loopBody481_34 : HolLoopProg 64 :=
.seq loopBody481_17 loopBody481_33

def loopBody481_35 : HolLoopProg 64 :=
.mark loopBody481_34

def loopBody481_36 : HolLoopProg 64 :=
.seq loopBody481_1 loopBody481_35

def loopBody481_37 : HolLoopProg 64 :=
.mark loopBody481_36

def loopBody481_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody481_39 : HolLoopProg 64 :=
.mark loopBody481_38

def loopBody481_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody481_41 : HolLoopProg 64 :=
.mark loopBody481_40

def loopBody481_42 : HolLoopProg 64 :=
.seq loopBody481_41 loopBody481_1

def loopBody481_43 : HolLoopProg 64 :=
.mark loopBody481_42

def loopBody481_44 : HolLoopProg 64 :=
.seq loopBody481_39 loopBody481_43

def loopBody481_45 : HolLoopProg 64 :=
.mark loopBody481_44

def loopBody481_46 : HolLoopProg 64 :=
.seq loopBody481_37 loopBody481_45

def loopBody481_47 : HolLoopProg 64 :=
.mark loopBody481_46

def loopBody481_48 : HolLoopProg 64 :=
.seq loopBody481_15 loopBody481_47

def loopBody481_49 : HolLoopProg 64 :=
.mark loopBody481_48

def loopBody481_50 : HolLoopProg 64 :=
.seq loopBody481_1 loopBody481_49

def loopBody481_51 : HolLoopProg 64 :=
.mark loopBody481_50

def loopBody481_52 : HolLoopProg 64 :=
.seq loopBody481_1 loopBody481_51

def loopBody481_53 : HolLoopProg 64 :=
.mark loopBody481_52

def output481 : Nat × List Nat × HolLoopProg 64 :=
  (545, [0, 1], loopBody481_53)
end InitECandidate.Proofs.FrontendStages.Loop
