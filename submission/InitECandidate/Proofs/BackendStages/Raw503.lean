import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function503
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody503_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody503_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody503_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1580#64)

def rawBody503_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_5 : StackLang.HolProg 64 :=
.seq rawBody503_3 rawBody503_4

def rawBody503_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody503_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody503_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 3

def rawBody503_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody503_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody503_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody503_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody503_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_16 : StackLang.HolProg 64 :=
.seq rawBody503_14 rawBody503_15

def rawBody503_17 : StackLang.HolProg 64 :=
.seq rawBody503_13 rawBody503_16

def rawBody503_18 : StackLang.HolProg 64 :=
.seq rawBody503_12 rawBody503_17

def rawBody503_19 : StackLang.HolProg 64 :=
.seq rawBody503_11 rawBody503_18

def rawBody503_20 : StackLang.HolProg 64 :=
.seq rawBody503_10 rawBody503_19

def rawBody503_21 : StackLang.HolProg 64 :=
.seq rawBody503_9 rawBody503_20

def rawBody503_22 : StackLang.HolProg 64 :=
.seq rawBody503_8 rawBody503_21

def rawBody503_23 : StackLang.HolProg 64 :=
.seq rawBody503_7 rawBody503_22

def rawBody503_24 : StackLang.HolProg 64 :=
.seq rawBody503_6 rawBody503_23

def rawBody503_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody503_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody503_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody503_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody503_32 : StackLang.HolProg 64 :=
.seq rawBody503_30 rawBody503_31

def rawBody503_33 : StackLang.HolProg 64 :=
.seq rawBody503_29 rawBody503_32

def rawBody503_34 : StackLang.HolProg 64 :=
.seq rawBody503_28 rawBody503_33

def rawBody503_35 : StackLang.HolProg 64 :=
.seq rawBody503_27 rawBody503_34

def rawBody503_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody503_38 : StackLang.HolProg 64 :=
.seq rawBody503_36 rawBody503_37

def rawBody503_39 : StackLang.HolProg 64 :=
.call (some (rawBody503_35, 0, 503, 2)) (Sum.inl 475) (some (rawBody503_38, 503, 3))

def rawBody503_40 : StackLang.HolProg 64 :=
.seq rawBody503_26 rawBody503_39

def rawBody503_41 : StackLang.HolProg 64 :=
.seq rawBody503_25 rawBody503_40

def rawBody503_42 : StackLang.HolProg 64 :=
.seq rawBody503_24 rawBody503_41

def rawBody503_43 : StackLang.HolProg 64 :=
.seq rawBody503_5 rawBody503_42

def rawBody503_44 : StackLang.HolProg 64 :=
.seq rawBody503_2 rawBody503_43

def rawBody503_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody503_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody503_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody503_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody503_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody503_50 : StackLang.HolProg 64 :=
.seq rawBody503_48 rawBody503_49

def rawBody503_51 : StackLang.HolProg 64 :=
.seq rawBody503_47 rawBody503_50

def rawBody503_52 : StackLang.HolProg 64 :=
.seq rawBody503_46 rawBody503_51

def rawBody503_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1581#64)

def rawBody503_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_56 : StackLang.HolProg 64 :=
.seq rawBody503_54 rawBody503_55

def rawBody503_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody503_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody503_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 5

def rawBody503_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody503_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody503_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody503_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody503_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_67 : StackLang.HolProg 64 :=
.seq rawBody503_65 rawBody503_66

def rawBody503_68 : StackLang.HolProg 64 :=
.seq rawBody503_64 rawBody503_67

def rawBody503_69 : StackLang.HolProg 64 :=
.seq rawBody503_63 rawBody503_68

def rawBody503_70 : StackLang.HolProg 64 :=
.seq rawBody503_62 rawBody503_69

def rawBody503_71 : StackLang.HolProg 64 :=
.seq rawBody503_61 rawBody503_70

def rawBody503_72 : StackLang.HolProg 64 :=
.seq rawBody503_60 rawBody503_71

def rawBody503_73 : StackLang.HolProg 64 :=
.seq rawBody503_59 rawBody503_72

def rawBody503_74 : StackLang.HolProg 64 :=
.seq rawBody503_58 rawBody503_73

