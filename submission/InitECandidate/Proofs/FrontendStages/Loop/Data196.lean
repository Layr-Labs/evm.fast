import InitECandidate.Proofs.FrontendStages.Loop.Translate180
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody196_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody196_1 : HolLoopProg 64 :=
.mark loopBody196_0

def loopBody196_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 3

def loopBody196_3 : HolLoopProg 64 :=
.mark loopBody196_2

def loopBody196_4 : HolLoopProg 64 :=
.call (some ([2], Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 69) ([]) (some (3, loopBody196_3, loopBody196_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))))

def loopBody196_5 : HolLoopProg 64 :=
.mark loopBody196_4

def loopBody196_6 : HolLoopProg 64 :=
.seq loopBody196_5 loopBody196_1

def loopBody196_7 : HolLoopProg 64 :=
.mark loopBody196_6

def loopBody196_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 160#64)

def loopBody196_9 : HolLoopProg 64 :=
.mark loopBody196_8

def loopBody196_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody196_11 : HolLoopProg 64 :=
.mark loopBody196_10

def loopBody196_12 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 68) ([4]) (some (4, loopBody196_11, loopBody196_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody196_13 : HolLoopProg 64 :=
.mark loopBody196_12

def loopBody196_14 : HolLoopProg 64 :=
.seq loopBody196_13 loopBody196_1

def loopBody196_15 : HolLoopProg 64 :=
.mark loopBody196_14

def loopBody196_16 : HolLoopProg 64 :=
.seq loopBody196_9 loopBody196_15

def loopBody196_17 : HolLoopProg 64 :=
.mark loopBody196_16

def loopBody196_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 0)

def loopBody196_19 : HolLoopProg 64 :=
.mark loopBody196_18

def loopBody196_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 48#64)

def loopBody196_21 : HolLoopProg 64 :=
.mark loopBody196_20

def loopBody196_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody196_23 : HolLoopProg 64 :=
.mark loopBody196_22

def loopBody196_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody196_25 : HolLoopProg 64 :=
.mark loopBody196_24

def loopBody196_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 242) ([5, 6, 7]) (some (5, loopBody196_25, loopBody196_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody196_27 : HolLoopProg 64 :=
.mark loopBody196_26

def loopBody196_28 : HolLoopProg 64 :=
.seq loopBody196_27 loopBody196_1

def loopBody196_29 : HolLoopProg 64 :=
.mark loopBody196_28

def loopBody196_30 : HolLoopProg 64 :=
.seq loopBody196_23 loopBody196_29

def loopBody196_31 : HolLoopProg 64 :=
.mark loopBody196_30

def loopBody196_32 : HolLoopProg 64 :=
.seq loopBody196_21 loopBody196_31

def loopBody196_33 : HolLoopProg 64 :=
.mark loopBody196_32

def loopBody196_34 : HolLoopProg 64 :=
.seq loopBody196_19 loopBody196_33

def loopBody196_35 : HolLoopProg 64 :=
.mark loopBody196_34

def loopBody196_36 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_35

def loopBody196_37 : HolLoopProg 64 :=
.mark loopBody196_36

def loopBody196_38 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_37

def loopBody196_39 : HolLoopProg 64 :=
.mark loopBody196_38

def loopBody196_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 32#64])

def loopBody196_41 : HolLoopProg 64 :=
.mark loopBody196_40

def loopBody196_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64])

def loopBody196_43 : HolLoopProg 64 :=
.mark loopBody196_42

def loopBody196_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 32#64)

def loopBody196_45 : HolLoopProg 64 :=
.mark loopBody196_44

