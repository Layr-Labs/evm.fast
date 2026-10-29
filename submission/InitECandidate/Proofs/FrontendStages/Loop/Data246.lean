import InitECandidate.Proofs.FrontendStages.Loop.Translate230
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody246_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody246_1 : HolLoopProg 64 :=
.mark loopBody246_0

def loopBody246_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody246_3 : HolLoopProg 64 :=
.mark loopBody246_2

def loopBody246_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 1#64)

def loopBody246_5 : HolLoopProg 64 :=
.mark loopBody246_4

def loopBody246_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody246_7 : HolLoopProg 64 :=
.mark loopBody246_6

def loopBody246_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.RegImm.reg 5) loopBody246_5 loopBody246_7 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) (Flapjack.Spt.ls PUnit.unit))

def loopBody246_9 : HolLoopProg 64 :=
.mark loopBody246_8

def loopBody246_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody246_11 : HolLoopProg 64 :=
.mark loopBody246_10

def loopBody246_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody246_13 : HolLoopProg 64 :=
.mark loopBody246_12

def loopBody246_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody246_15 : HolLoopProg 64 :=
.mark loopBody246_14

def loopBody246_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody246_17 : HolLoopProg 64 :=
.mark loopBody246_16

def loopBody246_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]))

def loopBody246_19 : HolLoopProg 64 :=
.mark loopBody246_18

def loopBody246_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody246_21 : HolLoopProg 64 :=
.mark loopBody246_20

def loopBody246_22 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 158) ([4, 5, 6]) (some (4, loopBody246_21, loopBody246_13, (Flapjack.Spt.ln)))

def loopBody246_23 : HolLoopProg 64 :=
.mark loopBody246_22

def loopBody246_24 : HolLoopProg 64 :=
.seq loopBody246_23 loopBody246_13

def loopBody246_25 : HolLoopProg 64 :=
.mark loopBody246_24

def loopBody246_26 : HolLoopProg 64 :=
.seq loopBody246_19 loopBody246_25

def loopBody246_27 : HolLoopProg 64 :=
.mark loopBody246_26

def loopBody246_28 : HolLoopProg 64 :=
.seq loopBody246_17 loopBody246_27

def loopBody246_29 : HolLoopProg 64 :=
.mark loopBody246_28

def loopBody246_30 : HolLoopProg 64 :=
.seq loopBody246_15 loopBody246_29

def loopBody246_31 : HolLoopProg 64 :=
.mark loopBody246_30

def loopBody246_32 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_31

def loopBody246_33 : HolLoopProg 64 :=
.mark loopBody246_32

def loopBody246_34 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_33

def loopBody246_35 : HolLoopProg 64 :=
.mark loopBody246_34

def loopBody246_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 64#64)

def loopBody246_37 : HolLoopProg 64 :=
.mark loopBody246_36

