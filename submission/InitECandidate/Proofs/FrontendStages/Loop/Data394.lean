import InitECandidate.Proofs.FrontendStages.Loop.Translate378
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody394_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody394_1 : HolLoopProg 64 :=
.mark loopBody394_0

def loopBody394_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody394_3 : HolLoopProg 64 :=
.mark loopBody394_2

def loopBody394_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody394_5 : HolLoopProg 64 :=
.mark loopBody394_4

def loopBody394_6 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 198) ([4]) (some (4, loopBody394_5, loopBody394_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody394_7 : HolLoopProg 64 :=
.mark loopBody394_6

def loopBody394_8 : HolLoopProg 64 :=
.seq loopBody394_7 loopBody394_1

def loopBody394_9 : HolLoopProg 64 :=
.mark loopBody394_8

def loopBody394_10 : HolLoopProg 64 :=
.seq loopBody394_3 loopBody394_9

def loopBody394_11 : HolLoopProg 64 :=
.mark loopBody394_10

def loopBody394_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody394_13 : HolLoopProg 64 :=
.mark loopBody394_12

def loopBody394_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody394_15 : HolLoopProg 64 :=
.mark loopBody394_14

def loopBody394_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody394_17 : HolLoopProg 64 :=
.mark loopBody394_16

def loopBody394_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 2#64)

def loopBody394_19 : HolLoopProg 64 :=
.mark loopBody394_18

def loopBody394_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody394_21 : HolLoopProg 64 :=
.mark loopBody394_20

def loopBody394_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody394_23 : HolLoopProg 64 :=
.mark loopBody394_22

def loopBody394_24 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 457) ([5, 6, 7, 8, 9]) (some (5, loopBody394_23, loopBody394_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody394_25 : HolLoopProg 64 :=
.mark loopBody394_24

def loopBody394_26 : HolLoopProg 64 :=
.seq loopBody394_25 loopBody394_1

def loopBody394_27 : HolLoopProg 64 :=
.mark loopBody394_26

def loopBody394_28 : HolLoopProg 64 :=
.seq loopBody394_21 loopBody394_27

def loopBody394_29 : HolLoopProg 64 :=
.mark loopBody394_28

def loopBody394_30 : HolLoopProg 64 :=
.seq loopBody394_19 loopBody394_29

def loopBody394_31 : HolLoopProg 64 :=
.mark loopBody394_30

def loopBody394_32 : HolLoopProg 64 :=
.seq loopBody394_17 loopBody394_31

def loopBody394_33 : HolLoopProg 64 :=
.mark loopBody394_32

def loopBody394_34 : HolLoopProg 64 :=
.seq loopBody394_15 loopBody394_33

def loopBody394_35 : HolLoopProg 64 :=
.mark loopBody394_34

def loopBody394_36 : HolLoopProg 64 :=
.seq loopBody394_13 loopBody394_35

def loopBody394_37 : HolLoopProg 64 :=
.mark loopBody394_36

def loopBody394_38 : HolLoopProg 64 :=
.seq loopBody394_1 loopBody394_37

def loopBody394_39 : HolLoopProg 64 :=
.mark loopBody394_38

def loopBody394_40 : HolLoopProg 64 :=
.seq loopBody394_1 loopBody394_39

def loopBody394_41 : HolLoopProg 64 :=
.mark loopBody394_40

def loopBody394_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody394_43 : HolLoopProg 64 :=
.mark loopBody394_42

def loopBody394_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody394_45 : HolLoopProg 64 :=
.mark loopBody394_44

def loopBody394_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5]

def loopBody394_47 : HolLoopProg 64 :=
.mark loopBody394_46

def loopBody394_48 : HolLoopProg 64 :=
.seq loopBody394_47 loopBody394_1

def loopBody394_49 : HolLoopProg 64 :=
.mark loopBody394_48

def loopBody394_50 : HolLoopProg 64 :=
.seq loopBody394_45 loopBody394_49

def loopBody394_51 : HolLoopProg 64 :=
.mark loopBody394_50

def loopBody394_52 : HolLoopProg 64 :=
.seq loopBody394_43 loopBody394_51

def loopBody394_53 : HolLoopProg 64 :=
.mark loopBody394_52

def loopBody394_54 : HolLoopProg 64 :=
.seq loopBody394_41 loopBody394_53

def loopBody394_55 : HolLoopProg 64 :=
.mark loopBody394_54

def loopBody394_56 : HolLoopProg 64 :=
.seq loopBody394_11 loopBody394_55

def loopBody394_57 : HolLoopProg 64 :=
.mark loopBody394_56

def loopBody394_58 : HolLoopProg 64 :=
.seq loopBody394_1 loopBody394_57

def loopBody394_59 : HolLoopProg 64 :=
.mark loopBody394_58

def loopBody394_60 : HolLoopProg 64 :=
.seq loopBody394_1 loopBody394_59

def loopBody394_61 : HolLoopProg 64 :=
.mark loopBody394_60

def loopBody394_62 : HolLoopProg 64 :=
.seq loopBody394_1 loopBody394_61

def loopBody394_63 : HolLoopProg 64 :=
.mark loopBody394_62

def loopBody394_64 : HolLoopProg 64 :=
.seq loopBody394_1 loopBody394_63

def loopBody394_65 : HolLoopProg 64 :=
.mark loopBody394_64

def output394 : Nat × List Nat × HolLoopProg 64 :=
  (458, [0, 1], loopBody394_65)
end InitECandidate.Proofs.FrontendStages.Loop
