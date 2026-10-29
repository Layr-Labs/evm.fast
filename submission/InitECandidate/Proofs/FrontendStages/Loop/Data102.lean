import InitECandidate.Proofs.FrontendStages.Loop.Translate86
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody102_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody102_1 : HolLoopProg 64 :=
.mark loopBody102_0

def loopBody102_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody102_3 : HolLoopProg 64 :=
.mark loopBody102_2

def loopBody102_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody102_5 : HolLoopProg 64 :=
.mark loopBody102_4

def loopBody102_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody102_7 : HolLoopProg 64 :=
.mark loopBody102_6

def loopBody102_8 : HolLoopProg 64 :=
.call (some ([2, 3, 4], Flapjack.Spt.ls PUnit.unit)) (some 163) ([5, 6]) (some (5, loopBody102_7, loopBody102_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody102_9 : HolLoopProg 64 :=
.mark loopBody102_8

def loopBody102_10 : HolLoopProg 64 :=
.seq loopBody102_9 loopBody102_1

def loopBody102_11 : HolLoopProg 64 :=
.mark loopBody102_10

def loopBody102_12 : HolLoopProg 64 :=
.seq loopBody102_5 loopBody102_11

def loopBody102_13 : HolLoopProg 64 :=
.mark loopBody102_12

def loopBody102_14 : HolLoopProg 64 :=
.seq loopBody102_3 loopBody102_13

def loopBody102_15 : HolLoopProg 64 :=
.mark loopBody102_14

def loopBody102_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody102_17 : HolLoopProg 64 :=
.mark loopBody102_16

def loopBody102_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody102_19 : HolLoopProg 64 :=
.mark loopBody102_18

def loopBody102_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody102_21 : HolLoopProg 64 :=
.mark loopBody102_20

def loopBody102_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody102_23 : HolLoopProg 64 :=
.mark loopBody102_22

def loopBody102_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.reg 7) loopBody102_21 loopBody102_23 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody102_25 : HolLoopProg 64 :=
.mark loopBody102_24

def loopBody102_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody102_27 : HolLoopProg 64 :=
.mark loopBody102_26

def loopBody102_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.var 2])

def loopBody102_29 : HolLoopProg 64 :=
.mark loopBody102_28

def loopBody102_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody102_31 : HolLoopProg 64 :=
.mark loopBody102_30

def loopBody102_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody102_33 : HolLoopProg 64 :=
.mark loopBody102_32

def loopBody102_34 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 165) ([6, 7]) (some (6, loopBody102_33, loopBody102_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody102_35 : HolLoopProg 64 :=
.mark loopBody102_34

def loopBody102_36 : HolLoopProg 64 :=
.seq loopBody102_35 loopBody102_1

def loopBody102_37 : HolLoopProg 64 :=
.mark loopBody102_36

def loopBody102_38 : HolLoopProg 64 :=
.seq loopBody102_31 loopBody102_37

def loopBody102_39 : HolLoopProg 64 :=
.mark loopBody102_38

def loopBody102_40 : HolLoopProg 64 :=
.seq loopBody102_29 loopBody102_39

def loopBody102_41 : HolLoopProg 64 :=
.mark loopBody102_40

def loopBody102_42 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_41

def loopBody102_43 : HolLoopProg 64 :=
.mark loopBody102_42

def loopBody102_44 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_43

def loopBody102_45 : HolLoopProg 64 :=
.mark loopBody102_44

def loopBody102_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody102_45 loopBody102_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody102_47 : HolLoopProg 64 :=
.mark loopBody102_46

def loopBody102_48 : HolLoopProg 64 :=
.seq loopBody102_47 loopBody102_1

def loopBody102_49 : HolLoopProg 64 :=
.mark loopBody102_48

def loopBody102_50 : HolLoopProg 64 :=
.seq loopBody102_27 loopBody102_49

def loopBody102_51 : HolLoopProg 64 :=
.mark loopBody102_50

def loopBody102_52 : HolLoopProg 64 :=
.seq loopBody102_25 loopBody102_51

def loopBody102_53 : HolLoopProg 64 :=
.mark loopBody102_52

def loopBody102_54 : HolLoopProg 64 :=
.seq loopBody102_19 loopBody102_53

def loopBody102_55 : HolLoopProg 64 :=
.mark loopBody102_54

def loopBody102_56 : HolLoopProg 64 :=
.seq loopBody102_17 loopBody102_55

def loopBody102_57 : HolLoopProg 64 :=
.mark loopBody102_56

def loopBody102_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody102_59 : HolLoopProg 64 :=
.mark loopBody102_58

def loopBody102_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody102_61 : HolLoopProg 64 :=
.mark loopBody102_60

def loopBody102_62 : HolLoopProg 64 :=
.seq loopBody102_61 loopBody102_1

def loopBody102_63 : HolLoopProg 64 :=
.mark loopBody102_62

def loopBody102_64 : HolLoopProg 64 :=
.seq loopBody102_59 loopBody102_63

def loopBody102_65 : HolLoopProg 64 :=
.mark loopBody102_64

def loopBody102_66 : HolLoopProg 64 :=
.seq loopBody102_57 loopBody102_65

def loopBody102_67 : HolLoopProg 64 :=
.mark loopBody102_66

def loopBody102_68 : HolLoopProg 64 :=
.seq loopBody102_15 loopBody102_67

def loopBody102_69 : HolLoopProg 64 :=
.mark loopBody102_68

def loopBody102_70 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_69

def loopBody102_71 : HolLoopProg 64 :=
.mark loopBody102_70

def loopBody102_72 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_71

def loopBody102_73 : HolLoopProg 64 :=
.mark loopBody102_72

def loopBody102_74 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_73

def loopBody102_75 : HolLoopProg 64 :=
.mark loopBody102_74

def loopBody102_76 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_75

def loopBody102_77 : HolLoopProg 64 :=
.mark loopBody102_76

def loopBody102_78 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_77

def loopBody102_79 : HolLoopProg 64 :=
.mark loopBody102_78

def loopBody102_80 : HolLoopProg 64 :=
.seq loopBody102_1 loopBody102_79

def loopBody102_81 : HolLoopProg 64 :=
.mark loopBody102_80

def output102 : Nat × List Nat × HolLoopProg 64 :=
  (166, [0, 1], loopBody102_81)
end InitECandidate.Proofs.FrontendStages.Loop
