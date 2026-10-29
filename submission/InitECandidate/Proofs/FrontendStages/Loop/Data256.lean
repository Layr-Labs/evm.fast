import InitECandidate.Proofs.FrontendStages.Loop.Translate240
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody256_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody256_1 : HolLoopProg 64 :=
.mark loopBody256_0

def loopBody256_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody256_3 : HolLoopProg 64 :=
.mark loopBody256_2

def loopBody256_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody256_5 : HolLoopProg 64 :=
.mark loopBody256_4

def loopBody256_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 2)

def loopBody256_7 : HolLoopProg 64 :=
.mark loopBody256_6

def loopBody256_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody256_9 : HolLoopProg 64 :=
.mark loopBody256_8

def loopBody256_10 : HolLoopProg 64 :=
.call (some
  ([5, 6],
    Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 310) ([7, 8, 9]) (some (7, loopBody256_9, loopBody256_1, (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)))))

def loopBody256_11 : HolLoopProg 64 :=
.mark loopBody256_10

def loopBody256_12 : HolLoopProg 64 :=
.seq loopBody256_11 loopBody256_1

def loopBody256_13 : HolLoopProg 64 :=
.mark loopBody256_12

def loopBody256_14 : HolLoopProg 64 :=
.seq loopBody256_7 loopBody256_13

def loopBody256_15 : HolLoopProg 64 :=
.mark loopBody256_14

def loopBody256_16 : HolLoopProg 64 :=
.seq loopBody256_5 loopBody256_15

def loopBody256_17 : HolLoopProg 64 :=
.mark loopBody256_16

def loopBody256_18 : HolLoopProg 64 :=
.seq loopBody256_3 loopBody256_17

def loopBody256_19 : HolLoopProg 64 :=
.mark loopBody256_18

def loopBody256_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody256_21 : HolLoopProg 64 :=
.mark loopBody256_20

def loopBody256_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody256_23 : HolLoopProg 64 :=
.mark loopBody256_22

def loopBody256_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.const 0#64)

def loopBody256_25 : HolLoopProg 64 :=
.mark loopBody256_24

def loopBody256_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 1#64)

def loopBody256_27 : HolLoopProg 64 :=
.mark loopBody256_26

def loopBody256_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.const 0#64)

def loopBody256_29 : HolLoopProg 64 :=
.mark loopBody256_28

def loopBody256_30 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 9 (Flapjack.RegImm.reg 10) loopBody256_27 loopBody256_29 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody256_31 : HolLoopProg 64 :=
.mark loopBody256_30

def loopBody256_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody256_33 : HolLoopProg 64 :=
.mark loopBody256_32

def loopBody256_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.const 0#64)

def loopBody256_35 : HolLoopProg 64 :=
.mark loopBody256_34

def loopBody256_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 1#64)

def loopBody256_37 : HolLoopProg 64 :=
.mark loopBody256_36

def loopBody256_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.const 0#64)

def loopBody256_39 : HolLoopProg 64 :=
.mark loopBody256_38

def loopBody256_40 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.RegImm.reg 13) loopBody256_37 loopBody256_39 (Flapjack.Spt.bs
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
  PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody256_41 : HolLoopProg 64 :=
.mark loopBody256_40

def loopBody256_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 0#64)

def loopBody256_43 : HolLoopProg 64 :=
.mark loopBody256_42

def loopBody256_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16
  (Flapjack.HolLoopExp.op Flapjack.BinOp.or [Flapjack.HolLoopExp.var 9, Flapjack.HolLoopExp.var 12])

def loopBody256_45 : HolLoopProg 64 :=
.mark loopBody256_44

def loopBody256_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.const 1#64)

def loopBody256_47 : HolLoopProg 64 :=
.mark loopBody256_46

def loopBody256_48 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 15 (Flapjack.RegImm.reg 16) loopBody256_47 loopBody256_43 (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody256_49 : HolLoopProg 64 :=
.mark loopBody256_48

def loopBody256_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 15)

def loopBody256_51 : HolLoopProg 64 :=
.mark loopBody256_50

def loopBody256_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody256_53 : HolLoopProg 64 :=
.mark loopBody256_52

def loopBody256_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 5)

def loopBody256_55 : HolLoopProg 64 :=
.mark loopBody256_54

def loopBody256_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 6)

def loopBody256_57 : HolLoopProg 64 :=
.mark loopBody256_56

def loopBody256_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.const 0#64)

def loopBody256_59 : HolLoopProg 64 :=
.mark loopBody256_58

def loopBody256_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 8

def loopBody256_61 : HolLoopProg 64 :=
.mark loopBody256_60

