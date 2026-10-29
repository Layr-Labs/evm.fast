import InitECandidate.Proofs.FrontendStages.Loop.Translate58
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody74_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody74_1 : HolLoopProg 64 :=
.mark loopBody74_0

def loopBody74_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody74_3 : HolLoopProg 64 :=
.mark loopBody74_2

def loopBody74_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody74_5 : HolLoopProg 64 :=
.mark loopBody74_4

def loopBody74_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody74_7 : HolLoopProg 64 :=
.mark loopBody74_6

def loopBody74_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody74_5 loopBody74_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody74_9 : HolLoopProg 64 :=
.mark loopBody74_8

def loopBody74_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody74_11 : HolLoopProg 64 :=
.mark loopBody74_10

def loopBody74_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody74_13 : HolLoopProg 64 :=
.mark loopBody74_12

def loopBody74_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody74_15 : HolLoopProg 64 :=
.mark loopBody74_14

def loopBody74_16 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 137) ([5]) (some (5, loopBody74_15, loopBody74_13, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody74_17 : HolLoopProg 64 :=
.mark loopBody74_16

def loopBody74_18 : HolLoopProg 64 :=
.seq loopBody74_17 loopBody74_13

def loopBody74_19 : HolLoopProg 64 :=
.mark loopBody74_18

def loopBody74_20 : HolLoopProg 64 :=
.seq loopBody74_1 loopBody74_19

def loopBody74_21 : HolLoopProg 64 :=
.mark loopBody74_20

def loopBody74_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 192#64, Flapjack.HolLoopExp.var 4])

def loopBody74_23 : HolLoopProg 64 :=
.mark loopBody74_22

def loopBody74_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody74_25 : HolLoopProg 64 :=
.mark loopBody74_24

def loopBody74_26 : HolLoopProg 64 :=
.seq loopBody74_25 loopBody74_13

def loopBody74_27 : HolLoopProg 64 :=
.mark loopBody74_26

def loopBody74_28 : HolLoopProg 64 :=
.seq loopBody74_23 loopBody74_27

def loopBody74_29 : HolLoopProg 64 :=
.mark loopBody74_28

def loopBody74_30 : HolLoopProg 64 :=
.seq loopBody74_21 loopBody74_29

def loopBody74_31 : HolLoopProg 64 :=
.mark loopBody74_30

def loopBody74_32 : HolLoopProg 64 :=
.seq loopBody74_13 loopBody74_31

def loopBody74_33 : HolLoopProg 64 :=
.mark loopBody74_32

def loopBody74_34 : HolLoopProg 64 :=
.seq loopBody74_13 loopBody74_33

def loopBody74_35 : HolLoopProg 64 :=
.mark loopBody74_34

def loopBody74_36 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody74_35 loopBody74_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody74_37 : HolLoopProg 64 :=
.mark loopBody74_36

def loopBody74_38 : HolLoopProg 64 :=
.seq loopBody74_37 loopBody74_13

def loopBody74_39 : HolLoopProg 64 :=
.mark loopBody74_38

def loopBody74_40 : HolLoopProg 64 :=
.seq loopBody74_11 loopBody74_39

def loopBody74_41 : HolLoopProg 64 :=
.mark loopBody74_40

def loopBody74_42 : HolLoopProg 64 :=
.seq loopBody74_9 loopBody74_41

def loopBody74_43 : HolLoopProg 64 :=
.mark loopBody74_42

def loopBody74_44 : HolLoopProg 64 :=
.seq loopBody74_3 loopBody74_43

def loopBody74_45 : HolLoopProg 64 :=
.mark loopBody74_44

def loopBody74_46 : HolLoopProg 64 :=
.seq loopBody74_1 loopBody74_45

def loopBody74_47 : HolLoopProg 64 :=
.mark loopBody74_46

def loopBody74_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody74_49 : HolLoopProg 64 :=
.mark loopBody74_48

def loopBody74_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody74_5 loopBody74_7 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody74_51 : HolLoopProg 64 :=
.mark loopBody74_50

def loopBody74_52 : HolLoopProg 64 :=
.seq loopBody74_49 loopBody74_19

def loopBody74_53 : HolLoopProg 64 :=
.mark loopBody74_52

def loopBody74_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 128#64, Flapjack.HolLoopExp.var 4])

def loopBody74_55 : HolLoopProg 64 :=
.mark loopBody74_54

def loopBody74_56 : HolLoopProg 64 :=
.seq loopBody74_55 loopBody74_27

def loopBody74_57 : HolLoopProg 64 :=
.mark loopBody74_56

def loopBody74_58 : HolLoopProg 64 :=
.seq loopBody74_53 loopBody74_57

def loopBody74_59 : HolLoopProg 64 :=
.mark loopBody74_58

def loopBody74_60 : HolLoopProg 64 :=
.seq loopBody74_13 loopBody74_59

def loopBody74_61 : HolLoopProg 64 :=
.mark loopBody74_60

def loopBody74_62 : HolLoopProg 64 :=
.seq loopBody74_13 loopBody74_61

def loopBody74_63 : HolLoopProg 64 :=
.mark loopBody74_62

def loopBody74_64 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody74_63 loopBody74_13 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody74_65 : HolLoopProg 64 :=
.mark loopBody74_64

def loopBody74_66 : HolLoopProg 64 :=
.seq loopBody74_65 loopBody74_13

def loopBody74_67 : HolLoopProg 64 :=
.mark loopBody74_66

def loopBody74_68 : HolLoopProg 64 :=
.seq loopBody74_11 loopBody74_67

def loopBody74_69 : HolLoopProg 64 :=
.mark loopBody74_68

def loopBody74_70 : HolLoopProg 64 :=
.seq loopBody74_51 loopBody74_69

def loopBody74_71 : HolLoopProg 64 :=
.mark loopBody74_70

def loopBody74_72 : HolLoopProg 64 :=
.seq loopBody74_3 loopBody74_71

def loopBody74_73 : HolLoopProg 64 :=
.mark loopBody74_72

def loopBody74_74 : HolLoopProg 64 :=
.seq loopBody74_49 loopBody74_73

def loopBody74_75 : HolLoopProg 64 :=
.mark loopBody74_74

def loopBody74_76 : HolLoopProg 64 :=
.seq loopBody74_47 loopBody74_75

def loopBody74_77 : HolLoopProg 64 :=
.mark loopBody74_76

def loopBody74_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody74_79 : HolLoopProg 64 :=
.mark loopBody74_78

def loopBody74_80 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody74_5 loopBody74_7 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody74_81 : HolLoopProg 64 :=
.mark loopBody74_80

def loopBody74_82 : HolLoopProg 64 :=
.seq loopBody74_79 loopBody74_19

def loopBody74_83 : HolLoopProg 64 :=
.mark loopBody74_82

def loopBody74_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 64#64, Flapjack.HolLoopExp.var 4])

def loopBody74_85 : HolLoopProg 64 :=
.mark loopBody74_84

def loopBody74_86 : HolLoopProg 64 :=
.seq loopBody74_85 loopBody74_27

def loopBody74_87 : HolLoopProg 64 :=
.mark loopBody74_86

def loopBody74_88 : HolLoopProg 64 :=
.seq loopBody74_83 loopBody74_87

def loopBody74_89 : HolLoopProg 64 :=
.mark loopBody74_88

def loopBody74_90 : HolLoopProg 64 :=
.seq loopBody74_13 loopBody74_89

def loopBody74_91 : HolLoopProg 64 :=
.mark loopBody74_90

def loopBody74_92 : HolLoopProg 64 :=
.seq loopBody74_13 loopBody74_91

def loopBody74_93 : HolLoopProg 64 :=
.mark loopBody74_92

def loopBody74_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody74_93 loopBody74_13 (Flapjack.Spt.ls PUnit.unit)

def loopBody74_95 : HolLoopProg 64 :=
.mark loopBody74_94

def loopBody74_96 : HolLoopProg 64 :=
.seq loopBody74_95 loopBody74_13

def loopBody74_97 : HolLoopProg 64 :=
.mark loopBody74_96

def loopBody74_98 : HolLoopProg 64 :=
.seq loopBody74_11 loopBody74_97

def loopBody74_99 : HolLoopProg 64 :=
.mark loopBody74_98

def loopBody74_100 : HolLoopProg 64 :=
.seq loopBody74_81 loopBody74_99

def loopBody74_101 : HolLoopProg 64 :=
.mark loopBody74_100

def loopBody74_102 : HolLoopProg 64 :=
.seq loopBody74_3 loopBody74_101

def loopBody74_103 : HolLoopProg 64 :=
.mark loopBody74_102

def loopBody74_104 : HolLoopProg 64 :=
.seq loopBody74_79 loopBody74_103

def loopBody74_105 : HolLoopProg 64 :=
.mark loopBody74_104

def loopBody74_106 : HolLoopProg 64 :=
.seq loopBody74_77 loopBody74_105

def loopBody74_107 : HolLoopProg 64 :=
.mark loopBody74_106

def loopBody74_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody74_109 : HolLoopProg 64 :=
.mark loopBody74_108

def loopBody74_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.call none (some 137) [4] none

def loopBody74_111 : HolLoopProg 64 :=
.mark loopBody74_110

def loopBody74_112 : HolLoopProg 64 :=
.seq loopBody74_111 loopBody74_13

def loopBody74_113 : HolLoopProg 64 :=
.mark loopBody74_112

def loopBody74_114 : HolLoopProg 64 :=
.seq loopBody74_109 loopBody74_113

def loopBody74_115 : HolLoopProg 64 :=
.mark loopBody74_114

def loopBody74_116 : HolLoopProg 64 :=
.seq loopBody74_107 loopBody74_115

def loopBody74_117 : HolLoopProg 64 :=
.mark loopBody74_116

def output74 : Nat × List Nat × HolLoopProg 64 :=
  (138, [0, 1, 2, 3], loopBody74_117)
end InitECandidate.Proofs.FrontendStages.Loop
