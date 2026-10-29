import InitECandidate.Proofs.FrontendStages.Loop.Translate67
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody83_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.and [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 7#64])

def loopBody83_1 : HolLoopProg 64 :=
.mark loopBody83_0

def loopBody83_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 0#64)

def loopBody83_3 : HolLoopProg 64 :=
.mark loopBody83_2

def loopBody83_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 1#64)

def loopBody83_5 : HolLoopProg 64 :=
.mark loopBody83_4

def loopBody83_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 0#64)

def loopBody83_7 : HolLoopProg 64 :=
.mark loopBody83_6

def loopBody83_8 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.RegImm.reg 7) loopBody83_5 loopBody83_7 (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody83_9 : HolLoopProg 64 :=
.mark loopBody83_8

def loopBody83_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 6)

def loopBody83_11 : HolLoopProg 64 :=
.mark loopBody83_10

def loopBody83_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody83_13 : HolLoopProg 64 :=
.mark loopBody83_12

def loopBody83_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody83_15 : HolLoopProg 64 :=
.mark loopBody83_14

def loopBody83_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody83_17 : HolLoopProg 64 :=
.mark loopBody83_16

def loopBody83_18 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))) (some 84) ([6]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))

def loopBody83_19 : HolLoopProg 64 :=
.mark loopBody83_18

def loopBody83_20 : HolLoopProg 64 :=
.seq loopBody83_19 loopBody83_13

def loopBody83_21 : HolLoopProg 64 :=
.mark loopBody83_20

def loopBody83_22 : HolLoopProg 64 :=
.seq loopBody83_15 loopBody83_21

def loopBody83_23 : HolLoopProg 64 :=
.mark loopBody83_22

def loopBody83_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody83_25 : HolLoopProg 64 :=
.mark loopBody83_24

def loopBody83_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody83_27 : HolLoopProg 64 :=
.mark loopBody83_26

def loopBody83_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 7)

def loopBody83_29 : HolLoopProg 64 :=
.mark loopBody83_28

def loopBody83_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 6) 8

def loopBody83_31 : HolLoopProg 64 :=
.mark loopBody83_30

def loopBody83_32 : HolLoopProg 64 :=
.seq loopBody83_31 loopBody83_13

def loopBody83_33 : HolLoopProg 64 :=
.mark loopBody83_32

def loopBody83_34 : HolLoopProg 64 :=
.seq loopBody83_29 loopBody83_33

def loopBody83_35 : HolLoopProg 64 :=
.mark loopBody83_34

def loopBody83_36 : HolLoopProg 64 :=
.seq loopBody83_35 loopBody83_13

def loopBody83_37 : HolLoopProg 64 :=
.mark loopBody83_36

def loopBody83_38 : HolLoopProg 64 :=
.seq loopBody83_27 loopBody83_37

def loopBody83_39 : HolLoopProg 64 :=
.mark loopBody83_38

def loopBody83_40 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_39

def loopBody83_41 : HolLoopProg 64 :=
.mark loopBody83_40

def loopBody83_42 : HolLoopProg 64 :=
.seq loopBody83_25 loopBody83_41

def loopBody83_43 : HolLoopProg 64 :=
.mark loopBody83_42

def loopBody83_44 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_43

def loopBody83_45 : HolLoopProg 64 :=
.mark loopBody83_44

def loopBody83_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 2)

def loopBody83_47 : HolLoopProg 64 :=
.mark loopBody83_46

def loopBody83_48 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))) (some 84) ([6]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))))

def loopBody83_49 : HolLoopProg 64 :=
.mark loopBody83_48

def loopBody83_50 : HolLoopProg 64 :=
.seq loopBody83_49 loopBody83_13

def loopBody83_51 : HolLoopProg 64 :=
.mark loopBody83_50

def loopBody83_52 : HolLoopProg 64 :=
.seq loopBody83_47 loopBody83_51

def loopBody83_53 : HolLoopProg 64 :=
.mark loopBody83_52

def loopBody83_54 : HolLoopProg 64 :=
.seq loopBody83_45 loopBody83_53

