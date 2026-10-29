import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function165
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody165_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody165_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody165_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody165_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody165_4 : StackLang.HolProg 64 :=
.seq rawBody165_2 rawBody165_3

def rawBody165_5 : StackLang.HolProg 64 :=
.seq rawBody165_1 rawBody165_4

def rawBody165_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 178#64)

def rawBody165_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_9 : StackLang.HolProg 64 :=
.seq rawBody165_7 rawBody165_8

def rawBody165_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody165_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody165_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 3

def rawBody165_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody165_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody165_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody165_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody165_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_20 : StackLang.HolProg 64 :=
.seq rawBody165_18 rawBody165_19

def rawBody165_21 : StackLang.HolProg 64 :=
.seq rawBody165_17 rawBody165_20

def rawBody165_22 : StackLang.HolProg 64 :=
.seq rawBody165_16 rawBody165_21

def rawBody165_23 : StackLang.HolProg 64 :=
.seq rawBody165_15 rawBody165_22

def rawBody165_24 : StackLang.HolProg 64 :=
.seq rawBody165_14 rawBody165_23

def rawBody165_25 : StackLang.HolProg 64 :=
.seq rawBody165_13 rawBody165_24

def rawBody165_26 : StackLang.HolProg 64 :=
.seq rawBody165_12 rawBody165_25

def rawBody165_27 : StackLang.HolProg 64 :=
.seq rawBody165_11 rawBody165_26

def rawBody165_28 : StackLang.HolProg 64 :=
.seq rawBody165_10 rawBody165_27

def rawBody165_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody165_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody165_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody165_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody165_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody165_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody165_38 : StackLang.HolProg 64 :=
.seq rawBody165_36 rawBody165_37

def rawBody165_39 : StackLang.HolProg 64 :=
.seq rawBody165_35 rawBody165_38

def rawBody165_40 : StackLang.HolProg 64 :=
.seq rawBody165_34 rawBody165_39

def rawBody165_41 : StackLang.HolProg 64 :=
.seq rawBody165_33 rawBody165_40

def rawBody165_42 : StackLang.HolProg 64 :=
.seq rawBody165_32 rawBody165_41

def rawBody165_43 : StackLang.HolProg 64 :=
.seq rawBody165_31 rawBody165_42

def rawBody165_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody165_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody165_46 : StackLang.HolProg 64 :=
.seq rawBody165_44 rawBody165_45

def rawBody165_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody165_48 : StackLang.HolProg 64 :=
.seq rawBody165_46 rawBody165_47

def rawBody165_49 : StackLang.HolProg 64 :=
.call (some (rawBody165_43, 0, 165, 2)) (Sum.inl 75) (some (rawBody165_48, 165, 3))

def rawBody165_50 : StackLang.HolProg 64 :=
.seq rawBody165_30 rawBody165_49

def rawBody165_51 : StackLang.HolProg 64 :=
.seq rawBody165_29 rawBody165_50

def rawBody165_52 : StackLang.HolProg 64 :=
.seq rawBody165_28 rawBody165_51

def rawBody165_53 : StackLang.HolProg 64 :=
.seq rawBody165_9 rawBody165_52

def rawBody165_54 : StackLang.HolProg 64 :=
.seq rawBody165_6 rawBody165_53

def rawBody165_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody165_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody165_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody165_58 : StackLang.HolProg 64 :=
.seq rawBody165_56 rawBody165_57

def rawBody165_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 179#64)

def rawBody165_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_62 : StackLang.HolProg 64 :=
.seq rawBody165_60 rawBody165_61

def rawBody165_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody165_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody165_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 7

def rawBody165_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody165_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody165_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody165_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody165_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_73 : StackLang.HolProg 64 :=
.seq rawBody165_71 rawBody165_72

def rawBody165_74 : StackLang.HolProg 64 :=
.seq rawBody165_70 rawBody165_73

def rawBody165_75 : StackLang.HolProg 64 :=
.seq rawBody165_69 rawBody165_74

def rawBody165_76 : StackLang.HolProg 64 :=
.seq rawBody165_68 rawBody165_75

def rawBody165_77 : StackLang.HolProg 64 :=
.seq rawBody165_67 rawBody165_76

def rawBody165_78 : StackLang.HolProg 64 :=
.seq rawBody165_66 rawBody165_77

def rawBody165_79 : StackLang.HolProg 64 :=
.seq rawBody165_65 rawBody165_78

def rawBody165_80 : StackLang.HolProg 64 :=
.seq rawBody165_64 rawBody165_79

def rawBody165_81 : StackLang.HolProg 64 :=
.seq rawBody165_63 rawBody165_80

def rawBody165_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody165_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody165_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody165_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody165_89 : StackLang.HolProg 64 :=
.seq rawBody165_87 rawBody165_88

def rawBody165_90 : StackLang.HolProg 64 :=
.seq rawBody165_86 rawBody165_89

