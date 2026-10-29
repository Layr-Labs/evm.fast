import InitECandidate.Proofs.FrontendStages.Loop.Translate167
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody183_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody183_1 : HolLoopProg 64 :=
.mark loopBody183_0

def loopBody183_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody183_3 : HolLoopProg 64 :=
.mark loopBody183_2

def loopBody183_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody183_5 : HolLoopProg 64 :=
.mark loopBody183_4

def loopBody183_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ls PUnit.unit)) (some 246) ([2]) (some (2, loopBody183_5, loopBody183_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody183_7 : HolLoopProg 64 :=
.mark loopBody183_6

def loopBody183_8 : HolLoopProg 64 :=
.seq loopBody183_7 loopBody183_1

def loopBody183_9 : HolLoopProg 64 :=
.mark loopBody183_8

def loopBody183_10 : HolLoopProg 64 :=
.seq loopBody183_3 loopBody183_9

def loopBody183_11 : HolLoopProg 64 :=
.mark loopBody183_10

def loopBody183_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 1#64])

def loopBody183_13 : HolLoopProg 64 :=
.mark loopBody183_12

def loopBody183_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody183_15 : HolLoopProg 64 :=
.mark loopBody183_14

def loopBody183_16 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 246) ([3]) (some (3, loopBody183_15, loopBody183_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody183_17 : HolLoopProg 64 :=
.mark loopBody183_16

def loopBody183_18 : HolLoopProg 64 :=
.seq loopBody183_17 loopBody183_1

def loopBody183_19 : HolLoopProg 64 :=
.mark loopBody183_18

def loopBody183_20 : HolLoopProg 64 :=
.seq loopBody183_13 loopBody183_19

def loopBody183_21 : HolLoopProg 64 :=
.mark loopBody183_20

def loopBody183_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 2#64])

def loopBody183_23 : HolLoopProg 64 :=
.mark loopBody183_22

def loopBody183_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody183_25 : HolLoopProg 64 :=
.mark loopBody183_24

def loopBody183_26 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 246) ([4]) (some (4, loopBody183_25, loopBody183_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody183_27 : HolLoopProg 64 :=
.mark loopBody183_26

def loopBody183_28 : HolLoopProg 64 :=
.seq loopBody183_27 loopBody183_1

def loopBody183_29 : HolLoopProg 64 :=
.mark loopBody183_28

def loopBody183_30 : HolLoopProg 64 :=
.seq loopBody183_23 loopBody183_29

def loopBody183_31 : HolLoopProg 64 :=
.mark loopBody183_30

def loopBody183_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 3#64])

def loopBody183_33 : HolLoopProg 64 :=
.mark loopBody183_32

def loopBody183_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody183_35 : HolLoopProg 64 :=
.mark loopBody183_34

def loopBody183_36 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 246) ([5]) (some (5, loopBody183_35, loopBody183_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody183_37 : HolLoopProg 64 :=
.mark loopBody183_36

def loopBody183_38 : HolLoopProg 64 :=
.seq loopBody183_37 loopBody183_1

def loopBody183_39 : HolLoopProg 64 :=
.mark loopBody183_38

def loopBody183_40 : HolLoopProg 64 :=
.seq loopBody183_33 loopBody183_39

def loopBody183_41 : HolLoopProg 64 :=
.mark loopBody183_40

def loopBody183_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 1,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 8#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 16#64),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 24#64)])

def loopBody183_43 : HolLoopProg 64 :=
.mark loopBody183_42

def loopBody183_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody183_45 : HolLoopProg 64 :=
.mark loopBody183_44

def loopBody183_46 : HolLoopProg 64 :=
.seq loopBody183_45 loopBody183_1

def loopBody183_47 : HolLoopProg 64 :=
.mark loopBody183_46

def loopBody183_48 : HolLoopProg 64 :=
.seq loopBody183_43 loopBody183_47

def loopBody183_49 : HolLoopProg 64 :=
.mark loopBody183_48

def loopBody183_50 : HolLoopProg 64 :=
.seq loopBody183_41 loopBody183_49

def loopBody183_51 : HolLoopProg 64 :=
.mark loopBody183_50

def loopBody183_52 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_51

def loopBody183_53 : HolLoopProg 64 :=
.mark loopBody183_52

def loopBody183_54 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_53

def loopBody183_55 : HolLoopProg 64 :=
.mark loopBody183_54

def loopBody183_56 : HolLoopProg 64 :=
.seq loopBody183_31 loopBody183_55

def loopBody183_57 : HolLoopProg 64 :=
.mark loopBody183_56

def loopBody183_58 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_57

def loopBody183_59 : HolLoopProg 64 :=
.mark loopBody183_58

def loopBody183_60 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_59

def loopBody183_61 : HolLoopProg 64 :=
.mark loopBody183_60

def loopBody183_62 : HolLoopProg 64 :=
.seq loopBody183_21 loopBody183_61

def loopBody183_63 : HolLoopProg 64 :=
.mark loopBody183_62

def loopBody183_64 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_63

def loopBody183_65 : HolLoopProg 64 :=
.mark loopBody183_64

def loopBody183_66 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_65

def loopBody183_67 : HolLoopProg 64 :=
.mark loopBody183_66

def loopBody183_68 : HolLoopProg 64 :=
.seq loopBody183_11 loopBody183_67

def loopBody183_69 : HolLoopProg 64 :=
.mark loopBody183_68

def loopBody183_70 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_69

def loopBody183_71 : HolLoopProg 64 :=
.mark loopBody183_70

def loopBody183_72 : HolLoopProg 64 :=
.seq loopBody183_1 loopBody183_71

def loopBody183_73 : HolLoopProg 64 :=
.mark loopBody183_72

def output183 : Nat × List Nat × HolLoopProg 64 :=
  (247, [0], loopBody183_73)
end InitECandidate.Proofs.FrontendStages.Loop
