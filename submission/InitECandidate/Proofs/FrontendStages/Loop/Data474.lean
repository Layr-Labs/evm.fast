import InitECandidate.Proofs.FrontendStages.Loop.Translate458
import InitECandidate.Proofs.FrontendStages.Loop.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Loop
def loopBody474_0 : HolLoopProg 64 :=
Flapjack.HolLoopProg.skip

def loopBody474_1 : HolLoopProg 64 :=
.mark loopBody474_0

def loopBody474_2 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 2
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 16#64]))

def loopBody474_3 : HolLoopProg 64 :=
.mark loopBody474_2

def loopBody474_4 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 3
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add
      [Flapjack.HolLoopExp.load
          (Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.topAddr, Flapjack.HolLoopExp.const 256#64]),
        Flapjack.HolLoopExp.const 8#64]))

def loopBody474_5 : HolLoopProg 64 :=
.mark loopBody474_4

def loopBody474_6 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 4
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
          [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64],
            Flapjack.HolLoopExp.var 0])
        (Flapjack.HolLoopExp.const 5#64)])

def loopBody474_7 : HolLoopProg 64 :=
.mark loopBody474_6

def loopBody474_8 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 5
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add
    [Flapjack.HolLoopExp.var 3,
      Flapjack.HolLoopExp.shift Flapjack.Shift.lsl
        (Flapjack.HolLoopExp.op Flapjack.BinOp.sub
          [Flapjack.HolLoopExp.op Flapjack.BinOp.sub [Flapjack.HolLoopExp.var 2, Flapjack.HolLoopExp.const 1#64],
            Flapjack.HolLoopExp.var 1])
        (Flapjack.HolLoopExp.const 5#64)])

def loopBody474_9 : HolLoopProg 64 :=
.mark loopBody474_8

def loopBody474_10 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 6 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 4))

def loopBody474_11 : HolLoopProg 64 :=
.mark loopBody474_10

def loopBody474_12 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 7
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 8#64]))

def loopBody474_13 : HolLoopProg 64 :=
.mark loopBody474_12

def loopBody474_14 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 8
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 16#64]))

def loopBody474_15 : HolLoopProg 64 :=
.mark loopBody474_14

def loopBody474_16 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 9
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 4, Flapjack.HolLoopExp.const 24#64]))

def loopBody474_17 : HolLoopProg 64 :=
.mark loopBody474_16

def loopBody474_18 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 10 (Flapjack.HolLoopExp.load (Flapjack.HolLoopExp.var 5))

def loopBody474_19 : HolLoopProg 64 :=
.mark loopBody474_18

def loopBody474_20 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 11
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 8#64]))

def loopBody474_21 : HolLoopProg 64 :=
.mark loopBody474_20

def loopBody474_22 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 12
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 16#64]))

def loopBody474_23 : HolLoopProg 64 :=
.mark loopBody474_22

def loopBody474_24 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 13
  (Flapjack.HolLoopExp.load
    (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 5, Flapjack.HolLoopExp.const 24#64]))

def loopBody474_25 : HolLoopProg 64 :=
.mark loopBody474_24

def loopBody474_26 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 4)

def loopBody474_27 : HolLoopProg 64 :=
.mark loopBody474_26

def loopBody474_28 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 10)

def loopBody474_29 : HolLoopProg 64 :=
.mark loopBody474_28

def loopBody474_30 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 11)

def loopBody474_31 : HolLoopProg 64 :=
.mark loopBody474_30

def loopBody474_32 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 12)

def loopBody474_33 : HolLoopProg 64 :=
.mark loopBody474_32

def loopBody474_34 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 13)

def loopBody474_35 : HolLoopProg 64 :=
.mark loopBody474_34

def loopBody474_36 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 15)

def loopBody474_37 : HolLoopProg 64 :=
.mark loopBody474_36

def loopBody474_38 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store (Flapjack.HolLoopExp.var 14) 19

def loopBody474_39 : HolLoopProg 64 :=
.mark loopBody474_38

def loopBody474_40 : HolLoopProg 64 :=
.seq loopBody474_39 loopBody474_1

