import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw506
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody506_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody506_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody506_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1600#64)

def AllocBody506_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_5 : StackLang.HolProg 64 :=
.seq AllocBody506_3 AllocBody506_4

def AllocBody506_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody506_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody506_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 506 3

def AllocBody506_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody506_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody506_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody506_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody506_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_16 : StackLang.HolProg 64 :=
.seq AllocBody506_14 AllocBody506_15

def AllocBody506_17 : StackLang.HolProg 64 :=
.seq AllocBody506_13 AllocBody506_16

def AllocBody506_18 : StackLang.HolProg 64 :=
.seq AllocBody506_12 AllocBody506_17

def AllocBody506_19 : StackLang.HolProg 64 :=
.seq AllocBody506_11 AllocBody506_18

def AllocBody506_20 : StackLang.HolProg 64 :=
.seq AllocBody506_10 AllocBody506_19

def AllocBody506_21 : StackLang.HolProg 64 :=
.seq AllocBody506_9 AllocBody506_20

def AllocBody506_22 : StackLang.HolProg 64 :=
.seq AllocBody506_8 AllocBody506_21

def AllocBody506_23 : StackLang.HolProg 64 :=
.seq AllocBody506_7 AllocBody506_22

def AllocBody506_24 : StackLang.HolProg 64 :=
.seq AllocBody506_6 AllocBody506_23

def AllocBody506_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody506_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody506_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody506_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody506_32 : StackLang.HolProg 64 :=
.seq AllocBody506_30 AllocBody506_31

def AllocBody506_33 : StackLang.HolProg 64 :=
.seq AllocBody506_29 AllocBody506_32

def AllocBody506_34 : StackLang.HolProg 64 :=
.seq AllocBody506_28 AllocBody506_33

def AllocBody506_35 : StackLang.HolProg 64 :=
.seq AllocBody506_27 AllocBody506_34

def AllocBody506_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody506_38 : StackLang.HolProg 64 :=
.seq AllocBody506_36 AllocBody506_37

def AllocBody506_39 : StackLang.HolProg 64 :=
.call (some (AllocBody506_35, 0, 506, 2)) (Sum.inl 475) (some (AllocBody506_38, 506, 3))

def AllocBody506_40 : StackLang.HolProg 64 :=
.seq AllocBody506_26 AllocBody506_39

def AllocBody506_41 : StackLang.HolProg 64 :=
.seq AllocBody506_25 AllocBody506_40

def AllocBody506_42 : StackLang.HolProg 64 :=
.seq AllocBody506_24 AllocBody506_41

def AllocBody506_43 : StackLang.HolProg 64 :=
.seq AllocBody506_5 AllocBody506_42

def AllocBody506_44 : StackLang.HolProg 64 :=
.seq AllocBody506_2 AllocBody506_43

def AllocBody506_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody506_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody506_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody506_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody506_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody506_50 : StackLang.HolProg 64 :=
.seq AllocBody506_48 AllocBody506_49

def AllocBody506_51 : StackLang.HolProg 64 :=
.seq AllocBody506_47 AllocBody506_50

def AllocBody506_52 : StackLang.HolProg 64 :=
.seq AllocBody506_46 AllocBody506_51

def AllocBody506_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1601#64)

def AllocBody506_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_56 : StackLang.HolProg 64 :=
.seq AllocBody506_54 AllocBody506_55

def AllocBody506_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody506_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody506_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 506 5

def AllocBody506_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody506_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody506_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody506_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody506_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_67 : StackLang.HolProg 64 :=
.seq AllocBody506_65 AllocBody506_66

def AllocBody506_68 : StackLang.HolProg 64 :=
.seq AllocBody506_64 AllocBody506_67

def AllocBody506_69 : StackLang.HolProg 64 :=
.seq AllocBody506_63 AllocBody506_68

def AllocBody506_70 : StackLang.HolProg 64 :=
.seq AllocBody506_62 AllocBody506_69

def AllocBody506_71 : StackLang.HolProg 64 :=
.seq AllocBody506_61 AllocBody506_70

def AllocBody506_72 : StackLang.HolProg 64 :=
.seq AllocBody506_60 AllocBody506_71

def AllocBody506_73 : StackLang.HolProg 64 :=
.seq AllocBody506_59 AllocBody506_72

def AllocBody506_74 : StackLang.HolProg 64 :=
.seq AllocBody506_58 AllocBody506_73

