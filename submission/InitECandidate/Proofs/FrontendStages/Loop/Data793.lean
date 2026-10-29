import InitECandidate.Proofs.FrontendStages.Loop.Translate777
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody793_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody793_1 : HolLoopProg 64 :=
.mark loopBody793_0

def loopBody793_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 0)

def loopBody793_3 : HolLoopProg 64 :=
.mark loopBody793_2

def loopBody793_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody793_5 : HolLoopProg 64 :=
.mark loopBody793_4

def loopBody793_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 0#64)

def loopBody793_7 : HolLoopProg 64 :=
.mark loopBody793_6

def loopBody793_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.const 0#64)

def loopBody793_9 : HolLoopProg 64 :=
.mark loopBody793_8

def loopBody793_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 1)

def loopBody793_11 : HolLoopProg 64 :=
.mark loopBody793_10

def loopBody793_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 2)

def loopBody793_13 : HolLoopProg 64 :=
.mark loopBody793_12

def loopBody793_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 3)

def loopBody793_15 : HolLoopProg 64 :=
.mark loopBody793_14

def loopBody793_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 20 (Flapjack.HolLoopExp.var 4)

def loopBody793_17 : HolLoopProg 64 :=
.mark loopBody793_16

def loopBody793_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 13

def loopBody793_19 : HolLoopProg 64 :=
.mark loopBody793_18

def loopBody793_20 : HolLoopProg 64 :=
.call (some ([5, 6, 7, 8, 9, 10, 11, 12], Flapjack.Spt.ln)) (some 121) ([13, 14, 15, 16, 17, 18, 19, 20]) (some (13, loopBody793_19, loopBody793_1, (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))))

def loopBody793_21 : HolLoopProg 64 :=
.mark loopBody793_20

def loopBody793_22 : HolLoopProg 64 :=
.seq loopBody793_21 loopBody793_1

def loopBody793_23 : HolLoopProg 64 :=
.mark loopBody793_22

def loopBody793_24 : HolLoopProg 64 :=
.seq loopBody793_17 loopBody793_23

def loopBody793_25 : HolLoopProg 64 :=
.mark loopBody793_24

def loopBody793_26 : HolLoopProg 64 :=
.seq loopBody793_15 loopBody793_25

def loopBody793_27 : HolLoopProg 64 :=
.mark loopBody793_26

def loopBody793_28 : HolLoopProg 64 :=
.seq loopBody793_13 loopBody793_27

def loopBody793_29 : HolLoopProg 64 :=
.mark loopBody793_28

def loopBody793_30 : HolLoopProg 64 :=
.seq loopBody793_11 loopBody793_29

def loopBody793_31 : HolLoopProg 64 :=
.mark loopBody793_30

def loopBody793_32 : HolLoopProg 64 :=
.seq loopBody793_9 loopBody793_31

def loopBody793_33 : HolLoopProg 64 :=
.mark loopBody793_32

def loopBody793_34 : HolLoopProg 64 :=
.seq loopBody793_7 loopBody793_33

def loopBody793_35 : HolLoopProg 64 :=
.mark loopBody793_34

def loopBody793_36 : HolLoopProg 64 :=
.seq loopBody793_5 loopBody793_35

def loopBody793_37 : HolLoopProg 64 :=
.mark loopBody793_36

def loopBody793_38 : HolLoopProg 64 :=
.seq loopBody793_3 loopBody793_37

def loopBody793_39 : HolLoopProg 64 :=
.mark loopBody793_38

def loopBody793_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody793_41 : HolLoopProg 64 :=
.mark loopBody793_40

def loopBody793_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or
    [Flapjack.HolLoopExp.var 9, Flapjack.HolLoopExp.var 10, Flapjack.HolLoopExp.var 11, Flapjack.HolLoopExp.var 12])

def loopBody793_43 : HolLoopProg 64 :=
.mark loopBody793_42

def loopBody793_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody793_45 : HolLoopProg 64 :=
.mark loopBody793_44

def loopBody793_46 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.reg 16) loopBody793_45 loopBody793_7 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody793_47 : HolLoopProg 64 :=
.mark loopBody793_46

def loopBody793_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 15)

def loopBody793_49 : HolLoopProg 64 :=
.mark loopBody793_48

def loopBody793_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 1#64)

def loopBody793_51 : HolLoopProg 64 :=
.mark loopBody793_50

def loopBody793_52 : HolLoopProg 64 :=
.seq loopBody793_51 loopBody793_1

def loopBody793_53 : HolLoopProg 64 :=
.mark loopBody793_52

def loopBody793_54 : HolLoopProg 64 :=
.seq loopBody793_53 loopBody793_1

def loopBody793_55 : HolLoopProg 64 :=
.mark loopBody793_54