def loopBody474_41 : HolLoopProg 64 :=
.mark loopBody474_40

def loopBody474_42 : HolLoopProg 64 :=
.seq loopBody474_37 loopBody474_41

def loopBody474_43 : HolLoopProg 64 :=
.mark loopBody474_42

def loopBody474_44 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 16)

def loopBody474_45 : HolLoopProg 64 :=
.mark loopBody474_44

def loopBody474_46 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 14, Flapjack.HolLoopExp.const 8#64]) 19

def loopBody474_47 : HolLoopProg 64 :=
.mark loopBody474_46

def loopBody474_48 : HolLoopProg 64 :=
.seq loopBody474_47 loopBody474_1

def loopBody474_49 : HolLoopProg 64 :=
.mark loopBody474_48

def loopBody474_50 : HolLoopProg 64 :=
.seq loopBody474_45 loopBody474_49

def loopBody474_51 : HolLoopProg 64 :=
.mark loopBody474_50

def loopBody474_52 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 17)

def loopBody474_53 : HolLoopProg 64 :=
.mark loopBody474_52

def loopBody474_54 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 14, Flapjack.HolLoopExp.const 16#64]) 19

def loopBody474_55 : HolLoopProg 64 :=
.mark loopBody474_54

def loopBody474_56 : HolLoopProg 64 :=
.seq loopBody474_55 loopBody474_1

def loopBody474_57 : HolLoopProg 64 :=
.mark loopBody474_56

def loopBody474_58 : HolLoopProg 64 :=
.seq loopBody474_53 loopBody474_57

def loopBody474_59 : HolLoopProg 64 :=
.mark loopBody474_58

def loopBody474_60 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 19 (Flapjack.HolLoopExp.var 18)

def loopBody474_61 : HolLoopProg 64 :=
.mark loopBody474_60