def loopBody256_62 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ls PUnit.unit)) (some 319) ([8, 9, 10, 11]) (some (8, loopBody256_61, loopBody256_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody256_63 : HolLoopProg 64 :=
.mark loopBody256_62

def loopBody256_64 : HolLoopProg 64 :=
.seq loopBody256_63 loopBody256_1

def loopBody256_65 : HolLoopProg 64 :=
.mark loopBody256_64

def loopBody256_66 : HolLoopProg 64 :=
.seq loopBody256_59 loopBody256_65

def loopBody256_67 : HolLoopProg 64 :=
.mark loopBody256_66

def loopBody256_68 : HolLoopProg 64 :=
.seq loopBody256_57 loopBody256_67

def loopBody256_69 : HolLoopProg 64 :=
.mark loopBody256_68

def loopBody256_70 : HolLoopProg 64 :=
.seq loopBody256_55 loopBody256_69

def loopBody256_71 : HolLoopProg 64 :=
.mark loopBody256_70

def loopBody256_72 : HolLoopProg 64 :=
.seq loopBody256_53 loopBody256_71

def loopBody256_73 : HolLoopProg 64 :=
.mark loopBody256_72

def loopBody256_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 3)

def loopBody256_75 : HolLoopProg 64 :=
.mark loopBody256_74

def loopBody256_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13 (Flapjack.HolLoopExp.var 4)

def loopBody256_77 : HolLoopProg 64 :=
.mark loopBody256_76

def loopBody256_78 : HolLoopProg 64 :=
.call (some ([7], Flapjack.Spt.ls PUnit.unit)) (some 315) ([8, 9, 10, 11, 12, 13]) (some (8, loopBody256_61, loopBody256_1, (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))

def loopBody256_79 : HolLoopProg 64 :=
.mark loopBody256_78

def loopBody256_80 : HolLoopProg 64 :=
.seq loopBody256_79 loopBody256_1

def loopBody256_81 : HolLoopProg 64 :=
.mark loopBody256_80

def loopBody256_82 : HolLoopProg 64 :=
.seq loopBody256_77 loopBody256_81

def loopBody256_83 : HolLoopProg 64 :=
.mark loopBody256_82

def loopBody256_84 : HolLoopProg 64 :=
.seq loopBody256_75 loopBody256_83

def loopBody256_85 : HolLoopProg 64 :=
.mark loopBody256_84

def loopBody256_86 : HolLoopProg 64 :=
.seq loopBody256_59 loopBody256_85

def loopBody256_87 : HolLoopProg 64 :=
.mark loopBody256_86

def loopBody256_88 : HolLoopProg 64 :=
.seq loopBody256_57 loopBody256_87

def loopBody256_89 : HolLoopProg 64 :=
.mark loopBody256_88

def loopBody256_90 : HolLoopProg 64 :=
.seq loopBody256_55 loopBody256_89

def loopBody256_91 : HolLoopProg 64 :=
.mark loopBody256_90

def loopBody256_92 : HolLoopProg 64 :=
.seq loopBody256_53 loopBody256_91

def loopBody256_93 : HolLoopProg 64 :=
.mark loopBody256_92

def loopBody256_94 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 17 (Flapjack.RegImm.imm 0#64) loopBody256_73 loopBody256_93 (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))

def loopBody256_95 : HolLoopProg 64 :=
.mark loopBody256_94

def loopBody256_96 : HolLoopProg 64 :=
.seq loopBody256_95 loopBody256_1

def loopBody256_97 : HolLoopProg 64 :=
.mark loopBody256_96

def loopBody256_98 : HolLoopProg 64 :=
.seq loopBody256_51 loopBody256_97

def loopBody256_99 : HolLoopProg 64 :=
.mark loopBody256_98

def loopBody256_100 : HolLoopProg 64 :=
.seq loopBody256_49 loopBody256_99

def loopBody256_101 : HolLoopProg 64 :=
.mark loopBody256_100

def loopBody256_102 : HolLoopProg 64 :=
.seq loopBody256_45 loopBody256_101

def loopBody256_103 : HolLoopProg 64 :=
.mark loopBody256_102

def loopBody256_104 : HolLoopProg 64 :=
.seq loopBody256_43 loopBody256_103

def loopBody256_105 : HolLoopProg 64 :=
.mark loopBody256_104

def loopBody256_106 : HolLoopProg 64 :=
.seq loopBody256_41 loopBody256_105

def loopBody256_107 : HolLoopProg 64 :=
.mark loopBody256_106

def loopBody256_108 : HolLoopProg 64 :=
.seq loopBody256_35 loopBody256_107

def loopBody256_109 : HolLoopProg 64 :=
.mark loopBody256_108

def loopBody256_110 : HolLoopProg 64 :=
.seq loopBody256_33 loopBody256_109

def loopBody256_111 : HolLoopProg 64 :=
.mark loopBody256_110

def loopBody256_112 : HolLoopProg 64 :=
.seq loopBody256_31 loopBody256_111

def loopBody256_113 : HolLoopProg 64 :=
.mark loopBody256_112

def loopBody256_114 : HolLoopProg 64 :=
.seq loopBody256_25 loopBody256_113

def loopBody256_115 : HolLoopProg 64 :=
.mark loopBody256_114

def loopBody256_116 : HolLoopProg 64 :=
.seq loopBody256_23 loopBody256_115

def loopBody256_117 : HolLoopProg 64 :=
.mark loopBody256_116

def loopBody256_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64])

def loopBody256_119 : HolLoopProg 64 :=
.mark loopBody256_118

def loopBody256_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody256_121 : HolLoopProg 64 :=
.mark loopBody256_120

def loopBody256_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody256_123 : HolLoopProg 64 :=
.mark loopBody256_122

def loopBody256_124 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 8) 10

