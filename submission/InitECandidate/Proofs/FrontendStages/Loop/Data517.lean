import InitECandidate.Proofs.FrontendStages.Loop.Translate501
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody517_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody517_1 : HolLoopProg 64 :=
.mark loopBody517_0

def loopBody517_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 2#64)

def loopBody517_3 : HolLoopProg 64 :=
.mark loopBody517_2

def loopBody517_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody517_5 : HolLoopProg 64 :=
.mark loopBody517_4

def loopBody517_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 470) ([2]) (some (2, loopBody517_5, loopBody517_1, (Flapjack.Spt.ln)))

def loopBody517_7 : HolLoopProg 64 :=
.mark loopBody517_6

def loopBody517_8 : HolLoopProg 64 :=
.seq loopBody517_7 loopBody517_1

def loopBody517_9 : HolLoopProg 64 :=
.mark loopBody517_8

def loopBody517_10 : HolLoopProg 64 :=
.seq loopBody517_3 loopBody517_9

def loopBody517_11 : HolLoopProg 64 :=
.mark loopBody517_10

def loopBody517_12 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_11

def loopBody517_13 : HolLoopProg 64 :=
.mark loopBody517_12

def loopBody517_14 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_13

def loopBody517_15 : HolLoopProg 64 :=
.mark loopBody517_14

def loopBody517_16 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 572) ([]) (some (2, loopBody517_5, loopBody517_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody517_17 : HolLoopProg 64 :=
.mark loopBody517_16

def loopBody517_18 : HolLoopProg 64 :=
.seq loopBody517_17 loopBody517_1

def loopBody517_19 : HolLoopProg 64 :=
.mark loopBody517_18

def loopBody517_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 0#64]))

def loopBody517_21 : HolLoopProg 64 :=
.mark loopBody517_20

def loopBody517_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody517_23 : HolLoopProg 64 :=
.mark loopBody517_22

def loopBody517_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 477) ([3]) (some (3, loopBody517_23, loopBody517_1, (Flapjack.Spt.ln)))

def loopBody517_25 : HolLoopProg 64 :=
.mark loopBody517_24

def loopBody517_26 : HolLoopProg 64 :=
.seq loopBody517_25 loopBody517_1

def loopBody517_27 : HolLoopProg 64 :=
.mark loopBody517_26

def loopBody517_28 : HolLoopProg 64 :=
.seq loopBody517_21 loopBody517_27

def loopBody517_29 : HolLoopProg 64 :=
.mark loopBody517_28

def loopBody517_30 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_29

def loopBody517_31 : HolLoopProg 64 :=
.mark loopBody517_30

def loopBody517_32 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_31

def loopBody517_33 : HolLoopProg 64 :=
.mark loopBody517_32

def loopBody517_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody517_35 : HolLoopProg 64 :=
.mark loopBody517_34

def loopBody517_36 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 490) ([3]) (some (3, loopBody517_23, loopBody517_1, (Flapjack.Spt.ln)))

def loopBody517_37 : HolLoopProg 64 :=
.mark loopBody517_36

def loopBody517_38 : HolLoopProg 64 :=
.seq loopBody517_37 loopBody517_1

def loopBody517_39 : HolLoopProg 64 :=
.mark loopBody517_38

def loopBody517_40 : HolLoopProg 64 :=
.seq loopBody517_35 loopBody517_39

def loopBody517_41 : HolLoopProg 64 :=
.mark loopBody517_40

def loopBody517_42 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_41

def loopBody517_43 : HolLoopProg 64 :=
.mark loopBody517_42

def loopBody517_44 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_43

def loopBody517_45 : HolLoopProg 64 :=
.mark loopBody517_44

def loopBody517_46 : HolLoopProg 64 :=
.seq loopBody517_33 loopBody517_45

def loopBody517_47 : HolLoopProg 64 :=
.mark loopBody517_46

def loopBody517_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody517_49 : HolLoopProg 64 :=
.mark loopBody517_48

def loopBody517_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody517_51 : HolLoopProg 64 :=
.mark loopBody517_50

def loopBody517_52 : HolLoopProg 64 :=
.seq loopBody517_51 loopBody517_1

def loopBody517_53 : HolLoopProg 64 :=
.mark loopBody517_52

def loopBody517_54 : HolLoopProg 64 :=
.seq loopBody517_49 loopBody517_53

def loopBody517_55 : HolLoopProg 64 :=
.mark loopBody517_54

def loopBody517_56 : HolLoopProg 64 :=
.seq loopBody517_47 loopBody517_55

def loopBody517_57 : HolLoopProg 64 :=
.mark loopBody517_56

def loopBody517_58 : HolLoopProg 64 :=
.seq loopBody517_19 loopBody517_57

def loopBody517_59 : HolLoopProg 64 :=
.mark loopBody517_58

def loopBody517_60 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_59

def loopBody517_61 : HolLoopProg 64 :=
.mark loopBody517_60

def loopBody517_62 : HolLoopProg 64 :=
.seq loopBody517_1 loopBody517_61

def loopBody517_63 : HolLoopProg 64 :=
.mark loopBody517_62

def loopBody517_64 : HolLoopProg 64 :=
.seq loopBody517_15 loopBody517_63

def loopBody517_65 : HolLoopProg 64 :=
.mark loopBody517_64

def output517 : Nat × List Nat × HolLoopProg 64 :=
  (581, [], loopBody517_65)
end InitECandidate.Proofs.FrontendStages.Loop
