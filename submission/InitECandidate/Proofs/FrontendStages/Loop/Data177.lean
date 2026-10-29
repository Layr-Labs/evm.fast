import InitECandidate.Proofs.FrontendStages.Loop.Translate161
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody177_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody177_1 : HolLoopProg 64 :=
.mark loopBody177_0

def loopBody177_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 31#64])
    (Flapjack.HolLoopExp.const 5#64))

def loopBody177_3 : HolLoopProg 64 :=
.mark loopBody177_2

def loopBody177_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64))

def loopBody177_5 : HolLoopProg 64 :=
.mark loopBody177_4

def loopBody177_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody177_7 : HolLoopProg 64 :=
.mark loopBody177_6

def loopBody177_8 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody177_7, loopBody177_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody177_9 : HolLoopProg 64 :=
.mark loopBody177_8

def loopBody177_10 : HolLoopProg 64 :=
.seq loopBody177_9 loopBody177_1

def loopBody177_11 : HolLoopProg 64 :=
.mark loopBody177_10

def loopBody177_12 : HolLoopProg 64 :=
.seq loopBody177_5 loopBody177_11

def loopBody177_13 : HolLoopProg 64 :=
.mark loopBody177_12

def loopBody177_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody177_15 : HolLoopProg 64 :=
.mark loopBody177_14

def loopBody177_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody177_17 : HolLoopProg 64 :=
.mark loopBody177_16

def loopBody177_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody177_19 : HolLoopProg 64 :=
.mark loopBody177_18

def loopBody177_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody177_21 : HolLoopProg 64 :=
.mark loopBody177_20

def loopBody177_22 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([5, 6, 7]) (some (5, loopBody177_21, loopBody177_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody177_23 : HolLoopProg 64 :=
.mark loopBody177_22

def loopBody177_24 : HolLoopProg 64 :=
.seq loopBody177_23 loopBody177_1

def loopBody177_25 : HolLoopProg 64 :=
.mark loopBody177_24

def loopBody177_26 : HolLoopProg 64 :=
.seq loopBody177_19 loopBody177_25

def loopBody177_27 : HolLoopProg 64 :=
.mark loopBody177_26

def loopBody177_28 : HolLoopProg 64 :=
.seq loopBody177_17 loopBody177_27

def loopBody177_29 : HolLoopProg 64 :=
.mark loopBody177_28

def loopBody177_30 : HolLoopProg 64 :=
.seq loopBody177_15 loopBody177_29

def loopBody177_31 : HolLoopProg 64 :=
.mark loopBody177_30

def loopBody177_32 : HolLoopProg 64 :=
.seq loopBody177_1 loopBody177_31

def loopBody177_33 : HolLoopProg 64 :=
.mark loopBody177_32

def loopBody177_34 : HolLoopProg 64 :=
.seq loopBody177_1 loopBody177_33

def loopBody177_35 : HolLoopProg 64 :=
.mark loopBody177_34

def loopBody177_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.var 1])

def loopBody177_37 : HolLoopProg 64 :=
.mark loopBody177_36

def loopBody177_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
    [Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.var 1])

def loopBody177_39 : HolLoopProg 64 :=
.mark loopBody177_38

def loopBody177_40 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 78) ([5, 6]) (some (5, loopBody177_21, loopBody177_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody177_41 : HolLoopProg 64 :=
.mark loopBody177_40

def loopBody177_42 : HolLoopProg 64 :=
.seq loopBody177_41 loopBody177_1

def loopBody177_43 : HolLoopProg 64 :=
.mark loopBody177_42

def loopBody177_44 : HolLoopProg 64 :=
.seq loopBody177_39 loopBody177_43

def loopBody177_45 : HolLoopProg 64 :=
.mark loopBody177_44

def loopBody177_46 : HolLoopProg 64 :=
.seq loopBody177_37 loopBody177_45

def loopBody177_47 : HolLoopProg 64 :=
.mark loopBody177_46

def loopBody177_48 : HolLoopProg 64 :=
.seq loopBody177_1 loopBody177_47

def loopBody177_49 : HolLoopProg 64 :=
.mark loopBody177_48

def loopBody177_50 : HolLoopProg 64 :=
.seq loopBody177_1 loopBody177_49

def loopBody177_51 : HolLoopProg 64 :=
.mark loopBody177_50

def loopBody177_52 : HolLoopProg 64 :=
.seq loopBody177_35 loopBody177_51

def loopBody177_53 : HolLoopProg 64 :=
.mark loopBody177_52

def loopBody177_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody177_55 : HolLoopProg 64 :=
.mark loopBody177_54

def loopBody177_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody177_57 : HolLoopProg 64 :=
.mark loopBody177_56

def loopBody177_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5]

def loopBody177_59 : HolLoopProg 64 :=
.mark loopBody177_58

def loopBody177_60 : HolLoopProg 64 :=
.seq loopBody177_59 loopBody177_1

def loopBody177_61 : HolLoopProg 64 :=
.mark loopBody177_60

def loopBody177_62 : HolLoopProg 64 :=
.seq loopBody177_57 loopBody177_61

def loopBody177_63 : HolLoopProg 64 :=
.mark loopBody177_62

def loopBody177_64 : HolLoopProg 64 :=
.seq loopBody177_55 loopBody177_63

def loopBody177_65 : HolLoopProg 64 :=
.mark loopBody177_64

def loopBody177_66 : HolLoopProg 64 :=
.seq loopBody177_53 loopBody177_65

def loopBody177_67 : HolLoopProg 64 :=
.mark loopBody177_66

def loopBody177_68 : HolLoopProg 64 :=
.seq loopBody177_13 loopBody177_67

def loopBody177_69 : HolLoopProg 64 :=
.mark loopBody177_68

def loopBody177_70 : HolLoopProg 64 :=
.seq loopBody177_1 loopBody177_69

def loopBody177_71 : HolLoopProg 64 :=
.mark loopBody177_70

def loopBody177_72 : HolLoopProg 64 :=
.seq loopBody177_1 loopBody177_71

def loopBody177_73 : HolLoopProg 64 :=
.mark loopBody177_72

def loopBody177_74 : HolLoopProg 64 :=
.seq loopBody177_3 loopBody177_73

def loopBody177_75 : HolLoopProg 64 :=
.mark loopBody177_74

def loopBody177_76 : HolLoopProg 64 :=
.seq loopBody177_1 loopBody177_75

def loopBody177_77 : HolLoopProg 64 :=
.mark loopBody177_76

def output177 : Nat × List Nat × HolLoopProg 64 :=
  (241, [0, 1], loopBody177_77)
end InitECandidate.Proofs.FrontendStages.Loop
