import InitECandidate.Proofs.FrontendStages.Loop.Translate109
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody125_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody125_1 : HolLoopProg 64 :=
.mark loopBody125_0

def loopBody125_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4 (Flapjack.HolLoopExp.var 0)

def loopBody125_3 : HolLoopProg 64 :=
.mark loopBody125_2

def loopBody125_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 4

def loopBody125_5 : HolLoopProg 64 :=
.mark loopBody125_4

def loopBody125_6 : HolLoopProg 64 :=
.call (some ([3], Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))) (some 188) ([4]) (some (4, loopBody125_5, loopBody125_1, (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))

def loopBody125_7 : HolLoopProg 64 :=
.mark loopBody125_6

def loopBody125_8 : HolLoopProg 64 :=
.seq loopBody125_7 loopBody125_1

def loopBody125_9 : HolLoopProg 64 :=
.mark loopBody125_8

def loopBody125_10 : HolLoopProg 64 :=
.seq loopBody125_3 loopBody125_9

def loopBody125_11 : HolLoopProg 64 :=
.mark loopBody125_10

def loopBody125_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 0#64]))

def loopBody125_13 : HolLoopProg 64 :=
.mark loopBody125_12

def loopBody125_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 8#64]))

def loopBody125_15 : HolLoopProg 64 :=
.mark loopBody125_14

def loopBody125_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7 (Flapjack.HolLoopExp.var 3)

def loopBody125_17 : HolLoopProg 64 :=
.mark loopBody125_16

def loopBody125_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 5)

def loopBody125_19 : HolLoopProg 64 :=
.mark loopBody125_18

def loopBody125_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.arith (Flapjack.LoopArith.longMul 9 9 7 8)

def loopBody125_21 : HolLoopProg 64 :=
.mark loopBody125_20

def loopBody125_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 32#64]),
      Flapjack.HolLoopExp.var 9])

def loopBody125_23 : HolLoopProg 64 :=
.mark loopBody125_22

def loopBody125_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11 (Flapjack.HolLoopExp.var 1)

def loopBody125_25 : HolLoopProg 64 :=
.mark loopBody125_24

def loopBody125_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12 (Flapjack.HolLoopExp.var 4)

def loopBody125_27 : HolLoopProg 64 :=
.mark loopBody125_26

def loopBody125_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.raise 7

def loopBody125_29 : HolLoopProg 64 :=
.mark loopBody125_28

def loopBody125_30 : HolLoopProg 64 :=
.call (some
  ([6],
    Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))) (some 77) ([10, 11, 12]) (some (7, loopBody125_29, loopBody125_1, (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))

def loopBody125_31 : HolLoopProg 64 :=
.mark loopBody125_30

def loopBody125_32 : HolLoopProg 64 :=
.seq loopBody125_31 loopBody125_1

def loopBody125_33 : HolLoopProg 64 :=
.mark loopBody125_32

def loopBody125_34 : HolLoopProg 64 :=
.seq loopBody125_27 loopBody125_33

def loopBody125_35 : HolLoopProg 64 :=
.mark loopBody125_34

def loopBody125_36 : HolLoopProg 64 :=
.seq loopBody125_25 loopBody125_35

def loopBody125_37 : HolLoopProg 64 :=
.mark loopBody125_36

def loopBody125_38 : HolLoopProg 64 :=
.seq loopBody125_23 loopBody125_37

def loopBody125_39 : HolLoopProg 64 :=
.mark loopBody125_38

def loopBody125_40 : HolLoopProg 64 :=
.seq loopBody125_21 loopBody125_39

def loopBody125_41 : HolLoopProg 64 :=
.mark loopBody125_40

def loopBody125_42 : HolLoopProg 64 :=
.seq loopBody125_19 loopBody125_41

def loopBody125_43 : HolLoopProg 64 :=
.mark loopBody125_42

def loopBody125_44 : HolLoopProg 64 :=
.seq loopBody125_17 loopBody125_43

def loopBody125_45 : HolLoopProg 64 :=
.mark loopBody125_44

def loopBody125_46 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_45

def loopBody125_47 : HolLoopProg 64 :=
.mark loopBody125_46

def loopBody125_48 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_47

def loopBody125_49 : HolLoopProg 64 :=
.mark loopBody125_48

def loopBody125_50 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 40#64]))

def loopBody125_51 : HolLoopProg 64 :=
.mark loopBody125_50

def loopBody125_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 0#64])

def loopBody125_53 : HolLoopProg 64 :=
.mark loopBody125_52

def loopBody125_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.const 0#64)

def loopBody125_55 : HolLoopProg 64 :=
.mark loopBody125_54

def loopBody125_56 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 8)