def AllocBody506_75 : StackLang.HolProg 64 :=
.seq AllocBody506_57 AllocBody506_74

def AllocBody506_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody506_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody506_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody506_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody506_83 : StackLang.HolProg 64 :=
.seq AllocBody506_81 AllocBody506_82

def AllocBody506_84 : StackLang.HolProg 64 :=
.seq AllocBody506_80 AllocBody506_83

def AllocBody506_85 : StackLang.HolProg 64 :=
.seq AllocBody506_79 AllocBody506_84

def AllocBody506_86 : StackLang.HolProg 64 :=
.seq AllocBody506_78 AllocBody506_85

def AllocBody506_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody506_89 : StackLang.HolProg 64 :=
.seq AllocBody506_87 AllocBody506_88

def AllocBody506_90 : StackLang.HolProg 64 :=
.call (some (AllocBody506_86, 0, 506, 4)) (Sum.inl 475) (some (AllocBody506_89, 506, 5))

def AllocBody506_91 : StackLang.HolProg 64 :=
.seq AllocBody506_77 AllocBody506_90

def AllocBody506_92 : StackLang.HolProg 64 :=
.seq AllocBody506_76 AllocBody506_91

def AllocBody506_93 : StackLang.HolProg 64 :=
.seq AllocBody506_75 AllocBody506_92

def AllocBody506_94 : StackLang.HolProg 64 :=
.seq AllocBody506_56 AllocBody506_93

def AllocBody506_95 : StackLang.HolProg 64 :=
.seq AllocBody506_53 AllocBody506_94

def AllocBody506_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody506_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody506_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody506_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody506_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody506_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody506_102 : StackLang.HolProg 64 :=
.seq AllocBody506_100 AllocBody506_101

def AllocBody506_103 : StackLang.HolProg 64 :=
.seq AllocBody506_99 AllocBody506_102

def AllocBody506_104 : StackLang.HolProg 64 :=
.seq AllocBody506_98 AllocBody506_103

def AllocBody506_105 : StackLang.HolProg 64 :=
.seq AllocBody506_97 AllocBody506_104

def AllocBody506_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1602#64)

def AllocBody506_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_109 : StackLang.HolProg 64 :=
.seq AllocBody506_107 AllocBody506_108

def AllocBody506_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody506_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody506_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 506 7

def AllocBody506_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody506_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody506_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody506_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody506_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_120 : StackLang.HolProg 64 :=
.seq AllocBody506_118 AllocBody506_119

def AllocBody506_121 : StackLang.HolProg 64 :=
.seq AllocBody506_117 AllocBody506_120

def AllocBody506_122 : StackLang.HolProg 64 :=
.seq AllocBody506_116 AllocBody506_121

def AllocBody506_123 : StackLang.HolProg 64 :=
.seq AllocBody506_115 AllocBody506_122

def AllocBody506_124 : StackLang.HolProg 64 :=
.seq AllocBody506_114 AllocBody506_123

def AllocBody506_125 : StackLang.HolProg 64 :=
.seq AllocBody506_113 AllocBody506_124

def AllocBody506_126 : StackLang.HolProg 64 :=
.seq AllocBody506_112 AllocBody506_125

def AllocBody506_127 : StackLang.HolProg 64 :=
.seq AllocBody506_111 AllocBody506_126

def AllocBody506_128 : StackLang.HolProg 64 :=
.seq AllocBody506_110 AllocBody506_127

def AllocBody506_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody506_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody506_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody506_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody506_136 : StackLang.HolProg 64 :=
.seq AllocBody506_134 AllocBody506_135

def AllocBody506_137 : StackLang.HolProg 64 :=
.seq AllocBody506_133 AllocBody506_136

def AllocBody506_138 : StackLang.HolProg 64 :=
.seq AllocBody506_132 AllocBody506_137

def AllocBody506_139 : StackLang.HolProg 64 :=
.seq AllocBody506_131 AllocBody506_138

def AllocBody506_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_141 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody506_142 : StackLang.HolProg 64 :=
.seq AllocBody506_140 AllocBody506_141

def AllocBody506_143 : StackLang.HolProg 64 :=
.call (some (AllocBody506_139, 0, 506, 6)) (Sum.inl 139) (some (AllocBody506_142, 506, 7))

def AllocBody506_144 : StackLang.HolProg 64 :=
.seq AllocBody506_130 AllocBody506_143

