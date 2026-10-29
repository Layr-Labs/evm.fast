import InitECandidate.Proofs.FrontendStages.Loop.Translate191
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody207_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody207_1 : HolLoopProg 64 :=
.mark loopBody207_0

def loopBody207_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody207_3 : HolLoopProg 64 :=
.mark loopBody207_2

def loopBody207_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody207_5 : HolLoopProg 64 :=
.mark loopBody207_4

def loopBody207_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody207_7 : HolLoopProg 64 :=
.mark loopBody207_6

def loopBody207_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody207_9 : HolLoopProg 64 :=
.mark loopBody207_8

def loopBody207_10 : HolLoopProg 64 :=
.call (some ([3, 4], Flapjack.Spt.ln)) (some 269) ([5, 6, 7]) (some (5, loopBody207_9, loopBody207_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody207_11 : HolLoopProg 64 :=
.mark loopBody207_10

def loopBody207_12 : HolLoopProg 64 :=
.seq loopBody207_11 loopBody207_1

def loopBody207_13 : HolLoopProg 64 :=
.mark loopBody207_12

def loopBody207_14 : HolLoopProg 64 :=
.seq loopBody207_7 loopBody207_13

def loopBody207_15 : HolLoopProg 64 :=
.mark loopBody207_14

def loopBody207_16 : HolLoopProg 64 :=
.seq loopBody207_5 loopBody207_15

def loopBody207_17 : HolLoopProg 64 :=
.mark loopBody207_16

def loopBody207_18 : HolLoopProg 64 :=
.seq loopBody207_3 loopBody207_17

def loopBody207_19 : HolLoopProg 64 :=
.mark loopBody207_18

def loopBody207_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody207_21 : HolLoopProg 64 :=
.mark loopBody207_20

def loopBody207_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 4)

def loopBody207_23 : HolLoopProg 64 :=
.mark loopBody207_22

def loopBody207_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody207_25 : HolLoopProg 64 :=
.mark loopBody207_24

def loopBody207_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody207_27 : HolLoopProg 64 :=
.mark loopBody207_26

def loopBody207_28 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody207_25 loopBody207_27 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody207_29 : HolLoopProg 64 :=
.mark loopBody207_28

def loopBody207_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody207_31 : HolLoopProg 64 :=
.mark loopBody207_30

def loopBody207_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 5#64)

def loopBody207_33 : HolLoopProg 64 :=
.mark loopBody207_32

def loopBody207_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.setGlobal (0#5) (Flapjack.HolLoopExp.var 5)

def loopBody207_35 : HolLoopProg 64 :=
.mark loopBody207_34

def loopBody207_36 : HolLoopProg 64 :=
.seq loopBody207_35 loopBody207_1

def loopBody207_37 : HolLoopProg 64 :=
.mark loopBody207_36

def loopBody207_38 : HolLoopProg 64 :=
.seq loopBody207_37 loopBody207_1

def loopBody207_39 : HolLoopProg 64 :=
.mark loopBody207_38

def loopBody207_40 : HolLoopProg 64 :=
.seq loopBody207_33 loopBody207_39

def loopBody207_41 : HolLoopProg 64 :=
.mark loopBody207_40

def loopBody207_42 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_41

def loopBody207_43 : HolLoopProg 64 :=
.mark loopBody207_42

def loopBody207_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 3#64)

def loopBody207_45 : HolLoopProg 64 :=
.mark loopBody207_44

def loopBody207_46 : HolLoopProg 64 :=
.seq loopBody207_45 loopBody207_9

def loopBody207_47 : HolLoopProg 64 :=
.mark loopBody207_46

def loopBody207_48 : HolLoopProg 64 :=
.seq loopBody207_43 loopBody207_47

def loopBody207_49 : HolLoopProg 64 :=
.mark loopBody207_48

def loopBody207_50 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody207_49 loopBody207_1 (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))

def loopBody207_51 : HolLoopProg 64 :=
.mark loopBody207_50

def loopBody207_52 : HolLoopProg 64 :=
.seq loopBody207_51 loopBody207_1

def loopBody207_53 : HolLoopProg 64 :=
.mark loopBody207_52

def loopBody207_54 : HolLoopProg 64 :=
.seq loopBody207_31 loopBody207_53

def loopBody207_55 : HolLoopProg 64 :=
.mark loopBody207_54

def loopBody207_56 : HolLoopProg 64 :=
.seq loopBody207_29 loopBody207_55

def loopBody207_57 : HolLoopProg 64 :=
.mark loopBody207_56

def loopBody207_58 : HolLoopProg 64 :=
.seq loopBody207_23 loopBody207_57

def loopBody207_59 : HolLoopProg 64 :=
.mark loopBody207_58

def loopBody207_60 : HolLoopProg 64 :=
.seq loopBody207_21 loopBody207_59

def loopBody207_61 : HolLoopProg 64 :=
.mark loopBody207_60

def loopBody207_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody207_63 : HolLoopProg 64 :=
.mark loopBody207_62

def loopBody207_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 4)

