import InitECandidate.Proofs.FrontendStages.Loop.Translate338
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody354_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody354_1 : HolLoopProg 64 :=
.mark loopBody354_0

def loopBody354_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody354_3 : HolLoopProg 64 :=
.mark loopBody354_2

def loopBody354_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody354_5 : HolLoopProg 64 :=
.mark loopBody354_4

def loopBody354_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 406) ([2]) (some (2, loopBody354_5, loopBody354_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody354_7 : HolLoopProg 64 :=
.mark loopBody354_6

def loopBody354_8 : HolLoopProg 64 :=
.seq loopBody354_7 loopBody354_1

def loopBody354_9 : HolLoopProg 64 :=
.mark loopBody354_8

def loopBody354_10 : HolLoopProg 64 :=
.seq loopBody354_3 loopBody354_9

def loopBody354_11 : HolLoopProg 64 :=
.mark loopBody354_10

def loopBody354_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody354_13 : HolLoopProg 64 :=
.mark loopBody354_12

def loopBody354_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody354_15 : HolLoopProg 64 :=
.mark loopBody354_14

def loopBody354_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody354_17 : HolLoopProg 64 :=
.mark loopBody354_16

def loopBody354_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody354_19 : HolLoopProg 64 :=
.mark loopBody354_18

def loopBody354_20 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.RegImm.reg 4) loopBody354_17 loopBody354_19 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody354_21 : HolLoopProg 64 :=
.mark loopBody354_20

def loopBody354_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody354_23 : HolLoopProg 64 :=
.mark loopBody354_22

def loopBody354_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody354_25 : HolLoopProg 64 :=
.mark loopBody354_24

def loopBody354_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody354_27 : HolLoopProg 64 :=
.mark loopBody354_26

def loopBody354_28 : HolLoopProg 64 :=
.seq loopBody354_27 loopBody354_1

def loopBody354_29 : HolLoopProg 64 :=
.mark loopBody354_28

def loopBody354_30 : HolLoopProg 64 :=
.seq loopBody354_25 loopBody354_29

def loopBody354_31 : HolLoopProg 64 :=
.mark loopBody354_30

def loopBody354_32 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody354_31 loopBody354_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody354_33 : HolLoopProg 64 :=
.mark loopBody354_32

def loopBody354_34 : HolLoopProg 64 :=
.seq loopBody354_33 loopBody354_1

def loopBody354_35 : HolLoopProg 64 :=
.mark loopBody354_34

def loopBody354_36 : HolLoopProg 64 :=
.seq loopBody354_23 loopBody354_35

def loopBody354_37 : HolLoopProg 64 :=
.mark loopBody354_36

def loopBody354_38 : HolLoopProg 64 :=
.seq loopBody354_21 loopBody354_37

def loopBody354_39 : HolLoopProg 64 :=
.mark loopBody354_38

def loopBody354_40 : HolLoopProg 64 :=
.seq loopBody354_15 loopBody354_39

def loopBody354_41 : HolLoopProg 64 :=
.mark loopBody354_40

def loopBody354_42 : HolLoopProg 64 :=
.seq loopBody354_13 loopBody354_41

def loopBody354_43 : HolLoopProg 64 :=
.mark loopBody354_42

def loopBody354_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody354_45 : HolLoopProg 64 :=
.mark loopBody354_44

def loopBody354_46 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.ln)) (some 416) ([3]) (some (3, loopBody354_45, loopBody354_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody354_47 : HolLoopProg 64 :=
.mark loopBody354_46

def loopBody354_48 : HolLoopProg 64 :=
.seq loopBody354_47 loopBody354_1

def loopBody354_49 : HolLoopProg 64 :=
.mark loopBody354_48

def loopBody354_50 : HolLoopProg 64 :=
.seq loopBody354_13 loopBody354_49

def loopBody354_51 : HolLoopProg 64 :=
.mark loopBody354_50

def loopBody354_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody354_53 : HolLoopProg 64 :=
.mark loopBody354_52

def loopBody354_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody354_55 : HolLoopProg 64 :=
.mark loopBody354_54

def loopBody354_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody354_57 : HolLoopProg 64 :=
.mark loopBody354_56

def loopBody354_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody354_15 loopBody354_57 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)

def loopBody354_59 : HolLoopProg 64 :=
.mark loopBody354_58

def loopBody354_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody354_61 : HolLoopProg 64 :=
.mark loopBody354_60

def loopBody354_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [3]

def loopBody354_63 : HolLoopProg 64 :=
.mark loopBody354_62

def loopBody354_64 : HolLoopProg 64 :=
.seq loopBody354_63 loopBody354_1

def loopBody354_65 : HolLoopProg 64 :=
.mark loopBody354_64

def loopBody354_66 : HolLoopProg 64 :=
.seq loopBody354_19 loopBody354_65

def loopBody354_67 : HolLoopProg 64 :=
.mark loopBody354_66

def loopBody354_68 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody354_67 loopBody354_1 (Flapjack.Spt.ln)

def loopBody354_69 : HolLoopProg 64 :=
.mark loopBody354_68

def loopBody354_70 : HolLoopProg 64 :=
.seq loopBody354_69 loopBody354_1

def loopBody354_71 : HolLoopProg 64 :=
.mark loopBody354_70

def loopBody354_72 : HolLoopProg 64 :=
.seq loopBody354_61 loopBody354_71

def loopBody354_73 : HolLoopProg 64 :=
.mark loopBody354_72

def loopBody354_74 : HolLoopProg 64 :=
.seq loopBody354_59 loopBody354_73

def loopBody354_75 : HolLoopProg 64 :=
.mark loopBody354_74

def loopBody354_76 : HolLoopProg 64 :=
.seq loopBody354_55 loopBody354_75

def loopBody354_77 : HolLoopProg 64 :=
.mark loopBody354_76

def loopBody354_78 : HolLoopProg 64 :=
.seq loopBody354_53 loopBody354_77

def loopBody354_79 : HolLoopProg 64 :=
.mark loopBody354_78

def loopBody354_80 : HolLoopProg 64 :=
.seq loopBody354_17 loopBody354_65

def loopBody354_81 : HolLoopProg 64 :=
.mark loopBody354_80

def loopBody354_82 : HolLoopProg 64 :=
.seq loopBody354_79 loopBody354_81

def loopBody354_83 : HolLoopProg 64 :=
.mark loopBody354_82

def loopBody354_84 : HolLoopProg 64 :=
.seq loopBody354_51 loopBody354_83

def loopBody354_85 : HolLoopProg 64 :=
.mark loopBody354_84

def loopBody354_86 : HolLoopProg 64 :=
.seq loopBody354_1 loopBody354_85

def loopBody354_87 : HolLoopProg 64 :=
.mark loopBody354_86

def loopBody354_88 : HolLoopProg 64 :=
.seq loopBody354_1 loopBody354_87

def loopBody354_89 : HolLoopProg 64 :=
.mark loopBody354_88

def loopBody354_90 : HolLoopProg 64 :=
.seq loopBody354_43 loopBody354_89

def loopBody354_91 : HolLoopProg 64 :=
.mark loopBody354_90

def loopBody354_92 : HolLoopProg 64 :=
.seq loopBody354_11 loopBody354_91

def loopBody354_93 : HolLoopProg 64 :=
.mark loopBody354_92

def loopBody354_94 : HolLoopProg 64 :=
.seq loopBody354_1 loopBody354_93

def loopBody354_95 : HolLoopProg 64 :=
.mark loopBody354_94

def loopBody354_96 : HolLoopProg 64 :=
.seq loopBody354_1 loopBody354_95

def loopBody354_97 : HolLoopProg 64 :=
.mark loopBody354_96

def output354 : Nat × List Nat × HolLoopProg 64 :=
  (418, [0], loopBody354_97)
end InitECandidate.Proofs.FrontendStages.Loop
