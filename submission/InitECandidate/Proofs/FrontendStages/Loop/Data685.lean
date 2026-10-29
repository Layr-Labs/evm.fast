import InitECandidate.Proofs.FrontendStages.Loop.Translate669
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody685_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody685_1 : HolLoopProg 64 :=
.mark loopBody685_0

def loopBody685_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody685_3 : HolLoopProg 64 :=
.mark loopBody685_2

def loopBody685_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody685_5 : HolLoopProg 64 :=
.mark loopBody685_4

def loopBody685_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody685_7 : HolLoopProg 64 :=
.mark loopBody685_6

def loopBody685_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody685_9 : HolLoopProg 64 :=
.mark loopBody685_8

def loopBody685_10 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 734) ([4, 5, 6]) (some (4, loopBody685_9, loopBody685_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody685_11 : HolLoopProg 64 :=
.mark loopBody685_10

def loopBody685_12 : HolLoopProg 64 :=
.seq loopBody685_11 loopBody685_1

def loopBody685_13 : HolLoopProg 64 :=
.mark loopBody685_12

def loopBody685_14 : HolLoopProg 64 :=
.seq loopBody685_7 loopBody685_13

def loopBody685_15 : HolLoopProg 64 :=
.mark loopBody685_14

def loopBody685_16 : HolLoopProg 64 :=
.seq loopBody685_5 loopBody685_15

def loopBody685_17 : HolLoopProg 64 :=
.mark loopBody685_16

def loopBody685_18 : HolLoopProg 64 :=
.seq loopBody685_3 loopBody685_17

def loopBody685_19 : HolLoopProg 64 :=
.mark loopBody685_18

def loopBody685_20 : HolLoopProg 64 :=
.seq loopBody685_1 loopBody685_19

def loopBody685_21 : HolLoopProg 64 :=
.mark loopBody685_20

def loopBody685_22 : HolLoopProg 64 :=
.seq loopBody685_1 loopBody685_21

def loopBody685_23 : HolLoopProg 64 :=
.mark loopBody685_22

def loopBody685_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 96#64])

def loopBody685_25 : HolLoopProg 64 :=
.mark loopBody685_24

def loopBody685_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 96#64])

def loopBody685_27 : HolLoopProg 64 :=
.mark loopBody685_26

def loopBody685_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 96#64])

def loopBody685_29 : HolLoopProg 64 :=
.mark loopBody685_28

def loopBody685_30 : HolLoopProg 64 :=
.seq loopBody685_29 loopBody685_13

def loopBody685_31 : HolLoopProg 64 :=
.mark loopBody685_30

def loopBody685_32 : HolLoopProg 64 :=
.seq loopBody685_27 loopBody685_31

def loopBody685_33 : HolLoopProg 64 :=
.mark loopBody685_32

def loopBody685_34 : HolLoopProg 64 :=
.seq loopBody685_25 loopBody685_33

def loopBody685_35 : HolLoopProg 64 :=
.mark loopBody685_34

def loopBody685_36 : HolLoopProg 64 :=
.seq loopBody685_1 loopBody685_35

def loopBody685_37 : HolLoopProg 64 :=
.mark loopBody685_36

def loopBody685_38 : HolLoopProg 64 :=
.seq loopBody685_1 loopBody685_37

def loopBody685_39 : HolLoopProg 64 :=
.mark loopBody685_38

def loopBody685_40 : HolLoopProg 64 :=
.seq loopBody685_23 loopBody685_39

def loopBody685_41 : HolLoopProg 64 :=
.mark loopBody685_40

def loopBody685_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 192#64])

def loopBody685_43 : HolLoopProg 64 :=
.mark loopBody685_42

def loopBody685_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 192#64])

def loopBody685_45 : HolLoopProg 64 :=
.mark loopBody685_44

def loopBody685_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 192#64])

def loopBody685_47 : HolLoopProg 64 :=
.mark loopBody685_46

def loopBody685_48 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 734) ([4, 5, 6]) (some (4, loopBody685_9, loopBody685_1, (Flapjack.Spt.ln)))

def loopBody685_49 : HolLoopProg 64 :=
.mark loopBody685_48

def loopBody685_50 : HolLoopProg 64 :=
.seq loopBody685_49 loopBody685_1

def loopBody685_51 : HolLoopProg 64 :=
.mark loopBody685_50

def loopBody685_52 : HolLoopProg 64 :=
.seq loopBody685_47 loopBody685_51

def loopBody685_53 : HolLoopProg 64 :=
.mark loopBody685_52

def loopBody685_54 : HolLoopProg 64 :=
.seq loopBody685_45 loopBody685_53

def loopBody685_55 : HolLoopProg 64 :=
.mark loopBody685_54

def loopBody685_56 : HolLoopProg 64 :=
.seq loopBody685_43 loopBody685_55

def loopBody685_57 : HolLoopProg 64 :=
.mark loopBody685_56

def loopBody685_58 : HolLoopProg 64 :=
.seq loopBody685_1 loopBody685_57

def loopBody685_59 : HolLoopProg 64 :=
.mark loopBody685_58

def loopBody685_60 : HolLoopProg 64 :=
.seq loopBody685_1 loopBody685_59

def loopBody685_61 : HolLoopProg 64 :=
.mark loopBody685_60

def loopBody685_62 : HolLoopProg 64 :=
.seq loopBody685_41 loopBody685_61

def loopBody685_63 : HolLoopProg 64 :=
.mark loopBody685_62

def loopBody685_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody685_65 : HolLoopProg 64 :=
.mark loopBody685_64

def loopBody685_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody685_67 : HolLoopProg 64 :=
.mark loopBody685_66

def loopBody685_68 : HolLoopProg 64 :=
.seq loopBody685_67 loopBody685_1

def loopBody685_69 : HolLoopProg 64 :=
.mark loopBody685_68

def loopBody685_70 : HolLoopProg 64 :=
.seq loopBody685_65 loopBody685_69

def loopBody685_71 : HolLoopProg 64 :=
.mark loopBody685_70

def loopBody685_72 : HolLoopProg 64 :=
.seq loopBody685_63 loopBody685_71

def loopBody685_73 : HolLoopProg 64 :=
.mark loopBody685_72

def output685 : Nat × List Nat × HolLoopProg 64 :=
  (749, [0, 1, 2], loopBody685_73)
end InitECandidate.Proofs.FrontendStages.Loop
