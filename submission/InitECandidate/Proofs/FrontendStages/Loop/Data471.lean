import InitECandidate.Proofs.FrontendStages.Loop.Translate455
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody471_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody471_1 : HolLoopProg 64 :=
.mark loopBody471_0

def loopBody471_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody471_3 : HolLoopProg 64 :=
.mark loopBody471_2

def loopBody471_4 : HolLoopProg 64 :=
.call (some ([1, 2, 3, 4], Flapjack.Spt.ln)) (some 475) ([]) (some (5, loopBody471_3, loopBody471_1, (Flapjack.Spt.ln)))

def loopBody471_5 : HolLoopProg 64 :=
.mark loopBody471_4

def loopBody471_6 : HolLoopProg 64 :=
.seq loopBody471_5 loopBody471_1

def loopBody471_7 : HolLoopProg 64 :=
.mark loopBody471_6

def loopBody471_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 2#64)

def loopBody471_9 : HolLoopProg 64 :=
.mark loopBody471_8

def loopBody471_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody471_11 : HolLoopProg 64 :=
.mark loopBody471_10

def loopBody471_12 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 470) ([6]) (some (6, loopBody471_11, loopBody471_1, (Flapjack.Spt.ln)))

def loopBody471_13 : HolLoopProg 64 :=
.mark loopBody471_12

def loopBody471_14 : HolLoopProg 64 :=
.seq loopBody471_13 loopBody471_1

def loopBody471_15 : HolLoopProg 64 :=
.mark loopBody471_14

def loopBody471_16 : HolLoopProg 64 :=
.seq loopBody471_9 loopBody471_15

def loopBody471_17 : HolLoopProg 64 :=
.mark loopBody471_16

def loopBody471_18 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_17

def loopBody471_19 : HolLoopProg 64 :=
.mark loopBody471_18

def loopBody471_20 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_19

def loopBody471_21 : HolLoopProg 64 :=
.mark loopBody471_20

def loopBody471_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody471_23 : HolLoopProg 64 :=
.mark loopBody471_22

def loopBody471_24 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 490) ([6]) (some (6, loopBody471_11, loopBody471_1, (Flapjack.Spt.ln)))

def loopBody471_25 : HolLoopProg 64 :=
.mark loopBody471_24

def loopBody471_26 : HolLoopProg 64 :=
.seq loopBody471_25 loopBody471_1

def loopBody471_27 : HolLoopProg 64 :=
.mark loopBody471_26

def loopBody471_28 : HolLoopProg 64 :=
.seq loopBody471_23 loopBody471_27

def loopBody471_29 : HolLoopProg 64 :=
.mark loopBody471_28

def loopBody471_30 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_29

def loopBody471_31 : HolLoopProg 64 :=
.mark loopBody471_30

def loopBody471_32 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_31

def loopBody471_33 : HolLoopProg 64 :=
.mark loopBody471_32

def loopBody471_34 : HolLoopProg 64 :=
.seq loopBody471_21 loopBody471_33

def loopBody471_35 : HolLoopProg 64 :=
.mark loopBody471_34

def loopBody471_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody471_37 : HolLoopProg 64 :=
.mark loopBody471_36

def loopBody471_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody471_39 : HolLoopProg 64 :=
.mark loopBody471_38

def loopBody471_40 : HolLoopProg 64 :=
.seq loopBody471_39 loopBody471_1

def loopBody471_41 : HolLoopProg 64 :=
.mark loopBody471_40

def loopBody471_42 : HolLoopProg 64 :=
.seq loopBody471_37 loopBody471_41

def loopBody471_43 : HolLoopProg 64 :=
.mark loopBody471_42

def loopBody471_44 : HolLoopProg 64 :=
.seq loopBody471_35 loopBody471_43

def loopBody471_45 : HolLoopProg 64 :=
.mark loopBody471_44

def loopBody471_46 : HolLoopProg 64 :=
.seq loopBody471_7 loopBody471_45

def loopBody471_47 : HolLoopProg 64 :=
.mark loopBody471_46

def loopBody471_48 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_47

def loopBody471_49 : HolLoopProg 64 :=
.mark loopBody471_48

def loopBody471_50 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_49

def loopBody471_51 : HolLoopProg 64 :=
.mark loopBody471_50

def loopBody471_52 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_51

def loopBody471_53 : HolLoopProg 64 :=
.mark loopBody471_52

def loopBody471_54 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_53

def loopBody471_55 : HolLoopProg 64 :=
.mark loopBody471_54

def loopBody471_56 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_55

def loopBody471_57 : HolLoopProg 64 :=
.mark loopBody471_56

def loopBody471_58 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_57

def loopBody471_59 : HolLoopProg 64 :=
.mark loopBody471_58

def loopBody471_60 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_59

def loopBody471_61 : HolLoopProg 64 :=
.mark loopBody471_60

def loopBody471_62 : HolLoopProg 64 :=
.seq loopBody471_1 loopBody471_61

def loopBody471_63 : HolLoopProg 64 :=
.mark loopBody471_62

def output471 : Nat × List Nat × HolLoopProg 64 :=
  (535, [], loopBody471_63)
end InitECandidate.Proofs.FrontendStages.Loop