def AllocBody506_145 : StackLang.HolProg 64 :=
.seq AllocBody506_129 AllocBody506_144

def AllocBody506_146 : StackLang.HolProg 64 :=
.seq AllocBody506_128 AllocBody506_145

def AllocBody506_147 : StackLang.HolProg 64 :=
.seq AllocBody506_109 AllocBody506_146

def AllocBody506_148 : StackLang.HolProg 64 :=
.seq AllocBody506_106 AllocBody506_147

def AllocBody506_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody506_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 50#64)

def AllocBody506_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody506_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 10#64)))

def AllocBody506_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1603#64)

def AllocBody506_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_160 : StackLang.HolProg 64 :=
.seq AllocBody506_158 AllocBody506_159

def AllocBody506_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody506_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody506_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 506 9

def AllocBody506_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody506_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody506_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody506_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody506_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_171 : StackLang.HolProg 64 :=
.seq AllocBody506_169 AllocBody506_170

def AllocBody506_172 : StackLang.HolProg 64 :=
.seq AllocBody506_168 AllocBody506_171

def AllocBody506_173 : StackLang.HolProg 64 :=
.seq AllocBody506_167 AllocBody506_172

def AllocBody506_174 : StackLang.HolProg 64 :=
.seq AllocBody506_166 AllocBody506_173

def AllocBody506_175 : StackLang.HolProg 64 :=
.seq AllocBody506_165 AllocBody506_174

def AllocBody506_176 : StackLang.HolProg 64 :=
.seq AllocBody506_164 AllocBody506_175

def AllocBody506_177 : StackLang.HolProg 64 :=
.seq AllocBody506_163 AllocBody506_176

def AllocBody506_178 : StackLang.HolProg 64 :=
.seq AllocBody506_162 AllocBody506_177

def AllocBody506_179 : StackLang.HolProg 64 :=
.seq AllocBody506_161 AllocBody506_178

def AllocBody506_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody506_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody506_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody506_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody506_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody506_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody506_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody506_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody506_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody506_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody506_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody506_194 : StackLang.HolProg 64 :=
.seq AllocBody506_192 AllocBody506_193

def AllocBody506_195 : StackLang.HolProg 64 :=
.seq AllocBody506_191 AllocBody506_194

def AllocBody506_196 : StackLang.HolProg 64 :=
.seq AllocBody506_190 AllocBody506_195

def AllocBody506_197 : StackLang.HolProg 64 :=
.seq AllocBody506_189 AllocBody506_196

def AllocBody506_198 : StackLang.HolProg 64 :=
.seq AllocBody506_188 AllocBody506_197

def AllocBody506_199 : StackLang.HolProg 64 :=
.seq AllocBody506_187 AllocBody506_198

def AllocBody506_200 : StackLang.HolProg 64 :=
.seq AllocBody506_186 AllocBody506_199

def AllocBody506_201 : StackLang.HolProg 64 :=
.seq AllocBody506_185 AllocBody506_200

def AllocBody506_202 : StackLang.HolProg 64 :=
.seq AllocBody506_184 AllocBody506_201

def AllocBody506_203 : StackLang.HolProg 64 :=
.seq AllocBody506_183 AllocBody506_202

def AllocBody506_204 : StackLang.HolProg 64 :=
.seq AllocBody506_182 AllocBody506_203

def AllocBody506_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody506_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody506_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody506_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody506_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody506_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody506_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody506_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody506_213 : StackLang.HolProg 64 :=
.seq AllocBody506_211 AllocBody506_212

def AllocBody506_214 : StackLang.HolProg 64 :=
.seq AllocBody506_210 AllocBody506_213

def AllocBody506_215 : StackLang.HolProg 64 :=
.seq AllocBody506_209 AllocBody506_214

def AllocBody506_216 : StackLang.HolProg 64 :=
.seq AllocBody506_208 AllocBody506_215

def AllocBody506_217 : StackLang.HolProg 64 :=
.seq AllocBody506_207 AllocBody506_216

def AllocBody506_218 : StackLang.HolProg 64 :=
.seq AllocBody506_206 AllocBody506_217

def AllocBody506_219 : StackLang.HolProg 64 :=
.seq AllocBody506_205 AllocBody506_218

def AllocBody506_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody506_221 : StackLang.HolProg 64 :=
.seq AllocBody506_219 AllocBody506_220

