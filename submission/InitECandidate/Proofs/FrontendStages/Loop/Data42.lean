import InitECandidate.Proofs.FrontendStages.Loop.Translate26
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody42_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody42_1 : HolLoopProg 64 :=
.mark loopBody42_0

def loopBody42_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody42_3 : HolLoopProg 64 :=
.mark loopBody42_2

def loopBody42_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody42_5 : HolLoopProg 64 :=
.mark loopBody42_4

def loopBody42_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody42_7 : HolLoopProg 64 :=
.mark loopBody42_6

def loopBody42_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody42_5 loopBody42_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody42_9 : HolLoopProg 64 :=
.mark loopBody42_8

def loopBody42_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody42_11 : HolLoopProg 64 :=
.mark loopBody42_10

def loopBody42_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody42_5 loopBody42_7 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody42_13 : HolLoopProg 64 :=
.mark loopBody42_12

def loopBody42_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody42_15 : HolLoopProg 64 :=
.mark loopBody42_14

def loopBody42_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody42_17 : HolLoopProg 64 :=
.mark loopBody42_16

def loopBody42_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody42_19 : HolLoopProg 64 :=
.mark loopBody42_18

def loopBody42_20 : HolLoopProg 64 :=
.seq loopBody42_17 loopBody42_19

def loopBody42_21 : HolLoopProg 64 :=
.mark loopBody42_20

def loopBody42_22 : HolLoopProg 64 :=
.seq loopBody42_15 loopBody42_21

def loopBody42_23 : HolLoopProg 64 :=
.mark loopBody42_22

def loopBody42_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody42_23 loopBody42_19 (Flapjack.Spt.ln)

def loopBody42_25 : HolLoopProg 64 :=
.mark loopBody42_24

def loopBody42_26 : HolLoopProg 64 :=
.seq loopBody42_25 loopBody42_19

def loopBody42_27 : HolLoopProg 64 :=
.mark loopBody42_26

def loopBody42_28 : HolLoopProg 64 :=
.seq loopBody42_11 loopBody42_27

def loopBody42_29 : HolLoopProg 64 :=
.mark loopBody42_28

def loopBody42_30 : HolLoopProg 64 :=
.seq loopBody42_13 loopBody42_29

def loopBody42_31 : HolLoopProg 64 :=
.mark loopBody42_30

def loopBody42_32 : HolLoopProg 64 :=
.seq loopBody42_3 loopBody42_31

def loopBody42_33 : HolLoopProg 64 :=
.mark loopBody42_32

def loopBody42_34 : HolLoopProg 64 :=
.seq loopBody42_1 loopBody42_33

def loopBody42_35 : HolLoopProg 64 :=
.mark loopBody42_34

def loopBody42_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody42_37 : HolLoopProg 64 :=
.mark loopBody42_36

def loopBody42_38 : HolLoopProg 64 :=
.seq loopBody42_37 loopBody42_21

def loopBody42_39 : HolLoopProg 64 :=
.mark loopBody42_38

def loopBody42_40 : HolLoopProg 64 :=
.seq loopBody42_35 loopBody42_39

def loopBody42_41 : HolLoopProg 64 :=
.mark loopBody42_40

def loopBody42_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody42_41 loopBody42_19 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody42_43 : HolLoopProg 64 :=
.mark loopBody42_42

def loopBody42_44 : HolLoopProg 64 :=
.seq loopBody42_43 loopBody42_19

def loopBody42_45 : HolLoopProg 64 :=
.mark loopBody42_44

def loopBody42_46 : HolLoopProg 64 :=
.seq loopBody42_11 loopBody42_45

def loopBody42_47 : HolLoopProg 64 :=
.mark loopBody42_46

def loopBody42_48 : HolLoopProg 64 :=
.seq loopBody42_9 loopBody42_47

def loopBody42_49 : HolLoopProg 64 :=
.mark loopBody42_48

def loopBody42_50 : HolLoopProg 64 :=
.seq loopBody42_3 loopBody42_49

def loopBody42_51 : HolLoopProg 64 :=
.mark loopBody42_50

def loopBody42_52 : HolLoopProg 64 :=
.seq loopBody42_1 loopBody42_51

def loopBody42_53 : HolLoopProg 64 :=
.mark loopBody42_52

def loopBody42_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody42_55 : HolLoopProg 64 :=
.mark loopBody42_54

def loopBody42_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody42_57 : HolLoopProg 64 :=
.mark loopBody42_56

def loopBody42_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody42_5 loopBody42_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))

def loopBody42_59 : HolLoopProg 64 :=
.mark loopBody42_58

def loopBody42_60 : HolLoopProg 64 :=
.seq loopBody42_57 loopBody42_31

def loopBody42_61 : HolLoopProg 64 :=
.mark loopBody42_60

def loopBody42_62 : HolLoopProg 64 :=
.seq loopBody42_55 loopBody42_61

