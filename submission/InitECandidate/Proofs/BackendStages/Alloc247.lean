import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw247
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody247_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody247_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody247_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody247_3 : StackLang.HolProg 64 :=
.seq AllocBody247_1 AllocBody247_2

def AllocBody247_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 483#64)

def AllocBody247_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_7 : StackLang.HolProg 64 :=
.seq AllocBody247_5 AllocBody247_6

def AllocBody247_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody247_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody247_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 3

def AllocBody247_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody247_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody247_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody247_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody247_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_18 : StackLang.HolProg 64 :=
.seq AllocBody247_16 AllocBody247_17

def AllocBody247_19 : StackLang.HolProg 64 :=
.seq AllocBody247_15 AllocBody247_18

def AllocBody247_20 : StackLang.HolProg 64 :=
.seq AllocBody247_14 AllocBody247_19

def AllocBody247_21 : StackLang.HolProg 64 :=
.seq AllocBody247_13 AllocBody247_20

def AllocBody247_22 : StackLang.HolProg 64 :=
.seq AllocBody247_12 AllocBody247_21

def AllocBody247_23 : StackLang.HolProg 64 :=
.seq AllocBody247_11 AllocBody247_22

def AllocBody247_24 : StackLang.HolProg 64 :=
.seq AllocBody247_10 AllocBody247_23

def AllocBody247_25 : StackLang.HolProg 64 :=
.seq AllocBody247_9 AllocBody247_24

def AllocBody247_26 : StackLang.HolProg 64 :=
.seq AllocBody247_8 AllocBody247_25

def AllocBody247_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody247_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody247_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody247_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody247_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody247_35 : StackLang.HolProg 64 :=
.seq AllocBody247_33 AllocBody247_34

def AllocBody247_36 : StackLang.HolProg 64 :=
.seq AllocBody247_32 AllocBody247_35

def AllocBody247_37 : StackLang.HolProg 64 :=
.seq AllocBody247_31 AllocBody247_36

def AllocBody247_38 : StackLang.HolProg 64 :=
.seq AllocBody247_30 AllocBody247_37

def AllocBody247_39 : StackLang.HolProg 64 :=
.seq AllocBody247_29 AllocBody247_38

def AllocBody247_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody247_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody247_42 : StackLang.HolProg 64 :=
.seq AllocBody247_40 AllocBody247_41

def AllocBody247_43 : StackLang.HolProg 64 :=
.call (some (AllocBody247_39, 0, 247, 2)) (Sum.inl 246) (some (AllocBody247_42, 247, 3))

def AllocBody247_44 : StackLang.HolProg 64 :=
.seq AllocBody247_28 AllocBody247_43

def AllocBody247_45 : StackLang.HolProg 64 :=
.seq AllocBody247_27 AllocBody247_44

def AllocBody247_46 : StackLang.HolProg 64 :=
.seq AllocBody247_26 AllocBody247_45

def AllocBody247_47 : StackLang.HolProg 64 :=
.seq AllocBody247_7 AllocBody247_46

def AllocBody247_48 : StackLang.HolProg 64 :=
.seq AllocBody247_4 AllocBody247_47

def AllocBody247_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody247_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody247_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody247_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody247_54 : StackLang.HolProg 64 :=
.seq AllocBody247_52 AllocBody247_53

def AllocBody247_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 484#64)

def AllocBody247_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_58 : StackLang.HolProg 64 :=
.seq AllocBody247_56 AllocBody247_57

def AllocBody247_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody247_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody247_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 5

def AllocBody247_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody247_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody247_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody247_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody247_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_69 : StackLang.HolProg 64 :=
.seq AllocBody247_67 AllocBody247_68

def AllocBody247_70 : StackLang.HolProg 64 :=
.seq AllocBody247_66 AllocBody247_69

def AllocBody247_71 : StackLang.HolProg 64 :=
.seq AllocBody247_65 AllocBody247_70

def AllocBody247_72 : StackLang.HolProg 64 :=
.seq AllocBody247_64 AllocBody247_71

def AllocBody247_73 : StackLang.HolProg 64 :=
.seq AllocBody247_63 AllocBody247_72

def AllocBody247_74 : StackLang.HolProg 64 :=
.seq AllocBody247_62 AllocBody247_73

