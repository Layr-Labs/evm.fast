import InitECandidate.Proofs.FrontendStages.Loop.Translate549
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody565_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody565_1 : HolLoopProg 64 :=
.mark loopBody565_0

def loopBody565_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 16#64)

def loopBody565_3 : HolLoopProg 64 :=
.mark loopBody565_2

def loopBody565_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody565_5 : HolLoopProg 64 :=
.mark loopBody565_4

def loopBody565_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody565_7 : HolLoopProg 64 :=
.mark loopBody565_6

def loopBody565_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody565_5 loopBody565_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody565_9 : HolLoopProg 64 :=
.mark loopBody565_8

def loopBody565_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody565_11 : HolLoopProg 64 :=
.mark loopBody565_10

def loopBody565_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1352829926#64)

def loopBody565_13 : HolLoopProg 64 :=
.mark loopBody565_12

def loopBody565_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody565_15 : HolLoopProg 64 :=
.mark loopBody565_14

def loopBody565_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody565_17 : HolLoopProg 64 :=
.mark loopBody565_16

def loopBody565_18 : HolLoopProg 64 :=
.seq loopBody565_15 loopBody565_17

def loopBody565_19 : HolLoopProg 64 :=
.mark loopBody565_18

def loopBody565_20 : HolLoopProg 64 :=
.seq loopBody565_13 loopBody565_19

def loopBody565_21 : HolLoopProg 64 :=
.mark loopBody565_20

def loopBody565_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody565_21 loopBody565_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody565_23 : HolLoopProg 64 :=
.mark loopBody565_22

def loopBody565_24 : HolLoopProg 64 :=
.seq loopBody565_23 loopBody565_17

def loopBody565_25 : HolLoopProg 64 :=
.mark loopBody565_24

def loopBody565_26 : HolLoopProg 64 :=
.seq loopBody565_11 loopBody565_25

def loopBody565_27 : HolLoopProg 64 :=
.mark loopBody565_26

def loopBody565_28 : HolLoopProg 64 :=
.seq loopBody565_9 loopBody565_27

def loopBody565_29 : HolLoopProg 64 :=
.mark loopBody565_28

def loopBody565_30 : HolLoopProg 64 :=
.seq loopBody565_3 loopBody565_29

def loopBody565_31 : HolLoopProg 64 :=
.mark loopBody565_30

def loopBody565_32 : HolLoopProg 64 :=
.seq loopBody565_1 loopBody565_31

def loopBody565_33 : HolLoopProg 64 :=
.mark loopBody565_32

def loopBody565_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 32#64)

def loopBody565_35 : HolLoopProg 64 :=
.mark loopBody565_34

def loopBody565_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1548603684#64)

def loopBody565_37 : HolLoopProg 64 :=
.mark loopBody565_36

def loopBody565_38 : HolLoopProg 64 :=
.seq loopBody565_37 loopBody565_19

def loopBody565_39 : HolLoopProg 64 :=
.mark loopBody565_38

def loopBody565_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody565_39 loopBody565_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody565_41 : HolLoopProg 64 :=
.mark loopBody565_40

def loopBody565_42 : HolLoopProg 64 :=
.seq loopBody565_41 loopBody565_17

def loopBody565_43 : HolLoopProg 64 :=
.mark loopBody565_42

def loopBody565_44 : HolLoopProg 64 :=
.seq loopBody565_11 loopBody565_43

def loopBody565_45 : HolLoopProg 64 :=
.mark loopBody565_44

def loopBody565_46 : HolLoopProg 64 :=
.seq loopBody565_9 loopBody565_45

def loopBody565_47 : HolLoopProg 64 :=
.mark loopBody565_46

def loopBody565_48 : HolLoopProg 64 :=
.seq loopBody565_35 loopBody565_47

def loopBody565_49 : HolLoopProg 64 :=
.mark loopBody565_48

def loopBody565_50 : HolLoopProg 64 :=
.seq loopBody565_1 loopBody565_49

def loopBody565_51 : HolLoopProg 64 :=
.mark loopBody565_50

def loopBody565_52 : HolLoopProg 64 :=
.seq loopBody565_33 loopBody565_51

def loopBody565_53 : HolLoopProg 64 :=
.mark loopBody565_52