def loopBody42_63 : HolLoopProg 64 :=
.mark loopBody42_62

def loopBody42_64 : HolLoopProg 64 :=
.seq loopBody42_63 loopBody42_39

def loopBody42_65 : HolLoopProg 64 :=
.mark loopBody42_64

def loopBody42_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody42_65 loopBody42_19 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody42_67 : HolLoopProg 64 :=
.mark loopBody42_66

def loopBody42_68 : HolLoopProg 64 :=
.seq loopBody42_67 loopBody42_19

def loopBody42_69 : HolLoopProg 64 :=
.mark loopBody42_68

def loopBody42_70 : HolLoopProg 64 :=
.seq loopBody42_11 loopBody42_69

def loopBody42_71 : HolLoopProg 64 :=
.mark loopBody42_70

def loopBody42_72 : HolLoopProg 64 :=
.seq loopBody42_59 loopBody42_71

def loopBody42_73 : HolLoopProg 64 :=
.mark loopBody42_72

def loopBody42_74 : HolLoopProg 64 :=
.seq loopBody42_57 loopBody42_73

def loopBody42_75 : HolLoopProg 64 :=
.mark loopBody42_74

def loopBody42_76 : HolLoopProg 64 :=
.seq loopBody42_55 loopBody42_75

def loopBody42_77 : HolLoopProg 64 :=
.mark loopBody42_76

def loopBody42_78 : HolLoopProg 64 :=
.seq loopBody42_53 loopBody42_77

def loopBody42_79 : HolLoopProg 64 :=
.mark loopBody42_78

def loopBody42_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody42_81 : HolLoopProg 64 :=
.mark loopBody42_80

def loopBody42_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody42_83 : HolLoopProg 64 :=
.mark loopBody42_82

def loopBody42_84 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody42_5 loopBody42_7 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))

def loopBody42_85 : HolLoopProg 64 :=
.mark loopBody42_84

def loopBody42_86 : HolLoopProg 64 :=
.seq loopBody42_83 loopBody42_31

def loopBody42_87 : HolLoopProg 64 :=
.mark loopBody42_86

def loopBody42_88 : HolLoopProg 64 :=
.seq loopBody42_81 loopBody42_87

def loopBody42_89 : HolLoopProg 64 :=
.mark loopBody42_88

def loopBody42_90 : HolLoopProg 64 :=
.seq loopBody42_89 loopBody42_39

def loopBody42_91 : HolLoopProg 64 :=
.mark loopBody42_90

def loopBody42_92 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody42_91 loopBody42_19 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody42_93 : HolLoopProg 64 :=
.mark loopBody42_92

def loopBody42_94 : HolLoopProg 64 :=
.seq loopBody42_93 loopBody42_19

def loopBody42_95 : HolLoopProg 64 :=
.mark loopBody42_94

def loopBody42_96 : HolLoopProg 64 :=
.seq loopBody42_11 loopBody42_95

def loopBody42_97 : HolLoopProg 64 :=
.mark loopBody42_96

def loopBody42_98 : HolLoopProg 64 :=
.seq loopBody42_85 loopBody42_97

def loopBody42_99 : HolLoopProg 64 :=
.mark loopBody42_98

def loopBody42_100 : HolLoopProg 64 :=
.seq loopBody42_83 loopBody42_99

def loopBody42_101 : HolLoopProg 64 :=
.mark loopBody42_100

def loopBody42_102 : HolLoopProg 64 :=
.seq loopBody42_81 loopBody42_101

def loopBody42_103 : HolLoopProg 64 :=
.mark loopBody42_102

def loopBody42_104 : HolLoopProg 64 :=
.seq loopBody42_79 loopBody42_103

def loopBody42_105 : HolLoopProg 64 :=
.mark loopBody42_104

def loopBody42_106 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody42_107 : HolLoopProg 64 :=
.mark loopBody42_106

def loopBody42_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody42_109 : HolLoopProg 64 :=
.mark loopBody42_108

def loopBody42_110 : HolLoopProg 64 :=
.seq loopBody42_109 loopBody42_31

def loopBody42_111 : HolLoopProg 64 :=
.mark loopBody42_110

def loopBody42_112 : HolLoopProg 64 :=
.seq loopBody42_107 loopBody42_111

def loopBody42_113 : HolLoopProg 64 :=
.mark loopBody42_112

def loopBody42_114 : HolLoopProg 64 :=
.seq loopBody42_105 loopBody42_113

def loopBody42_115 : HolLoopProg 64 :=
.mark loopBody42_114

def loopBody42_116 : HolLoopProg 64 :=
.seq loopBody42_115 loopBody42_39

def loopBody42_117 : HolLoopProg 64 :=
.mark loopBody42_116

def output42 : Nat × List Nat × HolLoopProg 64 :=
  (106, [0, 1, 2, 3, 4, 5, 6, 7], loopBody42_117)
end InitECandidate.Proofs.FrontendStages.Loop
