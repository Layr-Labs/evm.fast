import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function247
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody247_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody247_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody247_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody247_3 : StackLang.HolProg 64 :=
.seq rawBody247_1 rawBody247_2

def rawBody247_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 483#64)

def rawBody247_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_7 : StackLang.HolProg 64 :=
.seq rawBody247_5 rawBody247_6

def rawBody247_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody247_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody247_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 3

def rawBody247_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody247_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody247_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody247_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody247_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_18 : StackLang.HolProg 64 :=
.seq rawBody247_16 rawBody247_17

def rawBody247_19 : StackLang.HolProg 64 :=
.seq rawBody247_15 rawBody247_18

def rawBody247_20 : StackLang.HolProg 64 :=
.seq rawBody247_14 rawBody247_19

def rawBody247_21 : StackLang.HolProg 64 :=
.seq rawBody247_13 rawBody247_20

def rawBody247_22 : StackLang.HolProg 64 :=
.seq rawBody247_12 rawBody247_21

def rawBody247_23 : StackLang.HolProg 64 :=
.seq rawBody247_11 rawBody247_22

def rawBody247_24 : StackLang.HolProg 64 :=
.seq rawBody247_10 rawBody247_23

def rawBody247_25 : StackLang.HolProg 64 :=
.seq rawBody247_9 rawBody247_24

def rawBody247_26 : StackLang.HolProg 64 :=
.seq rawBody247_8 rawBody247_25

def rawBody247_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody247_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody247_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody247_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody247_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody247_35 : StackLang.HolProg 64 :=
.seq rawBody247_33 rawBody247_34

def rawBody247_36 : StackLang.HolProg 64 :=
.seq rawBody247_32 rawBody247_35

def rawBody247_37 : StackLang.HolProg 64 :=
.seq rawBody247_31 rawBody247_36

def rawBody247_38 : StackLang.HolProg 64 :=
.seq rawBody247_30 rawBody247_37

def rawBody247_39 : StackLang.HolProg 64 :=
.seq rawBody247_29 rawBody247_38

def rawBody247_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody247_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody247_42 : StackLang.HolProg 64 :=
.seq rawBody247_40 rawBody247_41

def rawBody247_43 : StackLang.HolProg 64 :=
.call (some (rawBody247_39, 0, 247, 2)) (Sum.inl 246) (some (rawBody247_42, 247, 3))

def rawBody247_44 : StackLang.HolProg 64 :=
.seq rawBody247_28 rawBody247_43

def rawBody247_45 : StackLang.HolProg 64 :=
.seq rawBody247_27 rawBody247_44

def rawBody247_46 : StackLang.HolProg 64 :=
.seq rawBody247_26 rawBody247_45

def rawBody247_47 : StackLang.HolProg 64 :=
.seq rawBody247_7 rawBody247_46

def rawBody247_48 : StackLang.HolProg 64 :=
.seq rawBody247_4 rawBody247_47

def rawBody247_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody247_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody247_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody247_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody247_54 : StackLang.HolProg 64 :=
.seq rawBody247_52 rawBody247_53

def rawBody247_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 484#64)

def rawBody247_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_58 : StackLang.HolProg 64 :=
.seq rawBody247_56 rawBody247_57

def rawBody247_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody247_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody247_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 5

def rawBody247_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody247_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody247_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody247_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody247_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_69 : StackLang.HolProg 64 :=
.seq rawBody247_67 rawBody247_68

def rawBody247_70 : StackLang.HolProg 64 :=
.seq rawBody247_66 rawBody247_69

def rawBody247_71 : StackLang.HolProg 64 :=
.seq rawBody247_65 rawBody247_70

def rawBody247_72 : StackLang.HolProg 64 :=
.seq rawBody247_64 rawBody247_71

def rawBody247_73 : StackLang.HolProg 64 :=
.seq rawBody247_63 rawBody247_72

def rawBody247_74 : StackLang.HolProg 64 :=
.seq rawBody247_62 rawBody247_73