def loopBody256_125 : HolLoopProg 64 :=
.mark loopBody256_124

def loopBody256_126 : HolLoopProg 64 :=
.seq loopBody256_125 loopBody256_1

def loopBody256_127 : HolLoopProg 64 :=
.mark loopBody256_126

def loopBody256_128 : HolLoopProg 64 :=
.seq loopBody256_123 loopBody256_127

def loopBody256_129 : HolLoopProg 64 :=
.mark loopBody256_128

def loopBody256_130 : HolLoopProg 64 :=
.seq loopBody256_129 loopBody256_1

def loopBody256_131 : HolLoopProg 64 :=
.mark loopBody256_130

def loopBody256_132 : HolLoopProg 64 :=
.seq loopBody256_121 loopBody256_131

def loopBody256_133 : HolLoopProg 64 :=
.mark loopBody256_132

def loopBody256_134 : HolLoopProg 64 :=
.seq loopBody256_1 loopBody256_133

def loopBody256_135 : HolLoopProg 64 :=
.mark loopBody256_134

def loopBody256_136 : HolLoopProg 64 :=
.seq loopBody256_119 loopBody256_135

def loopBody256_137 : HolLoopProg 64 :=
.mark loopBody256_136

def loopBody256_138 : HolLoopProg 64 :=
.seq loopBody256_1 loopBody256_137

def loopBody256_139 : HolLoopProg 64 :=
.mark loopBody256_138

def loopBody256_140 : HolLoopProg 64 :=
.seq loopBody256_117 loopBody256_139

def loopBody256_141 : HolLoopProg 64 :=
.mark loopBody256_140

def loopBody256_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody256_143 : HolLoopProg 64 :=
.mark loopBody256_142

def loopBody256_144 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody256_145 : HolLoopProg 64 :=
.mark loopBody256_144

def loopBody256_146 : HolLoopProg 64 :=
.seq loopBody256_145 loopBody256_1

def loopBody256_147 : HolLoopProg 64 :=
.mark loopBody256_146

def loopBody256_148 : HolLoopProg 64 :=
.seq loopBody256_143 loopBody256_147

def loopBody256_149 : HolLoopProg 64 :=
.mark loopBody256_148

def loopBody256_150 : HolLoopProg 64 :=
.seq loopBody256_141 loopBody256_149

def loopBody256_151 : HolLoopProg 64 :=
.mark loopBody256_150

def loopBody256_152 : HolLoopProg 64 :=
.seq loopBody256_21 loopBody256_151

def loopBody256_153 : HolLoopProg 64 :=
.mark loopBody256_152

def loopBody256_154 : HolLoopProg 64 :=
.seq loopBody256_1 loopBody256_153

def loopBody256_155 : HolLoopProg 64 :=
.mark loopBody256_154

def loopBody256_156 : HolLoopProg 64 :=
.seq loopBody256_19 loopBody256_155

def loopBody256_157 : HolLoopProg 64 :=
.mark loopBody256_156

def loopBody256_158 : HolLoopProg 64 :=
.seq loopBody256_1 loopBody256_157

def loopBody256_159 : HolLoopProg 64 :=
.mark loopBody256_158

def loopBody256_160 : HolLoopProg 64 :=
.seq loopBody256_1 loopBody256_159

def loopBody256_161 : HolLoopProg 64 :=
.mark loopBody256_160

def loopBody256_162 : HolLoopProg 64 :=
.seq loopBody256_1 loopBody256_161

def loopBody256_163 : HolLoopProg 64 :=
.mark loopBody256_162

def loopBody256_164 : HolLoopProg 64 :=
.seq loopBody256_1 loopBody256_163

def loopBody256_165 : HolLoopProg 64 :=
.mark loopBody256_164

def output256 : Nat × List Nat × HolLoopProg 64 :=
  (320, [0, 1, 2, 3, 4], loopBody256_165)
end InitECandidate.Proofs.FrontendStages.Loop
