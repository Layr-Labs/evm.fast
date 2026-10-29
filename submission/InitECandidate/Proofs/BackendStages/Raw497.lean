import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function497
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody497_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody497_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody497_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1544#64)

def rawBody497_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_5 : StackLang.HolProg 64 :=
.seq rawBody497_3 rawBody497_4

def rawBody497_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody497_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody497_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 3

def rawBody497_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody497_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody497_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody497_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody497_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_16 : StackLang.HolProg 64 :=
.seq rawBody497_14 rawBody497_15

def rawBody497_17 : StackLang.HolProg 64 :=
.seq rawBody497_13 rawBody497_16

def rawBody497_18 : StackLang.HolProg 64 :=
.seq rawBody497_12 rawBody497_17

def rawBody497_19 : StackLang.HolProg 64 :=
.seq rawBody497_11 rawBody497_18

def rawBody497_20 : StackLang.HolProg 64 :=
.seq rawBody497_10 rawBody497_19

def rawBody497_21 : StackLang.HolProg 64 :=
.seq rawBody497_9 rawBody497_20

def rawBody497_22 : StackLang.HolProg 64 :=
.seq rawBody497_8 rawBody497_21

def rawBody497_23 : StackLang.HolProg 64 :=
.seq rawBody497_7 rawBody497_22

def rawBody497_24 : StackLang.HolProg 64 :=
.seq rawBody497_6 rawBody497_23

def rawBody497_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody497_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody497_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody497_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody497_32 : StackLang.HolProg 64 :=
.seq rawBody497_30 rawBody497_31

def rawBody497_33 : StackLang.HolProg 64 :=
.seq rawBody497_29 rawBody497_32

def rawBody497_34 : StackLang.HolProg 64 :=
.seq rawBody497_28 rawBody497_33

def rawBody497_35 : StackLang.HolProg 64 :=
.seq rawBody497_27 rawBody497_34

def rawBody497_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody497_38 : StackLang.HolProg 64 :=
.seq rawBody497_36 rawBody497_37

def rawBody497_39 : StackLang.HolProg 64 :=
.call (some (rawBody497_35, 0, 497, 2)) (Sum.inl 475) (some (rawBody497_38, 497, 3))

def rawBody497_40 : StackLang.HolProg 64 :=
.seq rawBody497_26 rawBody497_39

def rawBody497_41 : StackLang.HolProg 64 :=
.seq rawBody497_25 rawBody497_40

def rawBody497_42 : StackLang.HolProg 64 :=
.seq rawBody497_24 rawBody497_41

def rawBody497_43 : StackLang.HolProg 64 :=
.seq rawBody497_5 rawBody497_42

def rawBody497_44 : StackLang.HolProg 64 :=
.seq rawBody497_2 rawBody497_43

def rawBody497_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody497_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody497_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody497_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody497_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody497_50 : StackLang.HolProg 64 :=
.seq rawBody497_48 rawBody497_49

def rawBody497_51 : StackLang.HolProg 64 :=
.seq rawBody497_47 rawBody497_50

def rawBody497_52 : StackLang.HolProg 64 :=
.seq rawBody497_46 rawBody497_51

def rawBody497_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1545#64)

def rawBody497_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_56 : StackLang.HolProg 64 :=
.seq rawBody497_54 rawBody497_55

def rawBody497_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody497_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody497_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 5

def rawBody497_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody497_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody497_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody497_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody497_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_67 : StackLang.HolProg 64 :=
.seq rawBody497_65 rawBody497_66

def rawBody497_68 : StackLang.HolProg 64 :=
.seq rawBody497_64 rawBody497_67

def rawBody497_69 : StackLang.HolProg 64 :=
.seq rawBody497_63 rawBody497_68

def rawBody497_70 : StackLang.HolProg 64 :=
.seq rawBody497_62 rawBody497_69

def rawBody497_71 : StackLang.HolProg 64 :=
.seq rawBody497_61 rawBody497_70

def rawBody497_72 : StackLang.HolProg 64 :=
.seq rawBody497_60 rawBody497_71

def rawBody497_73 : StackLang.HolProg 64 :=
.seq rawBody497_59 rawBody497_72

def rawBody497_74 : StackLang.HolProg 64 :=
.seq rawBody497_58 rawBody497_73