def loopBody83_55 : HolLoopProg 64 :=
.mark loopBody83_54

def loopBody83_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 8#64])

def loopBody83_57 : HolLoopProg 64 :=
.mark loopBody83_56

def loopBody83_58 : HolLoopProg 64 :=
.seq loopBody83_57 loopBody83_41

def loopBody83_59 : HolLoopProg 64 :=
.mark loopBody83_58

def loopBody83_60 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_59

def loopBody83_61 : HolLoopProg 64 :=
.mark loopBody83_60

def loopBody83_62 : HolLoopProg 64 :=
.seq loopBody83_55 loopBody83_61

def loopBody83_63 : HolLoopProg 64 :=
.mark loopBody83_62

def loopBody83_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody83_65 : HolLoopProg 64 :=
.mark loopBody83_64

def loopBody83_66 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)) (some 84) ([6]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody83_67 : HolLoopProg 64 :=
.mark loopBody83_66

def loopBody83_68 : HolLoopProg 64 :=
.seq loopBody83_67 loopBody83_13

def loopBody83_69 : HolLoopProg 64 :=
.mark loopBody83_68

def loopBody83_70 : HolLoopProg 64 :=
.seq loopBody83_65 loopBody83_69

def loopBody83_71 : HolLoopProg 64 :=
.mark loopBody83_70

def loopBody83_72 : HolLoopProg 64 :=
.seq loopBody83_63 loopBody83_71

def loopBody83_73 : HolLoopProg 64 :=
.mark loopBody83_72

def loopBody83_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 16#64])

def loopBody83_75 : HolLoopProg 64 :=
.mark loopBody83_74

def loopBody83_76 : HolLoopProg 64 :=
.seq loopBody83_75 loopBody83_41

def loopBody83_77 : HolLoopProg 64 :=
.mark loopBody83_76

def loopBody83_78 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_77

def loopBody83_79 : HolLoopProg 64 :=
.mark loopBody83_78

def loopBody83_80 : HolLoopProg 64 :=
.seq loopBody83_73 loopBody83_79

def loopBody83_81 : HolLoopProg 64 :=
.mark loopBody83_80

def loopBody83_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 0)

def loopBody83_83 : HolLoopProg 64 :=
.mark loopBody83_82

def loopBody83_84 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)) (some 84) ([6]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))

def loopBody83_85 : HolLoopProg 64 :=
.mark loopBody83_84

def loopBody83_86 : HolLoopProg 64 :=
.seq loopBody83_85 loopBody83_13

def loopBody83_87 : HolLoopProg 64 :=
.mark loopBody83_86

def loopBody83_88 : HolLoopProg 64 :=
.seq loopBody83_83 loopBody83_87

def loopBody83_89 : HolLoopProg 64 :=
.mark loopBody83_88

def loopBody83_90 : HolLoopProg 64 :=
.seq loopBody83_81 loopBody83_89

def loopBody83_91 : HolLoopProg 64 :=
.mark loopBody83_90

def loopBody83_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 24#64])

def loopBody83_93 : HolLoopProg 64 :=
.mark loopBody83_92

def loopBody83_94 : HolLoopProg 64 :=
.seq loopBody83_93 loopBody83_41

def loopBody83_95 : HolLoopProg 64 :=
.mark loopBody83_94

def loopBody83_96 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_95

def loopBody83_97 : HolLoopProg 64 :=
.mark loopBody83_96

def loopBody83_98 : HolLoopProg 64 :=
.seq loopBody83_91 loopBody83_97

def loopBody83_99 : HolLoopProg 64 :=
.mark loopBody83_98

def loopBody83_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [6]

def loopBody83_101 : HolLoopProg 64 :=
.mark loopBody83_100

def loopBody83_102 : HolLoopProg 64 :=
.seq loopBody83_101 loopBody83_13

def loopBody83_103 : HolLoopProg 64 :=
.mark loopBody83_102

def loopBody83_104 : HolLoopProg 64 :=
.seq loopBody83_7 loopBody83_103

def loopBody83_105 : HolLoopProg 64 :=
.mark loopBody83_104

