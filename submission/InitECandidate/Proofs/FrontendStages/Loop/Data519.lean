import InitECandidate.Proofs.FrontendStages.Loop.Translate503
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody519_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody519_1 : HolLoopProg 64 :=
.mark loopBody519_0

def loopBody519_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody519_3 : HolLoopProg 64 :=
.mark loopBody519_2

def loopBody519_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody519_5 : HolLoopProg 64 :=
.mark loopBody519_4

def loopBody519_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody519_5, loopBody519_1, (Flapjack.Spt.ln)))

def loopBody519_7 : HolLoopProg 64 :=
.mark loopBody519_6

def loopBody519_8 : HolLoopProg 64 :=
.seq loopBody519_7 loopBody519_1

def loopBody519_9 : HolLoopProg 64 :=
.mark loopBody519_8

def loopBody519_10 : HolLoopProg 64 :=
.seq loopBody519_3 loopBody519_9

def loopBody519_11 : HolLoopProg 64 :=
.mark loopBody519_10

def loopBody519_12 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_11

def loopBody519_13 : HolLoopProg 64 :=
.mark loopBody519_12

def loopBody519_14 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_13

def loopBody519_15 : HolLoopProg 64 :=
.mark loopBody519_14

def loopBody519_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 572) ([]) (some (2, loopBody519_5, loopBody519_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody519_17 : HolLoopProg 64 :=
.mark loopBody519_16

def loopBody519_18 : HolLoopProg 64 :=
.seq loopBody519_17 loopBody519_1

def loopBody519_19 : HolLoopProg 64 :=
.mark loopBody519_18

def loopBody519_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 112#64]))

def loopBody519_21 : HolLoopProg 64 :=
.mark loopBody519_20

def loopBody519_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody519_23 : HolLoopProg 64 :=
.mark loopBody519_22

def loopBody519_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 477) ([3]) (some (3, loopBody519_23, loopBody519_1, (Flapjack.Spt.ln)))

def loopBody519_25 : HolLoopProg 64 :=
.mark loopBody519_24

def loopBody519_26 : HolLoopProg 64 :=
.seq loopBody519_25 loopBody519_1

def loopBody519_27 : HolLoopProg 64 :=
.mark loopBody519_26

def loopBody519_28 : HolLoopProg 64 :=
.seq loopBody519_21 loopBody519_27

def loopBody519_29 : HolLoopProg 64 :=
.mark loopBody519_28

def loopBody519_30 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_29

def loopBody519_31 : HolLoopProg 64 :=
.mark loopBody519_30

def loopBody519_32 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_31

def loopBody519_33 : HolLoopProg 64 :=
.mark loopBody519_32

def loopBody519_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody519_35 : HolLoopProg 64 :=
.mark loopBody519_34

def loopBody519_36 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 490) ([3]) (some (3, loopBody519_23, loopBody519_1, (Flapjack.Spt.ln)))

def loopBody519_37 : HolLoopProg 64 :=
.mark loopBody519_36

def loopBody519_38 : HolLoopProg 64 :=
.seq loopBody519_37 loopBody519_1

def loopBody519_39 : HolLoopProg 64 :=
.mark loopBody519_38

def loopBody519_40 : HolLoopProg 64 :=
.seq loopBody519_35 loopBody519_39

def loopBody519_41 : HolLoopProg 64 :=
.mark loopBody519_40

def loopBody519_42 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_41

def loopBody519_43 : HolLoopProg 64 :=
.mark loopBody519_42

def loopBody519_44 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_43

def loopBody519_45 : HolLoopProg 64 :=
.mark loopBody519_44

def loopBody519_46 : HolLoopProg 64 :=
.seq loopBody519_33 loopBody519_45

def loopBody519_47 : HolLoopProg 64 :=
.mark loopBody519_46

def loopBody519_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody519_49 : HolLoopProg 64 :=
.mark loopBody519_48

def loopBody519_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody519_51 : HolLoopProg 64 :=
.mark loopBody519_50

def loopBody519_52 : HolLoopProg 64 :=
.seq loopBody519_51 loopBody519_1

def loopBody519_53 : HolLoopProg 64 :=
.mark loopBody519_52

def loopBody519_54 : HolLoopProg 64 :=
.seq loopBody519_49 loopBody519_53

def loopBody519_55 : HolLoopProg 64 :=
.mark loopBody519_54

def loopBody519_56 : HolLoopProg 64 :=
.seq loopBody519_47 loopBody519_55

def loopBody519_57 : HolLoopProg 64 :=
.mark loopBody519_56

def loopBody519_58 : HolLoopProg 64 :=
.seq loopBody519_19 loopBody519_57

def loopBody519_59 : HolLoopProg 64 :=
.mark loopBody519_58

def loopBody519_60 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_59

def loopBody519_61 : HolLoopProg 64 :=
.mark loopBody519_60

def loopBody519_62 : HolLoopProg 64 :=
.seq loopBody519_1 loopBody519_61

def loopBody519_63 : HolLoopProg 64 :=
.mark loopBody519_62

def loopBody519_64 : HolLoopProg 64 :=
.seq loopBody519_15 loopBody519_63

def loopBody519_65 : HolLoopProg 64 :=
.mark loopBody519_64

def output519 : Nat × List Nat × HolLoopProg 64 :=
  (583, [], loopBody519_65)
end InitECandidate.Proofs.FrontendStages.Loop