def loopBody793_56 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 17 (Flapjack.RegImm.imm 0#64) loopBody793_55 loopBody793_1 (Flapjack.Spt.bn
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
  (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)
    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody793_57 : HolLoopProg 64 :=
.mark loopBody793_56

def loopBody793_58 : HolLoopProg 64 :=
.seq loopBody793_57 loopBody793_1

def loopBody793_59 : HolLoopProg 64 :=
.mark loopBody793_58

def loopBody793_60 : HolLoopProg 64 :=
.seq loopBody793_49 loopBody793_59

def loopBody793_61 : HolLoopProg 64 :=
.mark loopBody793_60

def loopBody793_62 : HolLoopProg 64 :=
.seq loopBody793_47 loopBody793_61

def loopBody793_63 : HolLoopProg 64 :=
.mark loopBody793_62

def loopBody793_64 : HolLoopProg 64 :=
.seq loopBody793_9 loopBody793_63

def loopBody793_65 : HolLoopProg 64 :=
.mark loopBody793_64

def loopBody793_66 : HolLoopProg 64 :=
.seq loopBody793_43 loopBody793_65

def loopBody793_67 : HolLoopProg 64 :=
.mark loopBody793_66

def loopBody793_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 13)

def loopBody793_69 : HolLoopProg 64 :=
.mark loopBody793_68

def loopBody793_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 5)

def loopBody793_71 : HolLoopProg 64 :=
.mark loopBody793_70

def loopBody793_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 6)

def loopBody793_73 : HolLoopProg 64 :=
.mark loopBody793_72

def loopBody793_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 7)

def loopBody793_75 : HolLoopProg 64 :=
.mark loopBody793_74

def loopBody793_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 8)

def loopBody793_77 : HolLoopProg 64 :=
.mark loopBody793_76

def loopBody793_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14, 15, 16, 17, 18]

def loopBody793_79 : HolLoopProg 64 :=
.mark loopBody793_78

def loopBody793_80 : HolLoopProg 64 :=
.seq loopBody793_79 loopBody793_1

def loopBody793_81 : HolLoopProg 64 :=
.mark loopBody793_80

def loopBody793_82 : HolLoopProg 64 :=
.seq loopBody793_77 loopBody793_81

def loopBody793_83 : HolLoopProg 64 :=
.mark loopBody793_82

def loopBody793_84 : HolLoopProg 64 :=
.seq loopBody793_75 loopBody793_83

def loopBody793_85 : HolLoopProg 64 :=
.mark loopBody793_84

def loopBody793_86 : HolLoopProg 64 :=
.seq loopBody793_73 loopBody793_85

def loopBody793_87 : HolLoopProg 64 :=
.mark loopBody793_86

def loopBody793_88 : HolLoopProg 64 :=
.seq loopBody793_71 loopBody793_87

def loopBody793_89 : HolLoopProg 64 :=
.mark loopBody793_88

def loopBody793_90 : HolLoopProg 64 :=
.seq loopBody793_69 loopBody793_89

def loopBody793_91 : HolLoopProg 64 :=
.mark loopBody793_90

def loopBody793_92 : HolLoopProg 64 :=
.seq loopBody793_67 loopBody793_91

def loopBody793_93 : HolLoopProg 64 :=
.mark loopBody793_92

def loopBody793_94 : HolLoopProg 64 :=
.seq loopBody793_41 loopBody793_93

def loopBody793_95 : HolLoopProg 64 :=
.mark loopBody793_94

def loopBody793_96 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_95

def loopBody793_97 : HolLoopProg 64 :=
.mark loopBody793_96

def loopBody793_98 : HolLoopProg 64 :=
.seq loopBody793_39 loopBody793_97

def loopBody793_99 : HolLoopProg 64 :=
.mark loopBody793_98

def loopBody793_100 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_99

def loopBody793_101 : HolLoopProg 64 :=
.mark loopBody793_100

def loopBody793_102 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_101

def loopBody793_103 : HolLoopProg 64 :=
.mark loopBody793_102

def loopBody793_104 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_103

def loopBody793_105 : HolLoopProg 64 :=
.mark loopBody793_104

def loopBody793_106 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_105

def loopBody793_107 : HolLoopProg 64 :=
.mark loopBody793_106

def loopBody793_108 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_107

def loopBody793_109 : HolLoopProg 64 :=
.mark loopBody793_108

def loopBody793_110 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_109

def loopBody793_111 : HolLoopProg 64 :=
.mark loopBody793_110

def loopBody793_112 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_111

def loopBody793_113 : HolLoopProg 64 :=
.mark loopBody793_112

def loopBody793_114 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_113

def loopBody793_115 : HolLoopProg 64 :=
.mark loopBody793_114

def loopBody793_116 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_115

def loopBody793_117 : HolLoopProg 64 :=
.mark loopBody793_116

def loopBody793_118 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_117

def loopBody793_119 : HolLoopProg 64 :=
.mark loopBody793_118

def loopBody793_120 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_119

def loopBody793_121 : HolLoopProg 64 :=
.mark loopBody793_120

def loopBody793_122 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_121

def loopBody793_123 : HolLoopProg 64 :=
.mark loopBody793_122

def loopBody793_124 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_123

def loopBody793_125 : HolLoopProg 64 :=
.mark loopBody793_124

def loopBody793_126 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_125

def loopBody793_127 : HolLoopProg 64 :=
.mark loopBody793_126

def loopBody793_128 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_127

def loopBody793_129 : HolLoopProg 64 :=
.mark loopBody793_128

def loopBody793_130 : HolLoopProg 64 :=
.seq loopBody793_1 loopBody793_129

def loopBody793_131 : HolLoopProg 64 :=
.mark loopBody793_130

def output793 : Nat × List Nat × HolLoopProg 64 :=
  (857, [0, 1, 2, 3, 4], loopBody793_131)
end InitECandidate.Proofs.FrontendStages.Loop
