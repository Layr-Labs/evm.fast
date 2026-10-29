import InitECandidate.Proofs.FrontendStages.Loop.Translate82
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody98_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody98_1 : HolLoopProg 64 :=
.mark loopBody98_0

def loopBody98_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody98_3 : HolLoopProg 64 :=
.mark loopBody98_2

def loopBody98_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody98_5 : HolLoopProg 64 :=
.mark loopBody98_4

def loopBody98_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody98_7 : HolLoopProg 64 :=
.mark loopBody98_6

def loopBody98_8 : HolLoopProg 64 :=
.call (some ([2, 3, 4, 5], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 161) ([6, 7]) (some (6, loopBody98_7, loopBody98_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody98_9 : HolLoopProg 64 :=
.mark loopBody98_8

def loopBody98_10 : HolLoopProg 64 :=
.seq loopBody98_9 loopBody98_1

def loopBody98_11 : HolLoopProg 64 :=
.mark loopBody98_10

def loopBody98_12 : HolLoopProg 64 :=
.seq loopBody98_5 loopBody98_11

def loopBody98_13 : HolLoopProg 64 :=
.mark loopBody98_12

def loopBody98_14 : HolLoopProg 64 :=
.seq loopBody98_3 loopBody98_13

def loopBody98_15 : HolLoopProg 64 :=
.mark loopBody98_14

def loopBody98_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody98_17 : HolLoopProg 64 :=
.mark loopBody98_16

def loopBody98_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody98_19 : HolLoopProg 64 :=
.mark loopBody98_18

def loopBody98_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody98_21 : HolLoopProg 64 :=
.mark loopBody98_20

def loopBody98_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody98_23 : HolLoopProg 64 :=
.mark loopBody98_22

def loopBody98_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.reg 8) loopBody98_21 loopBody98_23 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody98_25 : HolLoopProg 64 :=
.mark loopBody98_24

def loopBody98_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody98_27 : HolLoopProg 64 :=
.mark loopBody98_26

def loopBody98_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 6#64)

def loopBody98_29 : HolLoopProg 64 :=
.mark loopBody98_28

def loopBody98_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody98_31 : HolLoopProg 64 :=
.mark loopBody98_30

def loopBody98_32 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))) (some 159) ([7]) (some (7, loopBody98_31, loopBody98_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody98_33 : HolLoopProg 64 :=
.mark loopBody98_32

def loopBody98_34 : HolLoopProg 64 :=
.seq loopBody98_33 loopBody98_1

def loopBody98_35 : HolLoopProg 64 :=
.mark loopBody98_34

def loopBody98_36 : HolLoopProg 64 :=
.seq loopBody98_29 loopBody98_35

def loopBody98_37 : HolLoopProg 64 :=
.mark loopBody98_36

def loopBody98_38 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_37

def loopBody98_39 : HolLoopProg 64 :=
.mark loopBody98_38

def loopBody98_40 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_39

def loopBody98_41 : HolLoopProg 64 :=
.mark loopBody98_40

def loopBody98_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.imm 0#64) loopBody98_41 loopBody98_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))

def loopBody98_43 : HolLoopProg 64 :=
.mark loopBody98_42

def loopBody98_44 : HolLoopProg 64 :=
.seq loopBody98_43 loopBody98_1

def loopBody98_45 : HolLoopProg 64 :=
.mark loopBody98_44

def loopBody98_46 : HolLoopProg 64 :=
.seq loopBody98_27 loopBody98_45

def loopBody98_47 : HolLoopProg 64 :=
.mark loopBody98_46

def loopBody98_48 : HolLoopProg 64 :=
.seq loopBody98_25 loopBody98_47

def loopBody98_49 : HolLoopProg 64 :=
.mark loopBody98_48

def loopBody98_50 : HolLoopProg 64 :=
.seq loopBody98_19 loopBody98_49

def loopBody98_51 : HolLoopProg 64 :=
.mark loopBody98_50

def loopBody98_52 : HolLoopProg 64 :=
.seq loopBody98_17 loopBody98_51

def loopBody98_53 : HolLoopProg 64 :=
.mark loopBody98_52

def loopBody98_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody98_55 : HolLoopProg 64 :=
.mark loopBody98_54

def loopBody98_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody98_57 : HolLoopProg 64 :=
.mark loopBody98_56

def loopBody98_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody98_59 : HolLoopProg 64 :=
.mark loopBody98_58

def loopBody98_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody98_61 : HolLoopProg 64 :=
.mark loopBody98_60

def loopBody98_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6, 7, 8, 9]

def loopBody98_63 : HolLoopProg 64 :=
.mark loopBody98_62

def loopBody98_64 : HolLoopProg 64 :=
.seq loopBody98_63 loopBody98_1

def loopBody98_65 : HolLoopProg 64 :=
.mark loopBody98_64

def loopBody98_66 : HolLoopProg 64 :=
.seq loopBody98_61 loopBody98_65

def loopBody98_67 : HolLoopProg 64 :=
.mark loopBody98_66

def loopBody98_68 : HolLoopProg 64 :=
.seq loopBody98_59 loopBody98_67

def loopBody98_69 : HolLoopProg 64 :=
.mark loopBody98_68

def loopBody98_70 : HolLoopProg 64 :=
.seq loopBody98_57 loopBody98_69

def loopBody98_71 : HolLoopProg 64 :=
.mark loopBody98_70

def loopBody98_72 : HolLoopProg 64 :=
.seq loopBody98_55 loopBody98_71

def loopBody98_73 : HolLoopProg 64 :=
.mark loopBody98_72

def loopBody98_74 : HolLoopProg 64 :=
.seq loopBody98_53 loopBody98_73

def loopBody98_75 : HolLoopProg 64 :=
.mark loopBody98_74

def loopBody98_76 : HolLoopProg 64 :=
.seq loopBody98_15 loopBody98_75

def loopBody98_77 : HolLoopProg 64 :=
.mark loopBody98_76

def loopBody98_78 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_77

def loopBody98_79 : HolLoopProg 64 :=
.mark loopBody98_78

def loopBody98_80 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_79

def loopBody98_81 : HolLoopProg 64 :=
.mark loopBody98_80

def loopBody98_82 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_81

def loopBody98_83 : HolLoopProg 64 :=
.mark loopBody98_82

def loopBody98_84 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_83

def loopBody98_85 : HolLoopProg 64 :=
.mark loopBody98_84

def loopBody98_86 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_85

def loopBody98_87 : HolLoopProg 64 :=
.mark loopBody98_86

def loopBody98_88 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_87

def loopBody98_89 : HolLoopProg 64 :=
.mark loopBody98_88

def loopBody98_90 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_89

def loopBody98_91 : HolLoopProg 64 :=
.mark loopBody98_90

def loopBody98_92 : HolLoopProg 64 :=
.seq loopBody98_1 loopBody98_91

def loopBody98_93 : HolLoopProg 64 :=
.mark loopBody98_92

def output98 : Nat × List Nat × HolLoopProg 64 :=
  (162, [0, 1], loopBody98_93)
end InitECandidate.Proofs.FrontendStages.Loop
