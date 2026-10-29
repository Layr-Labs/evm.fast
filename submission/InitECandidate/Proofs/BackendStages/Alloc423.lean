import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw423
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody423_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody423_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody423_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody423_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody423_4 : StackLang.HolProg 64 :=
.seq AllocBody423_2 AllocBody423_3

def AllocBody423_5 : StackLang.HolProg 64 :=
.seq AllocBody423_1 AllocBody423_4

def AllocBody423_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1261#64)

def AllocBody423_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody423_9 : StackLang.HolProg 64 :=
.seq AllocBody423_7 AllocBody423_8

def AllocBody423_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody423_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody423_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody423_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 3

def AllocBody423_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody423_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody423_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody423_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody423_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody423_20 : StackLang.HolProg 64 :=
.seq AllocBody423_18 AllocBody423_19

def AllocBody423_21 : StackLang.HolProg 64 :=
.seq AllocBody423_17 AllocBody423_20

def AllocBody423_22 : StackLang.HolProg 64 :=
.seq AllocBody423_16 AllocBody423_21

def AllocBody423_23 : StackLang.HolProg 64 :=
.seq AllocBody423_15 AllocBody423_22

def AllocBody423_24 : StackLang.HolProg 64 :=
.seq AllocBody423_14 AllocBody423_23

def AllocBody423_25 : StackLang.HolProg 64 :=
.seq AllocBody423_13 AllocBody423_24

def AllocBody423_26 : StackLang.HolProg 64 :=
.seq AllocBody423_12 AllocBody423_25

def AllocBody423_27 : StackLang.HolProg 64 :=
.seq AllocBody423_11 AllocBody423_26

def AllocBody423_28 : StackLang.HolProg 64 :=
.seq AllocBody423_10 AllocBody423_27

def AllocBody423_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody423_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody423_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody423_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody423_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody423_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody423_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody423_38 : StackLang.HolProg 64 :=
.seq AllocBody423_36 AllocBody423_37

def AllocBody423_39 : StackLang.HolProg 64 :=
.seq AllocBody423_35 AllocBody423_38

def AllocBody423_40 : StackLang.HolProg 64 :=
.seq AllocBody423_34 AllocBody423_39

def AllocBody423_41 : StackLang.HolProg 64 :=
.seq AllocBody423_33 AllocBody423_40

def AllocBody423_42 : StackLang.HolProg 64 :=
.seq AllocBody423_32 AllocBody423_41

def AllocBody423_43 : StackLang.HolProg 64 :=
.seq AllocBody423_31 AllocBody423_42

def AllocBody423_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody423_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody423_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody423_47 : StackLang.HolProg 64 :=
.seq AllocBody423_45 AllocBody423_46

def AllocBody423_48 : StackLang.HolProg 64 :=
.seq AllocBody423_44 AllocBody423_47

def AllocBody423_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody423_50 : StackLang.HolProg 64 :=
.seq AllocBody423_48 AllocBody423_49

def AllocBody423_51 : StackLang.HolProg 64 :=
.call (some (AllocBody423_43, 0, 423, 2)) (Sum.inl 419) (some (AllocBody423_50, 423, 3))

def AllocBody423_52 : StackLang.HolProg 64 :=
.seq AllocBody423_30 AllocBody423_51

def AllocBody423_53 : StackLang.HolProg 64 :=
.seq AllocBody423_29 AllocBody423_52

def AllocBody423_54 : StackLang.HolProg 64 :=
.seq AllocBody423_28 AllocBody423_53

def AllocBody423_55 : StackLang.HolProg 64 :=
.seq AllocBody423_9 AllocBody423_54

def AllocBody423_56 : StackLang.HolProg 64 :=
.seq AllocBody423_6 AllocBody423_55

def AllocBody423_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody423_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody423_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1262#64)

def AllocBody423_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody423_62 : StackLang.HolProg 64 :=
.seq AllocBody423_60 AllocBody423_61

def AllocBody423_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody423_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody423_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody423_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 5

