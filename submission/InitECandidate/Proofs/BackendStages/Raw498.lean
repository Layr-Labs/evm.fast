import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function498
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody498_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody498_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody498_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1550#64)

def rawBody498_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_5 : StackLang.HolProg 64 :=
.seq rawBody498_3 rawBody498_4

def rawBody498_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody498_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody498_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 3

def rawBody498_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody498_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody498_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody498_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody498_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_16 : StackLang.HolProg 64 :=
.seq rawBody498_14 rawBody498_15

def rawBody498_17 : StackLang.HolProg 64 :=
.seq rawBody498_13 rawBody498_16

def rawBody498_18 : StackLang.HolProg 64 :=
.seq rawBody498_12 rawBody498_17

def rawBody498_19 : StackLang.HolProg 64 :=
.seq rawBody498_11 rawBody498_18

def rawBody498_20 : StackLang.HolProg 64 :=
.seq rawBody498_10 rawBody498_19

def rawBody498_21 : StackLang.HolProg 64 :=
.seq rawBody498_9 rawBody498_20

def rawBody498_22 : StackLang.HolProg 64 :=
.seq rawBody498_8 rawBody498_21

def rawBody498_23 : StackLang.HolProg 64 :=
.seq rawBody498_7 rawBody498_22

def rawBody498_24 : StackLang.HolProg 64 :=
.seq rawBody498_6 rawBody498_23

def rawBody498_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody498_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody498_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody498_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody498_32 : StackLang.HolProg 64 :=
.seq rawBody498_30 rawBody498_31

def rawBody498_33 : StackLang.HolProg 64 :=
.seq rawBody498_29 rawBody498_32

def rawBody498_34 : StackLang.HolProg 64 :=
.seq rawBody498_28 rawBody498_33

def rawBody498_35 : StackLang.HolProg 64 :=
.seq rawBody498_27 rawBody498_34

def rawBody498_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody498_38 : StackLang.HolProg 64 :=
.seq rawBody498_36 rawBody498_37

def rawBody498_39 : StackLang.HolProg 64 :=
.call (some (rawBody498_35, 0, 498, 2)) (Sum.inl 475) (some (rawBody498_38, 498, 3))

def rawBody498_40 : StackLang.HolProg 64 :=
.seq rawBody498_26 rawBody498_39

def rawBody498_41 : StackLang.HolProg 64 :=
.seq rawBody498_25 rawBody498_40

def rawBody498_42 : StackLang.HolProg 64 :=
.seq rawBody498_24 rawBody498_41

def rawBody498_43 : StackLang.HolProg 64 :=
.seq rawBody498_5 rawBody498_42

def rawBody498_44 : StackLang.HolProg 64 :=
.seq rawBody498_2 rawBody498_43

def rawBody498_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody498_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody498_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody498_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody498_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody498_50 : StackLang.HolProg 64 :=
.seq rawBody498_48 rawBody498_49

def rawBody498_51 : StackLang.HolProg 64 :=
.seq rawBody498_47 rawBody498_50

def rawBody498_52 : StackLang.HolProg 64 :=
.seq rawBody498_46 rawBody498_51

def rawBody498_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1551#64)

def rawBody498_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_56 : StackLang.HolProg 64 :=
.seq rawBody498_54 rawBody498_55

def rawBody498_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody498_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody498_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 5

def rawBody498_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody498_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody498_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody498_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody498_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_67 : StackLang.HolProg 64 :=
.seq rawBody498_65 rawBody498_66

def rawBody498_68 : StackLang.HolProg 64 :=
.seq rawBody498_64 rawBody498_67

def rawBody498_69 : StackLang.HolProg 64 :=
.seq rawBody498_63 rawBody498_68

def rawBody498_70 : StackLang.HolProg 64 :=
.seq rawBody498_62 rawBody498_69

def rawBody498_71 : StackLang.HolProg 64 :=
.seq rawBody498_61 rawBody498_70

def rawBody498_72 : StackLang.HolProg 64 :=
.seq rawBody498_60 rawBody498_71

def rawBody498_73 : StackLang.HolProg 64 :=
.seq rawBody498_59 rawBody498_72

def rawBody498_74 : StackLang.HolProg 64 :=
.seq rawBody498_58 rawBody498_73

