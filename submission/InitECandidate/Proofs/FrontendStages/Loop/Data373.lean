import InitECandidate.Proofs.FrontendStages.Loop.Translate357
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody373_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody373_1 : HolLoopProg 64 :=
.mark loopBody373_0

def loopBody373_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody373_3 : HolLoopProg 64 :=
.mark loopBody373_2

def loopBody373_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64]))

def loopBody373_5 : HolLoopProg 64 :=
.mark loopBody373_4

def loopBody373_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 2)

def loopBody373_7 : HolLoopProg 64 :=
.mark loopBody373_6

def loopBody373_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 3)

def loopBody373_9 : HolLoopProg 64 :=
.mark loopBody373_8

def loopBody373_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 1#64)

def loopBody373_11 : HolLoopProg 64 :=
.mark loopBody373_10

def loopBody373_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.const 0#64)

def loopBody373_13 : HolLoopProg 64 :=
.mark loopBody373_12

def loopBody373_14 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.RegImm.reg 6) loopBody373_11 loopBody373_13 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit)))

def loopBody373_15 : HolLoopProg 64 :=
.mark loopBody373_14

def loopBody373_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 5)

def loopBody373_17 : HolLoopProg 64 :=
.mark loopBody373_16

def loopBody373_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5 (Flapjack.HolLoopExp.var 1)

def loopBody373_19 : HolLoopProg 64 :=
.mark loopBody373_18

def loopBody373_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 7 7 5 6)

def loopBody373_21 : HolLoopProg 64 :=
.mark loopBody373_20

def loopBody373_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 1#64))

def loopBody373_23 : HolLoopProg 64 :=
.mark loopBody373_22

def loopBody373_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 5

def loopBody373_25 : HolLoopProg 64 :=
.mark loopBody373_24

def loopBody373_26 : HolLoopProg 64 :=
.call (some
  ([4],
    Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 68) ([8]) (some (5, loopBody373_25, loopBody373_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody373_27 : HolLoopProg 64 :=
.mark loopBody373_26

def loopBody373_28 : HolLoopProg 64 :=
.seq loopBody373_27 loopBody373_1

def loopBody373_29 : HolLoopProg 64 :=
.mark loopBody373_28

def loopBody373_30 : HolLoopProg 64 :=
.seq loopBody373_23 loopBody373_29

def loopBody373_31 : HolLoopProg 64 :=
.mark loopBody373_30

def loopBody373_32 : HolLoopProg 64 :=
.seq loopBody373_21 loopBody373_31

def loopBody373_33 : HolLoopProg 64 :=
.mark loopBody373_32

def loopBody373_34 : HolLoopProg 64 :=
.seq loopBody373_9 loopBody373_33

def loopBody373_35 : HolLoopProg 64 :=
.mark loopBody373_34

def loopBody373_36 : HolLoopProg 64 :=
.seq loopBody373_19 loopBody373_35

def loopBody373_37 : HolLoopProg 64 :=
.mark loopBody373_36

def loopBody373_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 1)

def loopBody373_39 : HolLoopProg 64 :=
.mark loopBody373_38

def loopBody373_40 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 2)

def loopBody373_41 : HolLoopProg 64 :=
.mark loopBody373_40

def loopBody373_42 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 8 8 6 7)

def loopBody373_43 : HolLoopProg 64 :=
.mark loopBody373_42

def loopBody373_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 4)

def loopBody373_45 : HolLoopProg 64 :=
.mark loopBody373_44

def loopBody373_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody373_47 : HolLoopProg 64 :=
.mark loopBody373_46

def loopBody373_48 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 8)

def loopBody373_49 : HolLoopProg 64 :=
.mark loopBody373_48

def loopBody373_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 6

def loopBody373_51 : HolLoopProg 64 :=
.mark loopBody373_50

def loopBody373_52 : HolLoopProg 64 :=
.call (some
  ([5],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([9, 10, 11]) (some (6, loopBody373_51, loopBody373_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody373_53 : HolLoopProg 64 :=
.mark loopBody373_52

def loopBody373_54 : HolLoopProg 64 :=
.seq loopBody373_53 loopBody373_1

def loopBody373_55 : HolLoopProg 64 :=
.mark loopBody373_54

def loopBody373_56 : HolLoopProg 64 :=
.seq loopBody373_49 loopBody373_55

def loopBody373_57 : HolLoopProg 64 :=
.mark loopBody373_56

def loopBody373_58 : HolLoopProg 64 :=
.seq loopBody373_47 loopBody373_57

def loopBody373_59 : HolLoopProg 64 :=
.mark loopBody373_58

def loopBody373_60 : HolLoopProg 64 :=
.seq loopBody373_45 loopBody373_59

def loopBody373_61 : HolLoopProg 64 :=
.mark loopBody373_60

def loopBody373_62 : HolLoopProg 64 :=
.seq loopBody373_43 loopBody373_61

def loopBody373_63 : HolLoopProg 64 :=
.mark loopBody373_62

def loopBody373_64 : HolLoopProg 64 :=
.seq loopBody373_41 loopBody373_63

def loopBody373_65 : HolLoopProg 64 :=
.mark loopBody373_64

def loopBody373_66 : HolLoopProg 64 :=
.seq loopBody373_39 loopBody373_65

def loopBody373_67 : HolLoopProg 64 :=
.mark loopBody373_66

def loopBody373_68 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_67

def loopBody373_69 : HolLoopProg 64 :=
.mark loopBody373_68

def loopBody373_70 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_69

def loopBody373_71 : HolLoopProg 64 :=
.mark loopBody373_70

def loopBody373_72 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64])

def loopBody373_73 : HolLoopProg 64 :=
.mark loopBody373_72

def loopBody373_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 4)

def loopBody373_75 : HolLoopProg 64 :=
.mark loopBody373_74

def loopBody373_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 6)