def AllocBody423_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody423_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody423_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody423_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody423_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody423_73 : StackLang.HolProg 64 :=
.seq AllocBody423_71 AllocBody423_72

def AllocBody423_74 : StackLang.HolProg 64 :=
.seq AllocBody423_70 AllocBody423_73

def AllocBody423_75 : StackLang.HolProg 64 :=
.seq AllocBody423_69 AllocBody423_74

def AllocBody423_76 : StackLang.HolProg 64 :=
.seq AllocBody423_68 AllocBody423_75

def AllocBody423_77 : StackLang.HolProg 64 :=
.seq AllocBody423_67 AllocBody423_76

def AllocBody423_78 : StackLang.HolProg 64 :=
.seq AllocBody423_66 AllocBody423_77

def AllocBody423_79 : StackLang.HolProg 64 :=
.seq AllocBody423_65 AllocBody423_78

def AllocBody423_80 : StackLang.HolProg 64 :=
.seq AllocBody423_64 AllocBody423_79

def AllocBody423_81 : StackLang.HolProg 64 :=
.seq AllocBody423_63 AllocBody423_80

def AllocBody423_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody423_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody423_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody423_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody423_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody423_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody423_90 : StackLang.HolProg 64 :=
.seq AllocBody423_88 AllocBody423_89

def AllocBody423_91 : StackLang.HolProg 64 :=
.seq AllocBody423_87 AllocBody423_90

def AllocBody423_92 : StackLang.HolProg 64 :=
.seq AllocBody423_86 AllocBody423_91

def AllocBody423_93 : StackLang.HolProg 64 :=
.seq AllocBody423_85 AllocBody423_92

def AllocBody423_94 : StackLang.HolProg 64 :=
.seq AllocBody423_84 AllocBody423_93

def AllocBody423_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody423_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody423_97 : StackLang.HolProg 64 :=
.seq AllocBody423_95 AllocBody423_96

def AllocBody423_98 : StackLang.HolProg 64 :=
.call (some (AllocBody423_94, 0, 423, 4)) (Sum.inl 416) (some (AllocBody423_97, 423, 5))

def AllocBody423_99 : StackLang.HolProg 64 :=
.seq AllocBody423_83 AllocBody423_98

def AllocBody423_100 : StackLang.HolProg 64 :=
.seq AllocBody423_82 AllocBody423_99

def AllocBody423_101 : StackLang.HolProg 64 :=
.seq AllocBody423_81 AllocBody423_100

def AllocBody423_102 : StackLang.HolProg 64 :=
.seq AllocBody423_62 AllocBody423_101

def AllocBody423_103 : StackLang.HolProg 64 :=
.seq AllocBody423_59 AllocBody423_102

def AllocBody423_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody423_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody423_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody423_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody423_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1263#64)

def AllocBody423_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody423_112 : StackLang.HolProg 64 :=
.seq AllocBody423_110 AllocBody423_111

def AllocBody423_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody423_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody423_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody423_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 423 7

def AllocBody423_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody423_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody423_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody423_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody423_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody423_123 : StackLang.HolProg 64 :=
.seq AllocBody423_121 AllocBody423_122

def AllocBody423_124 : StackLang.HolProg 64 :=
.seq AllocBody423_120 AllocBody423_123

def AllocBody423_125 : StackLang.HolProg 64 :=
.seq AllocBody423_119 AllocBody423_124

def AllocBody423_126 : StackLang.HolProg 64 :=
.seq AllocBody423_118 AllocBody423_125

def AllocBody423_127 : StackLang.HolProg 64 :=
.seq AllocBody423_117 AllocBody423_126

def AllocBody423_128 : StackLang.HolProg 64 :=
.seq AllocBody423_116 AllocBody423_127

def AllocBody423_129 : StackLang.HolProg 64 :=
.seq AllocBody423_115 AllocBody423_128

def AllocBody423_130 : StackLang.HolProg 64 :=
.seq AllocBody423_114 AllocBody423_129

def AllocBody423_131 : StackLang.HolProg 64 :=
.seq AllocBody423_113 AllocBody423_130