def rawBody247_75 : StackLang.HolProg 64 :=
.seq rawBody247_61 rawBody247_74

def rawBody247_76 : StackLang.HolProg 64 :=
.seq rawBody247_60 rawBody247_75

def rawBody247_77 : StackLang.HolProg 64 :=
.seq rawBody247_59 rawBody247_76

def rawBody247_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody247_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody247_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody247_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody247_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody247_86 : StackLang.HolProg 64 :=
.seq rawBody247_84 rawBody247_85

def rawBody247_87 : StackLang.HolProg 64 :=
.seq rawBody247_83 rawBody247_86

def rawBody247_88 : StackLang.HolProg 64 :=
.seq rawBody247_82 rawBody247_87

def rawBody247_89 : StackLang.HolProg 64 :=
.seq rawBody247_81 rawBody247_88

def rawBody247_90 : StackLang.HolProg 64 :=
.seq rawBody247_80 rawBody247_89

def rawBody247_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody247_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody247_93 : StackLang.HolProg 64 :=
.seq rawBody247_91 rawBody247_92

def rawBody247_94 : StackLang.HolProg 64 :=
.call (some (rawBody247_90, 0, 247, 4)) (Sum.inl 246) (some (rawBody247_93, 247, 5))

def rawBody247_95 : StackLang.HolProg 64 :=
.seq rawBody247_79 rawBody247_94

def rawBody247_96 : StackLang.HolProg 64 :=
.seq rawBody247_78 rawBody247_95

def rawBody247_97 : StackLang.HolProg 64 :=
.seq rawBody247_77 rawBody247_96

def rawBody247_98 : StackLang.HolProg 64 :=
.seq rawBody247_58 rawBody247_97

def rawBody247_99 : StackLang.HolProg 64 :=
.seq rawBody247_55 rawBody247_98

def rawBody247_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody247_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody247_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody247_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody247_105 : StackLang.HolProg 64 :=
.seq rawBody247_103 rawBody247_104

def rawBody247_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 485#64)

def rawBody247_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_109 : StackLang.HolProg 64 :=
.seq rawBody247_107 rawBody247_108

def rawBody247_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody247_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody247_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 7

def rawBody247_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody247_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody247_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody247_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody247_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_120 : StackLang.HolProg 64 :=
.seq rawBody247_118 rawBody247_119

def rawBody247_121 : StackLang.HolProg 64 :=
.seq rawBody247_117 rawBody247_120

def rawBody247_122 : StackLang.HolProg 64 :=
.seq rawBody247_116 rawBody247_121

def rawBody247_123 : StackLang.HolProg 64 :=
.seq rawBody247_115 rawBody247_122

def rawBody247_124 : StackLang.HolProg 64 :=
.seq rawBody247_114 rawBody247_123

def rawBody247_125 : StackLang.HolProg 64 :=
.seq rawBody247_113 rawBody247_124

def rawBody247_126 : StackLang.HolProg 64 :=
.seq rawBody247_112 rawBody247_125

def rawBody247_127 : StackLang.HolProg 64 :=
.seq rawBody247_111 rawBody247_126

def rawBody247_128 : StackLang.HolProg 64 :=
.seq rawBody247_110 rawBody247_127

def rawBody247_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody247_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody247_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody247_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody247_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody247_137 : StackLang.HolProg 64 :=
.seq rawBody247_135 rawBody247_136

def rawBody247_138 : StackLang.HolProg 64 :=
.seq rawBody247_134 rawBody247_137

def rawBody247_139 : StackLang.HolProg 64 :=
.seq rawBody247_133 rawBody247_138

def rawBody247_140 : StackLang.HolProg 64 :=
.seq rawBody247_132 rawBody247_139

def rawBody247_141 : StackLang.HolProg 64 :=
.seq rawBody247_131 rawBody247_140

def rawBody247_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody247_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody247_144 : StackLang.HolProg 64 :=
.seq rawBody247_142 rawBody247_143

