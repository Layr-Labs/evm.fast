import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function423
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody423_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody423_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody423_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody423_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody423_4 : StackLang.HolProg 64 :=
.seq rawBody423_2 rawBody423_3

def rawBody423_5 : StackLang.HolProg 64 :=
.seq rawBody423_1 rawBody423_4

def rawBody423_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1261#64)

def rawBody423_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody423_9 : StackLang.HolProg 64 :=
.seq rawBody423_7 rawBody423_8

def rawBody423_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody423_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody423_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody423_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 3

def rawBody423_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody423_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody423_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody423_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody423_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody423_20 : StackLang.HolProg 64 :=
.seq rawBody423_18 rawBody423_19

def rawBody423_21 : StackLang.HolProg 64 :=
.seq rawBody423_17 rawBody423_20

def rawBody423_22 : StackLang.HolProg 64 :=
.seq rawBody423_16 rawBody423_21

def rawBody423_23 : StackLang.HolProg 64 :=
.seq rawBody423_15 rawBody423_22

def rawBody423_24 : StackLang.HolProg 64 :=
.seq rawBody423_14 rawBody423_23

def rawBody423_25 : StackLang.HolProg 64 :=
.seq rawBody423_13 rawBody423_24

def rawBody423_26 : StackLang.HolProg 64 :=
.seq rawBody423_12 rawBody423_25

def rawBody423_27 : StackLang.HolProg 64 :=
.seq rawBody423_11 rawBody423_26

def rawBody423_28 : StackLang.HolProg 64 :=
.seq rawBody423_10 rawBody423_27

def rawBody423_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody423_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody423_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody423_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody423_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody423_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody423_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody423_38 : StackLang.HolProg 64 :=
.seq rawBody423_36 rawBody423_37

def rawBody423_39 : StackLang.HolProg 64 :=
.seq rawBody423_35 rawBody423_38

def rawBody423_40 : StackLang.HolProg 64 :=
.seq rawBody423_34 rawBody423_39

def rawBody423_41 : StackLang.HolProg 64 :=
.seq rawBody423_33 rawBody423_40

def rawBody423_42 : StackLang.HolProg 64 :=
.seq rawBody423_32 rawBody423_41

def rawBody423_43 : StackLang.HolProg 64 :=
.seq rawBody423_31 rawBody423_42

def rawBody423_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody423_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody423_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody423_47 : StackLang.HolProg 64 :=
.seq rawBody423_45 rawBody423_46

def rawBody423_48 : StackLang.HolProg 64 :=
.seq rawBody423_44 rawBody423_47

def rawBody423_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody423_50 : StackLang.HolProg 64 :=
.seq rawBody423_48 rawBody423_49

def rawBody423_51 : StackLang.HolProg 64 :=
.call (some (rawBody423_43, 0, 423, 2)) (Sum.inl 419) (some (rawBody423_50, 423, 3))

def rawBody423_52 : StackLang.HolProg 64 :=
.seq rawBody423_30 rawBody423_51

def rawBody423_53 : StackLang.HolProg 64 :=
.seq rawBody423_29 rawBody423_52

def rawBody423_54 : StackLang.HolProg 64 :=
.seq rawBody423_28 rawBody423_53

def rawBody423_55 : StackLang.HolProg 64 :=
.seq rawBody423_9 rawBody423_54

def rawBody423_56 : StackLang.HolProg 64 :=
.seq rawBody423_6 rawBody423_55

def rawBody423_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody423_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody423_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1262#64)

def rawBody423_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody423_62 : StackLang.HolProg 64 :=
.seq rawBody423_60 rawBody423_61

def rawBody423_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody423_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody423_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody423_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 5

def rawBody423_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody423_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody423_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody423_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody423_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody423_73 : StackLang.HolProg 64 :=
.seq rawBody423_71 rawBody423_72

def rawBody423_74 : StackLang.HolProg 64 :=
.seq rawBody423_70 rawBody423_73

def rawBody423_75 : StackLang.HolProg 64 :=
.seq rawBody423_69 rawBody423_74

def rawBody423_76 : StackLang.HolProg 64 :=
.seq rawBody423_68 rawBody423_75

def rawBody423_77 : StackLang.HolProg 64 :=
.seq rawBody423_67 rawBody423_76

def rawBody423_78 : StackLang.HolProg 64 :=
.seq rawBody423_66 rawBody423_77

def rawBody423_79 : StackLang.HolProg 64 :=
.seq rawBody423_65 rawBody423_78

def rawBody423_80 : StackLang.HolProg 64 :=
.seq rawBody423_64 rawBody423_79

def rawBody423_81 : StackLang.HolProg 64 :=
.seq rawBody423_63 rawBody423_80

def rawBody423_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody423_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody423_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody423_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody423_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody423_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody423_90 : StackLang.HolProg 64 :=
.seq rawBody423_88 rawBody423_89

def rawBody423_91 : StackLang.HolProg 64 :=
.seq rawBody423_87 rawBody423_90

def rawBody423_92 : StackLang.HolProg 64 :=
.seq rawBody423_86 rawBody423_91

def rawBody423_93 : StackLang.HolProg 64 :=
.seq rawBody423_85 rawBody423_92

def rawBody423_94 : StackLang.HolProg 64 :=
.seq rawBody423_84 rawBody423_93

def rawBody423_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody423_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody423_97 : StackLang.HolProg 64 :=
.seq rawBody423_95 rawBody423_96

def rawBody423_98 : StackLang.HolProg 64 :=
.call (some (rawBody423_94, 0, 423, 4)) (Sum.inl 416) (some (rawBody423_97, 423, 5))