def loopBody207_65 : HolLoopProg 64 :=
.mark loopBody207_64

def loopBody207_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 9

def loopBody207_67 : HolLoopProg 64 :=
.mark loopBody207_66

def loopBody207_68 : HolLoopProg 64 :=
.call (some ([5, 6, 7, 8], Flapjack.Spt.ln)) (some 146) ([9, 10]) (some (9, loopBody207_67, loopBody207_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody207_69 : HolLoopProg 64 :=
.mark loopBody207_68

def loopBody207_70 : HolLoopProg 64 :=
.seq loopBody207_69 loopBody207_1

def loopBody207_71 : HolLoopProg 64 :=
.mark loopBody207_70

def loopBody207_72 : HolLoopProg 64 :=
.seq loopBody207_65 loopBody207_71

def loopBody207_73 : HolLoopProg 64 :=
.mark loopBody207_72

def loopBody207_74 : HolLoopProg 64 :=
.seq loopBody207_63 loopBody207_73

def loopBody207_75 : HolLoopProg 64 :=
.mark loopBody207_74

def loopBody207_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody207_77 : HolLoopProg 64 :=
.mark loopBody207_76

def loopBody207_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody207_79 : HolLoopProg 64 :=
.mark loopBody207_78

def loopBody207_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 7)

def loopBody207_81 : HolLoopProg 64 :=
.mark loopBody207_80

def loopBody207_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 8)

def loopBody207_83 : HolLoopProg 64 :=
.mark loopBody207_82

def loopBody207_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [9, 10, 11, 12]

def loopBody207_85 : HolLoopProg 64 :=
.mark loopBody207_84

def loopBody207_86 : HolLoopProg 64 :=
.seq loopBody207_85 loopBody207_1

def loopBody207_87 : HolLoopProg 64 :=
.mark loopBody207_86

def loopBody207_88 : HolLoopProg 64 :=
.seq loopBody207_83 loopBody207_87

def loopBody207_89 : HolLoopProg 64 :=
.mark loopBody207_88

def loopBody207_90 : HolLoopProg 64 :=
.seq loopBody207_81 loopBody207_89

def loopBody207_91 : HolLoopProg 64 :=
.mark loopBody207_90

def loopBody207_92 : HolLoopProg 64 :=
.seq loopBody207_79 loopBody207_91

def loopBody207_93 : HolLoopProg 64 :=
.mark loopBody207_92

def loopBody207_94 : HolLoopProg 64 :=
.seq loopBody207_77 loopBody207_93

def loopBody207_95 : HolLoopProg 64 :=
.mark loopBody207_94

def loopBody207_96 : HolLoopProg 64 :=
.seq loopBody207_75 loopBody207_95

def loopBody207_97 : HolLoopProg 64 :=
.mark loopBody207_96

def loopBody207_98 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_97

def loopBody207_99 : HolLoopProg 64 :=
.mark loopBody207_98

def loopBody207_100 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_99

def loopBody207_101 : HolLoopProg 64 :=
.mark loopBody207_100

def loopBody207_102 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_101

def loopBody207_103 : HolLoopProg 64 :=
.mark loopBody207_102

def loopBody207_104 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_103

def loopBody207_105 : HolLoopProg 64 :=
.mark loopBody207_104

def loopBody207_106 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_105

def loopBody207_107 : HolLoopProg 64 :=
.mark loopBody207_106

def loopBody207_108 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_107

def loopBody207_109 : HolLoopProg 64 :=
.mark loopBody207_108

def loopBody207_110 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_109

def loopBody207_111 : HolLoopProg 64 :=
.mark loopBody207_110

def loopBody207_112 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_111

def loopBody207_113 : HolLoopProg 64 :=
.mark loopBody207_112

def loopBody207_114 : HolLoopProg 64 :=
.seq loopBody207_61 loopBody207_113

def loopBody207_115 : HolLoopProg 64 :=
.mark loopBody207_114

def loopBody207_116 : HolLoopProg 64 :=
.seq loopBody207_19 loopBody207_115

def loopBody207_117 : HolLoopProg 64 :=
.mark loopBody207_116

def loopBody207_118 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_117

def loopBody207_119 : HolLoopProg 64 :=
.mark loopBody207_118

def loopBody207_120 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_119

def loopBody207_121 : HolLoopProg 64 :=
.mark loopBody207_120

def loopBody207_122 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_121

def loopBody207_123 : HolLoopProg 64 :=
.mark loopBody207_122

def loopBody207_124 : HolLoopProg 64 :=
.seq loopBody207_1 loopBody207_123

def loopBody207_125 : HolLoopProg 64 :=
.mark loopBody207_124

def output207 : Nat × List Nat × HolLoopProg 64 :=
  (271, [0, 1, 2], loopBody207_125)
end InitECandidate.Proofs.FrontendStages.Loop
