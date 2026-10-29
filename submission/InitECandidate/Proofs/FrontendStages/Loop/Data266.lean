import InitECandidate.Proofs.FrontendStages.Loop.Translate250
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody266_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody266_1 : HolLoopProg 64 :=
.mark loopBody266_0

def loopBody266_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody266_3 : HolLoopProg 64 :=
.mark loopBody266_2

def loopBody266_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 1)

def loopBody266_5 : HolLoopProg 64 :=
.mark loopBody266_4

def loopBody266_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody266_7 : HolLoopProg 64 :=
.mark loopBody266_6

def loopBody266_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody266_9 : HolLoopProg 64 :=
.mark loopBody266_8

def loopBody266_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody266_11 : HolLoopProg 64 :=
.mark loopBody266_10

def loopBody266_12 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.RegImm.reg 4) loopBody266_9 loopBody266_11 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody266_13 : HolLoopProg 64 :=
.mark loopBody266_12

def loopBody266_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody266_15 : HolLoopProg 64 :=
.mark loopBody266_14

def loopBody266_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2 (Flapjack.HolLoopExp.var 1)

def loopBody266_17 : HolLoopProg 64 :=
.mark loopBody266_16

def loopBody266_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [2]

def loopBody266_19 : HolLoopProg 64 :=
.mark loopBody266_18

def loopBody266_20 : HolLoopProg 64 :=
.seq loopBody266_19 loopBody266_1

def loopBody266_21 : HolLoopProg 64 :=
.mark loopBody266_20

def loopBody266_22 : HolLoopProg 64 :=
.seq loopBody266_17 loopBody266_21

def loopBody266_23 : HolLoopProg 64 :=
.mark loopBody266_22

def loopBody266_24 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody266_23 loopBody266_1 (Flapjack.Spt.ls PUnit.unit)

def loopBody266_25 : HolLoopProg 64 :=
.mark loopBody266_24

def loopBody266_26 : HolLoopProg 64 :=
.seq loopBody266_25 loopBody266_1

def loopBody266_27 : HolLoopProg 64 :=
.mark loopBody266_26

def loopBody266_28 : HolLoopProg 64 :=
.seq loopBody266_15 loopBody266_27

def loopBody266_29 : HolLoopProg 64 :=
.mark loopBody266_28

def loopBody266_30 : HolLoopProg 64 :=
.seq loopBody266_13 loopBody266_29

def loopBody266_31 : HolLoopProg 64 :=
.mark loopBody266_30

def loopBody266_32 : HolLoopProg 64 :=
.seq loopBody266_7 loopBody266_31

def loopBody266_33 : HolLoopProg 64 :=
.mark loopBody266_32

def loopBody266_34 : HolLoopProg 64 :=
.seq loopBody266_5 loopBody266_33

def loopBody266_35 : HolLoopProg 64 :=
.mark loopBody266_34

def loopBody266_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody266_37 : HolLoopProg 64 :=
.mark loopBody266_36

def loopBody266_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody266_39 : HolLoopProg 64 :=
.mark loopBody266_38

def loopBody266_40 : HolLoopProg 64 :=
.call (some ([2, 3], Flapjack.Spt.ls PUnit.unit)) (some 325) ([4]) (some (4, loopBody266_39, loopBody266_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody266_41 : HolLoopProg 64 :=
.mark loopBody266_40

def loopBody266_42 : HolLoopProg 64 :=
.seq loopBody266_41 loopBody266_1

def loopBody266_43 : HolLoopProg 64 :=
.mark loopBody266_42

def loopBody266_44 : HolLoopProg 64 :=
.seq loopBody266_37 loopBody266_43

def loopBody266_45 : HolLoopProg 64 :=
.mark loopBody266_44

def loopBody266_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 32#64)

def loopBody266_47 : HolLoopProg 64 :=
.mark loopBody266_46

def loopBody266_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody266_49 : HolLoopProg 64 :=
.mark loopBody266_48

def loopBody266_50 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([5]) (some (5, loopBody266_49, loopBody266_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody266_51 : HolLoopProg 64 :=
.mark loopBody266_50

def loopBody266_52 : HolLoopProg 64 :=
.seq loopBody266_51 loopBody266_1

def loopBody266_53 : HolLoopProg 64 :=
.mark loopBody266_52

def loopBody266_54 : HolLoopProg 64 :=
.seq loopBody266_47 loopBody266_53

def loopBody266_55 : HolLoopProg 64 :=
.mark loopBody266_54

def loopBody266_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody266_57 : HolLoopProg 64 :=
.mark loopBody266_56

def loopBody266_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody266_59 : HolLoopProg 64 :=
.mark loopBody266_58

def loopBody266_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 4)

def loopBody266_61 : HolLoopProg 64 :=
.mark loopBody266_60

def loopBody266_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody266_63 : HolLoopProg 64 :=
.mark loopBody266_62

def loopBody266_64 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)) (some 158) ([6, 7, 8]) (some (6, loopBody266_63, loopBody266_1, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))

def loopBody266_65 : HolLoopProg 64 :=
.mark loopBody266_64

def loopBody266_66 : HolLoopProg 64 :=
.seq loopBody266_65 loopBody266_1

def loopBody266_67 : HolLoopProg 64 :=
.mark loopBody266_66

def loopBody266_68 : HolLoopProg 64 :=
.seq loopBody266_61 loopBody266_67

def loopBody266_69 : HolLoopProg 64 :=
.mark loopBody266_68

def loopBody266_70 : HolLoopProg 64 :=
.seq loopBody266_59 loopBody266_69

def loopBody266_71 : HolLoopProg 64 :=
.mark loopBody266_70

def loopBody266_72 : HolLoopProg 64 :=
.seq loopBody266_57 loopBody266_71

def loopBody266_73 : HolLoopProg 64 :=
.mark loopBody266_72

def loopBody266_74 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_73

def loopBody266_75 : HolLoopProg 64 :=
.mark loopBody266_74

def loopBody266_76 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_75

def loopBody266_77 : HolLoopProg 64 :=
.mark loopBody266_76

def loopBody266_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64])