def AllocBody506_222 : StackLang.HolProg 64 :=
.call (some (AllocBody506_204, 0, 506, 8)) (Sum.inl 470) (some (AllocBody506_221, 506, 9))

def AllocBody506_223 : StackLang.HolProg 64 :=
.seq AllocBody506_181 AllocBody506_222

def AllocBody506_224 : StackLang.HolProg 64 :=
.seq AllocBody506_180 AllocBody506_223

def AllocBody506_225 : StackLang.HolProg 64 :=
.seq AllocBody506_179 AllocBody506_224

def AllocBody506_226 : StackLang.HolProg 64 :=
.seq AllocBody506_160 AllocBody506_225

def AllocBody506_227 : StackLang.HolProg 64 :=
.seq AllocBody506_157 AllocBody506_226

def AllocBody506_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody506_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody506_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1604#64)

def AllocBody506_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_233 : StackLang.HolProg 64 :=
.seq AllocBody506_231 AllocBody506_232

def AllocBody506_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody506_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody506_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 506 11

def AllocBody506_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody506_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody506_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody506_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody506_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_244 : StackLang.HolProg 64 :=
.seq AllocBody506_242 AllocBody506_243

def AllocBody506_245 : StackLang.HolProg 64 :=
.seq AllocBody506_241 AllocBody506_244

def AllocBody506_246 : StackLang.HolProg 64 :=
.seq AllocBody506_240 AllocBody506_245

def AllocBody506_247 : StackLang.HolProg 64 :=
.seq AllocBody506_239 AllocBody506_246

def AllocBody506_248 : StackLang.HolProg 64 :=
.seq AllocBody506_238 AllocBody506_247

def AllocBody506_249 : StackLang.HolProg 64 :=
.seq AllocBody506_237 AllocBody506_248

def AllocBody506_250 : StackLang.HolProg 64 :=
.seq AllocBody506_236 AllocBody506_249

def AllocBody506_251 : StackLang.HolProg 64 :=
.seq AllocBody506_235 AllocBody506_250

def AllocBody506_252 : StackLang.HolProg 64 :=
.seq AllocBody506_234 AllocBody506_251

def AllocBody506_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody506_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody506_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody506_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody506_260 : StackLang.HolProg 64 :=
.seq AllocBody506_258 AllocBody506_259

def AllocBody506_261 : StackLang.HolProg 64 :=
.seq AllocBody506_257 AllocBody506_260

def AllocBody506_262 : StackLang.HolProg 64 :=
.seq AllocBody506_256 AllocBody506_261

def AllocBody506_263 : StackLang.HolProg 64 :=
.seq AllocBody506_255 AllocBody506_262

def AllocBody506_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_265 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody506_266 : StackLang.HolProg 64 :=
.seq AllocBody506_264 AllocBody506_265

def AllocBody506_267 : StackLang.HolProg 64 :=
.call (some (AllocBody506_263, 0, 506, 10)) (Sum.inl 140) (some (AllocBody506_266, 506, 11))

def AllocBody506_268 : StackLang.HolProg 64 :=
.seq AllocBody506_254 AllocBody506_267

def AllocBody506_269 : StackLang.HolProg 64 :=
.seq AllocBody506_253 AllocBody506_268

def AllocBody506_270 : StackLang.HolProg 64 :=
.seq AllocBody506_252 AllocBody506_269

def AllocBody506_271 : StackLang.HolProg 64 :=
.seq AllocBody506_233 AllocBody506_270

def AllocBody506_272 : StackLang.HolProg 64 :=
.seq AllocBody506_230 AllocBody506_271

def AllocBody506_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody506_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody506_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1605#64)

def AllocBody506_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_278 : StackLang.HolProg 64 :=
.seq AllocBody506_276 AllocBody506_277

def AllocBody506_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody506_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody506_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 506 13

def AllocBody506_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody506_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody506_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody506_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody506_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_289 : StackLang.HolProg 64 :=
.seq AllocBody506_287 AllocBody506_288

def AllocBody506_290 : StackLang.HolProg 64 :=
.seq AllocBody506_286 AllocBody506_289

def AllocBody506_291 : StackLang.HolProg 64 :=
.seq AllocBody506_285 AllocBody506_290

def AllocBody506_292 : StackLang.HolProg 64 :=
.seq AllocBody506_284 AllocBody506_291

def AllocBody506_293 : StackLang.HolProg 64 :=
.seq AllocBody506_283 AllocBody506_292

