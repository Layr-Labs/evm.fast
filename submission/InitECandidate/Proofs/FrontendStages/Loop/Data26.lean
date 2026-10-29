import InitECandidate.Proofs.FrontendStages.Loop.Translate10
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody26_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody26_1 : HolLoopProg 64 :=
.mark loopBody26_0

def loopBody26_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 1 (Flapjack.HolLoopExp.const 0#64)

def loopBody26_3 : HolLoopProg 64 :=
.mark loopBody26_2

def loopBody26_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.load 1 (Flapjack.HolLoopExp.const 1073741832#64)

def loopBody26_5 : HolLoopProg 64 :=
.mark loopBody26_4

def loopBody26_6 : HolLoopProg 64 :=
.seq loopBody26_5 loopBody26_1

def loopBody26_7 : HolLoopProg 64 :=
.mark loopBody26_6

def loopBody26_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1073741808#64)

def loopBody26_9 : HolLoopProg 64 :=
.mark loopBody26_8

def loopBody26_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 1)

def loopBody26_11 : HolLoopProg 64 :=
.mark loopBody26_10

def loopBody26_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 1#64)

def loopBody26_13 : HolLoopProg 64 :=
.mark loopBody26_12

def loopBody26_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 0#64)

def loopBody26_15 : HolLoopProg 64 :=
.mark loopBody26_14

def loopBody26_16 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.RegImm.reg 4) loopBody26_13 loopBody26_15 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody26_17 : HolLoopProg 64 :=
.mark loopBody26_16

def loopBody26_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody26_19 : HolLoopProg 64 :=
.mark loopBody26_18

def loopBody26_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.const 8#64)

def loopBody26_21 : HolLoopProg 64 :=
.mark loopBody26_20

def loopBody26_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody26_23 : HolLoopProg 64 :=
.mark loopBody26_22

def loopBody26_24 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 66) ([3]) (some (3, loopBody26_23, loopBody26_1, (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody26_25 : HolLoopProg 64 :=
.mark loopBody26_24

def loopBody26_26 : HolLoopProg 64 :=
.seq loopBody26_25 loopBody26_1

def loopBody26_27 : HolLoopProg 64 :=
.mark loopBody26_26

def loopBody26_28 : HolLoopProg 64 :=
.seq loopBody26_21 loopBody26_27

def loopBody26_29 : HolLoopProg 64 :=
.mark loopBody26_28

def loopBody26_30 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_29

def loopBody26_31 : HolLoopProg 64 :=
.mark loopBody26_30

def loopBody26_32 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_31

def loopBody26_33 : HolLoopProg 64 :=
.mark loopBody26_32

def loopBody26_34 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.RegImm.imm 0#64) loopBody26_33 loopBody26_1 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))

def loopBody26_35 : HolLoopProg 64 :=
.mark loopBody26_34

def loopBody26_36 : HolLoopProg 64 :=
.seq loopBody26_35 loopBody26_1

def loopBody26_37 : HolLoopProg 64 :=
.mark loopBody26_36

def loopBody26_38 : HolLoopProg 64 :=
.seq loopBody26_19 loopBody26_37

def loopBody26_39 : HolLoopProg 64 :=
.mark loopBody26_38

def loopBody26_40 : HolLoopProg 64 :=
.seq loopBody26_17 loopBody26_39

def loopBody26_41 : HolLoopProg 64 :=
.mark loopBody26_40

def loopBody26_42 : HolLoopProg 64 :=
.seq loopBody26_11 loopBody26_41

def loopBody26_43 : HolLoopProg 64 :=
.mark loopBody26_42

def loopBody26_44 : HolLoopProg 64 :=
.seq loopBody26_9 loopBody26_43

def loopBody26_45 : HolLoopProg 64 :=
.mark loopBody26_44

def loopBody26_46 : HolLoopProg 64 :=
.seq loopBody26_7 loopBody26_45

def loopBody26_47 : HolLoopProg 64 :=
.mark loopBody26_46

def loopBody26_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 1, Flapjack.HolLoopExp.const 8#64])

def loopBody26_49 : HolLoopProg 64 :=
.mark loopBody26_48

def loopBody26_50 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))) (some 68) ([3]) (some (3, loopBody26_23, loopBody26_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))