def loopBody565_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 48#64)

def loopBody565_55 : HolLoopProg 64 :=
.mark loopBody565_54

def loopBody565_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1836072691#64)

def loopBody565_57 : HolLoopProg 64 :=
.mark loopBody565_56

def loopBody565_58 : HolLoopProg 64 :=
.seq loopBody565_57 loopBody565_19

def loopBody565_59 : HolLoopProg 64 :=
.mark loopBody565_58

def loopBody565_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody565_59 loopBody565_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody565_61 : HolLoopProg 64 :=
.mark loopBody565_60

def loopBody565_62 : HolLoopProg 64 :=
.seq loopBody565_61 loopBody565_17

def loopBody565_63 : HolLoopProg 64 :=
.mark loopBody565_62

def loopBody565_64 : HolLoopProg 64 :=
.seq loopBody565_11 loopBody565_63

def loopBody565_65 : HolLoopProg 64 :=
.mark loopBody565_64

def loopBody565_66 : HolLoopProg 64 :=
.seq loopBody565_9 loopBody565_65

def loopBody565_67 : HolLoopProg 64 :=
.mark loopBody565_66

def loopBody565_68 : HolLoopProg 64 :=
.seq loopBody565_55 loopBody565_67

def loopBody565_69 : HolLoopProg 64 :=
.mark loopBody565_68

def loopBody565_70 : HolLoopProg 64 :=
.seq loopBody565_1 loopBody565_69

def loopBody565_71 : HolLoopProg 64 :=
.mark loopBody565_70

def loopBody565_72 : HolLoopProg 64 :=
.seq loopBody565_53 loopBody565_71

def loopBody565_73 : HolLoopProg 64 :=
.mark loopBody565_72

def loopBody565_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 64#64)

def loopBody565_75 : HolLoopProg 64 :=
.mark loopBody565_74

def loopBody565_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody565_5 loopBody565_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody565_77 : HolLoopProg 64 :=
.mark loopBody565_76

def loopBody565_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 2053994217#64)

def loopBody565_79 : HolLoopProg 64 :=
.mark loopBody565_78

def loopBody565_80 : HolLoopProg 64 :=
.seq loopBody565_79 loopBody565_19

def loopBody565_81 : HolLoopProg 64 :=
.mark loopBody565_80

def loopBody565_82 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody565_81 loopBody565_17 (Flapjack.Spt.ln)

def loopBody565_83 : HolLoopProg 64 :=
.mark loopBody565_82

def loopBody565_84 : HolLoopProg 64 :=
.seq loopBody565_83 loopBody565_17

def loopBody565_85 : HolLoopProg 64 :=
.mark loopBody565_84

def loopBody565_86 : HolLoopProg 64 :=
.seq loopBody565_11 loopBody565_85

def loopBody565_87 : HolLoopProg 64 :=
.mark loopBody565_86

def loopBody565_88 : HolLoopProg 64 :=
.seq loopBody565_77 loopBody565_87

def loopBody565_89 : HolLoopProg 64 :=
.mark loopBody565_88

def loopBody565_90 : HolLoopProg 64 :=
.seq loopBody565_75 loopBody565_89

def loopBody565_91 : HolLoopProg 64 :=
.mark loopBody565_90

def loopBody565_92 : HolLoopProg 64 :=
.seq loopBody565_1 loopBody565_91

def loopBody565_93 : HolLoopProg 64 :=
.mark loopBody565_92

def loopBody565_94 : HolLoopProg 64 :=
.seq loopBody565_73 loopBody565_93

def loopBody565_95 : HolLoopProg 64 :=
.mark loopBody565_94

def loopBody565_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody565_97 : HolLoopProg 64 :=
.mark loopBody565_96

def loopBody565_98 : HolLoopProg 64 :=
.seq loopBody565_97 loopBody565_19

def loopBody565_99 : HolLoopProg 64 :=
.mark loopBody565_98

def loopBody565_100 : HolLoopProg 64 :=
.seq loopBody565_95 loopBody565_99

def loopBody565_101 : HolLoopProg 64 :=
.mark loopBody565_100

def output565 : Nat × List Nat × HolLoopProg 64 :=
  (629, [0], loopBody565_101)
end InitECandidate.Proofs.FrontendStages.Loop