def loopBody373_77 : HolLoopProg 64 :=
.mark loopBody373_76

def loopBody373_78 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 5) 7

def loopBody373_79 : HolLoopProg 64 :=
.mark loopBody373_78

def loopBody373_80 : HolLoopProg 64 :=
.seq loopBody373_79 loopBody373_1

def loopBody373_81 : HolLoopProg 64 :=
.mark loopBody373_80

def loopBody373_82 : HolLoopProg 64 :=
.seq loopBody373_77 loopBody373_81

def loopBody373_83 : HolLoopProg 64 :=
.mark loopBody373_82

def loopBody373_84 : HolLoopProg 64 :=
.seq loopBody373_83 loopBody373_1

def loopBody373_85 : HolLoopProg 64 :=
.mark loopBody373_84

def loopBody373_86 : HolLoopProg 64 :=
.seq loopBody373_75 loopBody373_85

def loopBody373_87 : HolLoopProg 64 :=
.mark loopBody373_86

def loopBody373_88 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_87

def loopBody373_89 : HolLoopProg 64 :=
.mark loopBody373_88

def loopBody373_90 : HolLoopProg 64 :=
.seq loopBody373_73 loopBody373_89

def loopBody373_91 : HolLoopProg 64 :=
.mark loopBody373_90

def loopBody373_92 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_91

def loopBody373_93 : HolLoopProg 64 :=
.mark loopBody373_92

def loopBody373_94 : HolLoopProg 64 :=
.seq loopBody373_71 loopBody373_93

def loopBody373_95 : HolLoopProg 64 :=
.mark loopBody373_94

def loopBody373_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 16#64])

def loopBody373_97 : HolLoopProg 64 :=
.mark loopBody373_96

def loopBody373_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 1#64))

def loopBody373_99 : HolLoopProg 64 :=
.mark loopBody373_98

def loopBody373_100 : HolLoopProg 64 :=
.seq loopBody373_99 loopBody373_85

def loopBody373_101 : HolLoopProg 64 :=
.mark loopBody373_100

def loopBody373_102 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_101

def loopBody373_103 : HolLoopProg 64 :=
.mark loopBody373_102

def loopBody373_104 : HolLoopProg 64 :=
.seq loopBody373_97 loopBody373_103

def loopBody373_105 : HolLoopProg 64 :=
.mark loopBody373_104

def loopBody373_106 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_105

def loopBody373_107 : HolLoopProg 64 :=
.mark loopBody373_106

def loopBody373_108 : HolLoopProg 64 :=
.seq loopBody373_95 loopBody373_107

def loopBody373_109 : HolLoopProg 64 :=
.mark loopBody373_108

def loopBody373_110 : HolLoopProg 64 :=
.seq loopBody373_37 loopBody373_109

def loopBody373_111 : HolLoopProg 64 :=
.mark loopBody373_110

def loopBody373_112 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_111

def loopBody373_113 : HolLoopProg 64 :=
.mark loopBody373_112

def loopBody373_114 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_113

def loopBody373_115 : HolLoopProg 64 :=
.mark loopBody373_114

def loopBody373_116 : HolLoopProg 64 :=
.ite (Flapjack.Cmp.notEqual) 7 (Flapjack.RegImm.imm 0#64) loopBody373_115 loopBody373_1 (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))

def loopBody373_117 : HolLoopProg 64 :=
.mark loopBody373_116

def loopBody373_118 : HolLoopProg 64 :=
.seq loopBody373_117 loopBody373_1

def loopBody373_119 : HolLoopProg 64 :=
.mark loopBody373_118

def loopBody373_120 : HolLoopProg 64 :=
.seq loopBody373_17 loopBody373_119

def loopBody373_121 : HolLoopProg 64 :=
.mark loopBody373_120

def loopBody373_122 : HolLoopProg 64 :=
.seq loopBody373_15 loopBody373_121

def loopBody373_123 : HolLoopProg 64 :=
.mark loopBody373_122

def loopBody373_124 : HolLoopProg 64 :=
.seq loopBody373_9 loopBody373_123

def loopBody373_125 : HolLoopProg 64 :=
.mark loopBody373_124

def loopBody373_126 : HolLoopProg 64 :=
.seq loopBody373_7 loopBody373_125

def loopBody373_127 : HolLoopProg 64 :=
.mark loopBody373_126

def loopBody373_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64])