def rawBody497_75 : StackLang.HolProg 64 :=
.seq rawBody497_57 rawBody497_74

def rawBody497_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody497_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody497_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody497_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody497_83 : StackLang.HolProg 64 :=
.seq rawBody497_81 rawBody497_82

def rawBody497_84 : StackLang.HolProg 64 :=
.seq rawBody497_80 rawBody497_83

def rawBody497_85 : StackLang.HolProg 64 :=
.seq rawBody497_79 rawBody497_84

def rawBody497_86 : StackLang.HolProg 64 :=
.seq rawBody497_78 rawBody497_85

def rawBody497_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody497_89 : StackLang.HolProg 64 :=
.seq rawBody497_87 rawBody497_88

def rawBody497_90 : StackLang.HolProg 64 :=
.call (some (rawBody497_86, 0, 497, 4)) (Sum.inl 475) (some (rawBody497_89, 497, 5))

def rawBody497_91 : StackLang.HolProg 64 :=
.seq rawBody497_77 rawBody497_90

def rawBody497_92 : StackLang.HolProg 64 :=
.seq rawBody497_76 rawBody497_91

def rawBody497_93 : StackLang.HolProg 64 :=
.seq rawBody497_75 rawBody497_92

def rawBody497_94 : StackLang.HolProg 64 :=
.seq rawBody497_56 rawBody497_93

def rawBody497_95 : StackLang.HolProg 64 :=
.seq rawBody497_53 rawBody497_94

def rawBody497_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody497_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody497_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody497_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody497_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody497_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody497_102 : StackLang.HolProg 64 :=
.seq rawBody497_100 rawBody497_101

def rawBody497_103 : StackLang.HolProg 64 :=
.seq rawBody497_99 rawBody497_102

def rawBody497_104 : StackLang.HolProg 64 :=
.seq rawBody497_98 rawBody497_103

def rawBody497_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1546#64)

def rawBody497_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_108 : StackLang.HolProg 64 :=
.seq rawBody497_106 rawBody497_107

def rawBody497_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody497_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody497_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 7

def rawBody497_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody497_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody497_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody497_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody497_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_119 : StackLang.HolProg 64 :=
.seq rawBody497_117 rawBody497_118

def rawBody497_120 : StackLang.HolProg 64 :=
.seq rawBody497_116 rawBody497_119

def rawBody497_121 : StackLang.HolProg 64 :=
.seq rawBody497_115 rawBody497_120

def rawBody497_122 : StackLang.HolProg 64 :=
.seq rawBody497_114 rawBody497_121

def rawBody497_123 : StackLang.HolProg 64 :=
.seq rawBody497_113 rawBody497_122

def rawBody497_124 : StackLang.HolProg 64 :=
.seq rawBody497_112 rawBody497_123

def rawBody497_125 : StackLang.HolProg 64 :=
.seq rawBody497_111 rawBody497_124

def rawBody497_126 : StackLang.HolProg 64 :=
.seq rawBody497_110 rawBody497_125

def rawBody497_127 : StackLang.HolProg 64 :=
.seq rawBody497_109 rawBody497_126

def rawBody497_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody497_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody497_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody497_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody497_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody497_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody497_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody497_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody497_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody497_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody497_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody497_142 : StackLang.HolProg 64 :=
.seq rawBody497_140 rawBody497_141

def rawBody497_143 : StackLang.HolProg 64 :=
.seq rawBody497_139 rawBody497_142

def rawBody497_144 : StackLang.HolProg 64 :=
.seq rawBody497_138 rawBody497_143

def rawBody497_145 : StackLang.HolProg 64 :=
.seq rawBody497_137 rawBody497_144

def rawBody497_146 : StackLang.HolProg 64 :=
.seq rawBody497_136 rawBody497_145

def rawBody497_147 : StackLang.HolProg 64 :=
.seq rawBody497_135 rawBody497_146

def rawBody497_148 : StackLang.HolProg 64 :=
.seq rawBody497_134 rawBody497_147

def rawBody497_149 : StackLang.HolProg 64 :=
.seq rawBody497_133 rawBody497_148

def rawBody497_150 : StackLang.HolProg 64 :=
.seq rawBody497_132 rawBody497_149