def rawBody503_75 : StackLang.HolProg 64 :=
.seq rawBody503_57 rawBody503_74

def rawBody503_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody503_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody503_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody503_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody503_83 : StackLang.HolProg 64 :=
.seq rawBody503_81 rawBody503_82

def rawBody503_84 : StackLang.HolProg 64 :=
.seq rawBody503_80 rawBody503_83

def rawBody503_85 : StackLang.HolProg 64 :=
.seq rawBody503_79 rawBody503_84

def rawBody503_86 : StackLang.HolProg 64 :=
.seq rawBody503_78 rawBody503_85

def rawBody503_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody503_89 : StackLang.HolProg 64 :=
.seq rawBody503_87 rawBody503_88

def rawBody503_90 : StackLang.HolProg 64 :=
.call (some (rawBody503_86, 0, 503, 4)) (Sum.inl 475) (some (rawBody503_89, 503, 5))

def rawBody503_91 : StackLang.HolProg 64 :=
.seq rawBody503_77 rawBody503_90

def rawBody503_92 : StackLang.HolProg 64 :=
.seq rawBody503_76 rawBody503_91

def rawBody503_93 : StackLang.HolProg 64 :=
.seq rawBody503_75 rawBody503_92

def rawBody503_94 : StackLang.HolProg 64 :=
.seq rawBody503_56 rawBody503_93

def rawBody503_95 : StackLang.HolProg 64 :=
.seq rawBody503_53 rawBody503_94

def rawBody503_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody503_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody503_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody503_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody503_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody503_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody503_102 : StackLang.HolProg 64 :=
.seq rawBody503_100 rawBody503_101

def rawBody503_103 : StackLang.HolProg 64 :=
.seq rawBody503_99 rawBody503_102

def rawBody503_104 : StackLang.HolProg 64 :=
.seq rawBody503_98 rawBody503_103

def rawBody503_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1582#64)

def rawBody503_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_108 : StackLang.HolProg 64 :=
.seq rawBody503_106 rawBody503_107

def rawBody503_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody503_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody503_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 7

def rawBody503_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody503_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody503_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody503_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody503_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_119 : StackLang.HolProg 64 :=
.seq rawBody503_117 rawBody503_118

def rawBody503_120 : StackLang.HolProg 64 :=
.seq rawBody503_116 rawBody503_119

def rawBody503_121 : StackLang.HolProg 64 :=
.seq rawBody503_115 rawBody503_120

def rawBody503_122 : StackLang.HolProg 64 :=
.seq rawBody503_114 rawBody503_121

def rawBody503_123 : StackLang.HolProg 64 :=
.seq rawBody503_113 rawBody503_122

def rawBody503_124 : StackLang.HolProg 64 :=
.seq rawBody503_112 rawBody503_123

def rawBody503_125 : StackLang.HolProg 64 :=
.seq rawBody503_111 rawBody503_124

def rawBody503_126 : StackLang.HolProg 64 :=
.seq rawBody503_110 rawBody503_125

def rawBody503_127 : StackLang.HolProg 64 :=
.seq rawBody503_109 rawBody503_126

def rawBody503_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody503_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody503_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody503_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody503_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody503_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody503_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody503_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody503_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody503_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody503_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody503_142 : StackLang.HolProg 64 :=
.seq rawBody503_140 rawBody503_141

def rawBody503_143 : StackLang.HolProg 64 :=
.seq rawBody503_139 rawBody503_142

def rawBody503_144 : StackLang.HolProg 64 :=
.seq rawBody503_138 rawBody503_143

def rawBody503_145 : StackLang.HolProg 64 :=
.seq rawBody503_137 rawBody503_144

def rawBody503_146 : StackLang.HolProg 64 :=
.seq rawBody503_136 rawBody503_145

def rawBody503_147 : StackLang.HolProg 64 :=
.seq rawBody503_135 rawBody503_146

def rawBody503_148 : StackLang.HolProg 64 :=
.seq rawBody503_134 rawBody503_147

def rawBody503_149 : StackLang.HolProg 64 :=
.seq rawBody503_133 rawBody503_148

def rawBody503_150 : StackLang.HolProg 64 :=
.seq rawBody503_132 rawBody503_149

