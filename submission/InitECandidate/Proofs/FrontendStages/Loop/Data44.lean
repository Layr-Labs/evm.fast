import InitECandidate.Proofs.FrontendStages.Loop.Translate28
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody44_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody44_1 : HolLoopProg 64 :=
.mark loopBody44_0

def loopBody44_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 7)

def loopBody44_3 : HolLoopProg 64 :=
.mark loopBody44_2

def loopBody44_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody44_5 : HolLoopProg 64 :=
.mark loopBody44_4

def loopBody44_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody44_7 : HolLoopProg 64 :=
.mark loopBody44_6

def loopBody44_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody44_5 loopBody44_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody44_9 : HolLoopProg 64 :=
.mark loopBody44_8

def loopBody44_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 9)

def loopBody44_11 : HolLoopProg 64 :=
.mark loopBody44_10

def loopBody44_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.less) 9 (Flapjack.RegImm.reg 10) loopBody44_5 loopBody44_7 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody44_13 : HolLoopProg 64 :=
.mark loopBody44_12

def loopBody44_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 1#64)

def loopBody44_15 : HolLoopProg 64 :=
.mark loopBody44_14

def loopBody44_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody44_17 : HolLoopProg 64 :=
.mark loopBody44_16

def loopBody44_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody44_19 : HolLoopProg 64 :=
.mark loopBody44_18

def loopBody44_20 : HolLoopProg 64 :=
.seq loopBody44_17 loopBody44_19

def loopBody44_21 : HolLoopProg 64 :=
.mark loopBody44_20

def loopBody44_22 : HolLoopProg 64 :=
.seq loopBody44_15 loopBody44_21

def loopBody44_23 : HolLoopProg 64 :=
.mark loopBody44_22

def loopBody44_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody44_23 loopBody44_19 (Flapjack.Spt.ln)

def loopBody44_25 : HolLoopProg 64 :=
.mark loopBody44_24

def loopBody44_26 : HolLoopProg 64 :=
.seq loopBody44_25 loopBody44_19

def loopBody44_27 : HolLoopProg 64 :=
.mark loopBody44_26

def loopBody44_28 : HolLoopProg 64 :=
.seq loopBody44_11 loopBody44_27

def loopBody44_29 : HolLoopProg 64 :=
.mark loopBody44_28

def loopBody44_30 : HolLoopProg 64 :=
.seq loopBody44_13 loopBody44_29

def loopBody44_31 : HolLoopProg 64 :=
.mark loopBody44_30

def loopBody44_32 : HolLoopProg 64 :=
.seq loopBody44_3 loopBody44_31

def loopBody44_33 : HolLoopProg 64 :=
.mark loopBody44_32

def loopBody44_34 : HolLoopProg 64 :=
.seq loopBody44_1 loopBody44_33

def loopBody44_35 : HolLoopProg 64 :=
.mark loopBody44_34

def loopBody44_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody44_37 : HolLoopProg 64 :=
.mark loopBody44_36

def loopBody44_38 : HolLoopProg 64 :=
.seq loopBody44_37 loopBody44_21

def loopBody44_39 : HolLoopProg 64 :=
.mark loopBody44_38

def loopBody44_40 : HolLoopProg 64 :=
.seq loopBody44_35 loopBody44_39

def loopBody44_41 : HolLoopProg 64 :=
.mark loopBody44_40

def loopBody44_42 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody44_41 loopBody44_19 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody44_43 : HolLoopProg 64 :=
.mark loopBody44_42

def loopBody44_44 : HolLoopProg 64 :=
.seq loopBody44_43 loopBody44_19

def loopBody44_45 : HolLoopProg 64 :=
.mark loopBody44_44

def loopBody44_46 : HolLoopProg 64 :=
.seq loopBody44_11 loopBody44_45

def loopBody44_47 : HolLoopProg 64 :=
.mark loopBody44_46

def loopBody44_48 : HolLoopProg 64 :=
.seq loopBody44_9 loopBody44_47

def loopBody44_49 : HolLoopProg 64 :=
.mark loopBody44_48

def loopBody44_50 : HolLoopProg 64 :=
.seq loopBody44_3 loopBody44_49

def loopBody44_51 : HolLoopProg 64 :=
.mark loopBody44_50

def loopBody44_52 : HolLoopProg 64 :=
.seq loopBody44_1 loopBody44_51

def loopBody44_53 : HolLoopProg 64 :=
.mark loopBody44_52

def loopBody44_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody44_55 : HolLoopProg 64 :=
.mark loopBody44_54

def loopBody44_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody44_57 : HolLoopProg 64 :=
.mark loopBody44_56

def loopBody44_58 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody44_5 loopBody44_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))

def loopBody44_59 : HolLoopProg 64 :=
.mark loopBody44_58

def loopBody44_60 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 9 (Flapjack.RegImm.reg 10) loopBody44_5 loopBody44_7 (Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))

def loopBody44_61 : HolLoopProg 64 :=
.mark loopBody44_60

def loopBody44_62 : HolLoopProg 64 :=
.seq loopBody44_61 loopBody44_29

def loopBody44_63 : HolLoopProg 64 :=
.mark loopBody44_62

def loopBody44_64 : HolLoopProg 64 :=
.seq loopBody44_57 loopBody44_63

