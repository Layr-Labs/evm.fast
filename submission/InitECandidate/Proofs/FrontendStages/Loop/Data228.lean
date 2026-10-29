import InitECandidate.Proofs.FrontendStages.Loop.Translate212
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody228_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody228_1 : HolLoopProg 64 :=
.mark loopBody228_0

def loopBody228_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.var 3])

def loopBody228_3 : HolLoopProg 64 :=
.mark loopBody228_2

def loopBody228_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody228_5 : HolLoopProg 64 :=
.mark loopBody228_4

def loopBody228_6 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody228_5, loopBody228_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody228_7 : HolLoopProg 64 :=
.mark loopBody228_6

def loopBody228_8 : HolLoopProg 64 :=
.seq loopBody228_7 loopBody228_1

def loopBody228_9 : HolLoopProg 64 :=
.mark loopBody228_8

def loopBody228_10 : HolLoopProg 64 :=
.seq loopBody228_3 loopBody228_9

def loopBody228_11 : HolLoopProg 64 :=
.mark loopBody228_10

def loopBody228_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody228_13 : HolLoopProg 64 :=
.mark loopBody228_12

def loopBody228_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody228_15 : HolLoopProg 64 :=
.mark loopBody228_14

def loopBody228_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody228_17 : HolLoopProg 64 :=
.mark loopBody228_16

def loopBody228_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody228_19 : HolLoopProg 64 :=
.mark loopBody228_18

def loopBody228_20 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([6, 7, 8]) (some (6, loopBody228_19, loopBody228_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody228_21 : HolLoopProg 64 :=
.mark loopBody228_20

def loopBody228_22 : HolLoopProg 64 :=
.seq loopBody228_21 loopBody228_1

def loopBody228_23 : HolLoopProg 64 :=
.mark loopBody228_22

def loopBody228_24 : HolLoopProg 64 :=
.seq loopBody228_17 loopBody228_23

def loopBody228_25 : HolLoopProg 64 :=
.mark loopBody228_24

def loopBody228_26 : HolLoopProg 64 :=
.seq loopBody228_15 loopBody228_25

def loopBody228_27 : HolLoopProg 64 :=
.mark loopBody228_26

def loopBody228_28 : HolLoopProg 64 :=
.seq loopBody228_13 loopBody228_27

def loopBody228_29 : HolLoopProg 64 :=
.mark loopBody228_28

def loopBody228_30 : HolLoopProg 64 :=
.seq loopBody228_1 loopBody228_29

def loopBody228_31 : HolLoopProg 64 :=
.mark loopBody228_30

def loopBody228_32 : HolLoopProg 64 :=
.seq loopBody228_1 loopBody228_31

def loopBody228_33 : HolLoopProg 64 :=
.mark loopBody228_32

def loopBody228_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.var 1])

def loopBody228_35 : HolLoopProg 64 :=
.mark loopBody228_34

def loopBody228_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody228_37 : HolLoopProg 64 :=
.mark loopBody228_36

def loopBody228_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody228_39 : HolLoopProg 64 :=
.mark loopBody228_38

def loopBody228_40 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 77) ([6, 7, 8]) (some (6, loopBody228_19, loopBody228_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody228_41 : HolLoopProg 64 :=
.mark loopBody228_40

def loopBody228_42 : HolLoopProg 64 :=
.seq loopBody228_41 loopBody228_1

def loopBody228_43 : HolLoopProg 64 :=
.mark loopBody228_42

def loopBody228_44 : HolLoopProg 64 :=
.seq loopBody228_39 loopBody228_43

def loopBody228_45 : HolLoopProg 64 :=
.mark loopBody228_44

def loopBody228_46 : HolLoopProg 64 :=
.seq loopBody228_37 loopBody228_45

def loopBody228_47 : HolLoopProg 64 :=
.mark loopBody228_46

def loopBody228_48 : HolLoopProg 64 :=
.seq loopBody228_35 loopBody228_47

def loopBody228_49 : HolLoopProg 64 :=
.mark loopBody228_48

def loopBody228_50 : HolLoopProg 64 :=
.seq loopBody228_1 loopBody228_49

def loopBody228_51 : HolLoopProg 64 :=
.mark loopBody228_50

def loopBody228_52 : HolLoopProg 64 :=
.seq loopBody228_1 loopBody228_51

def loopBody228_53 : HolLoopProg 64 :=
.mark loopBody228_52

def loopBody228_54 : HolLoopProg 64 :=
.seq loopBody228_33 loopBody228_53

def loopBody228_55 : HolLoopProg 64 :=
.mark loopBody228_54

def loopBody228_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody228_57 : HolLoopProg 64 :=
.mark loopBody228_56

def loopBody228_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody228_59 : HolLoopProg 64 :=
.mark loopBody228_58

def loopBody228_60 : HolLoopProg 64 :=
.seq loopBody228_59 loopBody228_1

def loopBody228_61 : HolLoopProg 64 :=
.mark loopBody228_60

def loopBody228_62 : HolLoopProg 64 :=
.seq loopBody228_57 loopBody228_61

def loopBody228_63 : HolLoopProg 64 :=
.mark loopBody228_62

def loopBody228_64 : HolLoopProg 64 :=
.seq loopBody228_55 loopBody228_63

def loopBody228_65 : HolLoopProg 64 :=
.mark loopBody228_64

def loopBody228_66 : HolLoopProg 64 :=
.seq loopBody228_11 loopBody228_65

def loopBody228_67 : HolLoopProg 64 :=
.mark loopBody228_66

def loopBody228_68 : HolLoopProg 64 :=
.seq loopBody228_1 loopBody228_67

def loopBody228_69 : HolLoopProg 64 :=
.mark loopBody228_68

def loopBody228_70 : HolLoopProg 64 :=
.seq loopBody228_1 loopBody228_69

def loopBody228_71 : HolLoopProg 64 :=
.mark loopBody228_70

def output228 : Nat × List Nat × HolLoopProg 64 :=
  (292, [0, 1, 2, 3], loopBody228_71)
end InitECandidate.Proofs.FrontendStages.Loop