def rawBody503_151 : StackLang.HolProg 64 :=
.seq rawBody503_131 rawBody503_150

def rawBody503_152 : StackLang.HolProg 64 :=
.seq rawBody503_130 rawBody503_151

def rawBody503_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody503_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody503_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody503_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody503_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody503_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody503_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody503_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody503_161 : StackLang.HolProg 64 :=
.seq rawBody503_159 rawBody503_160

def rawBody503_162 : StackLang.HolProg 64 :=
.seq rawBody503_158 rawBody503_161

def rawBody503_163 : StackLang.HolProg 64 :=
.seq rawBody503_157 rawBody503_162

def rawBody503_164 : StackLang.HolProg 64 :=
.seq rawBody503_156 rawBody503_163

def rawBody503_165 : StackLang.HolProg 64 :=
.seq rawBody503_155 rawBody503_164

def rawBody503_166 : StackLang.HolProg 64 :=
.seq rawBody503_154 rawBody503_165

def rawBody503_167 : StackLang.HolProg 64 :=
.seq rawBody503_153 rawBody503_166

def rawBody503_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody503_169 : StackLang.HolProg 64 :=
.seq rawBody503_167 rawBody503_168

def rawBody503_170 : StackLang.HolProg 64 :=
.call (some (rawBody503_152, 0, 503, 6)) (Sum.inl 470) (some (rawBody503_169, 503, 7))

def rawBody503_171 : StackLang.HolProg 64 :=
.seq rawBody503_129 rawBody503_170

def rawBody503_172 : StackLang.HolProg 64 :=
.seq rawBody503_128 rawBody503_171

def rawBody503_173 : StackLang.HolProg 64 :=
.seq rawBody503_127 rawBody503_172

def rawBody503_174 : StackLang.HolProg 64 :=
.seq rawBody503_108 rawBody503_173

def rawBody503_175 : StackLang.HolProg 64 :=
.seq rawBody503_105 rawBody503_174

def rawBody503_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody503_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody503_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1583#64)

def rawBody503_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_181 : StackLang.HolProg 64 :=
.seq rawBody503_179 rawBody503_180

def rawBody503_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody503_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody503_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 9

def rawBody503_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody503_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody503_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody503_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody503_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_192 : StackLang.HolProg 64 :=
.seq rawBody503_190 rawBody503_191

def rawBody503_193 : StackLang.HolProg 64 :=
.seq rawBody503_189 rawBody503_192

def rawBody503_194 : StackLang.HolProg 64 :=
.seq rawBody503_188 rawBody503_193

def rawBody503_195 : StackLang.HolProg 64 :=
.seq rawBody503_187 rawBody503_194

def rawBody503_196 : StackLang.HolProg 64 :=
.seq rawBody503_186 rawBody503_195

def rawBody503_197 : StackLang.HolProg 64 :=
.seq rawBody503_185 rawBody503_196

def rawBody503_198 : StackLang.HolProg 64 :=
.seq rawBody503_184 rawBody503_197

def rawBody503_199 : StackLang.HolProg 64 :=
.seq rawBody503_183 rawBody503_198

def rawBody503_200 : StackLang.HolProg 64 :=
.seq rawBody503_182 rawBody503_199

def rawBody503_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody503_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody503_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody503_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody503_208 : StackLang.HolProg 64 :=
.seq rawBody503_206 rawBody503_207

def rawBody503_209 : StackLang.HolProg 64 :=
.seq rawBody503_205 rawBody503_208

def rawBody503_210 : StackLang.HolProg 64 :=
.seq rawBody503_204 rawBody503_209

def rawBody503_211 : StackLang.HolProg 64 :=
.seq rawBody503_203 rawBody503_210

def rawBody503_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody503_214 : StackLang.HolProg 64 :=
.seq rawBody503_212 rawBody503_213

def rawBody503_215 : StackLang.HolProg 64 :=
.call (some (rawBody503_211, 0, 503, 8)) (Sum.inl 134) (some (rawBody503_214, 503, 9))

def rawBody503_216 : StackLang.HolProg 64 :=
.seq rawBody503_202 rawBody503_215

def rawBody503_217 : StackLang.HolProg 64 :=
.seq rawBody503_201 rawBody503_216

def rawBody503_218 : StackLang.HolProg 64 :=
.seq rawBody503_200 rawBody503_217