def rawBody423_99 : StackLang.HolProg 64 :=
.seq rawBody423_83 rawBody423_98

def rawBody423_100 : StackLang.HolProg 64 :=
.seq rawBody423_82 rawBody423_99

def rawBody423_101 : StackLang.HolProg 64 :=
.seq rawBody423_81 rawBody423_100

def rawBody423_102 : StackLang.HolProg 64 :=
.seq rawBody423_62 rawBody423_101

def rawBody423_103 : StackLang.HolProg 64 :=
.seq rawBody423_59 rawBody423_102

def rawBody423_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody423_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody423_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody423_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody423_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1263#64)

def rawBody423_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody423_112 : StackLang.HolProg 64 :=
.seq rawBody423_110 rawBody423_111

def rawBody423_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody423_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody423_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody423_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 7

def rawBody423_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody423_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody423_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody423_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody423_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody423_123 : StackLang.HolProg 64 :=
.seq rawBody423_121 rawBody423_122

def rawBody423_124 : StackLang.HolProg 64 :=
.seq rawBody423_120 rawBody423_123

def rawBody423_125 : StackLang.HolProg 64 :=
.seq rawBody423_119 rawBody423_124

def rawBody423_126 : StackLang.HolProg 64 :=
.seq rawBody423_118 rawBody423_125

def rawBody423_127 : StackLang.HolProg 64 :=
.seq rawBody423_117 rawBody423_126

def rawBody423_128 : StackLang.HolProg 64 :=
.seq rawBody423_116 rawBody423_127

def rawBody423_129 : StackLang.HolProg 64 :=
.seq rawBody423_115 rawBody423_128

def rawBody423_130 : StackLang.HolProg 64 :=
.seq rawBody423_114 rawBody423_129

def rawBody423_131 : StackLang.HolProg 64 :=
.seq rawBody423_113 rawBody423_130

def rawBody423_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody423_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody423_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody423_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody423_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody423_139 : StackLang.HolProg 64 :=
.seq rawBody423_137 rawBody423_138

def rawBody423_140 : StackLang.HolProg 64 :=
.seq rawBody423_136 rawBody423_139

def rawBody423_141 : StackLang.HolProg 64 :=
.seq rawBody423_135 rawBody423_140

def rawBody423_142 : StackLang.HolProg 64 :=
.seq rawBody423_134 rawBody423_141

def rawBody423_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody423_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody423_145 : StackLang.HolProg 64 :=
.seq rawBody423_143 rawBody423_144

def rawBody423_146 : StackLang.HolProg 64 :=
.call (some (rawBody423_142, 0, 423, 6)) (Sum.inl 422) (some (rawBody423_145, 423, 7))

def rawBody423_147 : StackLang.HolProg 64 :=
.seq rawBody423_133 rawBody423_146

def rawBody423_148 : StackLang.HolProg 64 :=
.seq rawBody423_132 rawBody423_147

def rawBody423_149 : StackLang.HolProg 64 :=
.seq rawBody423_131 rawBody423_148

def rawBody423_150 : StackLang.HolProg 64 :=
.seq rawBody423_112 rawBody423_149

def rawBody423_151 : StackLang.HolProg 64 :=
.seq rawBody423_109 rawBody423_150

def rawBody423_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody423_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_154 : StackLang.HolProg 64 :=
.seq rawBody423_152 rawBody423_153

def rawBody423_155 : StackLang.HolProg 64 :=
.seq rawBody423_151 rawBody423_154

def rawBody423_156 : StackLang.HolProg 64 :=
.seq rawBody423_108 rawBody423_155

def rawBody423_157 : StackLang.HolProg 64 :=
.seq rawBody423_107 rawBody423_156

def rawBody423_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody423_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody423_160 : StackLang.HolProg 64 :=
.seq rawBody423_158 rawBody423_159

def rawBody423_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody423_157 rawBody423_160

def rawBody423_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody423_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody423_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody423_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody423_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody423_167 : StackLang.HolProg 64 :=
.seq rawBody423_165 rawBody423_166

def rawBody423_168 : StackLang.HolProg 64 :=
.seq rawBody423_164 rawBody423_167

def rawBody423_169 : StackLang.HolProg 64 :=
.seq rawBody423_163 rawBody423_168

def rawBody423_170 : StackLang.HolProg 64 :=
.seq rawBody423_162 rawBody423_169

def rawBody423_171 : StackLang.HolProg 64 :=
.seq rawBody423_161 rawBody423_170

def rawBody423_172 : StackLang.HolProg 64 :=
.seq rawBody423_106 rawBody423_171

def rawBody423_173 : StackLang.HolProg 64 :=
.seq rawBody423_105 rawBody423_172

def rawBody423_174 : StackLang.HolProg 64 :=
.seq rawBody423_104 rawBody423_173

def rawBody423_175 : StackLang.HolProg 64 :=
.seq rawBody423_103 rawBody423_174

def rawBody423_176 : StackLang.HolProg 64 :=
.seq rawBody423_58 rawBody423_175

def rawBody423_177 : StackLang.HolProg 64 :=
.seq rawBody423_57 rawBody423_176

def rawBody423_178 : StackLang.HolProg 64 :=
.seq rawBody423_56 rawBody423_177

def rawBody423_179 : StackLang.HolProg 64 :=
.seq rawBody423_5 rawBody423_178

def rawBody423_180 : StackLang.HolProg 64 :=
.seq rawBody423_0 rawBody423_179

def raw423 : StackLang.HolProg 64 := rawBody423_180
theorem raw423_eq : StackRawCall.compTop RawInfo.rawInfo (function423 (.list [])).1 = raw423 := by
  kernel_rfl
#print axioms raw423_eq
end InitECandidate.Proofs.BackendStages
