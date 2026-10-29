import InitECandidate.Proofs.FrontendStages.Loop.Translate399
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody415_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody415_1 : HolLoopProg 64 :=
.mark loopBody415_0

def loopBody415_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 0)

def loopBody415_3 : HolLoopProg 64 :=
.mark loopBody415_2

def loopBody415_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 2

def loopBody415_5 : HolLoopProg 64 :=
.mark loopBody415_4

def loopBody415_6 : HolLoopProg 64 :=
.call (some ([1], Flapjack.Spt.ln)) (some 465) ([2]) (some (2, loopBody415_5, loopBody415_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody415_7 : HolLoopProg 64 :=
.mark loopBody415_6

def loopBody415_8 : HolLoopProg 64 :=
.seq loopBody415_7 loopBody415_1

def loopBody415_9 : HolLoopProg 64 :=
.mark loopBody415_8

def loopBody415_10 : HolLoopProg 64 :=
.seq loopBody415_3 loopBody415_9

def loopBody415_11 : HolLoopProg 64 :=
.mark loopBody415_10

def loopBody415_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody415_13 : HolLoopProg 64 :=
.mark loopBody415_12

def loopBody415_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody415_15 : HolLoopProg 64 :=
.mark loopBody415_14

def loopBody415_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody415_17 : HolLoopProg 64 :=
.mark loopBody415_16

def loopBody415_18 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 119) ([4, 5]) (some (4, loopBody415_17, loopBody415_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody415_19 : HolLoopProg 64 :=
.mark loopBody415_18

def loopBody415_20 : HolLoopProg 64 :=
.seq loopBody415_19 loopBody415_1

def loopBody415_21 : HolLoopProg 64 :=
.mark loopBody415_20

def loopBody415_22 : HolLoopProg 64 :=
.seq loopBody415_15 loopBody415_21

def loopBody415_23 : HolLoopProg 64 :=
.mark loopBody415_22

def loopBody415_24 : HolLoopProg 64 :=
.seq loopBody415_13 loopBody415_23

def loopBody415_25 : HolLoopProg 64 :=
.mark loopBody415_24

def loopBody415_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody415_27 : HolLoopProg 64 :=
.mark loopBody415_26

def loopBody415_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody415_29 : HolLoopProg 64 :=
.mark loopBody415_28

def loopBody415_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody415_31 : HolLoopProg 64 :=
.mark loopBody415_30

def loopBody415_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody415_33 : HolLoopProg 64 :=
.mark loopBody415_32

def loopBody415_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.reg 6) loopBody415_31 loopBody415_33 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))

def loopBody415_35 : HolLoopProg 64 :=
.mark loopBody415_34

def loopBody415_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody415_37 : HolLoopProg 64 :=
.mark loopBody415_36

def loopBody415_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 18446744073709551615#64)

def loopBody415_39 : HolLoopProg 64 :=
.mark loopBody415_38

def loopBody415_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody415_41 : HolLoopProg 64 :=
.mark loopBody415_40

def loopBody415_42 : HolLoopProg 64 :=
.seq loopBody415_41 loopBody415_1

def loopBody415_43 : HolLoopProg 64 :=
.mark loopBody415_42

def loopBody415_44 : HolLoopProg 64 :=
.seq loopBody415_39 loopBody415_43

def loopBody415_45 : HolLoopProg 64 :=
.mark loopBody415_44

def loopBody415_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody415_45 loopBody415_1 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody415_47 : HolLoopProg 64 :=
.mark loopBody415_46

def loopBody415_48 : HolLoopProg 64 :=
.seq loopBody415_47 loopBody415_1

def loopBody415_49 : HolLoopProg 64 :=
.mark loopBody415_48

def loopBody415_50 : HolLoopProg 64 :=
.seq loopBody415_37 loopBody415_49

def loopBody415_51 : HolLoopProg 64 :=
.mark loopBody415_50

def loopBody415_52 : HolLoopProg 64 :=
.seq loopBody415_35 loopBody415_51

def loopBody415_53 : HolLoopProg 64 :=
.mark loopBody415_52

def loopBody415_54 : HolLoopProg 64 :=
.seq loopBody415_29 loopBody415_53

def loopBody415_55 : HolLoopProg 64 :=
.mark loopBody415_54

def loopBody415_56 : HolLoopProg 64 :=
.seq loopBody415_27 loopBody415_55

def loopBody415_57 : HolLoopProg 64 :=
.mark loopBody415_56