def rawBody165_91 : StackLang.HolProg 64 :=
.seq rawBody165_85 rawBody165_90

def rawBody165_92 : StackLang.HolProg 64 :=
.seq rawBody165_84 rawBody165_91

def rawBody165_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody165_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody165_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody165_96 : StackLang.HolProg 64 :=
.seq rawBody165_94 rawBody165_95

def rawBody165_97 : StackLang.HolProg 64 :=
.seq rawBody165_93 rawBody165_96

def rawBody165_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_99 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody165_100 : StackLang.HolProg 64 :=
.seq rawBody165_98 rawBody165_99

def rawBody165_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody165_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody165_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody165_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody165_105 : StackLang.HolProg 64 :=
.seq rawBody165_103 rawBody165_104

def rawBody165_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 180#64)

def rawBody165_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_109 : StackLang.HolProg 64 :=
.seq rawBody165_107 rawBody165_108

def rawBody165_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody165_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody165_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 6

def rawBody165_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody165_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody165_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody165_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody165_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_120 : StackLang.HolProg 64 :=
.seq rawBody165_118 rawBody165_119

def rawBody165_121 : StackLang.HolProg 64 :=
.seq rawBody165_117 rawBody165_120

def rawBody165_122 : StackLang.HolProg 64 :=
.seq rawBody165_116 rawBody165_121

def rawBody165_123 : StackLang.HolProg 64 :=
.seq rawBody165_115 rawBody165_122

def rawBody165_124 : StackLang.HolProg 64 :=
.seq rawBody165_114 rawBody165_123

def rawBody165_125 : StackLang.HolProg 64 :=
.seq rawBody165_113 rawBody165_124

def rawBody165_126 : StackLang.HolProg 64 :=
.seq rawBody165_112 rawBody165_125

def rawBody165_127 : StackLang.HolProg 64 :=
.seq rawBody165_111 rawBody165_126

def rawBody165_128 : StackLang.HolProg 64 :=
.seq rawBody165_110 rawBody165_127

def rawBody165_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody165_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody165_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody165_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody165_136 : StackLang.HolProg 64 :=
.seq rawBody165_134 rawBody165_135

def rawBody165_137 : StackLang.HolProg 64 :=
.seq rawBody165_133 rawBody165_136

def rawBody165_138 : StackLang.HolProg 64 :=
.seq rawBody165_132 rawBody165_137

def rawBody165_139 : StackLang.HolProg 64 :=
.seq rawBody165_131 rawBody165_138

def rawBody165_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody165_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody165_142 : StackLang.HolProg 64 :=
.seq rawBody165_140 rawBody165_141

def rawBody165_143 : StackLang.HolProg 64 :=
.call (some (rawBody165_139, 0, 165, 5)) (Sum.inl 76) (some (rawBody165_142, 165, 6))

def rawBody165_144 : StackLang.HolProg 64 :=
.seq rawBody165_130 rawBody165_143

def rawBody165_145 : StackLang.HolProg 64 :=
.seq rawBody165_129 rawBody165_144

def rawBody165_146 : StackLang.HolProg 64 :=
.seq rawBody165_128 rawBody165_145

def rawBody165_147 : StackLang.HolProg 64 :=
.seq rawBody165_109 rawBody165_146

def rawBody165_148 : StackLang.HolProg 64 :=
.seq rawBody165_106 rawBody165_147

def rawBody165_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody165_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 2

def rawBody165_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody165_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody165_155 : StackLang.HolProg 64 :=
.seq rawBody165_153 rawBody165_154

def rawBody165_156 : StackLang.HolProg 64 :=
.seq rawBody165_152 rawBody165_155

def rawBody165_157 : StackLang.HolProg 64 :=
.seq rawBody165_151 rawBody165_156

def rawBody165_158 : StackLang.HolProg 64 :=
.seq rawBody165_150 rawBody165_157

def rawBody165_159 : StackLang.HolProg 64 :=
.seq rawBody165_149 rawBody165_158

def rawBody165_160 : StackLang.HolProg 64 :=
.seq rawBody165_148 rawBody165_159

def rawBody165_161 : StackLang.HolProg 64 :=
.seq rawBody165_105 rawBody165_160

def rawBody165_162 : StackLang.HolProg 64 :=
.seq rawBody165_102 rawBody165_161

def rawBody165_163 : StackLang.HolProg 64 :=
.seq rawBody165_101 rawBody165_162

def rawBody165_164 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) rawBody165_100 rawBody165_163

def rawBody165_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody165_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody165_167 : StackLang.HolProg 64 :=
.seq rawBody165_165 rawBody165_166

def rawBody165_168 : StackLang.HolProg 64 :=
.seq rawBody165_164 rawBody165_167

def rawBody165_169 : StackLang.HolProg 64 :=
.seq rawBody165_97 rawBody165_168

def rawBody165_170 : StackLang.HolProg 64 :=
.call (some (rawBody165_92, 0, 165, 4)) (Sum.inl 164) (some (rawBody165_169, 165, 7))