def rawBody498_75 : StackLang.HolProg 64 :=
.seq rawBody498_57 rawBody498_74

def rawBody498_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody498_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody498_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody498_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody498_83 : StackLang.HolProg 64 :=
.seq rawBody498_81 rawBody498_82

def rawBody498_84 : StackLang.HolProg 64 :=
.seq rawBody498_80 rawBody498_83

def rawBody498_85 : StackLang.HolProg 64 :=
.seq rawBody498_79 rawBody498_84

def rawBody498_86 : StackLang.HolProg 64 :=
.seq rawBody498_78 rawBody498_85

def rawBody498_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody498_89 : StackLang.HolProg 64 :=
.seq rawBody498_87 rawBody498_88

def rawBody498_90 : StackLang.HolProg 64 :=
.call (some (rawBody498_86, 0, 498, 4)) (Sum.inl 475) (some (rawBody498_89, 498, 5))

def rawBody498_91 : StackLang.HolProg 64 :=
.seq rawBody498_77 rawBody498_90

def rawBody498_92 : StackLang.HolProg 64 :=
.seq rawBody498_76 rawBody498_91

def rawBody498_93 : StackLang.HolProg 64 :=
.seq rawBody498_75 rawBody498_92

def rawBody498_94 : StackLang.HolProg 64 :=
.seq rawBody498_56 rawBody498_93

def rawBody498_95 : StackLang.HolProg 64 :=
.seq rawBody498_53 rawBody498_94

def rawBody498_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody498_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def rawBody498_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody498_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody498_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody498_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody498_102 : StackLang.HolProg 64 :=
.seq rawBody498_100 rawBody498_101

def rawBody498_103 : StackLang.HolProg 64 :=
.seq rawBody498_99 rawBody498_102

def rawBody498_104 : StackLang.HolProg 64 :=
.seq rawBody498_98 rawBody498_103

def rawBody498_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1552#64)

def rawBody498_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_108 : StackLang.HolProg 64 :=
.seq rawBody498_106 rawBody498_107

def rawBody498_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody498_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody498_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 7

def rawBody498_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody498_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody498_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody498_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody498_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_119 : StackLang.HolProg 64 :=
.seq rawBody498_117 rawBody498_118

def rawBody498_120 : StackLang.HolProg 64 :=
.seq rawBody498_116 rawBody498_119

def rawBody498_121 : StackLang.HolProg 64 :=
.seq rawBody498_115 rawBody498_120

def rawBody498_122 : StackLang.HolProg 64 :=
.seq rawBody498_114 rawBody498_121

def rawBody498_123 : StackLang.HolProg 64 :=
.seq rawBody498_113 rawBody498_122

def rawBody498_124 : StackLang.HolProg 64 :=
.seq rawBody498_112 rawBody498_123

def rawBody498_125 : StackLang.HolProg 64 :=
.seq rawBody498_111 rawBody498_124

def rawBody498_126 : StackLang.HolProg 64 :=
.seq rawBody498_110 rawBody498_125

def rawBody498_127 : StackLang.HolProg 64 :=
.seq rawBody498_109 rawBody498_126

def rawBody498_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody498_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody498_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody498_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody498_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody498_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody498_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody498_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody498_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody498_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody498_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody498_142 : StackLang.HolProg 64 :=
.seq rawBody498_140 rawBody498_141

def rawBody498_143 : StackLang.HolProg 64 :=
.seq rawBody498_139 rawBody498_142

def rawBody498_144 : StackLang.HolProg 64 :=
.seq rawBody498_138 rawBody498_143

def rawBody498_145 : StackLang.HolProg 64 :=
.seq rawBody498_137 rawBody498_144

def rawBody498_146 : StackLang.HolProg 64 :=
.seq rawBody498_136 rawBody498_145

def rawBody498_147 : StackLang.HolProg 64 :=
.seq rawBody498_135 rawBody498_146

def rawBody498_148 : StackLang.HolProg 64 :=
.seq rawBody498_134 rawBody498_147

def rawBody498_149 : StackLang.HolProg 64 :=
.seq rawBody498_133 rawBody498_148

def rawBody498_150 : StackLang.HolProg 64 :=
.seq rawBody498_132 rawBody498_149