def rawBody247_145 : StackLang.HolProg 64 :=
.call (some (rawBody247_141, 0, 247, 6)) (Sum.inl 246) (some (rawBody247_144, 247, 7))

def rawBody247_146 : StackLang.HolProg 64 :=
.seq rawBody247_130 rawBody247_145

def rawBody247_147 : StackLang.HolProg 64 :=
.seq rawBody247_129 rawBody247_146

def rawBody247_148 : StackLang.HolProg 64 :=
.seq rawBody247_128 rawBody247_147

def rawBody247_149 : StackLang.HolProg 64 :=
.seq rawBody247_109 rawBody247_148

def rawBody247_150 : StackLang.HolProg 64 :=
.seq rawBody247_106 rawBody247_149

def rawBody247_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody247_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody247_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody247_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 486#64)

def rawBody247_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_158 : StackLang.HolProg 64 :=
.seq rawBody247_156 rawBody247_157

def rawBody247_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody247_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody247_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody247_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 9

def rawBody247_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody247_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody247_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody247_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody247_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_169 : StackLang.HolProg 64 :=
.seq rawBody247_167 rawBody247_168

def rawBody247_170 : StackLang.HolProg 64 :=
.seq rawBody247_166 rawBody247_169

def rawBody247_171 : StackLang.HolProg 64 :=
.seq rawBody247_165 rawBody247_170

def rawBody247_172 : StackLang.HolProg 64 :=
.seq rawBody247_164 rawBody247_171

def rawBody247_173 : StackLang.HolProg 64 :=
.seq rawBody247_163 rawBody247_172

def rawBody247_174 : StackLang.HolProg 64 :=
.seq rawBody247_162 rawBody247_173

def rawBody247_175 : StackLang.HolProg 64 :=
.seq rawBody247_161 rawBody247_174

def rawBody247_176 : StackLang.HolProg 64 :=
.seq rawBody247_160 rawBody247_175

def rawBody247_177 : StackLang.HolProg 64 :=
.seq rawBody247_159 rawBody247_176

def rawBody247_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody247_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody247_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody247_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody247_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody247_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody247_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody247_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody247_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody247_189 : StackLang.HolProg 64 :=
.seq rawBody247_187 rawBody247_188

def rawBody247_190 : StackLang.HolProg 64 :=
.seq rawBody247_186 rawBody247_189

def rawBody247_191 : StackLang.HolProg 64 :=
.seq rawBody247_185 rawBody247_190

def rawBody247_192 : StackLang.HolProg 64 :=
.seq rawBody247_184 rawBody247_191

def rawBody247_193 : StackLang.HolProg 64 :=
.seq rawBody247_183 rawBody247_192

def rawBody247_194 : StackLang.HolProg 64 :=
.seq rawBody247_182 rawBody247_193

def rawBody247_195 : StackLang.HolProg 64 :=
.seq rawBody247_181 rawBody247_194

def rawBody247_196 : StackLang.HolProg 64 :=
.seq rawBody247_180 rawBody247_195

def rawBody247_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody247_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody247_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody247_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody247_201 : StackLang.HolProg 64 :=
.seq rawBody247_199 rawBody247_200

def rawBody247_202 : StackLang.HolProg 64 :=
.seq rawBody247_198 rawBody247_201

def rawBody247_203 : StackLang.HolProg 64 :=
.seq rawBody247_197 rawBody247_202

def rawBody247_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody247_205 : StackLang.HolProg 64 :=
.seq rawBody247_203 rawBody247_204

def rawBody247_206 : StackLang.HolProg 64 :=
.call (some (rawBody247_196, 0, 247, 8)) (Sum.inl 246) (some (rawBody247_205, 247, 9))

def rawBody247_207 : StackLang.HolProg 64 :=
.seq rawBody247_179 rawBody247_206

def rawBody247_208 : StackLang.HolProg 64 :=
.seq rawBody247_178 rawBody247_207

def rawBody247_209 : StackLang.HolProg 64 :=
.seq rawBody247_177 rawBody247_208