def loopBody26_51 : HolLoopProg 64 :=
.mark loopBody26_50

def loopBody26_52 : HolLoopProg 64 :=
.seq loopBody26_51 loopBody26_1

def loopBody26_53 : HolLoopProg 64 :=
.mark loopBody26_52

def loopBody26_54 : HolLoopProg 64 :=
.seq loopBody26_49 loopBody26_53

def loopBody26_55 : HolLoopProg 64 :=
.mark loopBody26_54

def loopBody26_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody26_57 : HolLoopProg 64 :=
.mark loopBody26_56

def loopBody26_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody26_59 : HolLoopProg 64 :=
.mark loopBody26_58

def loopBody26_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody26_61 : HolLoopProg 64 :=
.mark loopBody26_60

def loopBody26_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody26_63 : HolLoopProg 64 :=
.mark loopBody26_62

def loopBody26_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody26_65 : HolLoopProg 64 :=
.mark loopBody26_64

def loopBody26_66 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.RegImm.reg 7) loopBody26_63 loopBody26_65 (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody26_67 : HolLoopProg 64 :=
.mark loopBody26_66

def loopBody26_68 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody26_69 : HolLoopProg 64 :=
.mark loopBody26_68

def loopBody26_70 : HolLoopProg 64 :=
Flapjack.HolLoopProg.shMem Flapjack.WordMemOp.load 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.const 1073741840#64, Flapjack.HolLoopExp.var 3])

def loopBody26_71 : HolLoopProg 64 :=
.mark loopBody26_70

def loopBody26_72 : HolLoopProg 64 :=
.seq loopBody26_71 loopBody26_1

def loopBody26_73 : HolLoopProg 64 :=
.mark loopBody26_72

def loopBody26_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.var 3])

def loopBody26_75 : HolLoopProg 64 :=
.mark loopBody26_74

def loopBody26_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody26_77 : HolLoopProg 64 :=
.mark loopBody26_76

def loopBody26_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody26_79 : HolLoopProg 64 :=
.mark loopBody26_78

def loopBody26_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody26_81 : HolLoopProg 64 :=
.mark loopBody26_80

def loopBody26_82 : HolLoopProg 64 :=
.seq loopBody26_81 loopBody26_1

def loopBody26_83 : HolLoopProg 64 :=
.mark loopBody26_82

def loopBody26_84 : HolLoopProg 64 :=
.seq loopBody26_79 loopBody26_83

def loopBody26_85 : HolLoopProg 64 :=
.mark loopBody26_84

def loopBody26_86 : HolLoopProg 64 :=
.seq loopBody26_85 loopBody26_1

def loopBody26_87 : HolLoopProg 64 :=
.mark loopBody26_86

def loopBody26_88 : HolLoopProg 64 :=
.seq loopBody26_77 loopBody26_87

def loopBody26_89 : HolLoopProg 64 :=
.mark loopBody26_88

def loopBody26_90 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_89

def loopBody26_91 : HolLoopProg 64 :=
.mark loopBody26_90

def loopBody26_92 : HolLoopProg 64 :=
.seq loopBody26_75 loopBody26_91

def loopBody26_93 : HolLoopProg 64 :=
.mark loopBody26_92

def loopBody26_94 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_93

def loopBody26_95 : HolLoopProg 64 :=
.mark loopBody26_94

def loopBody26_96 : HolLoopProg 64 :=
.seq loopBody26_73 loopBody26_95

def loopBody26_97 : HolLoopProg 64 :=
.mark loopBody26_96

def loopBody26_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 8#64])

def loopBody26_99 : HolLoopProg 64 :=
.mark loopBody26_98

def loopBody26_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3 (Flapjack.HolLoopExp.var 5)

def loopBody26_101 : HolLoopProg 64 :=
.mark loopBody26_100

def loopBody26_102 : HolLoopProg 64 :=
.seq loopBody26_101 loopBody26_1

def loopBody26_103 : HolLoopProg 64 :=
.mark loopBody26_102

def loopBody26_104 : HolLoopProg 64 :=
.seq loopBody26_103 loopBody26_1