def loopBody125_57 : HolLoopProg 64 :=
.mark loopBody125_56

def loopBody125_58 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 7) 9

def loopBody125_59 : HolLoopProg 64 :=
.mark loopBody125_58

def loopBody125_60 : HolLoopProg 64 :=
.seq loopBody125_59 loopBody125_1

def loopBody125_61 : HolLoopProg 64 :=
.mark loopBody125_60

def loopBody125_62 : HolLoopProg 64 :=
.seq loopBody125_57 loopBody125_61

def loopBody125_63 : HolLoopProg 64 :=
.mark loopBody125_62

def loopBody125_64 : HolLoopProg 64 :=
.seq loopBody125_63 loopBody125_1

def loopBody125_65 : HolLoopProg 64 :=
.mark loopBody125_64

def loopBody125_66 : HolLoopProg 64 :=
.seq loopBody125_55 loopBody125_65

def loopBody125_67 : HolLoopProg 64 :=
.mark loopBody125_66

def loopBody125_68 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_67

def loopBody125_69 : HolLoopProg 64 :=
.mark loopBody125_68

def loopBody125_70 : HolLoopProg 64 :=
.seq loopBody125_53 loopBody125_69

def loopBody125_71 : HolLoopProg 64 :=
.mark loopBody125_70

def loopBody125_72 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_71

def loopBody125_73 : HolLoopProg 64 :=
.mark loopBody125_72

def loopBody125_74 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 8#64])

def loopBody125_75 : HolLoopProg 64 :=
.mark loopBody125_74

def loopBody125_76 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 2)

def loopBody125_77 : HolLoopProg 64 :=
.mark loopBody125_76

def loopBody125_78 : HolLoopProg 64 :=
.seq loopBody125_77 loopBody125_65

def loopBody125_79 : HolLoopProg 64 :=
.mark loopBody125_78

def loopBody125_80 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_79

def loopBody125_81 : HolLoopProg 64 :=
.mark loopBody125_80

def loopBody125_82 : HolLoopProg 64 :=
.seq loopBody125_75 loopBody125_81

def loopBody125_83 : HolLoopProg 64 :=
.mark loopBody125_82

def loopBody125_84 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_83

def loopBody125_85 : HolLoopProg 64 :=
.mark loopBody125_84

def loopBody125_86 : HolLoopProg 64 :=
.seq loopBody125_73 loopBody125_85

def loopBody125_87 : HolLoopProg 64 :=
.mark loopBody125_86

def loopBody125_88 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64]))

def loopBody125_89 : HolLoopProg 64 :=
.mark loopBody125_88

def loopBody125_90 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 16#64])

def loopBody125_91 : HolLoopProg 64 :=
.mark loopBody125_90

def loopBody125_92 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 7)

def loopBody125_93 : HolLoopProg 64 :=
.mark loopBody125_92

def loopBody125_94 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.var 9)

def loopBody125_95 : HolLoopProg 64 :=
.mark loopBody125_94

def loopBody125_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 8) 10

def loopBody125_97 : HolLoopProg 64 :=
.mark loopBody125_96

def loopBody125_98 : HolLoopProg 64 :=
.seq loopBody125_97 loopBody125_1

