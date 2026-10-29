import InitECandidate.Proofs.FrontendStages.Loop.Translate23
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody39_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody39_1 : HolLoopProg 64 :=
.mark loopBody39_0

def loopBody39_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody39_3 : HolLoopProg 64 :=
.mark loopBody39_2

def loopBody39_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody39_5 : HolLoopProg 64 :=
.mark loopBody39_4

def loopBody39_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody39_7 : HolLoopProg 64 :=
.mark loopBody39_6

def loopBody39_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody39_5 loopBody39_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody39_9 : HolLoopProg 64 :=
.mark loopBody39_8

def loopBody39_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody39_11 : HolLoopProg 64 :=
.mark loopBody39_10

def loopBody39_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody39_13 : HolLoopProg 64 :=
.mark loopBody39_12

def loopBody39_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody39_15 : HolLoopProg 64 :=
.mark loopBody39_14

def loopBody39_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody39_17 : HolLoopProg 64 :=
.mark loopBody39_16

def loopBody39_18 : HolLoopProg 64 :=
.seq loopBody39_15 loopBody39_17

def loopBody39_19 : HolLoopProg 64 :=
.mark loopBody39_18

def loopBody39_20 : HolLoopProg 64 :=
.seq loopBody39_13 loopBody39_19

def loopBody39_21 : HolLoopProg 64 :=
.mark loopBody39_20

def loopBody39_22 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody39_21 loopBody39_17 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody39_23 : HolLoopProg 64 :=
.mark loopBody39_22

def loopBody39_24 : HolLoopProg 64 :=
.seq loopBody39_23 loopBody39_17

def loopBody39_25 : HolLoopProg 64 :=
.mark loopBody39_24

def loopBody39_26 : HolLoopProg 64 :=
.seq loopBody39_11 loopBody39_25

def loopBody39_27 : HolLoopProg 64 :=
.mark loopBody39_26

def loopBody39_28 : HolLoopProg 64 :=
.seq loopBody39_9 loopBody39_27

def loopBody39_29 : HolLoopProg 64 :=
.mark loopBody39_28

def loopBody39_30 : HolLoopProg 64 :=
.seq loopBody39_3 loopBody39_29

def loopBody39_31 : HolLoopProg 64 :=
.mark loopBody39_30

def loopBody39_32 : HolLoopProg 64 :=
.seq loopBody39_1 loopBody39_31

def loopBody39_33 : HolLoopProg 64 :=
.mark loopBody39_32

def loopBody39_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 1#64)

def loopBody39_35 : HolLoopProg 64 :=
.mark loopBody39_34

def loopBody39_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody39_5 loopBody39_7 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody39_37 : HolLoopProg 64 :=
.mark loopBody39_36

def loopBody39_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody39_39 : HolLoopProg 64 :=
.mark loopBody39_38

def loopBody39_40 : HolLoopProg 64 :=
.seq loopBody39_39 loopBody39_19

def loopBody39_41 : HolLoopProg 64 :=
.mark loopBody39_40

def loopBody39_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody39_41 loopBody39_17 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody39_43 : HolLoopProg 64 :=
.mark loopBody39_42

def loopBody39_44 : HolLoopProg 64 :=
.seq loopBody39_43 loopBody39_17

def loopBody39_45 : HolLoopProg 64 :=
.mark loopBody39_44

def loopBody39_46 : HolLoopProg 64 :=
.seq loopBody39_11 loopBody39_45

def loopBody39_47 : HolLoopProg 64 :=
.mark loopBody39_46

def loopBody39_48 : HolLoopProg 64 :=
.seq loopBody39_37 loopBody39_47

def loopBody39_49 : HolLoopProg 64 :=
.mark loopBody39_48

def loopBody39_50 : HolLoopProg 64 :=
.seq loopBody39_35 loopBody39_49

def loopBody39_51 : HolLoopProg 64 :=
.mark loopBody39_50

def loopBody39_52 : HolLoopProg 64 :=
.seq loopBody39_1 loopBody39_51

def loopBody39_53 : HolLoopProg 64 :=
.mark loopBody39_52

def loopBody39_54 : HolLoopProg 64 :=
.seq loopBody39_33 loopBody39_53

def loopBody39_55 : HolLoopProg 64 :=
.mark loopBody39_54

def loopBody39_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 2#64)