def rawBody247_210 : StackLang.HolProg 64 :=
.seq rawBody247_158 rawBody247_209

def rawBody247_211 : StackLang.HolProg 64 :=
.seq rawBody247_155 rawBody247_210

def rawBody247_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody247_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody247_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody247_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody247_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody247_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody247_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody247_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody247_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody247_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody247_226 : StackLang.HolProg 64 :=
.seq rawBody247_224 rawBody247_225

def rawBody247_227 : StackLang.HolProg 64 :=
.seq rawBody247_223 rawBody247_226

def rawBody247_228 : StackLang.HolProg 64 :=
.seq rawBody247_222 rawBody247_227

def rawBody247_229 : StackLang.HolProg 64 :=
.seq rawBody247_221 rawBody247_228

def rawBody247_230 : StackLang.HolProg 64 :=
.seq rawBody247_220 rawBody247_229

def rawBody247_231 : StackLang.HolProg 64 :=
.seq rawBody247_219 rawBody247_230

def rawBody247_232 : StackLang.HolProg 64 :=
.seq rawBody247_218 rawBody247_231

def rawBody247_233 : StackLang.HolProg 64 :=
.seq rawBody247_217 rawBody247_232

def rawBody247_234 : StackLang.HolProg 64 :=
.seq rawBody247_216 rawBody247_233

def rawBody247_235 : StackLang.HolProg 64 :=
.seq rawBody247_215 rawBody247_234

def rawBody247_236 : StackLang.HolProg 64 :=
.seq rawBody247_214 rawBody247_235

def rawBody247_237 : StackLang.HolProg 64 :=
.seq rawBody247_213 rawBody247_236

def rawBody247_238 : StackLang.HolProg 64 :=
.seq rawBody247_212 rawBody247_237

def rawBody247_239 : StackLang.HolProg 64 :=
.seq rawBody247_211 rawBody247_238

def rawBody247_240 : StackLang.HolProg 64 :=
.seq rawBody247_154 rawBody247_239

def rawBody247_241 : StackLang.HolProg 64 :=
.seq rawBody247_153 rawBody247_240

def rawBody247_242 : StackLang.HolProg 64 :=
.seq rawBody247_152 rawBody247_241

def rawBody247_243 : StackLang.HolProg 64 :=
.seq rawBody247_151 rawBody247_242

def rawBody247_244 : StackLang.HolProg 64 :=
.seq rawBody247_150 rawBody247_243

def rawBody247_245 : StackLang.HolProg 64 :=
.seq rawBody247_105 rawBody247_244

def rawBody247_246 : StackLang.HolProg 64 :=
.seq rawBody247_102 rawBody247_245

def rawBody247_247 : StackLang.HolProg 64 :=
.seq rawBody247_101 rawBody247_246

def rawBody247_248 : StackLang.HolProg 64 :=
.seq rawBody247_100 rawBody247_247

def rawBody247_249 : StackLang.HolProg 64 :=
.seq rawBody247_99 rawBody247_248

def rawBody247_250 : StackLang.HolProg 64 :=
.seq rawBody247_54 rawBody247_249

def rawBody247_251 : StackLang.HolProg 64 :=
.seq rawBody247_51 rawBody247_250

def rawBody247_252 : StackLang.HolProg 64 :=
.seq rawBody247_50 rawBody247_251

def rawBody247_253 : StackLang.HolProg 64 :=
.seq rawBody247_49 rawBody247_252

def rawBody247_254 : StackLang.HolProg 64 :=
.seq rawBody247_48 rawBody247_253

def rawBody247_255 : StackLang.HolProg 64 :=
.seq rawBody247_3 rawBody247_254

def rawBody247_256 : StackLang.HolProg 64 :=
.seq rawBody247_0 rawBody247_255

def raw247 : StackLang.HolProg 64 := rawBody247_256
theorem raw247_eq : StackRawCall.compTop RawInfo.rawInfo (function247 (.list [])).1 = raw247 := by
  kernel_rfl
#print axioms raw247_eq
end InitECandidate.Proofs.BackendStages