def loopBody373_129 : HolLoopProg 64 :=
.mark loopBody373_128

def loopBody373_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64])

def loopBody373_131 : HolLoopProg 64 :=
.mark loopBody373_130

def loopBody373_132 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.var 5)

def loopBody373_133 : HolLoopProg 64 :=
.mark loopBody373_132

def loopBody373_134 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 4) 6

def loopBody373_135 : HolLoopProg 64 :=
.mark loopBody373_134

def loopBody373_136 : HolLoopProg 64 :=
.seq loopBody373_135 loopBody373_1

def loopBody373_137 : HolLoopProg 64 :=
.mark loopBody373_136

def loopBody373_138 : HolLoopProg 64 :=
.seq loopBody373_133 loopBody373_137

def loopBody373_139 : HolLoopProg 64 :=
.mark loopBody373_138

def loopBody373_140 : HolLoopProg 64 :=
.seq loopBody373_139 loopBody373_1

def loopBody373_141 : HolLoopProg 64 :=
.mark loopBody373_140

def loopBody373_142 : HolLoopProg 64 :=
.seq loopBody373_131 loopBody373_141

def loopBody373_143 : HolLoopProg 64 :=
.mark loopBody373_142

def loopBody373_144 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_143

def loopBody373_145 : HolLoopProg 64 :=
.mark loopBody373_144

def loopBody373_146 : HolLoopProg 64 :=
.seq loopBody373_129 loopBody373_145

def loopBody373_147 : HolLoopProg 64 :=
.mark loopBody373_146

def loopBody373_148 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_147

def loopBody373_149 : HolLoopProg 64 :=
.mark loopBody373_148

def loopBody373_150 : HolLoopProg 64 :=
.seq loopBody373_127 loopBody373_149

def loopBody373_151 : HolLoopProg 64 :=
.mark loopBody373_150

def loopBody373_152 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 2)

def loopBody373_153 : HolLoopProg 64 :=
.mark loopBody373_152

def loopBody373_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 6 6 4 5)

def loopBody373_155 : HolLoopProg 64 :=
.mark loopBody373_154

def loopBody373_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]),
      Flapjack.HolLoopExp.var 6])

def loopBody373_157 : HolLoopProg 64 :=
.mark loopBody373_156

def loopBody373_158 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [7]

def loopBody373_159 : HolLoopProg 64 :=
.mark loopBody373_158

def loopBody373_160 : HolLoopProg 64 :=
.seq loopBody373_159 loopBody373_1

def loopBody373_161 : HolLoopProg 64 :=
.mark loopBody373_160

def loopBody373_162 : HolLoopProg 64 :=
.seq loopBody373_157 loopBody373_161

def loopBody373_163 : HolLoopProg 64 :=
.mark loopBody373_162

def loopBody373_164 : HolLoopProg 64 :=
.seq loopBody373_155 loopBody373_163

def loopBody373_165 : HolLoopProg 64 :=
.mark loopBody373_164

def loopBody373_166 : HolLoopProg 64 :=
.seq loopBody373_19 loopBody373_165

def loopBody373_167 : HolLoopProg 64 :=
.mark loopBody373_166

def loopBody373_168 : HolLoopProg 64 :=
.seq loopBody373_153 loopBody373_167

def loopBody373_169 : HolLoopProg 64 :=
.mark loopBody373_168

def loopBody373_170 : HolLoopProg 64 :=
.seq loopBody373_151 loopBody373_169

def loopBody373_171 : HolLoopProg 64 :=
.mark loopBody373_170

def loopBody373_172 : HolLoopProg 64 :=
.seq loopBody373_5 loopBody373_171

def loopBody373_173 : HolLoopProg 64 :=
.mark loopBody373_172

def loopBody373_174 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_173

def loopBody373_175 : HolLoopProg 64 :=
.mark loopBody373_174

def loopBody373_176 : HolLoopProg 64 :=
.seq loopBody373_3 loopBody373_175

def loopBody373_177 : HolLoopProg 64 :=
.mark loopBody373_176

def loopBody373_178 : HolLoopProg 64 :=
.seq loopBody373_1 loopBody373_177

def loopBody373_179 : HolLoopProg 64 :=
.mark loopBody373_178

def output373 : Nat × List Nat × HolLoopProg 64 :=
  (437, [0, 1], loopBody373_179)
end InitECandidate.Proofs.FrontendStages.Loop
