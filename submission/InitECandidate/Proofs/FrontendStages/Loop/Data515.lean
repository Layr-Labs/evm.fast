import InitECandidate.Proofs.FrontendStages.Loop.Translate499
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody515_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody515_1 : HolLoopProg 64 :=
.mark loopBody515_0

def loopBody515_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody515_3 : HolLoopProg 64 :=
.mark loopBody515_2

def loopBody515_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody515_5 : HolLoopProg 64 :=
.mark loopBody515_4

def loopBody515_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody515_5, loopBody515_1, (Flapjack.Spt.ln)))

def loopBody515_7 : HolLoopProg 64 :=
.mark loopBody515_6

def loopBody515_8 : HolLoopProg 64 :=
.seq loopBody515_7 loopBody515_1

def loopBody515_9 : HolLoopProg 64 :=
.mark loopBody515_8

def loopBody515_10 : HolLoopProg 64 :=
.seq loopBody515_3 loopBody515_9

def loopBody515_11 : HolLoopProg 64 :=
.mark loopBody515_10

def loopBody515_12 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_11

def loopBody515_13 : HolLoopProg 64 :=
.mark loopBody515_12

def loopBody515_14 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_13

def loopBody515_15 : HolLoopProg 64 :=
.mark loopBody515_14

def loopBody515_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 572) ([]) (some (2, loopBody515_5, loopBody515_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody515_17 : HolLoopProg 64 :=
.mark loopBody515_16

def loopBody515_18 : HolLoopProg 64 :=
.seq loopBody515_17 loopBody515_1

def loopBody515_19 : HolLoopProg 64 :=
.mark loopBody515_18

def loopBody515_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 40#64]))

def loopBody515_21 : HolLoopProg 64 :=
.mark loopBody515_20

def loopBody515_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody515_23 : HolLoopProg 64 :=
.mark loopBody515_22

def loopBody515_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 477) ([3]) (some (3, loopBody515_23, loopBody515_1, (Flapjack.Spt.ln)))

def loopBody515_25 : HolLoopProg 64 :=
.mark loopBody515_24

def loopBody515_26 : HolLoopProg 64 :=
.seq loopBody515_25 loopBody515_1

def loopBody515_27 : HolLoopProg 64 :=
.mark loopBody515_26

def loopBody515_28 : HolLoopProg 64 :=
.seq loopBody515_21 loopBody515_27

def loopBody515_29 : HolLoopProg 64 :=
.mark loopBody515_28

def loopBody515_30 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_29

def loopBody515_31 : HolLoopProg 64 :=
.mark loopBody515_30

def loopBody515_32 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_31

def loopBody515_33 : HolLoopProg 64 :=
.mark loopBody515_32

def loopBody515_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody515_35 : HolLoopProg 64 :=
.mark loopBody515_34

def loopBody515_36 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 490) ([3]) (some (3, loopBody515_23, loopBody515_1, (Flapjack.Spt.ln)))

def loopBody515_37 : HolLoopProg 64 :=
.mark loopBody515_36

def loopBody515_38 : HolLoopProg 64 :=
.seq loopBody515_37 loopBody515_1

def loopBody515_39 : HolLoopProg 64 :=
.mark loopBody515_38

def loopBody515_40 : HolLoopProg 64 :=
.seq loopBody515_35 loopBody515_39

def loopBody515_41 : HolLoopProg 64 :=
.mark loopBody515_40

def loopBody515_42 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_41

def loopBody515_43 : HolLoopProg 64 :=
.mark loopBody515_42

def loopBody515_44 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_43

def loopBody515_45 : HolLoopProg 64 :=
.mark loopBody515_44

def loopBody515_46 : HolLoopProg 64 :=
.seq loopBody515_33 loopBody515_45

def loopBody515_47 : HolLoopProg 64 :=
.mark loopBody515_46

def loopBody515_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody515_49 : HolLoopProg 64 :=
.mark loopBody515_48

def loopBody515_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody515_51 : HolLoopProg 64 :=
.mark loopBody515_50

def loopBody515_52 : HolLoopProg 64 :=
.seq loopBody515_51 loopBody515_1

def loopBody515_53 : HolLoopProg 64 :=
.mark loopBody515_52

def loopBody515_54 : HolLoopProg 64 :=
.seq loopBody515_49 loopBody515_53

def loopBody515_55 : HolLoopProg 64 :=
.mark loopBody515_54

def loopBody515_56 : HolLoopProg 64 :=
.seq loopBody515_47 loopBody515_55

def loopBody515_57 : HolLoopProg 64 :=
.mark loopBody515_56

def loopBody515_58 : HolLoopProg 64 :=
.seq loopBody515_19 loopBody515_57

def loopBody515_59 : HolLoopProg 64 :=
.mark loopBody515_58

def loopBody515_60 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_59

def loopBody515_61 : HolLoopProg 64 :=
.mark loopBody515_60

def loopBody515_62 : HolLoopProg 64 :=
.seq loopBody515_1 loopBody515_61

def loopBody515_63 : HolLoopProg 64 :=
.mark loopBody515_62

def loopBody515_64 : HolLoopProg 64 :=
.seq loopBody515_15 loopBody515_63

def loopBody515_65 : HolLoopProg 64 :=
.mark loopBody515_64

def output515 : Nat × List Nat × HolLoopProg 64 :=
  (579, [], loopBody515_65)
end InitECandidate.Proofs.FrontendStages.Loop