def loopBody266_79 : HolLoopProg 64 :=
.mark loopBody266_78

def loopBody266_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody266_81 : HolLoopProg 64 :=
.mark loopBody266_80

def loopBody266_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody266_83 : HolLoopProg 64 :=
.mark loopBody266_82

def loopBody266_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody266_85 : HolLoopProg 64 :=
.mark loopBody266_84

def loopBody266_86 : HolLoopProg 64 :=
.seq loopBody266_85 loopBody266_1

def loopBody266_87 : HolLoopProg 64 :=
.mark loopBody266_86

def loopBody266_88 : HolLoopProg 64 :=
.seq loopBody266_83 loopBody266_87

def loopBody266_89 : HolLoopProg 64 :=
.mark loopBody266_88

def loopBody266_90 : HolLoopProg 64 :=
.seq loopBody266_89 loopBody266_1

def loopBody266_91 : HolLoopProg 64 :=
.mark loopBody266_90

def loopBody266_92 : HolLoopProg 64 :=
.seq loopBody266_81 loopBody266_91

def loopBody266_93 : HolLoopProg 64 :=
.mark loopBody266_92

def loopBody266_94 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_93

def loopBody266_95 : HolLoopProg 64 :=
.mark loopBody266_94

def loopBody266_96 : HolLoopProg 64 :=
.seq loopBody266_79 loopBody266_95

def loopBody266_97 : HolLoopProg 64 :=
.mark loopBody266_96

def loopBody266_98 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_97

def loopBody266_99 : HolLoopProg 64 :=
.mark loopBody266_98

def loopBody266_100 : HolLoopProg 64 :=
.seq loopBody266_77 loopBody266_99

def loopBody266_101 : HolLoopProg 64 :=
.mark loopBody266_100

def loopBody266_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 4)

def loopBody266_103 : HolLoopProg 64 :=
.mark loopBody266_102

def loopBody266_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody266_105 : HolLoopProg 64 :=
.mark loopBody266_104

def loopBody266_106 : HolLoopProg 64 :=
.seq loopBody266_105 loopBody266_1

def loopBody266_107 : HolLoopProg 64 :=
.mark loopBody266_106

def loopBody266_108 : HolLoopProg 64 :=
.seq loopBody266_103 loopBody266_107

def loopBody266_109 : HolLoopProg 64 :=
.mark loopBody266_108

def loopBody266_110 : HolLoopProg 64 :=
.seq loopBody266_101 loopBody266_109

def loopBody266_111 : HolLoopProg 64 :=
.mark loopBody266_110

def loopBody266_112 : HolLoopProg 64 :=
.seq loopBody266_55 loopBody266_111

def loopBody266_113 : HolLoopProg 64 :=
.mark loopBody266_112

def loopBody266_114 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_113

def loopBody266_115 : HolLoopProg 64 :=
.mark loopBody266_114

def loopBody266_116 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_115

def loopBody266_117 : HolLoopProg 64 :=
.mark loopBody266_116

def loopBody266_118 : HolLoopProg 64 :=
.seq loopBody266_45 loopBody266_117

def loopBody266_119 : HolLoopProg 64 :=
.mark loopBody266_118

def loopBody266_120 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_119

def loopBody266_121 : HolLoopProg 64 :=
.mark loopBody266_120

def loopBody266_122 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_121

def loopBody266_123 : HolLoopProg 64 :=
.mark loopBody266_122

def loopBody266_124 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_123

def loopBody266_125 : HolLoopProg 64 :=
.mark loopBody266_124

def loopBody266_126 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_125

def loopBody266_127 : HolLoopProg 64 :=
.mark loopBody266_126

def loopBody266_128 : HolLoopProg 64 :=
.seq loopBody266_35 loopBody266_127

def loopBody266_129 : HolLoopProg 64 :=
.mark loopBody266_128

def loopBody266_130 : HolLoopProg 64 :=
.seq loopBody266_3 loopBody266_129

def loopBody266_131 : HolLoopProg 64 :=
.mark loopBody266_130

def loopBody266_132 : HolLoopProg 64 :=
.seq loopBody266_1 loopBody266_131

def loopBody266_133 : HolLoopProg 64 :=
.mark loopBody266_132

def output266 : Nat × List Nat × HolLoopProg 64 :=
  (330, [0], loopBody266_133)
end InitECandidate.Proofs.FrontendStages.Loop