def loopBody474_62 : HolLoopProg 64 :=
Flapjack.HolLoopProg.store
  (Flapjack.HolLoopExp.op Flapjack.BinOp.add [Flapjack.HolLoopExp.var 14, Flapjack.HolLoopExp.const 24#64]) 19

def loopBody474_63 : HolLoopProg 64 :=
.mark loopBody474_62

def loopBody474_64 : HolLoopProg 64 :=
.seq loopBody474_63 loopBody474_1

def loopBody474_65 : HolLoopProg 64 :=
.mark loopBody474_64

def loopBody474_66 : HolLoopProg 64 :=
.seq loopBody474_61 loopBody474_65

def loopBody474_67 : HolLoopProg 64 :=
.mark loopBody474_66

def loopBody474_68 : HolLoopProg 64 :=
.seq loopBody474_67 loopBody474_1

def loopBody474_69 : HolLoopProg 64 :=
.mark loopBody474_68

def loopBody474_70 : HolLoopProg 64 :=
.seq loopBody474_59 loopBody474_69

def loopBody474_71 : HolLoopProg 64 :=
.mark loopBody474_70

def loopBody474_72 : HolLoopProg 64 :=
.seq loopBody474_51 loopBody474_71

def loopBody474_73 : HolLoopProg 64 :=
.mark loopBody474_72

def loopBody474_74 : HolLoopProg 64 :=
.seq loopBody474_43 loopBody474_73

def loopBody474_75 : HolLoopProg 64 :=
.mark loopBody474_74

def loopBody474_76 : HolLoopProg 64 :=
.seq loopBody474_35 loopBody474_75

def loopBody474_77 : HolLoopProg 64 :=
.mark loopBody474_76

def loopBody474_78 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_77

def loopBody474_79 : HolLoopProg 64 :=
.mark loopBody474_78

def loopBody474_80 : HolLoopProg 64 :=
.seq loopBody474_33 loopBody474_79

def loopBody474_81 : HolLoopProg 64 :=
.mark loopBody474_80

def loopBody474_82 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_81

def loopBody474_83 : HolLoopProg 64 :=
.mark loopBody474_82

def loopBody474_84 : HolLoopProg 64 :=
.seq loopBody474_31 loopBody474_83

def loopBody474_85 : HolLoopProg 64 :=
.mark loopBody474_84

def loopBody474_86 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_85

def loopBody474_87 : HolLoopProg 64 :=
.mark loopBody474_86

def loopBody474_88 : HolLoopProg 64 :=
.seq loopBody474_29 loopBody474_87

def loopBody474_89 : HolLoopProg 64 :=
.mark loopBody474_88

def loopBody474_90 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_89

def loopBody474_91 : HolLoopProg 64 :=
.mark loopBody474_90

def loopBody474_92 : HolLoopProg 64 :=
.seq loopBody474_27 loopBody474_91

def loopBody474_93 : HolLoopProg 64 :=
.mark loopBody474_92

def loopBody474_94 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_93

def loopBody474_95 : HolLoopProg 64 :=
.mark loopBody474_94

def loopBody474_96 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.var 5)

def loopBody474_97 : HolLoopProg 64 :=
.mark loopBody474_96

def loopBody474_98 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 15 (Flapjack.HolLoopExp.var 6)

def loopBody474_99 : HolLoopProg 64 :=
.mark loopBody474_98

def loopBody474_100 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 16 (Flapjack.HolLoopExp.var 7)

def loopBody474_101 : HolLoopProg 64 :=
.mark loopBody474_100

def loopBody474_102 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 17 (Flapjack.HolLoopExp.var 8)

def loopBody474_103 : HolLoopProg 64 :=
.mark loopBody474_102

def loopBody474_104 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 18 (Flapjack.HolLoopExp.var 9)

def loopBody474_105 : HolLoopProg 64 :=
.mark loopBody474_104

def loopBody474_106 : HolLoopProg 64 :=
.seq loopBody474_105 loopBody474_75

def loopBody474_107 : HolLoopProg 64 :=
.mark loopBody474_106

def loopBody474_108 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_107

def loopBody474_109 : HolLoopProg 64 :=
.mark loopBody474_108

def loopBody474_110 : HolLoopProg 64 :=
.seq loopBody474_103 loopBody474_109

def loopBody474_111 : HolLoopProg 64 :=
.mark loopBody474_110

def loopBody474_112 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_111

def loopBody474_113 : HolLoopProg 64 :=
.mark loopBody474_112

def loopBody474_114 : HolLoopProg 64 :=
.seq loopBody474_101 loopBody474_113

def loopBody474_115 : HolLoopProg 64 :=
.mark loopBody474_114

def loopBody474_116 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_115

def loopBody474_117 : HolLoopProg 64 :=
.mark loopBody474_116

def loopBody474_118 : HolLoopProg 64 :=
.seq loopBody474_99 loopBody474_117

def loopBody474_119 : HolLoopProg 64 :=
.mark loopBody474_118

def loopBody474_120 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_119

def loopBody474_121 : HolLoopProg 64 :=
.mark loopBody474_120

def loopBody474_122 : HolLoopProg 64 :=
.seq loopBody474_97 loopBody474_121

def loopBody474_123 : HolLoopProg 64 :=
.mark loopBody474_122

def loopBody474_124 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_123

def loopBody474_125 : HolLoopProg 64 :=
.mark loopBody474_124

def loopBody474_126 : HolLoopProg 64 :=
.seq loopBody474_95 loopBody474_125

def loopBody474_127 : HolLoopProg 64 :=
.mark loopBody474_126

def loopBody474_128 : HolLoopProg 64 :=
Flapjack.HolLoopProg.assign 14 (Flapjack.HolLoopExp.const 0#64)

def loopBody474_129 : HolLoopProg 64 :=
.mark loopBody474_128

def loopBody474_130 : HolLoopProg 64 :=
Flapjack.HolLoopProg.return [14]

def loopBody474_131 : HolLoopProg 64 :=
.mark loopBody474_130

def loopBody474_132 : HolLoopProg 64 :=
.seq loopBody474_131 loopBody474_1

def loopBody474_133 : HolLoopProg 64 :=
.mark loopBody474_132

def loopBody474_134 : HolLoopProg 64 :=
.seq loopBody474_129 loopBody474_133

def loopBody474_135 : HolLoopProg 64 :=
.mark loopBody474_134

def loopBody474_136 : HolLoopProg 64 :=
.seq loopBody474_127 loopBody474_135

def loopBody474_137 : HolLoopProg 64 :=
.mark loopBody474_136

def loopBody474_138 : HolLoopProg 64 :=
.seq loopBody474_25 loopBody474_137

def loopBody474_139 : HolLoopProg 64 :=
.mark loopBody474_138

def loopBody474_140 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_139

def loopBody474_141 : HolLoopProg 64 :=
.mark loopBody474_140

def loopBody474_142 : HolLoopProg 64 :=
.seq loopBody474_23 loopBody474_141

def loopBody474_143 : HolLoopProg 64 :=
.mark loopBody474_142

def loopBody474_144 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_143

def loopBody474_145 : HolLoopProg 64 :=
.mark loopBody474_144

def loopBody474_146 : HolLoopProg 64 :=
.seq loopBody474_21 loopBody474_145

def loopBody474_147 : HolLoopProg 64 :=
.mark loopBody474_146

def loopBody474_148 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_147

def loopBody474_149 : HolLoopProg 64 :=
.mark loopBody474_148

def loopBody474_150 : HolLoopProg 64 :=
.seq loopBody474_19 loopBody474_149

def loopBody474_151 : HolLoopProg 64 :=
.mark loopBody474_150

def loopBody474_152 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_151

def loopBody474_153 : HolLoopProg 64 :=
.mark loopBody474_152

def loopBody474_154 : HolLoopProg 64 :=
.seq loopBody474_17 loopBody474_153

def loopBody474_155 : HolLoopProg 64 :=
.mark loopBody474_154

def loopBody474_156 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_155

def loopBody474_157 : HolLoopProg 64 :=
.mark loopBody474_156

def loopBody474_158 : HolLoopProg 64 :=
.seq loopBody474_15 loopBody474_157

def loopBody474_159 : HolLoopProg 64 :=
.mark loopBody474_158

def loopBody474_160 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_159

def loopBody474_161 : HolLoopProg 64 :=
.mark loopBody474_160

def loopBody474_162 : HolLoopProg 64 :=
.seq loopBody474_13 loopBody474_161

def loopBody474_163 : HolLoopProg 64 :=
.mark loopBody474_162

def loopBody474_164 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_163

def loopBody474_165 : HolLoopProg 64 :=
.mark loopBody474_164

def loopBody474_166 : HolLoopProg 64 :=
.seq loopBody474_11 loopBody474_165

def loopBody474_167 : HolLoopProg 64 :=
.mark loopBody474_166

def loopBody474_168 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_167

def loopBody474_169 : HolLoopProg 64 :=
.mark loopBody474_168

def loopBody474_170 : HolLoopProg 64 :=
.seq loopBody474_9 loopBody474_169

def loopBody474_171 : HolLoopProg 64 :=
.mark loopBody474_170

def loopBody474_172 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_171

def loopBody474_173 : HolLoopProg 64 :=
.mark loopBody474_172

def loopBody474_174 : HolLoopProg 64 :=
.seq loopBody474_7 loopBody474_173

def loopBody474_175 : HolLoopProg 64 :=
.mark loopBody474_174

def loopBody474_176 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_175

def loopBody474_177 : HolLoopProg 64 :=
.mark loopBody474_176

def loopBody474_178 : HolLoopProg 64 :=
.seq loopBody474_5 loopBody474_177

def loopBody474_179 : HolLoopProg 64 :=
.mark loopBody474_178

def loopBody474_180 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_179

def loopBody474_181 : HolLoopProg 64 :=
.mark loopBody474_180

def loopBody474_182 : HolLoopProg 64 :=
.seq loopBody474_3 loopBody474_181

def loopBody474_183 : HolLoopProg 64 :=
.mark loopBody474_182

def loopBody474_184 : HolLoopProg 64 :=
.seq loopBody474_1 loopBody474_183

def loopBody474_185 : HolLoopProg 64 :=
.mark loopBody474_184

def output474 : Nat × List Nat × HolLoopProg 64 :=
  (538, [0, 1], loopBody474_185)
end InitECandidate.Proofs.FrontendStages.Loop