def AllocBody506_294 : StackLang.HolProg 64 :=
.seq AllocBody506_282 AllocBody506_293

def AllocBody506_295 : StackLang.HolProg 64 :=
.seq AllocBody506_281 AllocBody506_294

def AllocBody506_296 : StackLang.HolProg 64 :=
.seq AllocBody506_280 AllocBody506_295

def AllocBody506_297 : StackLang.HolProg 64 :=
.seq AllocBody506_279 AllocBody506_296

def AllocBody506_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody506_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody506_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody506_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_305 : StackLang.HolProg 64 :=
.seq AllocBody506_303 AllocBody506_304

def AllocBody506_306 : StackLang.HolProg 64 :=
.seq AllocBody506_302 AllocBody506_305

def AllocBody506_307 : StackLang.HolProg 64 :=
.seq AllocBody506_301 AllocBody506_306

def AllocBody506_308 : StackLang.HolProg 64 :=
.seq AllocBody506_300 AllocBody506_307

def AllocBody506_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_310 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody506_311 : StackLang.HolProg 64 :=
.seq AllocBody506_309 AllocBody506_310

def AllocBody506_312 : StackLang.HolProg 64 :=
.call (some (AllocBody506_308, 0, 506, 12)) (Sum.inl 476) (some (AllocBody506_311, 506, 13))

def AllocBody506_313 : StackLang.HolProg 64 :=
.seq AllocBody506_299 AllocBody506_312

def AllocBody506_314 : StackLang.HolProg 64 :=
.seq AllocBody506_298 AllocBody506_313

def AllocBody506_315 : StackLang.HolProg 64 :=
.seq AllocBody506_297 AllocBody506_314

def AllocBody506_316 : StackLang.HolProg 64 :=
.seq AllocBody506_278 AllocBody506_315

def AllocBody506_317 : StackLang.HolProg 64 :=
.seq AllocBody506_275 AllocBody506_316

def AllocBody506_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody506_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody506_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1606#64)

def AllocBody506_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_324 : StackLang.HolProg 64 :=
.seq AllocBody506_322 AllocBody506_323

def AllocBody506_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody506_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody506_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody506_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 506 15

def AllocBody506_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody506_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody506_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody506_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody506_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_335 : StackLang.HolProg 64 :=
.seq AllocBody506_333 AllocBody506_334

def AllocBody506_336 : StackLang.HolProg 64 :=
.seq AllocBody506_332 AllocBody506_335

def AllocBody506_337 : StackLang.HolProg 64 :=
.seq AllocBody506_331 AllocBody506_336

def AllocBody506_338 : StackLang.HolProg 64 :=
.seq AllocBody506_330 AllocBody506_337

def AllocBody506_339 : StackLang.HolProg 64 :=
.seq AllocBody506_329 AllocBody506_338

def AllocBody506_340 : StackLang.HolProg 64 :=
.seq AllocBody506_328 AllocBody506_339

def AllocBody506_341 : StackLang.HolProg 64 :=
.seq AllocBody506_327 AllocBody506_340

def AllocBody506_342 : StackLang.HolProg 64 :=
.seq AllocBody506_326 AllocBody506_341

def AllocBody506_343 : StackLang.HolProg 64 :=
.seq AllocBody506_325 AllocBody506_342

def AllocBody506_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody506_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody506_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody506_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody506_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody506_351 : StackLang.HolProg 64 :=
.seq AllocBody506_349 AllocBody506_350

def AllocBody506_352 : StackLang.HolProg 64 :=
.seq AllocBody506_348 AllocBody506_351

def AllocBody506_353 : StackLang.HolProg 64 :=
.seq AllocBody506_347 AllocBody506_352

def AllocBody506_354 : StackLang.HolProg 64 :=
.seq AllocBody506_346 AllocBody506_353

def AllocBody506_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody506_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody506_357 : StackLang.HolProg 64 :=
.seq AllocBody506_355 AllocBody506_356

def AllocBody506_358 : StackLang.HolProg 64 :=
.call (some (AllocBody506_354, 0, 506, 14)) (Sum.inl 490) (some (AllocBody506_357, 506, 15))

def AllocBody506_359 : StackLang.HolProg 64 :=
.seq AllocBody506_345 AllocBody506_358

def AllocBody506_360 : StackLang.HolProg 64 :=
.seq AllocBody506_344 AllocBody506_359

