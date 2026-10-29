import InitECandidate.Proofs.FrontendStages.Loop.Translate760
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody776_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody776_1 : HolLoopProg 64 :=
.mark loopBody776_0

def loopBody776_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 9#64]])

def loopBody776_3 : HolLoopProg 64 :=
.mark loopBody776_2

def loopBody776_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody776_5 : HolLoopProg 64 :=
.mark loopBody776_4

def loopBody776_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody776_7 : HolLoopProg 64 :=
.mark loopBody776_6

def loopBody776_8 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)) (some 180) ([4]) (some (4, loopBody776_7, loopBody776_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody776_9 : HolLoopProg 64 :=
.mark loopBody776_8

def loopBody776_10 : HolLoopProg 64 :=
.seq loopBody776_9 loopBody776_1

def loopBody776_11 : HolLoopProg 64 :=
.mark loopBody776_10

def loopBody776_12 : HolLoopProg 64 :=
.seq loopBody776_5 loopBody776_11

def loopBody776_13 : HolLoopProg 64 :=
.mark loopBody776_12

def loopBody776_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 3])

def loopBody776_15 : HolLoopProg 64 :=
.mark loopBody776_14

def loopBody776_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 9#64])

def loopBody776_17 : HolLoopProg 64 :=
.mark loopBody776_16

def loopBody776_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody776_19 : HolLoopProg 64 :=
.mark loopBody776_18

def loopBody776_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody776_21 : HolLoopProg 64 :=
.mark loopBody776_20

def loopBody776_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([5, 6, 7]) (some (5, loopBody776_21, loopBody776_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody776_23 : HolLoopProg 64 :=
.mark loopBody776_22

def loopBody776_24 : HolLoopProg 64 :=
.seq loopBody776_23 loopBody776_1

def loopBody776_25 : HolLoopProg 64 :=
.mark loopBody776_24

def loopBody776_26 : HolLoopProg 64 :=
.seq loopBody776_19 loopBody776_25

def loopBody776_27 : HolLoopProg 64 :=
.mark loopBody776_26

def loopBody776_28 : HolLoopProg 64 :=
.seq loopBody776_17 loopBody776_27

def loopBody776_29 : HolLoopProg 64 :=
.mark loopBody776_28

def loopBody776_30 : HolLoopProg 64 :=
.seq loopBody776_15 loopBody776_29

def loopBody776_31 : HolLoopProg 64 :=
.mark loopBody776_30

def loopBody776_32 : HolLoopProg 64 :=
.seq loopBody776_1 loopBody776_31

def loopBody776_33 : HolLoopProg 64 :=
.mark loopBody776_32

def loopBody776_34 : HolLoopProg 64 :=
.seq loopBody776_1 loopBody776_33

def loopBody776_35 : HolLoopProg 64 :=
.mark loopBody776_34

def loopBody776_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody776_37 : HolLoopProg 64 :=
.mark loopBody776_36

def loopBody776_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody776_39 : HolLoopProg 64 :=
.mark loopBody776_38

def loopBody776_40 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 178) ([5, 6]) (some (5, loopBody776_21, loopBody776_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody776_41 : HolLoopProg 64 :=
.mark loopBody776_40

def loopBody776_42 : HolLoopProg 64 :=
.seq loopBody776_41 loopBody776_1

def loopBody776_43 : HolLoopProg 64 :=
.mark loopBody776_42

def loopBody776_44 : HolLoopProg 64 :=
.seq loopBody776_39 loopBody776_43

def loopBody776_45 : HolLoopProg 64 :=
.mark loopBody776_44

def loopBody776_46 : HolLoopProg 64 :=
.seq loopBody776_37 loopBody776_45

def loopBody776_47 : HolLoopProg 64 :=
.mark loopBody776_46

def loopBody776_48 : HolLoopProg 64 :=
.seq loopBody776_1 loopBody776_47

def loopBody776_49 : HolLoopProg 64 :=
.mark loopBody776_48

def loopBody776_50 : HolLoopProg 64 :=
.seq loopBody776_1 loopBody776_49

def loopBody776_51 : HolLoopProg 64 :=
.mark loopBody776_50

def loopBody776_52 : HolLoopProg 64 :=
.seq loopBody776_35 loopBody776_51

def loopBody776_53 : HolLoopProg 64 :=
.mark loopBody776_52

def loopBody776_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 2])

def loopBody776_55 : HolLoopProg 64 :=
.mark loopBody776_54

def loopBody776_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody776_57 : HolLoopProg 64 :=
.mark loopBody776_56

def loopBody776_58 : HolLoopProg 64 :=
.seq loopBody776_57 loopBody776_1

def loopBody776_59 : HolLoopProg 64 :=
.mark loopBody776_58

def loopBody776_60 : HolLoopProg 64 :=
.seq loopBody776_55 loopBody776_59

def loopBody776_61 : HolLoopProg 64 :=
.mark loopBody776_60

def loopBody776_62 : HolLoopProg 64 :=
.seq loopBody776_53 loopBody776_61

def loopBody776_63 : HolLoopProg 64 :=
.mark loopBody776_62

def loopBody776_64 : HolLoopProg 64 :=
.seq loopBody776_13 loopBody776_63

def loopBody776_65 : HolLoopProg 64 :=
.mark loopBody776_64

def loopBody776_66 : HolLoopProg 64 :=
.seq loopBody776_1 loopBody776_65

def loopBody776_67 : HolLoopProg 64 :=
.mark loopBody776_66

def loopBody776_68 : HolLoopProg 64 :=
.seq loopBody776_1 loopBody776_67

def loopBody776_69 : HolLoopProg 64 :=
.mark loopBody776_68

def loopBody776_70 : HolLoopProg 64 :=
.seq loopBody776_3 loopBody776_69

def loopBody776_71 : HolLoopProg 64 :=
.mark loopBody776_70

def loopBody776_72 : HolLoopProg 64 :=
.seq loopBody776_1 loopBody776_71

def loopBody776_73 : HolLoopProg 64 :=
.mark loopBody776_72

def output776 : Nat × List Nat × HolLoopProg 64 :=
  (840, [0, 1], loopBody776_73)
end InitECandidate.Proofs.FrontendStages.Loop
