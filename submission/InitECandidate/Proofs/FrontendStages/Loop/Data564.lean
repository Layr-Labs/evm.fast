import InitECandidate.Proofs.FrontendStages.Loop.Translate548
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody564_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody564_1 : HolLoopProg 64 :=
.mark loopBody564_0

def loopBody564_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 16#64)

def loopBody564_3 : HolLoopProg 64 :=
.mark loopBody564_2

def loopBody564_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 1#64)

def loopBody564_5 : HolLoopProg 64 :=
.mark loopBody564_4

def loopBody564_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.const 0#64)

def loopBody564_7 : HolLoopProg 64 :=
.mark loopBody564_6

def loopBody564_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody564_5 loopBody564_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)

def loopBody564_9 : HolLoopProg 64 :=
.mark loopBody564_8

def loopBody564_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody564_11 : HolLoopProg 64 :=
.mark loopBody564_10

def loopBody564_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody564_13 : HolLoopProg 64 :=
.mark loopBody564_12

def loopBody564_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [1]

def loopBody564_15 : HolLoopProg 64 :=
.mark loopBody564_14

def loopBody564_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody564_17 : HolLoopProg 64 :=
.mark loopBody564_16

def loopBody564_18 : HolLoopProg 64 :=
.seq loopBody564_15 loopBody564_17

def loopBody564_19 : HolLoopProg 64 :=
.mark loopBody564_18

def loopBody564_20 : HolLoopProg 64 :=
.seq loopBody564_13 loopBody564_19

def loopBody564_21 : HolLoopProg 64 :=
.mark loopBody564_20

def loopBody564_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody564_21 loopBody564_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody564_23 : HolLoopProg 64 :=
.mark loopBody564_22

def loopBody564_24 : HolLoopProg 64 :=
.seq loopBody564_23 loopBody564_17

def loopBody564_25 : HolLoopProg 64 :=
.mark loopBody564_24

def loopBody564_26 : HolLoopProg 64 :=
.seq loopBody564_11 loopBody564_25

def loopBody564_27 : HolLoopProg 64 :=
.mark loopBody564_26

def loopBody564_28 : HolLoopProg 64 :=
.seq loopBody564_9 loopBody564_27

def loopBody564_29 : HolLoopProg 64 :=
.mark loopBody564_28

def loopBody564_30 : HolLoopProg 64 :=
.seq loopBody564_3 loopBody564_29

def loopBody564_31 : HolLoopProg 64 :=
.mark loopBody564_30

def loopBody564_32 : HolLoopProg 64 :=
.seq loopBody564_1 loopBody564_31

def loopBody564_33 : HolLoopProg 64 :=
.mark loopBody564_32

def loopBody564_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 32#64)

def loopBody564_35 : HolLoopProg 64 :=
.mark loopBody564_34

def loopBody564_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1518500249#64)

def loopBody564_37 : HolLoopProg 64 :=
.mark loopBody564_36

def loopBody564_38 : HolLoopProg 64 :=
.seq loopBody564_37 loopBody564_19

def loopBody564_39 : HolLoopProg 64 :=
.mark loopBody564_38

def loopBody564_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody564_39 loopBody564_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody564_41 : HolLoopProg 64 :=
.mark loopBody564_40

def loopBody564_42 : HolLoopProg 64 :=
.seq loopBody564_41 loopBody564_17

def loopBody564_43 : HolLoopProg 64 :=
.mark loopBody564_42

def loopBody564_44 : HolLoopProg 64 :=
.seq loopBody564_11 loopBody564_43

def loopBody564_45 : HolLoopProg 64 :=
.mark loopBody564_44

def loopBody564_46 : HolLoopProg 64 :=
.seq loopBody564_9 loopBody564_45

def loopBody564_47 : HolLoopProg 64 :=
.mark loopBody564_46

def loopBody564_48 : HolLoopProg 64 :=
.seq loopBody564_35 loopBody564_47

def loopBody564_49 : HolLoopProg 64 :=
.mark loopBody564_48

def loopBody564_50 : HolLoopProg 64 :=
.seq loopBody564_1 loopBody564_49

def loopBody564_51 : HolLoopProg 64 :=
.mark loopBody564_50

def loopBody564_52 : HolLoopProg 64 :=
.seq loopBody564_33 loopBody564_51

def loopBody564_53 : HolLoopProg 64 :=
.mark loopBody564_52

def loopBody564_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 48#64)