def rawBody498_151 : StackLang.HolProg 64 :=
.seq rawBody498_131 rawBody498_150

def rawBody498_152 : StackLang.HolProg 64 :=
.seq rawBody498_130 rawBody498_151

def rawBody498_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody498_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody498_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody498_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody498_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody498_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody498_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody498_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody498_161 : StackLang.HolProg 64 :=
.seq rawBody498_159 rawBody498_160

def rawBody498_162 : StackLang.HolProg 64 :=
.seq rawBody498_158 rawBody498_161

def rawBody498_163 : StackLang.HolProg 64 :=
.seq rawBody498_157 rawBody498_162

def rawBody498_164 : StackLang.HolProg 64 :=
.seq rawBody498_156 rawBody498_163

def rawBody498_165 : StackLang.HolProg 64 :=
.seq rawBody498_155 rawBody498_164

def rawBody498_166 : StackLang.HolProg 64 :=
.seq rawBody498_154 rawBody498_165

def rawBody498_167 : StackLang.HolProg 64 :=
.seq rawBody498_153 rawBody498_166

def rawBody498_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody498_169 : StackLang.HolProg 64 :=
.seq rawBody498_167 rawBody498_168

def rawBody498_170 : StackLang.HolProg 64 :=
.call (some (rawBody498_152, 0, 498, 6)) (Sum.inl 470) (some (rawBody498_169, 498, 7))

def rawBody498_171 : StackLang.HolProg 64 :=
.seq rawBody498_129 rawBody498_170

def rawBody498_172 : StackLang.HolProg 64 :=
.seq rawBody498_128 rawBody498_171

def rawBody498_173 : StackLang.HolProg 64 :=
.seq rawBody498_127 rawBody498_172

def rawBody498_174 : StackLang.HolProg 64 :=
.seq rawBody498_108 rawBody498_173

def rawBody498_175 : StackLang.HolProg 64 :=
.seq rawBody498_105 rawBody498_174

def rawBody498_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody498_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody498_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1553#64)

def rawBody498_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_181 : StackLang.HolProg 64 :=
.seq rawBody498_179 rawBody498_180

def rawBody498_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody498_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody498_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 9

def rawBody498_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody498_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody498_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody498_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody498_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_192 : StackLang.HolProg 64 :=
.seq rawBody498_190 rawBody498_191

def rawBody498_193 : StackLang.HolProg 64 :=
.seq rawBody498_189 rawBody498_192

def rawBody498_194 : StackLang.HolProg 64 :=
.seq rawBody498_188 rawBody498_193

def rawBody498_195 : StackLang.HolProg 64 :=
.seq rawBody498_187 rawBody498_194

def rawBody498_196 : StackLang.HolProg 64 :=
.seq rawBody498_186 rawBody498_195

def rawBody498_197 : StackLang.HolProg 64 :=
.seq rawBody498_185 rawBody498_196

def rawBody498_198 : StackLang.HolProg 64 :=
.seq rawBody498_184 rawBody498_197

def rawBody498_199 : StackLang.HolProg 64 :=
.seq rawBody498_183 rawBody498_198

def rawBody498_200 : StackLang.HolProg 64 :=
.seq rawBody498_182 rawBody498_199

def rawBody498_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody498_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody498_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody498_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody498_208 : StackLang.HolProg 64 :=
.seq rawBody498_206 rawBody498_207

def rawBody498_209 : StackLang.HolProg 64 :=
.seq rawBody498_205 rawBody498_208

def rawBody498_210 : StackLang.HolProg 64 :=
.seq rawBody498_204 rawBody498_209

def rawBody498_211 : StackLang.HolProg 64 :=
.seq rawBody498_203 rawBody498_210

def rawBody498_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody498_214 : StackLang.HolProg 64 :=
.seq rawBody498_212 rawBody498_213

def rawBody498_215 : StackLang.HolProg 64 :=
.call (some (rawBody498_211, 0, 498, 8)) (Sum.inl 120) (some (rawBody498_214, 498, 9))

def rawBody498_216 : StackLang.HolProg 64 :=
.seq rawBody498_202 rawBody498_215

def rawBody498_217 : StackLang.HolProg 64 :=
.seq rawBody498_201 rawBody498_216

def rawBody498_218 : StackLang.HolProg 64 :=
.seq rawBody498_200 rawBody498_217