def loopBody415_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 3#64)

def loopBody415_59 : HolLoopProg 64 :=
.mark loopBody415_58

def loopBody415_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 7 7 5 6)

def loopBody415_61 : HolLoopProg 64 :=
.mark loopBody415_60

def loopBody415_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody415_63 : HolLoopProg 64 :=
.mark loopBody415_62

def loopBody415_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsr (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 9#64))

def loopBody415_65 : HolLoopProg 64 :=
.mark loopBody415_64

def loopBody415_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody415_67 : HolLoopProg 64 :=
.mark loopBody415_66

def loopBody415_68 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 463) ([8, 9]) (some (5, loopBody415_67, loopBody415_1, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))

def loopBody415_69 : HolLoopProg 64 :=
.mark loopBody415_68

def loopBody415_70 : HolLoopProg 64 :=
.seq loopBody415_69 loopBody415_1

def loopBody415_71 : HolLoopProg 64 :=
.mark loopBody415_70

def loopBody415_72 : HolLoopProg 64 :=
.seq loopBody415_65 loopBody415_71

def loopBody415_73 : HolLoopProg 64 :=
.mark loopBody415_72

def loopBody415_74 : HolLoopProg 64 :=
.seq loopBody415_63 loopBody415_73

def loopBody415_75 : HolLoopProg 64 :=
.mark loopBody415_74

def loopBody415_76 : HolLoopProg 64 :=
.seq loopBody415_61 loopBody415_75

def loopBody415_77 : HolLoopProg 64 :=
.mark loopBody415_76

def loopBody415_78 : HolLoopProg 64 :=
.seq loopBody415_59 loopBody415_77

def loopBody415_79 : HolLoopProg 64 :=
.mark loopBody415_78

def loopBody415_80 : HolLoopProg 64 :=
.seq loopBody415_15 loopBody415_79

def loopBody415_81 : HolLoopProg 64 :=
.mark loopBody415_80

def loopBody415_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody415_83 : HolLoopProg 64 :=
.mark loopBody415_82

def loopBody415_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody415_85 : HolLoopProg 64 :=
.mark loopBody415_84

def loopBody415_86 : HolLoopProg 64 :=
.seq loopBody415_85 loopBody415_1

def loopBody415_87 : HolLoopProg 64 :=
.mark loopBody415_86

def loopBody415_88 : HolLoopProg 64 :=
.seq loopBody415_83 loopBody415_87

def loopBody415_89 : HolLoopProg 64 :=
.mark loopBody415_88

def loopBody415_90 : HolLoopProg 64 :=
.seq loopBody415_81 loopBody415_89

def loopBody415_91 : HolLoopProg 64 :=
.mark loopBody415_90

def loopBody415_92 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_91

def loopBody415_93 : HolLoopProg 64 :=
.mark loopBody415_92

def loopBody415_94 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_93

def loopBody415_95 : HolLoopProg 64 :=
.mark loopBody415_94

def loopBody415_96 : HolLoopProg 64 :=
.seq loopBody415_57 loopBody415_95

def loopBody415_97 : HolLoopProg 64 :=
.mark loopBody415_96

def loopBody415_98 : HolLoopProg 64 :=
.seq loopBody415_25 loopBody415_97

def loopBody415_99 : HolLoopProg 64 :=
.mark loopBody415_98

def loopBody415_100 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_99

def loopBody415_101 : HolLoopProg 64 :=
.mark loopBody415_100

def loopBody415_102 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_101

def loopBody415_103 : HolLoopProg 64 :=
.mark loopBody415_102

def loopBody415_104 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_103

def loopBody415_105 : HolLoopProg 64 :=
.mark loopBody415_104

def loopBody415_106 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_105

def loopBody415_107 : HolLoopProg 64 :=
.mark loopBody415_106

def loopBody415_108 : HolLoopProg 64 :=
.seq loopBody415_11 loopBody415_107

def loopBody415_109 : HolLoopProg 64 :=
.mark loopBody415_108

def loopBody415_110 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_109

def loopBody415_111 : HolLoopProg 64 :=
.mark loopBody415_110

def loopBody415_112 : HolLoopProg 64 :=
.seq loopBody415_1 loopBody415_111

def loopBody415_113 : HolLoopProg 64 :=
.mark loopBody415_112

def output415 : Nat × List Nat × HolLoopProg 64 :=
  (479, [0], loopBody415_113)
end InitECandidate.Proofs.FrontendStages.Loop