def rawBody165_171 : StackLang.HolProg 64 :=
.seq rawBody165_83 rawBody165_170

def rawBody165_172 : StackLang.HolProg 64 :=
.seq rawBody165_82 rawBody165_171

def rawBody165_173 : StackLang.HolProg 64 :=
.seq rawBody165_81 rawBody165_172

def rawBody165_174 : StackLang.HolProg 64 :=
.seq rawBody165_62 rawBody165_173

def rawBody165_175 : StackLang.HolProg 64 :=
.seq rawBody165_59 rawBody165_174

def rawBody165_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody165_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody165_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 181#64)

def rawBody165_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_181 : StackLang.HolProg 64 :=
.seq rawBody165_179 rawBody165_180

def rawBody165_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody165_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody165_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody165_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 165 9

def rawBody165_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody165_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody165_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody165_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody165_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_192 : StackLang.HolProg 64 :=
.seq rawBody165_190 rawBody165_191

def rawBody165_193 : StackLang.HolProg 64 :=
.seq rawBody165_189 rawBody165_192

def rawBody165_194 : StackLang.HolProg 64 :=
.seq rawBody165_188 rawBody165_193

def rawBody165_195 : StackLang.HolProg 64 :=
.seq rawBody165_187 rawBody165_194

def rawBody165_196 : StackLang.HolProg 64 :=
.seq rawBody165_186 rawBody165_195

def rawBody165_197 : StackLang.HolProg 64 :=
.seq rawBody165_185 rawBody165_196

def rawBody165_198 : StackLang.HolProg 64 :=
.seq rawBody165_184 rawBody165_197

def rawBody165_199 : StackLang.HolProg 64 :=
.seq rawBody165_183 rawBody165_198

def rawBody165_200 : StackLang.HolProg 64 :=
.seq rawBody165_182 rawBody165_199

def rawBody165_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody165_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody165_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody165_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody165_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody165_208 : StackLang.HolProg 64 :=
.seq rawBody165_206 rawBody165_207

def rawBody165_209 : StackLang.HolProg 64 :=
.seq rawBody165_205 rawBody165_208

def rawBody165_210 : StackLang.HolProg 64 :=
.seq rawBody165_204 rawBody165_209

def rawBody165_211 : StackLang.HolProg 64 :=
.seq rawBody165_203 rawBody165_210

def rawBody165_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody165_213 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody165_214 : StackLang.HolProg 64 :=
.seq rawBody165_212 rawBody165_213

def rawBody165_215 : StackLang.HolProg 64 :=
.call (some (rawBody165_211, 0, 165, 8)) (Sum.inl 76) (some (rawBody165_214, 165, 9))

def rawBody165_216 : StackLang.HolProg 64 :=
.seq rawBody165_202 rawBody165_215

def rawBody165_217 : StackLang.HolProg 64 :=
.seq rawBody165_201 rawBody165_216

def rawBody165_218 : StackLang.HolProg 64 :=
.seq rawBody165_200 rawBody165_217

def rawBody165_219 : StackLang.HolProg 64 :=
.seq rawBody165_181 rawBody165_218

def rawBody165_220 : StackLang.HolProg 64 :=
.seq rawBody165_178 rawBody165_219

def rawBody165_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody165_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody165_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody165_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody165_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody165_226 : StackLang.HolProg 64 :=
.seq rawBody165_224 rawBody165_225

def rawBody165_227 : StackLang.HolProg 64 :=
.seq rawBody165_223 rawBody165_226

def rawBody165_228 : StackLang.HolProg 64 :=
.seq rawBody165_222 rawBody165_227

def rawBody165_229 : StackLang.HolProg 64 :=
.seq rawBody165_221 rawBody165_228

def rawBody165_230 : StackLang.HolProg 64 :=
.seq rawBody165_220 rawBody165_229

def rawBody165_231 : StackLang.HolProg 64 :=
.seq rawBody165_177 rawBody165_230

def rawBody165_232 : StackLang.HolProg 64 :=
.seq rawBody165_176 rawBody165_231

def rawBody165_233 : StackLang.HolProg 64 :=
.seq rawBody165_175 rawBody165_232

def rawBody165_234 : StackLang.HolProg 64 :=
.seq rawBody165_58 rawBody165_233

def rawBody165_235 : StackLang.HolProg 64 :=
.seq rawBody165_55 rawBody165_234

def rawBody165_236 : StackLang.HolProg 64 :=
.seq rawBody165_54 rawBody165_235

def rawBody165_237 : StackLang.HolProg 64 :=
.seq rawBody165_5 rawBody165_236

def rawBody165_238 : StackLang.HolProg 64 :=
.seq rawBody165_0 rawBody165_237

def raw165 : StackLang.HolProg 64 := rawBody165_238
theorem raw165_eq : StackRawCall.compTop RawInfo.rawInfo (function165 (.list [])).1 = raw165 := by
  kernel_rfl
#print axioms raw165_eq
end InitECandidate.Proofs.BackendStages