def loopBody83_106 : HolLoopProg 64 :=
.seq loopBody83_99 loopBody83_105

def loopBody83_107 : HolLoopProg 64 :=
.mark loopBody83_106

def loopBody83_108 : HolLoopProg 64 :=
.seq loopBody83_23 loopBody83_107

def loopBody83_109 : HolLoopProg 64 :=
.mark loopBody83_108

def loopBody83_110 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_109

def loopBody83_111 : HolLoopProg 64 :=
.mark loopBody83_110

def loopBody83_112 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_111

def loopBody83_113 : HolLoopProg 64 :=
.mark loopBody83_112

def loopBody83_114 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.RegImm.imm 0#64) loopBody83_113 loopBody83_13 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody83_115 : HolLoopProg 64 :=
.mark loopBody83_114

def loopBody83_116 : HolLoopProg 64 :=
.seq loopBody83_115 loopBody83_13

def loopBody83_117 : HolLoopProg 64 :=
.mark loopBody83_116

def loopBody83_118 : HolLoopProg 64 :=
.seq loopBody83_11 loopBody83_117

def loopBody83_119 : HolLoopProg 64 :=
.mark loopBody83_118

def loopBody83_120 : HolLoopProg 64 :=
.seq loopBody83_9 loopBody83_119

def loopBody83_121 : HolLoopProg 64 :=
.mark loopBody83_120

def loopBody83_122 : HolLoopProg 64 :=
.seq loopBody83_3 loopBody83_121

def loopBody83_123 : HolLoopProg 64 :=
.mark loopBody83_122

def loopBody83_124 : HolLoopProg 64 :=
.seq loopBody83_1 loopBody83_123

def loopBody83_125 : HolLoopProg 64 :=
.mark loopBody83_124

def loopBody83_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody83_127 : HolLoopProg 64 :=
.mark loopBody83_126

def loopBody83_128 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))) (some 89) ([6, 7]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.ls PUnit.unit))))

def loopBody83_129 : HolLoopProg 64 :=
.mark loopBody83_128

def loopBody83_130 : HolLoopProg 64 :=
.seq loopBody83_129 loopBody83_13

def loopBody83_131 : HolLoopProg 64 :=
.mark loopBody83_130

def loopBody83_132 : HolLoopProg 64 :=
.seq loopBody83_127 loopBody83_131

def loopBody83_133 : HolLoopProg 64 :=
.mark loopBody83_132

def loopBody83_134 : HolLoopProg 64 :=
.seq loopBody83_25 loopBody83_133

def loopBody83_135 : HolLoopProg 64 :=
.mark loopBody83_134

def loopBody83_136 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_135

def loopBody83_137 : HolLoopProg 64 :=
.mark loopBody83_136

def loopBody83_138 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_137

def loopBody83_139 : HolLoopProg 64 :=
.mark loopBody83_138

def loopBody83_140 : HolLoopProg 64 :=
.seq loopBody83_125 loopBody83_139

def loopBody83_141 : HolLoopProg 64 :=
.mark loopBody83_140

def loopBody83_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody83_143 : HolLoopProg 64 :=
.mark loopBody83_142

def loopBody83_144 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.ls PUnit.unit))) (some 89) ([6, 7]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody83_145 : HolLoopProg 64 :=
.mark loopBody83_144

def loopBody83_146 : HolLoopProg 64 :=
.seq loopBody83_145 loopBody83_13

def loopBody83_147 : HolLoopProg 64 :=
.mark loopBody83_146

def loopBody83_148 : HolLoopProg 64 :=
.seq loopBody83_143 loopBody83_147

def loopBody83_149 : HolLoopProg 64 :=
.mark loopBody83_148

def loopBody83_150 : HolLoopProg 64 :=
.seq loopBody83_57 loopBody83_149

def loopBody83_151 : HolLoopProg 64 :=
.mark loopBody83_150

def loopBody83_152 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_151

def loopBody83_153 : HolLoopProg 64 :=
.mark loopBody83_152

def loopBody83_154 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_153

def loopBody83_155 : HolLoopProg 64 :=
.mark loopBody83_154

def loopBody83_156 : HolLoopProg 64 :=
.seq loopBody83_141 loopBody83_155

def loopBody83_157 : HolLoopProg 64 :=
.mark loopBody83_156

def loopBody83_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 1)