def AllocBody247_75 : StackLang.HolProg 64 :=
.seq AllocBody247_61 AllocBody247_74

def AllocBody247_76 : StackLang.HolProg 64 :=
.seq AllocBody247_60 AllocBody247_75

def AllocBody247_77 : StackLang.HolProg 64 :=
.seq AllocBody247_59 AllocBody247_76

def AllocBody247_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody247_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody247_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody247_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody247_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody247_86 : StackLang.HolProg 64 :=
.seq AllocBody247_84 AllocBody247_85

def AllocBody247_87 : StackLang.HolProg 64 :=
.seq AllocBody247_83 AllocBody247_86

def AllocBody247_88 : StackLang.HolProg 64 :=
.seq AllocBody247_82 AllocBody247_87

def AllocBody247_89 : StackLang.HolProg 64 :=
.seq AllocBody247_81 AllocBody247_88

def AllocBody247_90 : StackLang.HolProg 64 :=
.seq AllocBody247_80 AllocBody247_89

def AllocBody247_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody247_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody247_93 : StackLang.HolProg 64 :=
.seq AllocBody247_91 AllocBody247_92

def AllocBody247_94 : StackLang.HolProg 64 :=
.call (some (AllocBody247_90, 0, 247, 4)) (Sum.inl 246) (some (AllocBody247_93, 247, 5))

def AllocBody247_95 : StackLang.HolProg 64 :=
.seq AllocBody247_79 AllocBody247_94

def AllocBody247_96 : StackLang.HolProg 64 :=
.seq AllocBody247_78 AllocBody247_95

def AllocBody247_97 : StackLang.HolProg 64 :=
.seq AllocBody247_77 AllocBody247_96

def AllocBody247_98 : StackLang.HolProg 64 :=
.seq AllocBody247_58 AllocBody247_97

def AllocBody247_99 : StackLang.HolProg 64 :=
.seq AllocBody247_55 AllocBody247_98

def AllocBody247_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody247_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody247_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody247_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody247_105 : StackLang.HolProg 64 :=
.seq AllocBody247_103 AllocBody247_104

def AllocBody247_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 485#64)

def AllocBody247_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_109 : StackLang.HolProg 64 :=
.seq AllocBody247_107 AllocBody247_108

def AllocBody247_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody247_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody247_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 7

def AllocBody247_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody247_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody247_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody247_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody247_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_120 : StackLang.HolProg 64 :=
.seq AllocBody247_118 AllocBody247_119

def AllocBody247_121 : StackLang.HolProg 64 :=
.seq AllocBody247_117 AllocBody247_120

def AllocBody247_122 : StackLang.HolProg 64 :=
.seq AllocBody247_116 AllocBody247_121

def AllocBody247_123 : StackLang.HolProg 64 :=
.seq AllocBody247_115 AllocBody247_122

def AllocBody247_124 : StackLang.HolProg 64 :=
.seq AllocBody247_114 AllocBody247_123

def AllocBody247_125 : StackLang.HolProg 64 :=
.seq AllocBody247_113 AllocBody247_124

def AllocBody247_126 : StackLang.HolProg 64 :=
.seq AllocBody247_112 AllocBody247_125

def AllocBody247_127 : StackLang.HolProg 64 :=
.seq AllocBody247_111 AllocBody247_126

def AllocBody247_128 : StackLang.HolProg 64 :=
.seq AllocBody247_110 AllocBody247_127

def AllocBody247_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody247_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody247_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody247_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody247_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody247_137 : StackLang.HolProg 64 :=
.seq AllocBody247_135 AllocBody247_136

def AllocBody247_138 : StackLang.HolProg 64 :=
.seq AllocBody247_134 AllocBody247_137

def AllocBody247_139 : StackLang.HolProg 64 :=
.seq AllocBody247_133 AllocBody247_138

def AllocBody247_140 : StackLang.HolProg 64 :=
.seq AllocBody247_132 AllocBody247_139

def AllocBody247_141 : StackLang.HolProg 64 :=
.seq AllocBody247_131 AllocBody247_140

def AllocBody247_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody247_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody247_144 : StackLang.HolProg 64 :=
.seq AllocBody247_142 AllocBody247_143