def loopBody246_38 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.ln)) (some 68) ([4]) (some (4, loopBody246_21, loopBody246_13, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody246_39 : HolLoopProg 64 :=
.mark loopBody246_38

def loopBody246_40 : HolLoopProg 64 :=
.seq loopBody246_39 loopBody246_13

def loopBody246_41 : HolLoopProg 64 :=
.mark loopBody246_40

def loopBody246_42 : HolLoopProg 64 :=
.seq loopBody246_37 loopBody246_41

def loopBody246_43 : HolLoopProg 64 :=
.mark loopBody246_42

def loopBody246_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 152#64]))

def loopBody246_45 : HolLoopProg 64 :=
.mark loopBody246_44

def loopBody246_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 32#64)

def loopBody246_47 : HolLoopProg 64 :=
.mark loopBody246_46

def loopBody246_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody246_49 : HolLoopProg 64 :=
.mark loopBody246_48

def loopBody246_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody246_51 : HolLoopProg 64 :=
.mark loopBody246_50

def loopBody246_52 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 288) ([5, 6, 7]) (some (5, loopBody246_51, loopBody246_13, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody246_53 : HolLoopProg 64 :=
.mark loopBody246_52

def loopBody246_54 : HolLoopProg 64 :=
.seq loopBody246_53 loopBody246_13

def loopBody246_55 : HolLoopProg 64 :=
.mark loopBody246_54

def loopBody246_56 : HolLoopProg 64 :=
.seq loopBody246_49 loopBody246_55

def loopBody246_57 : HolLoopProg 64 :=
.mark loopBody246_56

def loopBody246_58 : HolLoopProg 64 :=
.seq loopBody246_47 loopBody246_57

def loopBody246_59 : HolLoopProg 64 :=
.mark loopBody246_58

def loopBody246_60 : HolLoopProg 64 :=
.seq loopBody246_45 loopBody246_59

def loopBody246_61 : HolLoopProg 64 :=
.mark loopBody246_60

def loopBody246_62 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_61

def loopBody246_63 : HolLoopProg 64 :=
.mark loopBody246_62

def loopBody246_64 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_63

def loopBody246_65 : HolLoopProg 64 :=
.mark loopBody246_64

def loopBody246_66 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 3)

def loopBody246_67 : HolLoopProg 64 :=
.mark loopBody246_66

def loopBody246_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 64#64)

def loopBody246_69 : HolLoopProg 64 :=
.mark loopBody246_68

def loopBody246_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4, 5]

def loopBody246_71 : HolLoopProg 64 :=
.mark loopBody246_70

def loopBody246_72 : HolLoopProg 64 :=
.seq loopBody246_71 loopBody246_13

def loopBody246_73 : HolLoopProg 64 :=
.mark loopBody246_72

def loopBody246_74 : HolLoopProg 64 :=
.seq loopBody246_69 loopBody246_73

def loopBody246_75 : HolLoopProg 64 :=
.mark loopBody246_74

def loopBody246_76 : HolLoopProg 64 :=
.seq loopBody246_67 loopBody246_75

def loopBody246_77 : HolLoopProg 64 :=
.mark loopBody246_76

def loopBody246_78 : HolLoopProg 64 :=
.seq loopBody246_65 loopBody246_77

def loopBody246_79 : HolLoopProg 64 :=
.mark loopBody246_78

def loopBody246_80 : HolLoopProg 64 :=
.seq loopBody246_43 loopBody246_79

def loopBody246_81 : HolLoopProg 64 :=
.mark loopBody246_80

def loopBody246_82 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_81

def loopBody246_83 : HolLoopProg 64 :=
.mark loopBody246_82

def loopBody246_84 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_83

def loopBody246_85 : HolLoopProg 64 :=
.mark loopBody246_84

def loopBody246_86 : HolLoopProg 64 :=
.seq loopBody246_35 loopBody246_85

def loopBody246_87 : HolLoopProg 64 :=
.mark loopBody246_86

def loopBody246_88 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 6 (Flapjack.RegImm.imm 0#64) loopBody246_87 loopBody246_13 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody246_89 : HolLoopProg 64 :=
.mark loopBody246_88

def loopBody246_90 : HolLoopProg 64 :=
.seq loopBody246_89 loopBody246_13

def loopBody246_91 : HolLoopProg 64 :=
.mark loopBody246_90

def loopBody246_92 : HolLoopProg 64 :=
.seq loopBody246_11 loopBody246_91

def loopBody246_93 : HolLoopProg 64 :=
.mark loopBody246_92

def loopBody246_94 : HolLoopProg 64 :=
.seq loopBody246_9 loopBody246_93

def loopBody246_95 : HolLoopProg 64 :=
.mark loopBody246_94

def loopBody246_96 : HolLoopProg 64 :=
.seq loopBody246_3 loopBody246_95

def loopBody246_97 : HolLoopProg 64 :=
.mark loopBody246_96

def loopBody246_98 : HolLoopProg 64 :=
.seq loopBody246_1 loopBody246_97

def loopBody246_99 : HolLoopProg 64 :=
.mark loopBody246_98

def loopBody246_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 1#64))

def loopBody246_101 : HolLoopProg 64 :=
.mark loopBody246_100

def loopBody246_102 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody246_21, loopBody246_13, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody246_103 : HolLoopProg 64 :=
.mark loopBody246_102

def loopBody246_104 : HolLoopProg 64 :=
.seq loopBody246_103 loopBody246_13

def loopBody246_105 : HolLoopProg 64 :=
.mark loopBody246_104

def loopBody246_106 : HolLoopProg 64 :=
.seq loopBody246_101 loopBody246_105

def loopBody246_107 : HolLoopProg 64 :=
.mark loopBody246_106

def loopBody246_108 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody246_109 : HolLoopProg 64 :=
.mark loopBody246_108

def loopBody246_110 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody246_111 : HolLoopProg 64 :=
.mark loopBody246_110

def loopBody246_112 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 288) ([5, 6, 7]) (some (5, loopBody246_51, loopBody246_13, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody246_113 : HolLoopProg 64 :=
.mark loopBody246_112

def loopBody246_114 : HolLoopProg 64 :=
.seq loopBody246_113 loopBody246_13

def loopBody246_115 : HolLoopProg 64 :=
.mark loopBody246_114

def loopBody246_116 : HolLoopProg 64 :=
.seq loopBody246_49 loopBody246_115

def loopBody246_117 : HolLoopProg 64 :=
.mark loopBody246_116

def loopBody246_118 : HolLoopProg 64 :=
.seq loopBody246_111 loopBody246_117

def loopBody246_119 : HolLoopProg 64 :=
.mark loopBody246_118

def loopBody246_120 : HolLoopProg 64 :=
.seq loopBody246_109 loopBody246_119

def loopBody246_121 : HolLoopProg 64 :=
.mark loopBody246_120

def loopBody246_122 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_121

def loopBody246_123 : HolLoopProg 64 :=
.mark loopBody246_122

def loopBody246_124 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_123

def loopBody246_125 : HolLoopProg 64 :=
.mark loopBody246_124

def loopBody246_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 2) (Flapjack.HolLoopExp.const 1#64))

def loopBody246_127 : HolLoopProg 64 :=
.mark loopBody246_126

def loopBody246_128 : HolLoopProg 64 :=
.seq loopBody246_127 loopBody246_73

def loopBody246_129 : HolLoopProg 64 :=
.mark loopBody246_128

def loopBody246_130 : HolLoopProg 64 :=
.seq loopBody246_67 loopBody246_129

def loopBody246_131 : HolLoopProg 64 :=
.mark loopBody246_130

def loopBody246_132 : HolLoopProg 64 :=
.seq loopBody246_125 loopBody246_131

def loopBody246_133 : HolLoopProg 64 :=
.mark loopBody246_132

def loopBody246_134 : HolLoopProg 64 :=
.seq loopBody246_107 loopBody246_133

def loopBody246_135 : HolLoopProg 64 :=
.mark loopBody246_134

def loopBody246_136 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_135

def loopBody246_137 : HolLoopProg 64 :=
.mark loopBody246_136

def loopBody246_138 : HolLoopProg 64 :=
.seq loopBody246_13 loopBody246_137

def loopBody246_139 : HolLoopProg 64 :=
.mark loopBody246_138

def loopBody246_140 : HolLoopProg 64 :=
.seq loopBody246_99 loopBody246_139

def loopBody246_141 : HolLoopProg 64 :=
.mark loopBody246_140

def output246 : Nat × List Nat × HolLoopProg 64 :=
  (310, [0, 1, 2], loopBody246_141)
end InitECandidate.Proofs.FrontendStages.Loop
