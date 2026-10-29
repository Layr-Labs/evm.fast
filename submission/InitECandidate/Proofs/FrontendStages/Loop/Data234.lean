import InitECandidate.Proofs.FrontendStages.Loop.Translate218
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody234_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody234_1 : HolLoopProg 64 :=
.mark loopBody234_0

def loopBody234_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 176#64)

def loopBody234_3 : HolLoopProg 64 :=
.mark loopBody234_2

def loopBody234_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody234_5 : HolLoopProg 64 :=
.mark loopBody234_4

def loopBody234_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 68) ([2]) (some (2, loopBody234_5, loopBody234_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody234_7 : HolLoopProg 64 :=
.mark loopBody234_6

def loopBody234_8 : HolLoopProg 64 :=
.seq loopBody234_7 loopBody234_1

def loopBody234_9 : HolLoopProg 64 :=
.mark loopBody234_8

def loopBody234_10 : HolLoopProg 64 :=
.seq loopBody234_3 loopBody234_9

def loopBody234_11 : HolLoopProg 64 :=
.mark loopBody234_10

def loopBody234_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody234_13 : HolLoopProg 64 :=
.mark loopBody234_12

def loopBody234_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 176#64)

def loopBody234_15 : HolLoopProg 64 :=
.mark loopBody234_14

def loopBody234_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody234_17 : HolLoopProg 64 :=
.mark loopBody234_16

def loopBody234_18 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 78) ([3, 4]) (some (3, loopBody234_17, loopBody234_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody234_19 : HolLoopProg 64 :=
.mark loopBody234_18

def loopBody234_20 : HolLoopProg 64 :=
.seq loopBody234_19 loopBody234_1

def loopBody234_21 : HolLoopProg 64 :=
.mark loopBody234_20

def loopBody234_22 : HolLoopProg 64 :=
.seq loopBody234_15 loopBody234_21

def loopBody234_23 : HolLoopProg 64 :=
.mark loopBody234_22

def loopBody234_24 : HolLoopProg 64 :=
.seq loopBody234_13 loopBody234_23

def loopBody234_25 : HolLoopProg 64 :=
.mark loopBody234_24

def loopBody234_26 : HolLoopProg 64 :=
.seq loopBody234_1 loopBody234_25

def loopBody234_27 : HolLoopProg 64 :=
.mark loopBody234_26

def loopBody234_28 : HolLoopProg 64 :=
.seq loopBody234_1 loopBody234_27

def loopBody234_29 : HolLoopProg 64 :=
.mark loopBody234_28

def loopBody234_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 0#64])

def loopBody234_31 : HolLoopProg 64 :=
.mark loopBody234_30

def loopBody234_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 3#64)

def loopBody234_33 : HolLoopProg 64 :=
.mark loopBody234_32

def loopBody234_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody234_35 : HolLoopProg 64 :=
.mark loopBody234_34

def loopBody234_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 2) 4

def loopBody234_37 : HolLoopProg 64 :=
.mark loopBody234_36

def loopBody234_38 : HolLoopProg 64 :=
.seq loopBody234_37 loopBody234_1

def loopBody234_39 : HolLoopProg 64 :=
.mark loopBody234_38

def loopBody234_40 : HolLoopProg 64 :=
.seq loopBody234_35 loopBody234_39

def loopBody234_41 : HolLoopProg 64 :=
.mark loopBody234_40

def loopBody234_42 : HolLoopProg 64 :=
.seq loopBody234_41 loopBody234_1

def loopBody234_43 : HolLoopProg 64 :=
.mark loopBody234_42

def loopBody234_44 : HolLoopProg 64 :=
.seq loopBody234_33 loopBody234_43

def loopBody234_45 : HolLoopProg 64 :=
.mark loopBody234_44

def loopBody234_46 : HolLoopProg 64 :=
.seq loopBody234_1 loopBody234_45

def loopBody234_47 : HolLoopProg 64 :=
.mark loopBody234_46

def loopBody234_48 : HolLoopProg 64 :=
.seq loopBody234_31 loopBody234_47

def loopBody234_49 : HolLoopProg 64 :=
.mark loopBody234_48

def loopBody234_50 : HolLoopProg 64 :=
.seq loopBody234_1 loopBody234_49

def loopBody234_51 : HolLoopProg 64 :=
.mark loopBody234_50

def loopBody234_52 : HolLoopProg 64 :=
.seq loopBody234_29 loopBody234_51

def loopBody234_53 : HolLoopProg 64 :=
.mark loopBody234_52

def loopBody234_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody234_55 : HolLoopProg 64 :=
.mark loopBody234_54

def loopBody234_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody234_57 : HolLoopProg 64 :=
.mark loopBody234_56

def loopBody234_58 : HolLoopProg 64 :=
.seq loopBody234_57 loopBody234_1

def loopBody234_59 : HolLoopProg 64 :=
.mark loopBody234_58

def loopBody234_60 : HolLoopProg 64 :=
.seq loopBody234_55 loopBody234_59

def loopBody234_61 : HolLoopProg 64 :=
.mark loopBody234_60

def loopBody234_62 : HolLoopProg 64 :=
.seq loopBody234_53 loopBody234_61

def loopBody234_63 : HolLoopProg 64 :=
.mark loopBody234_62

def loopBody234_64 : HolLoopProg 64 :=
.seq loopBody234_11 loopBody234_63

def loopBody234_65 : HolLoopProg 64 :=
.mark loopBody234_64

def loopBody234_66 : HolLoopProg 64 :=
.seq loopBody234_1 loopBody234_65

def loopBody234_67 : HolLoopProg 64 :=
.mark loopBody234_66

def loopBody234_68 : HolLoopProg 64 :=
.seq loopBody234_1 loopBody234_67

def loopBody234_69 : HolLoopProg 64 :=
.mark loopBody234_68

def output234 : Nat × List Nat × HolLoopProg 64 :=
  (298, [], loopBody234_69)
end InitECandidate.Proofs.FrontendStages.Loop