def loopBody125_99 : HolLoopProg 64 :=
.mark loopBody125_98

def loopBody125_100 : HolLoopProg 64 :=
.seq loopBody125_95 loopBody125_99

def loopBody125_101 : HolLoopProg 64 :=
.mark loopBody125_100

def loopBody125_102 : HolLoopProg 64 :=
.seq loopBody125_101 loopBody125_1

def loopBody125_103 : HolLoopProg 64 :=
.mark loopBody125_102

def loopBody125_104 : HolLoopProg 64 :=
.seq loopBody125_93 loopBody125_103

def loopBody125_105 : HolLoopProg 64 :=
.mark loopBody125_104

def loopBody125_106 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_105

def loopBody125_107 : HolLoopProg 64 :=
.mark loopBody125_106

def loopBody125_108 : HolLoopProg 64 :=
.seq loopBody125_91 loopBody125_107

def loopBody125_109 : HolLoopProg 64 :=
.mark loopBody125_108

def loopBody125_110 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_109

def loopBody125_111 : HolLoopProg 64 :=
.mark loopBody125_110

def loopBody125_112 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 6,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 3) (Flapjack.HolLoopExp.const 5#64),
      Flapjack.HolLoopExp.const 24#64])

def loopBody125_113 : HolLoopProg 64 :=
.mark loopBody125_112

def loopBody125_114 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 4) (Flapjack.HolLoopExp.const 3#64))

def loopBody125_115 : HolLoopProg 64 :=
.mark loopBody125_114

def loopBody125_116 : HolLoopProg 64 :=
.seq loopBody125_115 loopBody125_103

def loopBody125_117 : HolLoopProg 64 :=
.mark loopBody125_116

def loopBody125_118 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_117

def loopBody125_119 : HolLoopProg 64 :=
.mark loopBody125_118

def loopBody125_120 : HolLoopProg 64 :=
.seq loopBody125_113 loopBody125_119

def loopBody125_121 : HolLoopProg 64 :=
.mark loopBody125_120

def loopBody125_122 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_121

def loopBody125_123 : HolLoopProg 64 :=
.mark loopBody125_122

def loopBody125_124 : HolLoopProg 64 :=
.seq loopBody125_111 loopBody125_123

def loopBody125_125 : HolLoopProg 64 :=
.mark loopBody125_124

def loopBody125_126 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.load
        (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 48#64]),
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl (Flapjack.HolLoopExp.var 7) (Flapjack.HolLoopExp.const 3#64)])

def loopBody125_127 : HolLoopProg 64 :=
.mark loopBody125_126

def loopBody125_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9 (Flapjack.HolLoopExp.var 3)

def loopBody125_129 : HolLoopProg 64 :=
.mark loopBody125_128

def loopBody125_130 : HolLoopProg 64 :=
.seq loopBody125_129 loopBody125_103

def loopBody125_131 : HolLoopProg 64 :=
.mark loopBody125_130

def loopBody125_132 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_131

def loopBody125_133 : HolLoopProg 64 :=
.mark loopBody125_132

def loopBody125_134 : HolLoopProg 64 :=
.seq loopBody125_127 loopBody125_133

def loopBody125_135 : HolLoopProg 64 :=
.mark loopBody125_134

def loopBody125_136 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_135

def loopBody125_137 : HolLoopProg 64 :=
.mark loopBody125_136

def loopBody125_138 : HolLoopProg 64 :=
.seq loopBody125_125 loopBody125_137

def loopBody125_139 : HolLoopProg 64 :=
.mark loopBody125_138

def loopBody125_140 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 0, Flapjack.HolLoopExp.const 24#64])

def loopBody125_141 : HolLoopProg 64 :=
.mark loopBody125_140

def loopBody125_142 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 7, Flapjack.HolLoopExp.const 1#64])

def loopBody125_143 : HolLoopProg 64 :=
.mark loopBody125_142

def loopBody125_144 : HolLoopProg 64 :=
.seq loopBody125_143 loopBody125_103

def loopBody125_145 : HolLoopProg 64 :=
.mark loopBody125_144

def loopBody125_146 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_145

def loopBody125_147 : HolLoopProg 64 :=
.mark loopBody125_146

def loopBody125_148 : HolLoopProg 64 :=
.seq loopBody125_141 loopBody125_147

def loopBody125_149 : HolLoopProg 64 :=
.mark loopBody125_148

def loopBody125_150 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_149

def loopBody125_151 : HolLoopProg 64 :=
.mark loopBody125_150

def loopBody125_152 : HolLoopProg 64 :=
.seq loopBody125_139 loopBody125_151

def loopBody125_153 : HolLoopProg 64 :=
.mark loopBody125_152

def loopBody125_154 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8 (Flapjack.HolLoopExp.var 3)

def loopBody125_155 : HolLoopProg 64 :=
.mark loopBody125_154

def loopBody125_156 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [8]

def loopBody125_157 : HolLoopProg 64 :=
.mark loopBody125_156

def loopBody125_158 : HolLoopProg 64 :=
.seq loopBody125_157 loopBody125_1

def loopBody125_159 : HolLoopProg 64 :=
.mark loopBody125_158

def loopBody125_160 : HolLoopProg 64 :=
.seq loopBody125_155 loopBody125_159

def loopBody125_161 : HolLoopProg 64 :=
.mark loopBody125_160

def loopBody125_162 : HolLoopProg 64 :=
.seq loopBody125_153 loopBody125_161

def loopBody125_163 : HolLoopProg 64 :=
.mark loopBody125_162

def loopBody125_164 : HolLoopProg 64 :=
.seq loopBody125_89 loopBody125_163

def loopBody125_165 : HolLoopProg 64 :=
.mark loopBody125_164

def loopBody125_166 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_165

def loopBody125_167 : HolLoopProg 64 :=
.mark loopBody125_166

def loopBody125_168 : HolLoopProg 64 :=
.seq loopBody125_87 loopBody125_167

def loopBody125_169 : HolLoopProg 64 :=
.mark loopBody125_168

def loopBody125_170 : HolLoopProg 64 :=
.seq loopBody125_51 loopBody125_169

def loopBody125_171 : HolLoopProg 64 :=
.mark loopBody125_170

def loopBody125_172 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_171

def loopBody125_173 : HolLoopProg 64 :=
.mark loopBody125_172

def loopBody125_174 : HolLoopProg 64 :=
.seq loopBody125_49 loopBody125_173

def loopBody125_175 : HolLoopProg 64 :=
.mark loopBody125_174

def loopBody125_176 : HolLoopProg 64 :=
.seq loopBody125_15 loopBody125_175

def loopBody125_177 : HolLoopProg 64 :=
.mark loopBody125_176

def loopBody125_178 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_177

def loopBody125_179 : HolLoopProg 64 :=
.mark loopBody125_178

def loopBody125_180 : HolLoopProg 64 :=
.seq loopBody125_13 loopBody125_179

def loopBody125_181 : HolLoopProg 64 :=
.mark loopBody125_180

def loopBody125_182 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_181

def loopBody125_183 : HolLoopProg 64 :=
.mark loopBody125_182

def loopBody125_184 : HolLoopProg 64 :=
.seq loopBody125_11 loopBody125_183

def loopBody125_185 : HolLoopProg 64 :=
.mark loopBody125_184

def loopBody125_186 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_185

def loopBody125_187 : HolLoopProg 64 :=
.mark loopBody125_186

def loopBody125_188 : HolLoopProg 64 :=
.seq loopBody125_1 loopBody125_187

def loopBody125_189 : HolLoopProg 64 :=
.mark loopBody125_188

def output125 : Nat × List Nat × HolLoopProg 64 :=
  (189, [0, 1, 2], loopBody125_189)
end InitECandidate.Proofs.FrontendStages.Loop