def AllocBody506_361 : StackLang.HolProg 64 :=
.seq AllocBody506_343 AllocBody506_360

def AllocBody506_362 : StackLang.HolProg 64 :=
.seq AllocBody506_324 AllocBody506_361

def AllocBody506_363 : StackLang.HolProg 64 :=
.seq AllocBody506_321 AllocBody506_362

def AllocBody506_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody506_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody506_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody506_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody506_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody506_369 : StackLang.HolProg 64 :=
.seq AllocBody506_367 AllocBody506_368

def AllocBody506_370 : StackLang.HolProg 64 :=
.seq AllocBody506_366 AllocBody506_369

def AllocBody506_371 : StackLang.HolProg 64 :=
.seq AllocBody506_365 AllocBody506_370

def AllocBody506_372 : StackLang.HolProg 64 :=
.seq AllocBody506_364 AllocBody506_371

def AllocBody506_373 : StackLang.HolProg 64 :=
.seq AllocBody506_363 AllocBody506_372

def AllocBody506_374 : StackLang.HolProg 64 :=
.seq AllocBody506_320 AllocBody506_373

def AllocBody506_375 : StackLang.HolProg 64 :=
.seq AllocBody506_319 AllocBody506_374

def AllocBody506_376 : StackLang.HolProg 64 :=
.seq AllocBody506_318 AllocBody506_375

def AllocBody506_377 : StackLang.HolProg 64 :=
.seq AllocBody506_317 AllocBody506_376

def AllocBody506_378 : StackLang.HolProg 64 :=
.seq AllocBody506_274 AllocBody506_377

def AllocBody506_379 : StackLang.HolProg 64 :=
.seq AllocBody506_273 AllocBody506_378

def AllocBody506_380 : StackLang.HolProg 64 :=
.seq AllocBody506_272 AllocBody506_379

def AllocBody506_381 : StackLang.HolProg 64 :=
.seq AllocBody506_229 AllocBody506_380

def AllocBody506_382 : StackLang.HolProg 64 :=
.seq AllocBody506_228 AllocBody506_381

def AllocBody506_383 : StackLang.HolProg 64 :=
.seq AllocBody506_227 AllocBody506_382

def AllocBody506_384 : StackLang.HolProg 64 :=
.seq AllocBody506_156 AllocBody506_383

def AllocBody506_385 : StackLang.HolProg 64 :=
.seq AllocBody506_155 AllocBody506_384

def AllocBody506_386 : StackLang.HolProg 64 :=
.seq AllocBody506_154 AllocBody506_385

def AllocBody506_387 : StackLang.HolProg 64 :=
.seq AllocBody506_153 AllocBody506_386

def AllocBody506_388 : StackLang.HolProg 64 :=
.seq AllocBody506_152 AllocBody506_387

def AllocBody506_389 : StackLang.HolProg 64 :=
.seq AllocBody506_151 AllocBody506_388

def AllocBody506_390 : StackLang.HolProg 64 :=
.seq AllocBody506_150 AllocBody506_389

def AllocBody506_391 : StackLang.HolProg 64 :=
.seq AllocBody506_149 AllocBody506_390

def AllocBody506_392 : StackLang.HolProg 64 :=
.seq AllocBody506_148 AllocBody506_391

def AllocBody506_393 : StackLang.HolProg 64 :=
.seq AllocBody506_105 AllocBody506_392

def AllocBody506_394 : StackLang.HolProg 64 :=
.seq AllocBody506_96 AllocBody506_393

def AllocBody506_395 : StackLang.HolProg 64 :=
.seq AllocBody506_95 AllocBody506_394

def AllocBody506_396 : StackLang.HolProg 64 :=
.seq AllocBody506_52 AllocBody506_395

def AllocBody506_397 : StackLang.HolProg 64 :=
.seq AllocBody506_45 AllocBody506_396

def AllocBody506_398 : StackLang.HolProg 64 :=
.seq AllocBody506_44 AllocBody506_397

def AllocBody506_399 : StackLang.HolProg 64 :=
.seq AllocBody506_1 AllocBody506_398

def AllocBody506_400 : StackLang.HolProg 64 :=
.seq AllocBody506_0 AllocBody506_399

def Alloc506 : Nat × StackLang.HolProg 64 := (506, AllocBody506_400)
theorem Alloc506_eq : StackAlloc.progComp (506, raw506) = Alloc506 := by
  kernel_rfl
#print axioms Alloc506_eq
end InitECandidate.Proofs.BackendStages