def rawBody497_151 : StackLang.HolProg 64 :=
.seq rawBody497_131 rawBody497_150

def rawBody497_152 : StackLang.HolProg 64 :=
.seq rawBody497_130 rawBody497_151

def rawBody497_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody497_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody497_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody497_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody497_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody497_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody497_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody497_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody497_161 : StackLang.HolProg 64 :=
.seq rawBody497_159 rawBody497_160

def rawBody497_162 : StackLang.HolProg 64 :=
.seq rawBody497_158 rawBody497_161

def rawBody497_163 : StackLang.HolProg 64 :=
.seq rawBody497_157 rawBody497_162

def rawBody497_164 : StackLang.HolProg 64 :=
.seq rawBody497_156 rawBody497_163

def rawBody497_165 : StackLang.HolProg 64 :=
.seq rawBody497_155 rawBody497_164

def rawBody497_166 : StackLang.HolProg 64 :=
.seq rawBody497_154 rawBody497_165

def rawBody497_167 : StackLang.HolProg 64 :=
.seq rawBody497_153 rawBody497_166

def rawBody497_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody497_169 : StackLang.HolProg 64 :=
.seq rawBody497_167 rawBody497_168

def rawBody497_170 : StackLang.HolProg 64 :=
.call (some (rawBody497_152, 0, 497, 6)) (Sum.inl 470) (some (rawBody497_169, 497, 7))

def rawBody497_171 : StackLang.HolProg 64 :=
.seq rawBody497_129 rawBody497_170

def rawBody497_172 : StackLang.HolProg 64 :=
.seq rawBody497_128 rawBody497_171

def rawBody497_173 : StackLang.HolProg 64 :=
.seq rawBody497_127 rawBody497_172

def rawBody497_174 : StackLang.HolProg 64 :=
.seq rawBody497_108 rawBody497_173

def rawBody497_175 : StackLang.HolProg 64 :=
.seq rawBody497_105 rawBody497_174

def rawBody497_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody497_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody497_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1547#64)

def rawBody497_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_181 : StackLang.HolProg 64 :=
.seq rawBody497_179 rawBody497_180

def rawBody497_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody497_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody497_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 9

def rawBody497_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody497_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody497_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody497_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody497_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_192 : StackLang.HolProg 64 :=
.seq rawBody497_190 rawBody497_191

def rawBody497_193 : StackLang.HolProg 64 :=
.seq rawBody497_189 rawBody497_192

def rawBody497_194 : StackLang.HolProg 64 :=
.seq rawBody497_188 rawBody497_193

def rawBody497_195 : StackLang.HolProg 64 :=
.seq rawBody497_187 rawBody497_194

def rawBody497_196 : StackLang.HolProg 64 :=
.seq rawBody497_186 rawBody497_195

def rawBody497_197 : StackLang.HolProg 64 :=
.seq rawBody497_185 rawBody497_196

def rawBody497_198 : StackLang.HolProg 64 :=
.seq rawBody497_184 rawBody497_197

def rawBody497_199 : StackLang.HolProg 64 :=
.seq rawBody497_183 rawBody497_198

def rawBody497_200 : StackLang.HolProg 64 :=
.seq rawBody497_182 rawBody497_199

def rawBody497_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody497_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody497_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody497_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody497_208 : StackLang.HolProg 64 :=
.seq rawBody497_206 rawBody497_207

def rawBody497_209 : StackLang.HolProg 64 :=
.seq rawBody497_205 rawBody497_208

def rawBody497_210 : StackLang.HolProg 64 :=
.seq rawBody497_204 rawBody497_209

def rawBody497_211 : StackLang.HolProg 64 :=
.seq rawBody497_203 rawBody497_210

def rawBody497_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody497_214 : StackLang.HolProg 64 :=
.seq rawBody497_212 rawBody497_213

def rawBody497_215 : StackLang.HolProg 64 :=
.call (some (rawBody497_211, 0, 497, 8)) (Sum.inl 116) (some (rawBody497_214, 497, 9))

def rawBody497_216 : StackLang.HolProg 64 :=
.seq rawBody497_202 rawBody497_215

def rawBody497_217 : StackLang.HolProg 64 :=
.seq rawBody497_201 rawBody497_216

def rawBody497_218 : StackLang.HolProg 64 :=
.seq rawBody497_200 rawBody497_217