def AllocBody247_145 : StackLang.HolProg 64 :=
.call (some (AllocBody247_141, 0, 247, 6)) (Sum.inl 246) (some (AllocBody247_144, 247, 7))

def AllocBody247_146 : StackLang.HolProg 64 :=
.seq AllocBody247_130 AllocBody247_145

def AllocBody247_147 : StackLang.HolProg 64 :=
.seq AllocBody247_129 AllocBody247_146

def AllocBody247_148 : StackLang.HolProg 64 :=
.seq AllocBody247_128 AllocBody247_147

def AllocBody247_149 : StackLang.HolProg 64 :=
.seq AllocBody247_109 AllocBody247_148

def AllocBody247_150 : StackLang.HolProg 64 :=
.seq AllocBody247_106 AllocBody247_149

def AllocBody247_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody247_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody247_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody247_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 486#64)

def AllocBody247_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_158 : StackLang.HolProg 64 :=
.seq AllocBody247_156 AllocBody247_157

def AllocBody247_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody247_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody247_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody247_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 247 9

def AllocBody247_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody247_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody247_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody247_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody247_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_169 : StackLang.HolProg 64 :=
.seq AllocBody247_167 AllocBody247_168

def AllocBody247_170 : StackLang.HolProg 64 :=
.seq AllocBody247_166 AllocBody247_169

def AllocBody247_171 : StackLang.HolProg 64 :=
.seq AllocBody247_165 AllocBody247_170

def AllocBody247_172 : StackLang.HolProg 64 :=
.seq AllocBody247_164 AllocBody247_171

def AllocBody247_173 : StackLang.HolProg 64 :=
.seq AllocBody247_163 AllocBody247_172

def AllocBody247_174 : StackLang.HolProg 64 :=
.seq AllocBody247_162 AllocBody247_173

def AllocBody247_175 : StackLang.HolProg 64 :=
.seq AllocBody247_161 AllocBody247_174

def AllocBody247_176 : StackLang.HolProg 64 :=
.seq AllocBody247_160 AllocBody247_175

def AllocBody247_177 : StackLang.HolProg 64 :=
.seq AllocBody247_159 AllocBody247_176

def AllocBody247_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody247_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody247_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody247_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody247_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody247_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody247_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody247_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody247_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody247_189 : StackLang.HolProg 64 :=
.seq AllocBody247_187 AllocBody247_188

def AllocBody247_190 : StackLang.HolProg 64 :=
.seq AllocBody247_186 AllocBody247_189

def AllocBody247_191 : StackLang.HolProg 64 :=
.seq AllocBody247_185 AllocBody247_190

def AllocBody247_192 : StackLang.HolProg 64 :=
.seq AllocBody247_184 AllocBody247_191

def AllocBody247_193 : StackLang.HolProg 64 :=
.seq AllocBody247_183 AllocBody247_192

def AllocBody247_194 : StackLang.HolProg 64 :=
.seq AllocBody247_182 AllocBody247_193

def AllocBody247_195 : StackLang.HolProg 64 :=
.seq AllocBody247_181 AllocBody247_194

def AllocBody247_196 : StackLang.HolProg 64 :=
.seq AllocBody247_180 AllocBody247_195

def AllocBody247_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody247_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody247_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody247_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody247_201 : StackLang.HolProg 64 :=
.seq AllocBody247_199 AllocBody247_200

def AllocBody247_202 : StackLang.HolProg 64 :=
.seq AllocBody247_198 AllocBody247_201

def AllocBody247_203 : StackLang.HolProg 64 :=
.seq AllocBody247_197 AllocBody247_202

def AllocBody247_204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody247_205 : StackLang.HolProg 64 :=
.seq AllocBody247_203 AllocBody247_204

def AllocBody247_206 : StackLang.HolProg 64 :=
.call (some (AllocBody247_196, 0, 247, 8)) (Sum.inl 246) (some (AllocBody247_205, 247, 9))

def AllocBody247_207 : StackLang.HolProg 64 :=
.seq AllocBody247_179 AllocBody247_206

def AllocBody247_208 : StackLang.HolProg 64 :=
.seq AllocBody247_178 AllocBody247_207

def AllocBody247_209 : StackLang.HolProg 64 :=
.seq AllocBody247_177 AllocBody247_208