def rawBody503_219 : StackLang.HolProg 64 :=
.seq rawBody503_181 rawBody503_218

def rawBody503_220 : StackLang.HolProg 64 :=
.seq rawBody503_178 rawBody503_219

def rawBody503_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody503_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody503_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1584#64)

def rawBody503_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_226 : StackLang.HolProg 64 :=
.seq rawBody503_224 rawBody503_225

def rawBody503_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody503_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody503_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 11

def rawBody503_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody503_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody503_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody503_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody503_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_237 : StackLang.HolProg 64 :=
.seq rawBody503_235 rawBody503_236

def rawBody503_238 : StackLang.HolProg 64 :=
.seq rawBody503_234 rawBody503_237

def rawBody503_239 : StackLang.HolProg 64 :=
.seq rawBody503_233 rawBody503_238

def rawBody503_240 : StackLang.HolProg 64 :=
.seq rawBody503_232 rawBody503_239

def rawBody503_241 : StackLang.HolProg 64 :=
.seq rawBody503_231 rawBody503_240

def rawBody503_242 : StackLang.HolProg 64 :=
.seq rawBody503_230 rawBody503_241

def rawBody503_243 : StackLang.HolProg 64 :=
.seq rawBody503_229 rawBody503_242

def rawBody503_244 : StackLang.HolProg 64 :=
.seq rawBody503_228 rawBody503_243

def rawBody503_245 : StackLang.HolProg 64 :=
.seq rawBody503_227 rawBody503_244

def rawBody503_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody503_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody503_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody503_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_253 : StackLang.HolProg 64 :=
.seq rawBody503_251 rawBody503_252

def rawBody503_254 : StackLang.HolProg 64 :=
.seq rawBody503_250 rawBody503_253

def rawBody503_255 : StackLang.HolProg 64 :=
.seq rawBody503_249 rawBody503_254

def rawBody503_256 : StackLang.HolProg 64 :=
.seq rawBody503_248 rawBody503_255

def rawBody503_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody503_259 : StackLang.HolProg 64 :=
.seq rawBody503_257 rawBody503_258

def rawBody503_260 : StackLang.HolProg 64 :=
.call (some (rawBody503_256, 0, 503, 10)) (Sum.inl 476) (some (rawBody503_259, 503, 11))

def rawBody503_261 : StackLang.HolProg 64 :=
.seq rawBody503_247 rawBody503_260

def rawBody503_262 : StackLang.HolProg 64 :=
.seq rawBody503_246 rawBody503_261

def rawBody503_263 : StackLang.HolProg 64 :=
.seq rawBody503_245 rawBody503_262

def rawBody503_264 : StackLang.HolProg 64 :=
.seq rawBody503_226 rawBody503_263

def rawBody503_265 : StackLang.HolProg 64 :=
.seq rawBody503_223 rawBody503_264

def rawBody503_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody503_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody503_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1585#64)

def rawBody503_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_272 : StackLang.HolProg 64 :=
.seq rawBody503_270 rawBody503_271

def rawBody503_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody503_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody503_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody503_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 503 13

def rawBody503_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody503_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody503_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody503_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody503_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_283 : StackLang.HolProg 64 :=
.seq rawBody503_281 rawBody503_282

def rawBody503_284 : StackLang.HolProg 64 :=
.seq rawBody503_280 rawBody503_283

def rawBody503_285 : StackLang.HolProg 64 :=
.seq rawBody503_279 rawBody503_284

def rawBody503_286 : StackLang.HolProg 64 :=
.seq rawBody503_278 rawBody503_285

def rawBody503_287 : StackLang.HolProg 64 :=
.seq rawBody503_277 rawBody503_286

def rawBody503_288 : StackLang.HolProg 64 :=
.seq rawBody503_276 rawBody503_287

def rawBody503_289 : StackLang.HolProg 64 :=
.seq rawBody503_275 rawBody503_288

def rawBody503_290 : StackLang.HolProg 64 :=
.seq rawBody503_274 rawBody503_289

def rawBody503_291 : StackLang.HolProg 64 :=
.seq rawBody503_273 rawBody503_290

def rawBody503_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody503_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody503_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody503_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody503_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody503_299 : StackLang.HolProg 64 :=
.seq rawBody503_297 rawBody503_298