def loopBody39_57 : HolLoopProg 64 :=
.mark loopBody39_56

def loopBody39_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody39_5 loopBody39_7 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody39_59 : HolLoopProg 64 :=
.mark loopBody39_58

def loopBody39_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody39_61 : HolLoopProg 64 :=
.mark loopBody39_60

def loopBody39_62 : HolLoopProg 64 :=
.seq loopBody39_61 loopBody39_19

def loopBody39_63 : HolLoopProg 64 :=
.mark loopBody39_62

def loopBody39_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody39_63 loopBody39_17 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody39_65 : HolLoopProg 64 :=
.mark loopBody39_64

def loopBody39_66 : HolLoopProg 64 :=
.seq loopBody39_65 loopBody39_17

def loopBody39_67 : HolLoopProg 64 :=
.mark loopBody39_66

def loopBody39_68 : HolLoopProg 64 :=
.seq loopBody39_11 loopBody39_67

def loopBody39_69 : HolLoopProg 64 :=
.mark loopBody39_68

def loopBody39_70 : HolLoopProg 64 :=
.seq loopBody39_59 loopBody39_69

def loopBody39_71 : HolLoopProg 64 :=
.mark loopBody39_70

def loopBody39_72 : HolLoopProg 64 :=
.seq loopBody39_57 loopBody39_71

def loopBody39_73 : HolLoopProg 64 :=
.mark loopBody39_72

def loopBody39_74 : HolLoopProg 64 :=
.seq loopBody39_1 loopBody39_73

def loopBody39_75 : HolLoopProg 64 :=
.mark loopBody39_74

def loopBody39_76 : HolLoopProg 64 :=
.seq loopBody39_55 loopBody39_75

def loopBody39_77 : HolLoopProg 64 :=
.mark loopBody39_76

def loopBody39_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 3#64)

def loopBody39_79 : HolLoopProg 64 :=
.mark loopBody39_78

def loopBody39_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody39_5 loopBody39_7 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody39_81 : HolLoopProg 64 :=
.mark loopBody39_80

def loopBody39_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody39_83 : HolLoopProg 64 :=
.mark loopBody39_82

def loopBody39_84 : HolLoopProg 64 :=
.seq loopBody39_83 loopBody39_19

def loopBody39_85 : HolLoopProg 64 :=
.mark loopBody39_84

def loopBody39_86 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody39_85 loopBody39_17 (Flapjack.Spt.ln)

def loopBody39_87 : HolLoopProg 64 :=
.mark loopBody39_86

def loopBody39_88 : HolLoopProg 64 :=
.seq loopBody39_87 loopBody39_17

def loopBody39_89 : HolLoopProg 64 :=
.mark loopBody39_88

def loopBody39_90 : HolLoopProg 64 :=
.seq loopBody39_11 loopBody39_89

def loopBody39_91 : HolLoopProg 64 :=
.mark loopBody39_90

def loopBody39_92 : HolLoopProg 64 :=
.seq loopBody39_81 loopBody39_91

def loopBody39_93 : HolLoopProg 64 :=
.mark loopBody39_92

def loopBody39_94 : HolLoopProg 64 :=
.seq loopBody39_79 loopBody39_93

def loopBody39_95 : HolLoopProg 64 :=
.mark loopBody39_94

def loopBody39_96 : HolLoopProg 64 :=
.seq loopBody39_1 loopBody39_95

def loopBody39_97 : HolLoopProg 64 :=
.mark loopBody39_96

def loopBody39_98 : HolLoopProg 64 :=
.seq loopBody39_77 loopBody39_97

def loopBody39_99 : HolLoopProg 64 :=
.mark loopBody39_98

def loopBody39_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody39_101 : HolLoopProg 64 :=
.mark loopBody39_100

def loopBody39_102 : HolLoopProg 64 :=
.seq loopBody39_101 loopBody39_19

def loopBody39_103 : HolLoopProg 64 :=
.mark loopBody39_102

def loopBody39_104 : HolLoopProg 64 :=
.seq loopBody39_99 loopBody39_103

def loopBody39_105 : HolLoopProg 64 :=
.mark loopBody39_104

def output39 : Nat × List Nat × HolLoopProg 64 :=
  (103, [0, 1, 2, 3, 4], loopBody39_105)
end InitECandidate.Proofs.FrontendStages.Loop