def AllocBody423_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody423_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody423_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody423_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody423_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody423_139 : StackLang.HolProg 64 :=
.seq AllocBody423_137 AllocBody423_138

def AllocBody423_140 : StackLang.HolProg 64 :=
.seq AllocBody423_136 AllocBody423_139

def AllocBody423_141 : StackLang.HolProg 64 :=
.seq AllocBody423_135 AllocBody423_140

def AllocBody423_142 : StackLang.HolProg 64 :=
.seq AllocBody423_134 AllocBody423_141

def AllocBody423_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody423_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody423_145 : StackLang.HolProg 64 :=
.seq AllocBody423_143 AllocBody423_144

def AllocBody423_146 : StackLang.HolProg 64 :=
.call (some (AllocBody423_142, 0, 423, 6)) (Sum.inl 422) (some (AllocBody423_145, 423, 7))

def AllocBody423_147 : StackLang.HolProg 64 :=
.seq AllocBody423_133 AllocBody423_146

def AllocBody423_148 : StackLang.HolProg 64 :=
.seq AllocBody423_132 AllocBody423_147

def AllocBody423_149 : StackLang.HolProg 64 :=
.seq AllocBody423_131 AllocBody423_148

def AllocBody423_150 : StackLang.HolProg 64 :=
.seq AllocBody423_112 AllocBody423_149

def AllocBody423_151 : StackLang.HolProg 64 :=
.seq AllocBody423_109 AllocBody423_150

def AllocBody423_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody423_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_154 : StackLang.HolProg 64 :=
.seq AllocBody423_152 AllocBody423_153

def AllocBody423_155 : StackLang.HolProg 64 :=
.seq AllocBody423_151 AllocBody423_154

def AllocBody423_156 : StackLang.HolProg 64 :=
.seq AllocBody423_108 AllocBody423_155

def AllocBody423_157 : StackLang.HolProg 64 :=
.seq AllocBody423_107 AllocBody423_156

def AllocBody423_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody423_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody423_160 : StackLang.HolProg 64 :=
.seq AllocBody423_158 AllocBody423_159

def AllocBody423_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody423_157 AllocBody423_160

def AllocBody423_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody423_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody423_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody423_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody423_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody423_167 : StackLang.HolProg 64 :=
.seq AllocBody423_165 AllocBody423_166

def AllocBody423_168 : StackLang.HolProg 64 :=
.seq AllocBody423_164 AllocBody423_167

def AllocBody423_169 : StackLang.HolProg 64 :=
.seq AllocBody423_163 AllocBody423_168

def AllocBody423_170 : StackLang.HolProg 64 :=
.seq AllocBody423_162 AllocBody423_169

def AllocBody423_171 : StackLang.HolProg 64 :=
.seq AllocBody423_161 AllocBody423_170

def AllocBody423_172 : StackLang.HolProg 64 :=
.seq AllocBody423_106 AllocBody423_171

def AllocBody423_173 : StackLang.HolProg 64 :=
.seq AllocBody423_105 AllocBody423_172

def AllocBody423_174 : StackLang.HolProg 64 :=
.seq AllocBody423_104 AllocBody423_173

def AllocBody423_175 : StackLang.HolProg 64 :=
.seq AllocBody423_103 AllocBody423_174

def AllocBody423_176 : StackLang.HolProg 64 :=
.seq AllocBody423_58 AllocBody423_175

def AllocBody423_177 : StackLang.HolProg 64 :=
.seq AllocBody423_57 AllocBody423_176

def AllocBody423_178 : StackLang.HolProg 64 :=
.seq AllocBody423_56 AllocBody423_177

def AllocBody423_179 : StackLang.HolProg 64 :=
.seq AllocBody423_5 AllocBody423_178

def AllocBody423_180 : StackLang.HolProg 64 :=
.seq AllocBody423_0 AllocBody423_179

def Alloc423 : Nat × StackLang.HolProg 64 := (423, AllocBody423_180)
theorem Alloc423_eq : StackAlloc.progComp (423, raw423) = Alloc423 := by
  kernel_rfl
#print axioms Alloc423_eq
end InitECandidate.Proofs.BackendStages