def rawBody498_219 : StackLang.HolProg 64 :=
.seq rawBody498_181 rawBody498_218

def rawBody498_220 : StackLang.HolProg 64 :=
.seq rawBody498_178 rawBody498_219

def rawBody498_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody498_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody498_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1554#64)

def rawBody498_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_226 : StackLang.HolProg 64 :=
.seq rawBody498_224 rawBody498_225

def rawBody498_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody498_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody498_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 11

def rawBody498_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody498_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody498_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody498_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody498_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_237 : StackLang.HolProg 64 :=
.seq rawBody498_235 rawBody498_236

def rawBody498_238 : StackLang.HolProg 64 :=
.seq rawBody498_234 rawBody498_237

def rawBody498_239 : StackLang.HolProg 64 :=
.seq rawBody498_233 rawBody498_238

def rawBody498_240 : StackLang.HolProg 64 :=
.seq rawBody498_232 rawBody498_239

def rawBody498_241 : StackLang.HolProg 64 :=
.seq rawBody498_231 rawBody498_240

def rawBody498_242 : StackLang.HolProg 64 :=
.seq rawBody498_230 rawBody498_241

def rawBody498_243 : StackLang.HolProg 64 :=
.seq rawBody498_229 rawBody498_242

def rawBody498_244 : StackLang.HolProg 64 :=
.seq rawBody498_228 rawBody498_243

def rawBody498_245 : StackLang.HolProg 64 :=
.seq rawBody498_227 rawBody498_244

def rawBody498_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody498_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody498_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody498_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_253 : StackLang.HolProg 64 :=
.seq rawBody498_251 rawBody498_252

def rawBody498_254 : StackLang.HolProg 64 :=
.seq rawBody498_250 rawBody498_253

def rawBody498_255 : StackLang.HolProg 64 :=
.seq rawBody498_249 rawBody498_254

def rawBody498_256 : StackLang.HolProg 64 :=
.seq rawBody498_248 rawBody498_255

def rawBody498_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody498_259 : StackLang.HolProg 64 :=
.seq rawBody498_257 rawBody498_258

def rawBody498_260 : StackLang.HolProg 64 :=
.call (some (rawBody498_256, 0, 498, 10)) (Sum.inl 476) (some (rawBody498_259, 498, 11))

def rawBody498_261 : StackLang.HolProg 64 :=
.seq rawBody498_247 rawBody498_260

def rawBody498_262 : StackLang.HolProg 64 :=
.seq rawBody498_246 rawBody498_261

def rawBody498_263 : StackLang.HolProg 64 :=
.seq rawBody498_245 rawBody498_262

def rawBody498_264 : StackLang.HolProg 64 :=
.seq rawBody498_226 rawBody498_263

def rawBody498_265 : StackLang.HolProg 64 :=
.seq rawBody498_223 rawBody498_264

def rawBody498_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody498_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody498_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1555#64)

def rawBody498_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_272 : StackLang.HolProg 64 :=
.seq rawBody498_270 rawBody498_271

def rawBody498_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody498_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody498_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody498_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 498 13

def rawBody498_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody498_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody498_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody498_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody498_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_283 : StackLang.HolProg 64 :=
.seq rawBody498_281 rawBody498_282

def rawBody498_284 : StackLang.HolProg 64 :=
.seq rawBody498_280 rawBody498_283

def rawBody498_285 : StackLang.HolProg 64 :=
.seq rawBody498_279 rawBody498_284

def rawBody498_286 : StackLang.HolProg 64 :=
.seq rawBody498_278 rawBody498_285

def rawBody498_287 : StackLang.HolProg 64 :=
.seq rawBody498_277 rawBody498_286

def rawBody498_288 : StackLang.HolProg 64 :=
.seq rawBody498_276 rawBody498_287

def rawBody498_289 : StackLang.HolProg 64 :=
.seq rawBody498_275 rawBody498_288

def rawBody498_290 : StackLang.HolProg 64 :=
.seq rawBody498_274 rawBody498_289

def rawBody498_291 : StackLang.HolProg 64 :=
.seq rawBody498_273 rawBody498_290

def rawBody498_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody498_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody498_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody498_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody498_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody498_299 : StackLang.HolProg 64 :=
.seq rawBody498_297 rawBody498_298