def loopBody83_159 : HolLoopProg 64 :=
.mark loopBody83_158

def loopBody83_160 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)) (some 89) ([6, 7]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit Flapjack.Spt.ln)))

def loopBody83_161 : HolLoopProg 64 :=
.mark loopBody83_160

def loopBody83_162 : HolLoopProg 64 :=
.seq loopBody83_161 loopBody83_13

def loopBody83_163 : HolLoopProg 64 :=
.mark loopBody83_162

def loopBody83_164 : HolLoopProg 64 :=
.seq loopBody83_159 loopBody83_163

def loopBody83_165 : HolLoopProg 64 :=
.mark loopBody83_164

def loopBody83_166 : HolLoopProg 64 :=
.seq loopBody83_75 loopBody83_165

def loopBody83_167 : HolLoopProg 64 :=
.mark loopBody83_166

def loopBody83_168 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_167

def loopBody83_169 : HolLoopProg 64 :=
.mark loopBody83_168

def loopBody83_170 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_169

def loopBody83_171 : HolLoopProg 64 :=
.mark loopBody83_170

def loopBody83_172 : HolLoopProg 64 :=
.seq loopBody83_157 loopBody83_171

def loopBody83_173 : HolLoopProg 64 :=
.mark loopBody83_172

def loopBody83_174 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 0)

def loopBody83_175 : HolLoopProg 64 :=
.mark loopBody83_174

def loopBody83_176 : HolLoopProg 64 :=
.call (some ([5], Flapjack.Spt.ln)) (some 89) ([6, 7]) (some (6, loopBody83_17, loopBody83_13, (Flapjack.Spt.ln)))

def loopBody83_177 : HolLoopProg 64 :=
.mark loopBody83_176

def loopBody83_178 : HolLoopProg 64 :=
.seq loopBody83_177 loopBody83_13

def loopBody83_179 : HolLoopProg 64 :=
.mark loopBody83_178

def loopBody83_180 : HolLoopProg 64 :=
.seq loopBody83_175 loopBody83_179

def loopBody83_181 : HolLoopProg 64 :=
.mark loopBody83_180

def loopBody83_182 : HolLoopProg 64 :=
.seq loopBody83_93 loopBody83_181

def loopBody83_183 : HolLoopProg 64 :=
.mark loopBody83_182

def loopBody83_184 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_183

def loopBody83_185 : HolLoopProg 64 :=
.mark loopBody83_184

def loopBody83_186 : HolLoopProg 64 :=
.seq loopBody83_13 loopBody83_185

def loopBody83_187 : HolLoopProg 64 :=
.mark loopBody83_186

def loopBody83_188 : HolLoopProg 64 :=
.seq loopBody83_173 loopBody83_187

def loopBody83_189 : HolLoopProg 64 :=
.mark loopBody83_188

def loopBody83_190 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody83_191 : HolLoopProg 64 :=
.mark loopBody83_190

def loopBody83_192 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [5]

def loopBody83_193 : HolLoopProg 64 :=
.mark loopBody83_192

def loopBody83_194 : HolLoopProg 64 :=
.seq loopBody83_193 loopBody83_13

def loopBody83_195 : HolLoopProg 64 :=
.mark loopBody83_194

def loopBody83_196 : HolLoopProg 64 :=
.seq loopBody83_191 loopBody83_195

def loopBody83_197 : HolLoopProg 64 :=
.mark loopBody83_196

def loopBody83_198 : HolLoopProg 64 :=
.seq loopBody83_189 loopBody83_197

def loopBody83_199 : HolLoopProg 64 :=
.mark loopBody83_198

def output83 : Nat × List Nat × HolLoopProg 64 :=
  (147, [0, 1, 2, 3, 4], loopBody83_199)
end InitECandidate.Proofs.FrontendStages.Loop