def rawBody497_219 : StackLang.HolProg 64 :=
.seq rawBody497_181 rawBody497_218

def rawBody497_220 : StackLang.HolProg 64 :=
.seq rawBody497_178 rawBody497_219

def rawBody497_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody497_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody497_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1548#64)

def rawBody497_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_226 : StackLang.HolProg 64 :=
.seq rawBody497_224 rawBody497_225

def rawBody497_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody497_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody497_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 11

def rawBody497_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody497_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody497_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody497_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody497_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_237 : StackLang.HolProg 64 :=
.seq rawBody497_235 rawBody497_236

def rawBody497_238 : StackLang.HolProg 64 :=
.seq rawBody497_234 rawBody497_237

def rawBody497_239 : StackLang.HolProg 64 :=
.seq rawBody497_233 rawBody497_238

def rawBody497_240 : StackLang.HolProg 64 :=
.seq rawBody497_232 rawBody497_239

def rawBody497_241 : StackLang.HolProg 64 :=
.seq rawBody497_231 rawBody497_240

def rawBody497_242 : StackLang.HolProg 64 :=
.seq rawBody497_230 rawBody497_241

def rawBody497_243 : StackLang.HolProg 64 :=
.seq rawBody497_229 rawBody497_242

def rawBody497_244 : StackLang.HolProg 64 :=
.seq rawBody497_228 rawBody497_243

def rawBody497_245 : StackLang.HolProg 64 :=
.seq rawBody497_227 rawBody497_244

def rawBody497_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody497_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody497_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody497_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_253 : StackLang.HolProg 64 :=
.seq rawBody497_251 rawBody497_252

def rawBody497_254 : StackLang.HolProg 64 :=
.seq rawBody497_250 rawBody497_253

def rawBody497_255 : StackLang.HolProg 64 :=
.seq rawBody497_249 rawBody497_254

def rawBody497_256 : StackLang.HolProg 64 :=
.seq rawBody497_248 rawBody497_255

def rawBody497_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_258 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody497_259 : StackLang.HolProg 64 :=
.seq rawBody497_257 rawBody497_258

def rawBody497_260 : StackLang.HolProg 64 :=
.call (some (rawBody497_256, 0, 497, 10)) (Sum.inl 476) (some (rawBody497_259, 497, 11))

def rawBody497_261 : StackLang.HolProg 64 :=
.seq rawBody497_247 rawBody497_260

def rawBody497_262 : StackLang.HolProg 64 :=
.seq rawBody497_246 rawBody497_261

def rawBody497_263 : StackLang.HolProg 64 :=
.seq rawBody497_245 rawBody497_262

def rawBody497_264 : StackLang.HolProg 64 :=
.seq rawBody497_226 rawBody497_263

def rawBody497_265 : StackLang.HolProg 64 :=
.seq rawBody497_223 rawBody497_264

def rawBody497_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody497_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody497_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1549#64)

def rawBody497_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_272 : StackLang.HolProg 64 :=
.seq rawBody497_270 rawBody497_271

def rawBody497_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody497_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody497_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody497_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 497 13

def rawBody497_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody497_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody497_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody497_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody497_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_283 : StackLang.HolProg 64 :=
.seq rawBody497_281 rawBody497_282

def rawBody497_284 : StackLang.HolProg 64 :=
.seq rawBody497_280 rawBody497_283

def rawBody497_285 : StackLang.HolProg 64 :=
.seq rawBody497_279 rawBody497_284

def rawBody497_286 : StackLang.HolProg 64 :=
.seq rawBody497_278 rawBody497_285

def rawBody497_287 : StackLang.HolProg 64 :=
.seq rawBody497_277 rawBody497_286

def rawBody497_288 : StackLang.HolProg 64 :=
.seq rawBody497_276 rawBody497_287

def rawBody497_289 : StackLang.HolProg 64 :=
.seq rawBody497_275 rawBody497_288

def rawBody497_290 : StackLang.HolProg 64 :=
.seq rawBody497_274 rawBody497_289

def rawBody497_291 : StackLang.HolProg 64 :=
.seq rawBody497_273 rawBody497_290

def rawBody497_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody497_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody497_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody497_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody497_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody497_299 : StackLang.HolProg 64 :=
.seq rawBody497_297 rawBody497_298