def rawBody498_300 : StackLang.HolProg 64 :=
.seq rawBody498_296 rawBody498_299

def rawBody498_301 : StackLang.HolProg 64 :=
.seq rawBody498_295 rawBody498_300

def rawBody498_302 : StackLang.HolProg 64 :=
.seq rawBody498_294 rawBody498_301

def rawBody498_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody498_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody498_305 : StackLang.HolProg 64 :=
.seq rawBody498_303 rawBody498_304

def rawBody498_306 : StackLang.HolProg 64 :=
.call (some (rawBody498_302, 0, 498, 12)) (Sum.inl 490) (some (rawBody498_305, 498, 13))

def rawBody498_307 : StackLang.HolProg 64 :=
.seq rawBody498_293 rawBody498_306

def rawBody498_308 : StackLang.HolProg 64 :=
.seq rawBody498_292 rawBody498_307

def rawBody498_309 : StackLang.HolProg 64 :=
.seq rawBody498_291 rawBody498_308

def rawBody498_310 : StackLang.HolProg 64 :=
.seq rawBody498_272 rawBody498_309

def rawBody498_311 : StackLang.HolProg 64 :=
.seq rawBody498_269 rawBody498_310

def rawBody498_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody498_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody498_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody498_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody498_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody498_317 : StackLang.HolProg 64 :=
.seq rawBody498_315 rawBody498_316

def rawBody498_318 : StackLang.HolProg 64 :=
.seq rawBody498_314 rawBody498_317

def rawBody498_319 : StackLang.HolProg 64 :=
.seq rawBody498_313 rawBody498_318

def rawBody498_320 : StackLang.HolProg 64 :=
.seq rawBody498_312 rawBody498_319

def rawBody498_321 : StackLang.HolProg 64 :=
.seq rawBody498_311 rawBody498_320

def rawBody498_322 : StackLang.HolProg 64 :=
.seq rawBody498_268 rawBody498_321

def rawBody498_323 : StackLang.HolProg 64 :=
.seq rawBody498_267 rawBody498_322

def rawBody498_324 : StackLang.HolProg 64 :=
.seq rawBody498_266 rawBody498_323

def rawBody498_325 : StackLang.HolProg 64 :=
.seq rawBody498_265 rawBody498_324

def rawBody498_326 : StackLang.HolProg 64 :=
.seq rawBody498_222 rawBody498_325

def rawBody498_327 : StackLang.HolProg 64 :=
.seq rawBody498_221 rawBody498_326

def rawBody498_328 : StackLang.HolProg 64 :=
.seq rawBody498_220 rawBody498_327

def rawBody498_329 : StackLang.HolProg 64 :=
.seq rawBody498_177 rawBody498_328

def rawBody498_330 : StackLang.HolProg 64 :=
.seq rawBody498_176 rawBody498_329

def rawBody498_331 : StackLang.HolProg 64 :=
.seq rawBody498_175 rawBody498_330

def rawBody498_332 : StackLang.HolProg 64 :=
.seq rawBody498_104 rawBody498_331

def rawBody498_333 : StackLang.HolProg 64 :=
.seq rawBody498_97 rawBody498_332

def rawBody498_334 : StackLang.HolProg 64 :=
.seq rawBody498_96 rawBody498_333

def rawBody498_335 : StackLang.HolProg 64 :=
.seq rawBody498_95 rawBody498_334

def rawBody498_336 : StackLang.HolProg 64 :=
.seq rawBody498_52 rawBody498_335

def rawBody498_337 : StackLang.HolProg 64 :=
.seq rawBody498_45 rawBody498_336

def rawBody498_338 : StackLang.HolProg 64 :=
.seq rawBody498_44 rawBody498_337

def rawBody498_339 : StackLang.HolProg 64 :=
.seq rawBody498_1 rawBody498_338

def rawBody498_340 : StackLang.HolProg 64 :=
.seq rawBody498_0 rawBody498_339

def raw498 : StackLang.HolProg 64 := rawBody498_340
theorem raw498_eq : StackRawCall.compTop RawInfo.rawInfo (function498 (.list [])).1 = raw498 := by
  kernel_rfl
#print axioms raw498_eq
end InitECandidate.Proofs.BackendStages
