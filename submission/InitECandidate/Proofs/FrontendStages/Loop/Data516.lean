import InitECandidate.Proofs.FrontendStages.Loop.Translate500
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody516_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody516_1 : HolLoopProg 64 :=
.mark loopBody516_0

def loopBody516_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody516_3 : HolLoopProg 64 :=
.mark loopBody516_2

def loopBody516_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody516_5 : HolLoopProg 64 :=
.mark loopBody516_4

def loopBody516_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody516_5, loopBody516_1, (Flapjack.Spt.ln)))

def loopBody516_7 : HolLoopProg 64 :=
.mark loopBody516_6

def loopBody516_8 : HolLoopProg 64 :=
.seq loopBody516_7 loopBody516_1

def loopBody516_9 : HolLoopProg 64 :=
.mark loopBody516_8

def loopBody516_10 : HolLoopProg 64 :=
.seq loopBody516_3 loopBody516_9

def loopBody516_11 : HolLoopProg 64 :=
.mark loopBody516_10

def loopBody516_12 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_11

def loopBody516_13 : HolLoopProg 64 :=
.mark loopBody516_12

def loopBody516_14 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_13

def loopBody516_15 : HolLoopProg 64 :=
.mark loopBody516_14

def loopBody516_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 572) ([]) (some (2, loopBody516_5, loopBody516_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody516_17 : HolLoopProg 64 :=
.mark loopBody516_16

def loopBody516_18 : HolLoopProg 64 :=
.seq loopBody516_17 loopBody516_1

def loopBody516_19 : HolLoopProg 64 :=
.mark loopBody516_18

def loopBody516_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64]))

def loopBody516_21 : HolLoopProg 64 :=
.mark loopBody516_20

def loopBody516_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody516_23 : HolLoopProg 64 :=
.mark loopBody516_22

def loopBody516_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 477) ([3]) (some (3, loopBody516_23, loopBody516_1, (Flapjack.Spt.ln)))

def loopBody516_25 : HolLoopProg 64 :=
.mark loopBody516_24

def loopBody516_26 : HolLoopProg 64 :=
.seq loopBody516_25 loopBody516_1

def loopBody516_27 : HolLoopProg 64 :=
.mark loopBody516_26

def loopBody516_28 : HolLoopProg 64 :=
.seq loopBody516_21 loopBody516_27

def loopBody516_29 : HolLoopProg 64 :=
.mark loopBody516_28

def loopBody516_30 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_29

def loopBody516_31 : HolLoopProg 64 :=
.mark loopBody516_30

def loopBody516_32 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_31

def loopBody516_33 : HolLoopProg 64 :=
.mark loopBody516_32

def loopBody516_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody516_35 : HolLoopProg 64 :=
.mark loopBody516_34

def loopBody516_36 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 490) ([3]) (some (3, loopBody516_23, loopBody516_1, (Flapjack.Spt.ln)))

def loopBody516_37 : HolLoopProg 64 :=
.mark loopBody516_36

def loopBody516_38 : HolLoopProg 64 :=
.seq loopBody516_37 loopBody516_1

def loopBody516_39 : HolLoopProg 64 :=
.mark loopBody516_38

def loopBody516_40 : HolLoopProg 64 :=
.seq loopBody516_35 loopBody516_39

def loopBody516_41 : HolLoopProg 64 :=
.mark loopBody516_40

def loopBody516_42 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_41

def loopBody516_43 : HolLoopProg 64 :=
.mark loopBody516_42

def loopBody516_44 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_43

def loopBody516_45 : HolLoopProg 64 :=
.mark loopBody516_44

def loopBody516_46 : HolLoopProg 64 :=
.seq loopBody516_33 loopBody516_45

def loopBody516_47 : HolLoopProg 64 :=
.mark loopBody516_46

def loopBody516_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody516_49 : HolLoopProg 64 :=
.mark loopBody516_48

def loopBody516_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody516_51 : HolLoopProg 64 :=
.mark loopBody516_50

def loopBody516_52 : HolLoopProg 64 :=
.seq loopBody516_51 loopBody516_1

def loopBody516_53 : HolLoopProg 64 :=
.mark loopBody516_52

def loopBody516_54 : HolLoopProg 64 :=
.seq loopBody516_49 loopBody516_53

def loopBody516_55 : HolLoopProg 64 :=
.mark loopBody516_54

def loopBody516_56 : HolLoopProg 64 :=
.seq loopBody516_47 loopBody516_55

def loopBody516_57 : HolLoopProg 64 :=
.mark loopBody516_56

def loopBody516_58 : HolLoopProg 64 :=
.seq loopBody516_19 loopBody516_57

def loopBody516_59 : HolLoopProg 64 :=
.mark loopBody516_58

def loopBody516_60 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_59

def loopBody516_61 : HolLoopProg 64 :=
.mark loopBody516_60

def loopBody516_62 : HolLoopProg 64 :=
.seq loopBody516_1 loopBody516_61

def loopBody516_63 : HolLoopProg 64 :=
.mark loopBody516_62

def loopBody516_64 : HolLoopProg 64 :=
.seq loopBody516_15 loopBody516_63

def loopBody516_65 : HolLoopProg 64 :=
.mark loopBody516_64

def output516 : Nat × List Nat × HolLoopProg 64 :=
  (580, [], loopBody516_65)
end InitECandidate.Proofs.FrontendStages.Loop