def loopBody44_65 : HolLoopProg 64 :=
.mark loopBody44_64

def loopBody44_66 : HolLoopProg 64 :=
.seq loopBody44_55 loopBody44_65

def loopBody44_67 : HolLoopProg 64 :=
.mark loopBody44_66

def loopBody44_68 : HolLoopProg 64 :=
.seq loopBody44_67 loopBody44_39

def loopBody44_69 : HolLoopProg 64 :=
.mark loopBody44_68

def loopBody44_70 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody44_69 loopBody44_19 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody44_71 : HolLoopProg 64 :=
.mark loopBody44_70

def loopBody44_72 : HolLoopProg 64 :=
.seq loopBody44_71 loopBody44_19

def loopBody44_73 : HolLoopProg 64 :=
.mark loopBody44_72

def loopBody44_74 : HolLoopProg 64 :=
.seq loopBody44_11 loopBody44_73

def loopBody44_75 : HolLoopProg 64 :=
.mark loopBody44_74

def loopBody44_76 : HolLoopProg 64 :=
.seq loopBody44_59 loopBody44_75

def loopBody44_77 : HolLoopProg 64 :=
.mark loopBody44_76

def loopBody44_78 : HolLoopProg 64 :=
.seq loopBody44_57 loopBody44_77

def loopBody44_79 : HolLoopProg 64 :=
.mark loopBody44_78

def loopBody44_80 : HolLoopProg 64 :=
.seq loopBody44_55 loopBody44_79

def loopBody44_81 : HolLoopProg 64 :=
.mark loopBody44_80

def loopBody44_82 : HolLoopProg 64 :=
.seq loopBody44_53 loopBody44_81

def loopBody44_83 : HolLoopProg 64 :=
.mark loopBody44_82

def loopBody44_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 1)

def loopBody44_85 : HolLoopProg 64 :=
.mark loopBody44_84

def loopBody44_86 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 5)

def loopBody44_87 : HolLoopProg 64 :=
.mark loopBody44_86

def loopBody44_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 9 (Flapjack.RegImm.reg 10) loopBody44_5 loopBody44_7 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln))

def loopBody44_89 : HolLoopProg 64 :=
.mark loopBody44_88

def loopBody44_90 : HolLoopProg 64 :=
.seq loopBody44_87 loopBody44_63

def loopBody44_91 : HolLoopProg 64 :=
.mark loopBody44_90

def loopBody44_92 : HolLoopProg 64 :=
.seq loopBody44_85 loopBody44_91

def loopBody44_93 : HolLoopProg 64 :=
.mark loopBody44_92

def loopBody44_94 : HolLoopProg 64 :=
.seq loopBody44_93 loopBody44_39

def loopBody44_95 : HolLoopProg 64 :=
.mark loopBody44_94

def loopBody44_96 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.RegImm.imm 0#64) loopBody44_95 loopBody44_19 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)

def loopBody44_97 : HolLoopProg 64 :=
.mark loopBody44_96

def loopBody44_98 : HolLoopProg 64 :=
.seq loopBody44_97 loopBody44_19

def loopBody44_99 : HolLoopProg 64 :=
.mark loopBody44_98

def loopBody44_100 : HolLoopProg 64 :=
.seq loopBody44_11 loopBody44_99

def loopBody44_101 : HolLoopProg 64 :=
.mark loopBody44_100

def loopBody44_102 : HolLoopProg 64 :=
.seq loopBody44_89 loopBody44_101

def loopBody44_103 : HolLoopProg 64 :=
.mark loopBody44_102

def loopBody44_104 : HolLoopProg 64 :=
.seq loopBody44_87 loopBody44_103

def loopBody44_105 : HolLoopProg 64 :=
.mark loopBody44_104

def loopBody44_106 : HolLoopProg 64 :=
.seq loopBody44_85 loopBody44_105

def loopBody44_107 : HolLoopProg 64 :=
.mark loopBody44_106

def loopBody44_108 : HolLoopProg 64 :=
.seq loopBody44_83 loopBody44_107

def loopBody44_109 : HolLoopProg 64 :=
.mark loopBody44_108

def loopBody44_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 0)

def loopBody44_111 : HolLoopProg 64 :=
.mark loopBody44_110

def loopBody44_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody44_113 : HolLoopProg 64 :=
.mark loopBody44_112

def loopBody44_114 : HolLoopProg 64 :=
.seq loopBody44_113 loopBody44_63

def loopBody44_115 : HolLoopProg 64 :=
.mark loopBody44_114

def loopBody44_116 : HolLoopProg 64 :=
.seq loopBody44_111 loopBody44_115

def loopBody44_117 : HolLoopProg 64 :=
.mark loopBody44_116

def loopBody44_118 : HolLoopProg 64 :=
.seq loopBody44_109 loopBody44_117

def loopBody44_119 : HolLoopProg 64 :=
.mark loopBody44_118

def loopBody44_120 : HolLoopProg 64 :=
.seq loopBody44_119 loopBody44_39

def loopBody44_121 : HolLoopProg 64 :=
.mark loopBody44_120

def output44 : Nat × List Nat × HolLoopProg 64 :=
  (108, [0, 1, 2, 3, 4, 5, 6, 7], loopBody44_121)
end InitECandidate.Proofs.FrontendStages.Loop