def loopBody196_46 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([5, 6, 7]) (some (5, loopBody196_25, loopBody196_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody196_47 : HolLoopProg 64 :=
.mark loopBody196_46

def loopBody196_48 : HolLoopProg 64 :=
.seq loopBody196_47 loopBody196_1

def loopBody196_49 : HolLoopProg 64 :=
.mark loopBody196_48

def loopBody196_50 : HolLoopProg 64 :=
.seq loopBody196_45 loopBody196_49

def loopBody196_51 : HolLoopProg 64 :=
.mark loopBody196_50

def loopBody196_52 : HolLoopProg 64 :=
.seq loopBody196_43 loopBody196_51

def loopBody196_53 : HolLoopProg 64 :=
.mark loopBody196_52

def loopBody196_54 : HolLoopProg 64 :=
.seq loopBody196_41 loopBody196_53

def loopBody196_55 : HolLoopProg 64 :=
.mark loopBody196_54

def loopBody196_56 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_55

def loopBody196_57 : HolLoopProg 64 :=
.mark loopBody196_56

def loopBody196_58 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_57

def loopBody196_59 : HolLoopProg 64 :=
.mark loopBody196_58

def loopBody196_60 : HolLoopProg 64 :=
.seq loopBody196_39 loopBody196_59

def loopBody196_61 : HolLoopProg 64 :=
.mark loopBody196_60

def loopBody196_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 80#64])

def loopBody196_63 : HolLoopProg 64 :=
.mark loopBody196_62

def loopBody196_64 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 64#64])

def loopBody196_65 : HolLoopProg 64 :=
.mark loopBody196_64

def loopBody196_66 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 244) ([5, 6]) (some (5, loopBody196_25, loopBody196_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody196_67 : HolLoopProg 64 :=
.mark loopBody196_66

def loopBody196_68 : HolLoopProg 64 :=
.seq loopBody196_67 loopBody196_1

def loopBody196_69 : HolLoopProg 64 :=
.mark loopBody196_68

def loopBody196_70 : HolLoopProg 64 :=
.seq loopBody196_65 loopBody196_69

def loopBody196_71 : HolLoopProg 64 :=
.mark loopBody196_70

def loopBody196_72 : HolLoopProg 64 :=
.seq loopBody196_63 loopBody196_71

def loopBody196_73 : HolLoopProg 64 :=
.mark loopBody196_72

def loopBody196_74 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_73

def loopBody196_75 : HolLoopProg 64 :=
.mark loopBody196_74

def loopBody196_76 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_75

def loopBody196_77 : HolLoopProg 64 :=
.mark loopBody196_76

def loopBody196_78 : HolLoopProg 64 :=
.seq loopBody196_61 loopBody196_77

def loopBody196_79 : HolLoopProg 64 :=
.mark loopBody196_78

def loopBody196_80 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 88#64])

def loopBody196_81 : HolLoopProg 64 :=
.mark loopBody196_80

def loopBody196_82 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 96#64)

def loopBody196_83 : HolLoopProg 64 :=
.mark loopBody196_82

def loopBody196_84 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 96#64])

def loopBody196_85 : HolLoopProg 64 :=
.mark loopBody196_84

def loopBody196_86 : HolLoopProg 64 :=
.seq loopBody196_85 loopBody196_29

def loopBody196_87 : HolLoopProg 64 :=
.mark loopBody196_86

def loopBody196_88 : HolLoopProg 64 :=
.seq loopBody196_83 loopBody196_87

def loopBody196_89 : HolLoopProg 64 :=
.mark loopBody196_88

def loopBody196_90 : HolLoopProg 64 :=
.seq loopBody196_81 loopBody196_89

def loopBody196_91 : HolLoopProg 64 :=
.mark loopBody196_90

def loopBody196_92 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_91

def loopBody196_93 : HolLoopProg 64 :=
.mark loopBody196_92

def loopBody196_94 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_93

def loopBody196_95 : HolLoopProg 64 :=
.mark loopBody196_94

def loopBody196_96 : HolLoopProg 64 :=
.seq loopBody196_79 loopBody196_95

def loopBody196_97 : HolLoopProg 64 :=
.mark loopBody196_96

def loopBody196_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 184#64])

def loopBody196_99 : HolLoopProg 64 :=
.mark loopBody196_98

def loopBody196_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 3, Flapjack.HolLoopExp.const 128#64])

def loopBody196_101 : HolLoopProg 64 :=
.mark loopBody196_100

def loopBody196_102 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 244) ([5, 6]) (some (5, loopBody196_25, loopBody196_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody196_103 : HolLoopProg 64 :=
.mark loopBody196_102

def loopBody196_104 : HolLoopProg 64 :=
.seq loopBody196_103 loopBody196_1

def loopBody196_105 : HolLoopProg 64 :=
.mark loopBody196_104

def loopBody196_106 : HolLoopProg 64 :=
.seq loopBody196_101 loopBody196_105

def loopBody196_107 : HolLoopProg 64 :=
.mark loopBody196_106

def loopBody196_108 : HolLoopProg 64 :=
.seq loopBody196_99 loopBody196_107

def loopBody196_109 : HolLoopProg 64 :=
.mark loopBody196_108

def loopBody196_110 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_109

def loopBody196_111 : HolLoopProg 64 :=
.mark loopBody196_110

def loopBody196_112 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_111

def loopBody196_113 : HolLoopProg 64 :=
.mark loopBody196_112

def loopBody196_114 : HolLoopProg 64 :=
.seq loopBody196_97 loopBody196_113

def loopBody196_115 : HolLoopProg 64 :=
.mark loopBody196_114

def loopBody196_116 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 3)

def loopBody196_117 : HolLoopProg 64 :=
.mark loopBody196_116

def loopBody196_118 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.const 5#64)

def loopBody196_119 : HolLoopProg 64 :=
.mark loopBody196_118

def loopBody196_120 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.const 5#64)

def loopBody196_121 : HolLoopProg 64 :=
.mark loopBody196_120

def loopBody196_122 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 1)

def loopBody196_123 : HolLoopProg 64 :=
.mark loopBody196_122

def loopBody196_124 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)) (some 235) ([5, 6, 7, 8]) (some (5, loopBody196_25, loopBody196_1, (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))

def loopBody196_125 : HolLoopProg 64 :=
.mark loopBody196_124

def loopBody196_126 : HolLoopProg 64 :=
.seq loopBody196_125 loopBody196_1

def loopBody196_127 : HolLoopProg 64 :=
.mark loopBody196_126

def loopBody196_128 : HolLoopProg 64 :=
.seq loopBody196_123 loopBody196_127

def loopBody196_129 : HolLoopProg 64 :=
.mark loopBody196_128

def loopBody196_130 : HolLoopProg 64 :=
.seq loopBody196_121 loopBody196_129

def loopBody196_131 : HolLoopProg 64 :=
.mark loopBody196_130

def loopBody196_132 : HolLoopProg 64 :=
.seq loopBody196_119 loopBody196_131

def loopBody196_133 : HolLoopProg 64 :=
.mark loopBody196_132

def loopBody196_134 : HolLoopProg 64 :=
.seq loopBody196_117 loopBody196_133

def loopBody196_135 : HolLoopProg 64 :=
.mark loopBody196_134

def loopBody196_136 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_135

def loopBody196_137 : HolLoopProg 64 :=
.mark loopBody196_136

def loopBody196_138 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_137

def loopBody196_139 : HolLoopProg 64 :=
.mark loopBody196_138

def loopBody196_140 : HolLoopProg 64 :=
.seq loopBody196_115 loopBody196_139

def loopBody196_141 : HolLoopProg 64 :=
.mark loopBody196_140

def loopBody196_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody196_143 : HolLoopProg 64 :=
.mark loopBody196_142

def loopBody196_144 : HolLoopProg 64 :=
.call (some ([4], Flapjack.Spt.ln)) (some 70) ([5]) (some (5, loopBody196_25, loopBody196_1, (Flapjack.Spt.ln)))

def loopBody196_145 : HolLoopProg 64 :=
.mark loopBody196_144

def loopBody196_146 : HolLoopProg 64 :=
.seq loopBody196_145 loopBody196_1

def loopBody196_147 : HolLoopProg 64 :=
.mark loopBody196_146

def loopBody196_148 : HolLoopProg 64 :=
.seq loopBody196_143 loopBody196_147

def loopBody196_149 : HolLoopProg 64 :=
.mark loopBody196_148

def loopBody196_150 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_149

def loopBody196_151 : HolLoopProg 64 :=
.mark loopBody196_150

def loopBody196_152 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_151

def loopBody196_153 : HolLoopProg 64 :=
.mark loopBody196_152

def loopBody196_154 : HolLoopProg 64 :=
.seq loopBody196_141 loopBody196_153

def loopBody196_155 : HolLoopProg 64 :=
.mark loopBody196_154

def loopBody196_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.const 0#64)

def loopBody196_157 : HolLoopProg 64 :=
.mark loopBody196_156

def loopBody196_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [4]

def loopBody196_159 : HolLoopProg 64 :=
.mark loopBody196_158

def loopBody196_160 : HolLoopProg 64 :=
.seq loopBody196_159 loopBody196_1

def loopBody196_161 : HolLoopProg 64 :=
.mark loopBody196_160

def loopBody196_162 : HolLoopProg 64 :=
.seq loopBody196_157 loopBody196_161

def loopBody196_163 : HolLoopProg 64 :=
.mark loopBody196_162

def loopBody196_164 : HolLoopProg 64 :=
.seq loopBody196_155 loopBody196_163

def loopBody196_165 : HolLoopProg 64 :=
.mark loopBody196_164

def loopBody196_166 : HolLoopProg 64 :=
.seq loopBody196_17 loopBody196_165

def loopBody196_167 : HolLoopProg 64 :=
.mark loopBody196_166

def loopBody196_168 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_167

def loopBody196_169 : HolLoopProg 64 :=
.mark loopBody196_168

def loopBody196_170 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_169

def loopBody196_171 : HolLoopProg 64 :=
.mark loopBody196_170

def loopBody196_172 : HolLoopProg 64 :=
.seq loopBody196_7 loopBody196_171

def loopBody196_173 : HolLoopProg 64 :=
.mark loopBody196_172

def loopBody196_174 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_173

def loopBody196_175 : HolLoopProg 64 :=
.mark loopBody196_174

def loopBody196_176 : HolLoopProg 64 :=
.seq loopBody196_1 loopBody196_175

def loopBody196_177 : HolLoopProg 64 :=
.mark loopBody196_176

def output196 : Nat × List Nat × HolLoopProg 64 :=
  (260, [0, 1], loopBody196_177)
end InitECandidate.Proofs.FrontendStages.Loop