def rawBody497_300 : StackLang.HolProg 64 :=
.seq rawBody497_296 rawBody497_299

def rawBody497_301 : StackLang.HolProg 64 :=
.seq rawBody497_295 rawBody497_300

def rawBody497_302 : StackLang.HolProg 64 :=
.seq rawBody497_294 rawBody497_301

def rawBody497_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody497_304 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody497_305 : StackLang.HolProg 64 :=
.seq rawBody497_303 rawBody497_304

def rawBody497_306 : StackLang.HolProg 64 :=
.call (some (rawBody497_302, 0, 497, 12)) (Sum.inl 490) (some (rawBody497_305, 497, 13))

def rawBody497_307 : StackLang.HolProg 64 :=
.seq rawBody497_293 rawBody497_306

def rawBody497_308 : StackLang.HolProg 64 :=
.seq rawBody497_292 rawBody497_307

def rawBody497_309 : StackLang.HolProg 64 :=
.seq rawBody497_291 rawBody497_308

def rawBody497_310 : StackLang.HolProg 64 :=
.seq rawBody497_272 rawBody497_309

def rawBody497_311 : StackLang.HolProg 64 :=
.seq rawBody497_269 rawBody497_310

def rawBody497_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody497_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody497_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody497_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody497_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody497_317 : StackLang.HolProg 64 :=
.seq rawBody497_315 rawBody497_316

def rawBody497_318 : StackLang.HolProg 64 :=
.seq rawBody497_314 rawBody497_317

def rawBody497_319 : StackLang.HolProg 64 :=
.seq rawBody497_313 rawBody497_318

def rawBody497_320 : StackLang.HolProg 64 :=
.seq rawBody497_312 rawBody497_319

def rawBody497_321 : StackLang.HolProg 64 :=
.seq rawBody497_311 rawBody497_320

def rawBody497_322 : StackLang.HolProg 64 :=
.seq rawBody497_268 rawBody497_321

def rawBody497_323 : StackLang.HolProg 64 :=
.seq rawBody497_267 rawBody497_322

def rawBody497_324 : StackLang.HolProg 64 :=
.seq rawBody497_266 rawBody497_323

def rawBody497_325 : StackLang.HolProg 64 :=
.seq rawBody497_265 rawBody497_324

def rawBody497_326 : StackLang.HolProg 64 :=
.seq rawBody497_222 rawBody497_325

def rawBody497_327 : StackLang.HolProg 64 :=
.seq rawBody497_221 rawBody497_326

def rawBody497_328 : StackLang.HolProg 64 :=
.seq rawBody497_220 rawBody497_327

def rawBody497_329 : StackLang.HolProg 64 :=
.seq rawBody497_177 rawBody497_328

def rawBody497_330 : StackLang.HolProg 64 :=
.seq rawBody497_176 rawBody497_329

def rawBody497_331 : StackLang.HolProg 64 :=
.seq rawBody497_175 rawBody497_330

def rawBody497_332 : StackLang.HolProg 64 :=
.seq rawBody497_104 rawBody497_331

def rawBody497_333 : StackLang.HolProg 64 :=
.seq rawBody497_97 rawBody497_332

def rawBody497_334 : StackLang.HolProg 64 :=
.seq rawBody497_96 rawBody497_333

def rawBody497_335 : StackLang.HolProg 64 :=
.seq rawBody497_95 rawBody497_334

def rawBody497_336 : StackLang.HolProg 64 :=
.seq rawBody497_52 rawBody497_335

def rawBody497_337 : StackLang.HolProg 64 :=
.seq rawBody497_45 rawBody497_336

def rawBody497_338 : StackLang.HolProg 64 :=
.seq rawBody497_44 rawBody497_337

def rawBody497_339 : StackLang.HolProg 64 :=
.seq rawBody497_1 rawBody497_338

def rawBody497_340 : StackLang.HolProg 64 :=
.seq rawBody497_0 rawBody497_339

def raw497 : StackLang.HolProg 64 := rawBody497_340
theorem raw497_eq : StackRawCall.compTop RawInfo.rawInfo (function497 (.list [])).1 = raw497 := by
  kernel_rfl
#print axioms raw497_eq
end InitECandidate.Proofs.BackendStages