def AllocBody247_210 : StackLang.HolProg 64 :=
.seq AllocBody247_158 AllocBody247_209

def AllocBody247_211 : StackLang.HolProg 64 :=
.seq AllocBody247_155 AllocBody247_210

def AllocBody247_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody247_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody247_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody247_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody247_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody247_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody247_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody247_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody247_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody247_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody247_226 : StackLang.HolProg 64 :=
.seq AllocBody247_224 AllocBody247_225

def AllocBody247_227 : StackLang.HolProg 64 :=
.seq AllocBody247_223 AllocBody247_226

def AllocBody247_228 : StackLang.HolProg 64 :=
.seq AllocBody247_222 AllocBody247_227

def AllocBody247_229 : StackLang.HolProg 64 :=
.seq AllocBody247_221 AllocBody247_228

def AllocBody247_230 : StackLang.HolProg 64 :=
.seq AllocBody247_220 AllocBody247_229

def AllocBody247_231 : StackLang.HolProg 64 :=
.seq AllocBody247_219 AllocBody247_230

def AllocBody247_232 : StackLang.HolProg 64 :=
.seq AllocBody247_218 AllocBody247_231

def AllocBody247_233 : StackLang.HolProg 64 :=
.seq AllocBody247_217 AllocBody247_232

def AllocBody247_234 : StackLang.HolProg 64 :=
.seq AllocBody247_216 AllocBody247_233

def AllocBody247_235 : StackLang.HolProg 64 :=
.seq AllocBody247_215 AllocBody247_234

def AllocBody247_236 : StackLang.HolProg 64 :=
.seq AllocBody247_214 AllocBody247_235

def AllocBody247_237 : StackLang.HolProg 64 :=
.seq AllocBody247_213 AllocBody247_236

def AllocBody247_238 : StackLang.HolProg 64 :=
.seq AllocBody247_212 AllocBody247_237

def AllocBody247_239 : StackLang.HolProg 64 :=
.seq AllocBody247_211 AllocBody247_238

def AllocBody247_240 : StackLang.HolProg 64 :=
.seq AllocBody247_154 AllocBody247_239

def AllocBody247_241 : StackLang.HolProg 64 :=
.seq AllocBody247_153 AllocBody247_240

def AllocBody247_242 : StackLang.HolProg 64 :=
.seq AllocBody247_152 AllocBody247_241

def AllocBody247_243 : StackLang.HolProg 64 :=
.seq AllocBody247_151 AllocBody247_242

def AllocBody247_244 : StackLang.HolProg 64 :=
.seq AllocBody247_150 AllocBody247_243

def AllocBody247_245 : StackLang.HolProg 64 :=
.seq AllocBody247_105 AllocBody247_244

def AllocBody247_246 : StackLang.HolProg 64 :=
.seq AllocBody247_102 AllocBody247_245

def AllocBody247_247 : StackLang.HolProg 64 :=
.seq AllocBody247_101 AllocBody247_246

def AllocBody247_248 : StackLang.HolProg 64 :=
.seq AllocBody247_100 AllocBody247_247

def AllocBody247_249 : StackLang.HolProg 64 :=
.seq AllocBody247_99 AllocBody247_248

def AllocBody247_250 : StackLang.HolProg 64 :=
.seq AllocBody247_54 AllocBody247_249

def AllocBody247_251 : StackLang.HolProg 64 :=
.seq AllocBody247_51 AllocBody247_250

def AllocBody247_252 : StackLang.HolProg 64 :=
.seq AllocBody247_50 AllocBody247_251

def AllocBody247_253 : StackLang.HolProg 64 :=
.seq AllocBody247_49 AllocBody247_252

def AllocBody247_254 : StackLang.HolProg 64 :=
.seq AllocBody247_48 AllocBody247_253

def AllocBody247_255 : StackLang.HolProg 64 :=
.seq AllocBody247_3 AllocBody247_254

def AllocBody247_256 : StackLang.HolProg 64 :=
.seq AllocBody247_0 AllocBody247_255

def Alloc247 : Nat × StackLang.HolProg 64 := (247, AllocBody247_256)
theorem Alloc247_eq : StackAlloc.progComp (247, raw247) = Alloc247 := by
  kernel_rfl
#print axioms Alloc247_eq
end InitECandidate.Proofs.BackendStages