def rawBody503_300 : StackLang.HolProg 64 :=
.seq rawBody503_296 rawBody503_299

def rawBody503_301 : StackLang.HolProg 64 :=
.seq rawBody503_295 rawBody503_300

def rawBody503_302 : StackLang.HolProg 64 :=
.seq rawBody503_294 rawBody503_301

def rawBody503_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody503_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody503_305 : StackLang.HolProg 64 :=
.seq rawBody503_303 rawBody503_304

def rawBody503_306 : StackLang.HolProg 64 :=
.call (some (rawBody503_302, 0, 503, 12)) (Sum.inl 490) (some (rawBody503_305, 503, 13))

def rawBody503_307 : StackLang.HolProg 64 :=
.seq rawBody503_293 rawBody503_306

def rawBody503_308 : StackLang.HolProg 64 :=
.seq rawBody503_292 rawBody503_307

def rawBody503_309 : StackLang.HolProg 64 :=
.seq rawBody503_291 rawBody503_308

def rawBody503_310 : StackLang.HolProg 64 :=
.seq rawBody503_272 rawBody503_309

def rawBody503_311 : StackLang.HolProg 64 :=
.seq rawBody503_269 rawBody503_310

def rawBody503_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody503_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody503_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody503_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody503_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody503_317 : StackLang.HolProg 64 :=
.seq rawBody503_315 rawBody503_316

def rawBody503_318 : StackLang.HolProg 64 :=
.seq rawBody503_314 rawBody503_317

def rawBody503_319 : StackLang.HolProg 64 :=
.seq rawBody503_313 rawBody503_318

def rawBody503_320 : StackLang.HolProg 64 :=
.seq rawBody503_312 rawBody503_319

def rawBody503_321 : StackLang.HolProg 64 :=
.seq rawBody503_311 rawBody503_320

def rawBody503_322 : StackLang.HolProg 64 :=
.seq rawBody503_268 rawBody503_321

def rawBody503_323 : StackLang.HolProg 64 :=
.seq rawBody503_267 rawBody503_322

def rawBody503_324 : StackLang.HolProg 64 :=
.seq rawBody503_266 rawBody503_323

def rawBody503_325 : StackLang.HolProg 64 :=
.seq rawBody503_265 rawBody503_324

def rawBody503_326 : StackLang.HolProg 64 :=
.seq rawBody503_222 rawBody503_325

def rawBody503_327 : StackLang.HolProg 64 :=
.seq rawBody503_221 rawBody503_326

def rawBody503_328 : StackLang.HolProg 64 :=
.seq rawBody503_220 rawBody503_327

def rawBody503_329 : StackLang.HolProg 64 :=
.seq rawBody503_177 rawBody503_328

def rawBody503_330 : StackLang.HolProg 64 :=
.seq rawBody503_176 rawBody503_329

def rawBody503_331 : StackLang.HolProg 64 :=
.seq rawBody503_175 rawBody503_330

def rawBody503_332 : StackLang.HolProg 64 :=
.seq rawBody503_104 rawBody503_331

def rawBody503_333 : StackLang.HolProg 64 :=
.seq rawBody503_97 rawBody503_332

def rawBody503_334 : StackLang.HolProg 64 :=
.seq rawBody503_96 rawBody503_333

def rawBody503_335 : StackLang.HolProg 64 :=
.seq rawBody503_95 rawBody503_334

def rawBody503_336 : StackLang.HolProg 64 :=
.seq rawBody503_52 rawBody503_335

def rawBody503_337 : StackLang.HolProg 64 :=
.seq rawBody503_45 rawBody503_336

def rawBody503_338 : StackLang.HolProg 64 :=
.seq rawBody503_44 rawBody503_337

def rawBody503_339 : StackLang.HolProg 64 :=
.seq rawBody503_1 rawBody503_338

def rawBody503_340 : StackLang.HolProg 64 :=
.seq rawBody503_0 rawBody503_339

def raw503 : StackLang.HolProg 64 := rawBody503_340
theorem raw503_eq : StackRawCall.compTop RawInfo.rawInfo (function503 (.list [])).1 = raw503 := by
  kernel_rfl
#print axioms raw503_eq
end InitECandidate.Proofs.BackendStages