def loopBody26_105 : HolLoopProg 64 :=
.mark loopBody26_104

def loopBody26_106 : HolLoopProg 64 :=
.seq loopBody26_99 loopBody26_105

def loopBody26_107 : HolLoopProg 64 :=
.mark loopBody26_106

def loopBody26_108 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_107

def loopBody26_109 : HolLoopProg 64 :=
.mark loopBody26_108

def loopBody26_110 : HolLoopProg 64 :=
.seq loopBody26_97 loopBody26_109

def loopBody26_111 : HolLoopProg 64 :=
.mark loopBody26_110

def loopBody26_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.continue 0

def loopBody26_113 : HolLoopProg 64 :=
.mark loopBody26_112

def loopBody26_114 : HolLoopProg 64 :=
.seq loopBody26_111 loopBody26_113

def loopBody26_115 : HolLoopProg 64 :=
.mark loopBody26_114

def loopBody26_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.break 0

def loopBody26_117 : HolLoopProg 64 :=
.mark loopBody26_116

def loopBody26_118 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody26_115 loopBody26_117 (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody26_119 : HolLoopProg 64 :=
.mark loopBody26_118

def loopBody26_120 : HolLoopProg 64 :=
.seq loopBody26_119 loopBody26_1

def loopBody26_121 : HolLoopProg 64 :=
.mark loopBody26_120

def loopBody26_122 : HolLoopProg 64 :=
.seq loopBody26_69 loopBody26_121

def loopBody26_123 : HolLoopProg 64 :=
.mark loopBody26_122

def loopBody26_124 : HolLoopProg 64 :=
.seq loopBody26_67 loopBody26_123

def loopBody26_125 : HolLoopProg 64 :=
.mark loopBody26_124

def loopBody26_126 : HolLoopProg 64 :=
.seq loopBody26_61 loopBody26_125

def loopBody26_127 : HolLoopProg 64 :=
.mark loopBody26_126

def loopBody26_128 : HolLoopProg 64 :=
.seq loopBody26_59 loopBody26_127

def loopBody26_129 : HolLoopProg 64 :=
.mark loopBody26_128

def loopBody26_130 : HolLoopProg 64 :=
.loop (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) loopBody26_129 (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))

def loopBody26_131 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody26_132 : HolLoopProg 64 :=
.mark loopBody26_131

def loopBody26_133 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody26_134 : HolLoopProg 64 :=
.mark loopBody26_133

def loopBody26_135 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5, 6]

def loopBody26_136 : HolLoopProg 64 :=
.mark loopBody26_135

def loopBody26_137 : HolLoopProg 64 :=
.seq loopBody26_136 loopBody26_1

def loopBody26_138 : HolLoopProg 64 :=
.mark loopBody26_137

def loopBody26_139 : HolLoopProg 64 :=
.seq loopBody26_134 loopBody26_138

def loopBody26_140 : HolLoopProg 64 :=
.mark loopBody26_139

def loopBody26_141 : HolLoopProg 64 :=
.seq loopBody26_132 loopBody26_140

def loopBody26_142 : HolLoopProg 64 :=
.mark loopBody26_141

def loopBody26_143 : HolLoopProg 64 :=
.seq loopBody26_130 loopBody26_142

def loopBody26_144 : HolLoopProg 64 :=
.seq loopBody26_57 loopBody26_143

def loopBody26_145 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_144

def loopBody26_146 : HolLoopProg 64 :=
.seq loopBody26_15 loopBody26_145

def loopBody26_147 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_146

def loopBody26_148 : HolLoopProg 64 :=
.seq loopBody26_55 loopBody26_147

def loopBody26_149 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_148

def loopBody26_150 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_149

def loopBody26_151 : HolLoopProg 64 :=
.seq loopBody26_47 loopBody26_150

def loopBody26_152 : HolLoopProg 64 :=
.seq loopBody26_3 loopBody26_151

def loopBody26_153 : HolLoopProg 64 :=
.seq loopBody26_1 loopBody26_152

def output26 : Nat × List Nat × HolLoopProg 64 :=
  (90, [], loopBody26_153)
end InitECandidate.Proofs.FrontendStages.Loop
