import InitECandidate.Proofs.FrontendStages.Loop.Translate329
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody345_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody345_1 : HolLoopProg 64 :=
.mark loopBody345_0

def loopBody345_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody345_3 : HolLoopProg 64 :=
.mark loopBody345_2

def loopBody345_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody345_5 : HolLoopProg 64 :=
.mark loopBody345_4

def loopBody345_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody345_7 : HolLoopProg 64 :=
.mark loopBody345_6

def loopBody345_8 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 186) ([5, 6]) (some (5, loopBody345_7, loopBody345_1, (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody345_9 : HolLoopProg 64 :=
.mark loopBody345_8

def loopBody345_10 : HolLoopProg 64 :=
.seq loopBody345_9 loopBody345_1

def loopBody345_11 : HolLoopProg 64 :=
.mark loopBody345_10

def loopBody345_12 : HolLoopProg 64 :=
.seq loopBody345_5 loopBody345_11

def loopBody345_13 : HolLoopProg 64 :=
.mark loopBody345_12

def loopBody345_14 : HolLoopProg 64 :=
.seq loopBody345_3 loopBody345_13

def loopBody345_15 : HolLoopProg 64 :=
.mark loopBody345_14

def loopBody345_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody345_17 : HolLoopProg 64 :=
.mark loopBody345_16

def loopBody345_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody345_19 : HolLoopProg 64 :=
.mark loopBody345_18

def loopBody345_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody345_21 : HolLoopProg 64 :=
.mark loopBody345_20

def loopBody345_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody345_23 : HolLoopProg 64 :=
.mark loopBody345_22

def loopBody345_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody345_21 loopBody345_23 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody345_25 : HolLoopProg 64 :=
.mark loopBody345_24

def loopBody345_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody345_27 : HolLoopProg 64 :=
.mark loopBody345_26

def loopBody345_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody345_29 : HolLoopProg 64 :=
.mark loopBody345_28

def loopBody345_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6]

def loopBody345_31 : HolLoopProg 64 :=
.mark loopBody345_30

def loopBody345_32 : HolLoopProg 64 :=
.seq loopBody345_31 loopBody345_1

def loopBody345_33 : HolLoopProg 64 :=
.mark loopBody345_32

def loopBody345_34 : HolLoopProg 64 :=
.seq loopBody345_23 loopBody345_33

def loopBody345_35 : HolLoopProg 64 :=
.mark loopBody345_34

def loopBody345_36 : HolLoopProg 64 :=
.seq loopBody345_29 loopBody345_35

def loopBody345_37 : HolLoopProg 64 :=
.mark loopBody345_36

def loopBody345_38 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody345_37 loopBody345_1 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody345_39 : HolLoopProg 64 :=
.mark loopBody345_38

def loopBody345_40 : HolLoopProg 64 :=
.seq loopBody345_39 loopBody345_1

def loopBody345_41 : HolLoopProg 64 :=
.mark loopBody345_40

def loopBody345_42 : HolLoopProg 64 :=
.seq loopBody345_27 loopBody345_41

def loopBody345_43 : HolLoopProg 64 :=
.mark loopBody345_42

def loopBody345_44 : HolLoopProg 64 :=
.seq loopBody345_25 loopBody345_43

def loopBody345_45 : HolLoopProg 64 :=
.mark loopBody345_44

def loopBody345_46 : HolLoopProg 64 :=
.seq loopBody345_19 loopBody345_45

def loopBody345_47 : HolLoopProg 64 :=
.mark loopBody345_46

def loopBody345_48 : HolLoopProg 64 :=
.seq loopBody345_17 loopBody345_47

def loopBody345_49 : HolLoopProg 64 :=
.mark loopBody345_48

def loopBody345_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody345_51 : HolLoopProg 64 :=
.mark loopBody345_50

def loopBody345_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody345_53 : HolLoopProg 64 :=
.mark loopBody345_52

def loopBody345_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody345_55 : HolLoopProg 64 :=
.mark loopBody345_54

def loopBody345_56 : HolLoopProg 64 :=
.call (some ([5, 6], Flapjack.Spt.ln)) (some 186) ([7, 8]) (some (7, loopBody345_55, loopBody345_1, (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody345_57 : HolLoopProg 64 :=
.mark loopBody345_56

def loopBody345_58 : HolLoopProg 64 :=
.seq loopBody345_57 loopBody345_1

def loopBody345_59 : HolLoopProg 64 :=
.mark loopBody345_58

def loopBody345_60 : HolLoopProg 64 :=
.seq loopBody345_53 loopBody345_59

def loopBody345_61 : HolLoopProg 64 :=
.mark loopBody345_60

def loopBody345_62 : HolLoopProg 64 :=
.seq loopBody345_51 loopBody345_61

def loopBody345_63 : HolLoopProg 64 :=
.mark loopBody345_62

def loopBody345_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody345_65 : HolLoopProg 64 :=
.mark loopBody345_64

def loopBody345_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7, 8]

def loopBody345_67 : HolLoopProg 64 :=
.mark loopBody345_66

def loopBody345_68 : HolLoopProg 64 :=
.seq loopBody345_67 loopBody345_1

def loopBody345_69 : HolLoopProg 64 :=
.mark loopBody345_68

def loopBody345_70 : HolLoopProg 64 :=
.seq loopBody345_27 loopBody345_69

def loopBody345_71 : HolLoopProg 64 :=
.mark loopBody345_70

def loopBody345_72 : HolLoopProg 64 :=
.seq loopBody345_65 loopBody345_71

def loopBody345_73 : HolLoopProg 64 :=
.mark loopBody345_72

def loopBody345_74 : HolLoopProg 64 :=
.seq loopBody345_63 loopBody345_73

def loopBody345_75 : HolLoopProg 64 :=
.mark loopBody345_74

def loopBody345_76 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_75

def loopBody345_77 : HolLoopProg 64 :=
.mark loopBody345_76

def loopBody345_78 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_77

def loopBody345_79 : HolLoopProg 64 :=
.mark loopBody345_78

def loopBody345_80 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_79

def loopBody345_81 : HolLoopProg 64 :=
.mark loopBody345_80

def loopBody345_82 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_81

def loopBody345_83 : HolLoopProg 64 :=
.mark loopBody345_82

def loopBody345_84 : HolLoopProg 64 :=
.seq loopBody345_49 loopBody345_83

def loopBody345_85 : HolLoopProg 64 :=
.mark loopBody345_84

def loopBody345_86 : HolLoopProg 64 :=
.seq loopBody345_15 loopBody345_85

def loopBody345_87 : HolLoopProg 64 :=
.mark loopBody345_86

def loopBody345_88 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_87

def loopBody345_89 : HolLoopProg 64 :=
.mark loopBody345_88

def loopBody345_90 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_89

def loopBody345_91 : HolLoopProg 64 :=
.mark loopBody345_90

def loopBody345_92 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_91

def loopBody345_93 : HolLoopProg 64 :=
.mark loopBody345_92

def loopBody345_94 : HolLoopProg 64 :=
.seq loopBody345_1 loopBody345_93

def loopBody345_95 : HolLoopProg 64 :=
.mark loopBody345_94

def output345 : Nat × List Nat × HolLoopProg 64 :=
  (409, [0, 1, 2], loopBody345_95)
end InitECandidate.Proofs.FrontendStages.Loop
