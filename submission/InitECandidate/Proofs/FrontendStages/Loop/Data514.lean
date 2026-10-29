import InitECandidate.Proofs.FrontendStages.Loop.Translate498
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody514_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody514_1 : HolLoopProg 64 :=
.mark loopBody514_0

def loopBody514_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody514_3 : HolLoopProg 64 :=
.mark loopBody514_2

def loopBody514_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody514_5 : HolLoopProg 64 :=
.mark loopBody514_4

def loopBody514_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody514_5, loopBody514_1, (Flapjack.Spt.ln)))

def loopBody514_7 : HolLoopProg 64 :=
.mark loopBody514_6

def loopBody514_8 : HolLoopProg 64 :=
.seq loopBody514_7 loopBody514_1

def loopBody514_9 : HolLoopProg 64 :=
.mark loopBody514_8

def loopBody514_10 : HolLoopProg 64 :=
.seq loopBody514_3 loopBody514_9

def loopBody514_11 : HolLoopProg 64 :=
.mark loopBody514_10

def loopBody514_12 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_11

def loopBody514_13 : HolLoopProg 64 :=
.mark loopBody514_12

def loopBody514_14 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_13

def loopBody514_15 : HolLoopProg 64 :=
.mark loopBody514_14

def loopBody514_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 572) ([]) (some (2, loopBody514_5, loopBody514_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody514_17 : HolLoopProg 64 :=
.mark loopBody514_16

def loopBody514_18 : HolLoopProg 64 :=
.seq loopBody514_17 loopBody514_1

def loopBody514_19 : HolLoopProg 64 :=
.mark loopBody514_18

def loopBody514_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 80#64]))

def loopBody514_21 : HolLoopProg 64 :=
.mark loopBody514_20

def loopBody514_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody514_23 : HolLoopProg 64 :=
.mark loopBody514_22

def loopBody514_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 477) ([3]) (some (3, loopBody514_23, loopBody514_1, (Flapjack.Spt.ln)))

def loopBody514_25 : HolLoopProg 64 :=
.mark loopBody514_24

def loopBody514_26 : HolLoopProg 64 :=
.seq loopBody514_25 loopBody514_1

def loopBody514_27 : HolLoopProg 64 :=
.mark loopBody514_26

def loopBody514_28 : HolLoopProg 64 :=
.seq loopBody514_21 loopBody514_27

def loopBody514_29 : HolLoopProg 64 :=
.mark loopBody514_28

def loopBody514_30 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_29

def loopBody514_31 : HolLoopProg 64 :=
.mark loopBody514_30

def loopBody514_32 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_31

def loopBody514_33 : HolLoopProg 64 :=
.mark loopBody514_32

def loopBody514_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody514_35 : HolLoopProg 64 :=
.mark loopBody514_34

def loopBody514_36 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 490) ([3]) (some (3, loopBody514_23, loopBody514_1, (Flapjack.Spt.ln)))

def loopBody514_37 : HolLoopProg 64 :=
.mark loopBody514_36

def loopBody514_38 : HolLoopProg 64 :=
.seq loopBody514_37 loopBody514_1

def loopBody514_39 : HolLoopProg 64 :=
.mark loopBody514_38

def loopBody514_40 : HolLoopProg 64 :=
.seq loopBody514_35 loopBody514_39

def loopBody514_41 : HolLoopProg 64 :=
.mark loopBody514_40

def loopBody514_42 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_41

def loopBody514_43 : HolLoopProg 64 :=
.mark loopBody514_42

def loopBody514_44 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_43

def loopBody514_45 : HolLoopProg 64 :=
.mark loopBody514_44

def loopBody514_46 : HolLoopProg 64 :=
.seq loopBody514_33 loopBody514_45

def loopBody514_47 : HolLoopProg 64 :=
.mark loopBody514_46

def loopBody514_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody514_49 : HolLoopProg 64 :=
.mark loopBody514_48

def loopBody514_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody514_51 : HolLoopProg 64 :=
.mark loopBody514_50

def loopBody514_52 : HolLoopProg 64 :=
.seq loopBody514_51 loopBody514_1

def loopBody514_53 : HolLoopProg 64 :=
.mark loopBody514_52

def loopBody514_54 : HolLoopProg 64 :=
.seq loopBody514_49 loopBody514_53

def loopBody514_55 : HolLoopProg 64 :=
.mark loopBody514_54

def loopBody514_56 : HolLoopProg 64 :=
.seq loopBody514_47 loopBody514_55

def loopBody514_57 : HolLoopProg 64 :=
.mark loopBody514_56

def loopBody514_58 : HolLoopProg 64 :=
.seq loopBody514_19 loopBody514_57

def loopBody514_59 : HolLoopProg 64 :=
.mark loopBody514_58

def loopBody514_60 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_59

def loopBody514_61 : HolLoopProg 64 :=
.mark loopBody514_60

def loopBody514_62 : HolLoopProg 64 :=
.seq loopBody514_1 loopBody514_61

def loopBody514_63 : HolLoopProg 64 :=
.mark loopBody514_62

def loopBody514_64 : HolLoopProg 64 :=
.seq loopBody514_15 loopBody514_63

def loopBody514_65 : HolLoopProg 64 :=
.mark loopBody514_64

def output514 : Nat × List Nat × HolLoopProg 64 :=
  (578, [], loopBody514_65)
end InitECandidate.Proofs.FrontendStages.Loop