def loopBody564_55 : HolLoopProg 64 :=
.mark loopBody564_54

def loopBody564_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 1859775393#64)

def loopBody564_57 : HolLoopProg 64 :=
.mark loopBody564_56

def loopBody564_58 : HolLoopProg 64 :=
.seq loopBody564_57 loopBody564_19

def loopBody564_59 : HolLoopProg 64 :=
.mark loopBody564_58

def loopBody564_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody564_59 loopBody564_17 (Flapjack.Spt.ls PUnit.unit)

def loopBody564_61 : HolLoopProg 64 :=
.mark loopBody564_60

def loopBody564_62 : HolLoopProg 64 :=
.seq loopBody564_61 loopBody564_17

def loopBody564_63 : HolLoopProg 64 :=
.mark loopBody564_62

def loopBody564_64 : HolLoopProg 64 :=
.seq loopBody564_11 loopBody564_63

def loopBody564_65 : HolLoopProg 64 :=
.mark loopBody564_64

def loopBody564_66 : HolLoopProg 64 :=
.seq loopBody564_9 loopBody564_65

def loopBody564_67 : HolLoopProg 64 :=
.mark loopBody564_66

def loopBody564_68 : HolLoopProg 64 :=
.seq loopBody564_55 loopBody564_67

def loopBody564_69 : HolLoopProg 64 :=
.mark loopBody564_68

def loopBody564_70 : HolLoopProg 64 :=
.seq loopBody564_1 loopBody564_69

def loopBody564_71 : HolLoopProg 64 :=
.mark loopBody564_70

def loopBody564_72 : HolLoopProg 64 :=
.seq loopBody564_53 loopBody564_71

def loopBody564_73 : HolLoopProg 64 :=
.mark loopBody564_72

def loopBody564_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 64#64)

def loopBody564_75 : HolLoopProg 64 :=
.mark loopBody564_74

def loopBody564_76 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.RegImm.reg 3) loopBody564_5 loopBody564_7 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)

def loopBody564_77 : HolLoopProg 64 :=
.mark loopBody564_76

def loopBody564_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 2400959708#64)

def loopBody564_79 : HolLoopProg 64 :=
.mark loopBody564_78

def loopBody564_80 : HolLoopProg 64 :=
.seq loopBody564_79 loopBody564_19

def loopBody564_81 : HolLoopProg 64 :=
.mark loopBody564_80

def loopBody564_82 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.imm 0#64) loopBody564_81 loopBody564_17 (Flapjack.Spt.ln)

def loopBody564_83 : HolLoopProg 64 :=
.mark loopBody564_82

def loopBody564_84 : HolLoopProg 64 :=
.seq loopBody564_83 loopBody564_17

def loopBody564_85 : HolLoopProg 64 :=
.mark loopBody564_84

def loopBody564_86 : HolLoopProg 64 :=
.seq loopBody564_11 loopBody564_85

def loopBody564_87 : HolLoopProg 64 :=
.mark loopBody564_86

def loopBody564_88 : HolLoopProg 64 :=
.seq loopBody564_77 loopBody564_87

def loopBody564_89 : HolLoopProg 64 :=
.mark loopBody564_88

def loopBody564_90 : HolLoopProg 64 :=
.seq loopBody564_75 loopBody564_89

def loopBody564_91 : HolLoopProg 64 :=
.mark loopBody564_90

def loopBody564_92 : HolLoopProg 64 :=
.seq loopBody564_1 loopBody564_91

def loopBody564_93 : HolLoopProg 64 :=
.mark loopBody564_92

def loopBody564_94 : HolLoopProg 64 :=
.seq loopBody564_73 loopBody564_93

def loopBody564_95 : HolLoopProg 64 :=
.mark loopBody564_94

def loopBody564_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 2840853838#64)

def loopBody564_97 : HolLoopProg 64 :=
.mark loopBody564_96

def loopBody564_98 : HolLoopProg 64 :=
.seq loopBody564_97 loopBody564_19

def loopBody564_99 : HolLoopProg 64 :=
.mark loopBody564_98

def loopBody564_100 : HolLoopProg 64 :=
.seq loopBody564_95 loopBody564_99

def loopBody564_101 : HolLoopProg 64 :=
.mark loopBody564_100

def output564 : Nat × List Nat × HolLoopProg 64 :=
  (628, [0], loopBody564_101)
end InitECandidate.Proofs.FrontendStages.Loop
