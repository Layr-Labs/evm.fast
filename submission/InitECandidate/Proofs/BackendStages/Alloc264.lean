import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw264
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody264_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody264_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody264_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody264_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody264_4 : StackLang.HolProg 64 :=
.seq AllocBody264_2 AllocBody264_3

def AllocBody264_5 : StackLang.HolProg 64 :=
.seq AllocBody264_1 AllocBody264_4

def AllocBody264_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 621#64)

def AllocBody264_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_9 : StackLang.HolProg 64 :=
.seq AllocBody264_7 AllocBody264_8

def AllocBody264_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody264_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody264_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 3

def AllocBody264_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody264_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody264_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody264_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody264_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_20 : StackLang.HolProg 64 :=
.seq AllocBody264_18 AllocBody264_19

def AllocBody264_21 : StackLang.HolProg 64 :=
.seq AllocBody264_17 AllocBody264_20

def AllocBody264_22 : StackLang.HolProg 64 :=
.seq AllocBody264_16 AllocBody264_21

def AllocBody264_23 : StackLang.HolProg 64 :=
.seq AllocBody264_15 AllocBody264_22

def AllocBody264_24 : StackLang.HolProg 64 :=
.seq AllocBody264_14 AllocBody264_23

def AllocBody264_25 : StackLang.HolProg 64 :=
.seq AllocBody264_13 AllocBody264_24

def AllocBody264_26 : StackLang.HolProg 64 :=
.seq AllocBody264_12 AllocBody264_25

def AllocBody264_27 : StackLang.HolProg 64 :=
.seq AllocBody264_11 AllocBody264_26

def AllocBody264_28 : StackLang.HolProg 64 :=
.seq AllocBody264_10 AllocBody264_27

def AllocBody264_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody264_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody264_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody264_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody264_36 : StackLang.HolProg 64 :=
.seq AllocBody264_34 AllocBody264_35

def AllocBody264_37 : StackLang.HolProg 64 :=
.seq AllocBody264_33 AllocBody264_36

def AllocBody264_38 : StackLang.HolProg 64 :=
.seq AllocBody264_32 AllocBody264_37

def AllocBody264_39 : StackLang.HolProg 64 :=
.seq AllocBody264_31 AllocBody264_38

def AllocBody264_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody264_42 : StackLang.HolProg 64 :=
.seq AllocBody264_40 AllocBody264_41

def AllocBody264_43 : StackLang.HolProg 64 :=
.call (some (AllocBody264_39, 0, 264, 2)) (Sum.inl 69) (some (AllocBody264_42, 264, 3))

def AllocBody264_44 : StackLang.HolProg 64 :=
.seq AllocBody264_30 AllocBody264_43

def AllocBody264_45 : StackLang.HolProg 64 :=
.seq AllocBody264_29 AllocBody264_44

def AllocBody264_46 : StackLang.HolProg 64 :=
.seq AllocBody264_28 AllocBody264_45

def AllocBody264_47 : StackLang.HolProg 64 :=
.seq AllocBody264_9 AllocBody264_46

def AllocBody264_48 : StackLang.HolProg 64 :=
.seq AllocBody264_6 AllocBody264_47

def AllocBody264_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody264_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody264_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody264_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 622#64)

def AllocBody264_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_55 : StackLang.HolProg 64 :=
.seq AllocBody264_53 AllocBody264_54

def AllocBody264_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody264_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody264_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 5

def AllocBody264_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody264_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody264_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody264_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody264_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_66 : StackLang.HolProg 64 :=
.seq AllocBody264_64 AllocBody264_65

def AllocBody264_67 : StackLang.HolProg 64 :=
.seq AllocBody264_63 AllocBody264_66

def AllocBody264_68 : StackLang.HolProg 64 :=
.seq AllocBody264_62 AllocBody264_67

def AllocBody264_69 : StackLang.HolProg 64 :=
.seq AllocBody264_61 AllocBody264_68

def AllocBody264_70 : StackLang.HolProg 64 :=
.seq AllocBody264_60 AllocBody264_69

def AllocBody264_71 : StackLang.HolProg 64 :=
.seq AllocBody264_59 AllocBody264_70

def AllocBody264_72 : StackLang.HolProg 64 :=
.seq AllocBody264_58 AllocBody264_71

def AllocBody264_73 : StackLang.HolProg 64 :=
.seq AllocBody264_57 AllocBody264_72

def AllocBody264_74 : StackLang.HolProg 64 :=
.seq AllocBody264_56 AllocBody264_73

def AllocBody264_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody264_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody264_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody264_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody264_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody264_83 : StackLang.HolProg 64 :=
.seq AllocBody264_81 AllocBody264_82

def AllocBody264_84 : StackLang.HolProg 64 :=
.seq AllocBody264_80 AllocBody264_83

def AllocBody264_85 : StackLang.HolProg 64 :=
.seq AllocBody264_79 AllocBody264_84

def AllocBody264_86 : StackLang.HolProg 64 :=
.seq AllocBody264_78 AllocBody264_85

def AllocBody264_87 : StackLang.HolProg 64 :=
.seq AllocBody264_77 AllocBody264_86

def AllocBody264_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody264_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody264_90 : StackLang.HolProg 64 :=
.seq AllocBody264_88 AllocBody264_89

def AllocBody264_91 : StackLang.HolProg 64 :=
.call (some (AllocBody264_87, 0, 264, 4)) (Sum.inl 68) (some (AllocBody264_90, 264, 5))

def AllocBody264_92 : StackLang.HolProg 64 :=
.seq AllocBody264_76 AllocBody264_91

def AllocBody264_93 : StackLang.HolProg 64 :=
.seq AllocBody264_75 AllocBody264_92

def AllocBody264_94 : StackLang.HolProg 64 :=
.seq AllocBody264_74 AllocBody264_93

def AllocBody264_95 : StackLang.HolProg 64 :=
.seq AllocBody264_55 AllocBody264_94

def AllocBody264_96 : StackLang.HolProg 64 :=
.seq AllocBody264_52 AllocBody264_95

def AllocBody264_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody264_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody264_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def AllocBody264_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody264_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody264_102 : StackLang.HolProg 64 :=
.seq AllocBody264_100 AllocBody264_101

def AllocBody264_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 623#64)

def AllocBody264_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_106 : StackLang.HolProg 64 :=
.seq AllocBody264_104 AllocBody264_105

def AllocBody264_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody264_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody264_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 7

def AllocBody264_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody264_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody264_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody264_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody264_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_117 : StackLang.HolProg 64 :=
.seq AllocBody264_115 AllocBody264_116

def AllocBody264_118 : StackLang.HolProg 64 :=
.seq AllocBody264_114 AllocBody264_117

def AllocBody264_119 : StackLang.HolProg 64 :=
.seq AllocBody264_113 AllocBody264_118

def AllocBody264_120 : StackLang.HolProg 64 :=
.seq AllocBody264_112 AllocBody264_119

def AllocBody264_121 : StackLang.HolProg 64 :=
.seq AllocBody264_111 AllocBody264_120

def AllocBody264_122 : StackLang.HolProg 64 :=
.seq AllocBody264_110 AllocBody264_121

def AllocBody264_123 : StackLang.HolProg 64 :=
.seq AllocBody264_109 AllocBody264_122

def AllocBody264_124 : StackLang.HolProg 64 :=
.seq AllocBody264_108 AllocBody264_123

def AllocBody264_125 : StackLang.HolProg 64 :=
.seq AllocBody264_107 AllocBody264_124

def AllocBody264_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody264_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody264_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody264_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody264_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody264_134 : StackLang.HolProg 64 :=
.seq AllocBody264_132 AllocBody264_133

def AllocBody264_135 : StackLang.HolProg 64 :=
.seq AllocBody264_131 AllocBody264_134

def AllocBody264_136 : StackLang.HolProg 64 :=
.seq AllocBody264_130 AllocBody264_135

def AllocBody264_137 : StackLang.HolProg 64 :=
.seq AllocBody264_129 AllocBody264_136

def AllocBody264_138 : StackLang.HolProg 64 :=
.seq AllocBody264_128 AllocBody264_137

def AllocBody264_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody264_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody264_141 : StackLang.HolProg 64 :=
.seq AllocBody264_139 AllocBody264_140

def AllocBody264_142 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody264_143 : StackLang.HolProg 64 :=
.seq AllocBody264_141 AllocBody264_142

def AllocBody264_144 : StackLang.HolProg 64 :=
.call (some (AllocBody264_138, 0, 264, 6)) (Sum.inl 242) (some (AllocBody264_143, 264, 7))

def AllocBody264_145 : StackLang.HolProg 64 :=
.seq AllocBody264_127 AllocBody264_144

def AllocBody264_146 : StackLang.HolProg 64 :=
.seq AllocBody264_126 AllocBody264_145

def AllocBody264_147 : StackLang.HolProg 64 :=
.seq AllocBody264_125 AllocBody264_146

def AllocBody264_148 : StackLang.HolProg 64 :=
.seq AllocBody264_106 AllocBody264_147

def AllocBody264_149 : StackLang.HolProg 64 :=
.seq AllocBody264_103 AllocBody264_148

def AllocBody264_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody264_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def AllocBody264_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody264_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 48#64)

def AllocBody264_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody264_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 624#64)

def AllocBody264_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_160 : StackLang.HolProg 64 :=
.seq AllocBody264_158 AllocBody264_159

def AllocBody264_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody264_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody264_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 9

def AllocBody264_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody264_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody264_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody264_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody264_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_171 : StackLang.HolProg 64 :=
.seq AllocBody264_169 AllocBody264_170

def AllocBody264_172 : StackLang.HolProg 64 :=
.seq AllocBody264_168 AllocBody264_171

def AllocBody264_173 : StackLang.HolProg 64 :=
.seq AllocBody264_167 AllocBody264_172

def AllocBody264_174 : StackLang.HolProg 64 :=
.seq AllocBody264_166 AllocBody264_173

def AllocBody264_175 : StackLang.HolProg 64 :=
.seq AllocBody264_165 AllocBody264_174

def AllocBody264_176 : StackLang.HolProg 64 :=
.seq AllocBody264_164 AllocBody264_175

def AllocBody264_177 : StackLang.HolProg 64 :=
.seq AllocBody264_163 AllocBody264_176

def AllocBody264_178 : StackLang.HolProg 64 :=
.seq AllocBody264_162 AllocBody264_177

def AllocBody264_179 : StackLang.HolProg 64 :=
.seq AllocBody264_161 AllocBody264_178

def AllocBody264_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody264_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody264_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody264_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody264_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody264_188 : StackLang.HolProg 64 :=
.seq AllocBody264_186 AllocBody264_187

def AllocBody264_189 : StackLang.HolProg 64 :=
.seq AllocBody264_185 AllocBody264_188

def AllocBody264_190 : StackLang.HolProg 64 :=
.seq AllocBody264_184 AllocBody264_189

def AllocBody264_191 : StackLang.HolProg 64 :=
.seq AllocBody264_183 AllocBody264_190

def AllocBody264_192 : StackLang.HolProg 64 :=
.seq AllocBody264_182 AllocBody264_191

def AllocBody264_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody264_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody264_195 : StackLang.HolProg 64 :=
.seq AllocBody264_193 AllocBody264_194

def AllocBody264_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody264_197 : StackLang.HolProg 64 :=
.seq AllocBody264_195 AllocBody264_196

def AllocBody264_198 : StackLang.HolProg 64 :=
.call (some (AllocBody264_192, 0, 264, 8)) (Sum.inl 242) (some (AllocBody264_197, 264, 9))

def AllocBody264_199 : StackLang.HolProg 64 :=
.seq AllocBody264_181 AllocBody264_198

def AllocBody264_200 : StackLang.HolProg 64 :=
.seq AllocBody264_180 AllocBody264_199

def AllocBody264_201 : StackLang.HolProg 64 :=
.seq AllocBody264_179 AllocBody264_200

def AllocBody264_202 : StackLang.HolProg 64 :=
.seq AllocBody264_160 AllocBody264_201

def AllocBody264_203 : StackLang.HolProg 64 :=
.seq AllocBody264_157 AllocBody264_202

def AllocBody264_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody264_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody264_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def AllocBody264_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2#64)

def AllocBody264_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 625#64)

def AllocBody264_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_212 : StackLang.HolProg 64 :=
.seq AllocBody264_210 AllocBody264_211

def AllocBody264_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody264_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody264_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 11

def AllocBody264_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody264_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody264_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody264_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody264_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_223 : StackLang.HolProg 64 :=
.seq AllocBody264_221 AllocBody264_222

def AllocBody264_224 : StackLang.HolProg 64 :=
.seq AllocBody264_220 AllocBody264_223

def AllocBody264_225 : StackLang.HolProg 64 :=
.seq AllocBody264_219 AllocBody264_224

def AllocBody264_226 : StackLang.HolProg 64 :=
.seq AllocBody264_218 AllocBody264_225

def AllocBody264_227 : StackLang.HolProg 64 :=
.seq AllocBody264_217 AllocBody264_226

def AllocBody264_228 : StackLang.HolProg 64 :=
.seq AllocBody264_216 AllocBody264_227

def AllocBody264_229 : StackLang.HolProg 64 :=
.seq AllocBody264_215 AllocBody264_228

def AllocBody264_230 : StackLang.HolProg 64 :=
.seq AllocBody264_214 AllocBody264_229

def AllocBody264_231 : StackLang.HolProg 64 :=
.seq AllocBody264_213 AllocBody264_230

def AllocBody264_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody264_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody264_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody264_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody264_239 : StackLang.HolProg 64 :=
.seq AllocBody264_237 AllocBody264_238

def AllocBody264_240 : StackLang.HolProg 64 :=
.seq AllocBody264_236 AllocBody264_239

def AllocBody264_241 : StackLang.HolProg 64 :=
.seq AllocBody264_235 AllocBody264_240

def AllocBody264_242 : StackLang.HolProg 64 :=
.seq AllocBody264_234 AllocBody264_241

def AllocBody264_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody264_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody264_245 : StackLang.HolProg 64 :=
.seq AllocBody264_243 AllocBody264_244

def AllocBody264_246 : StackLang.HolProg 64 :=
.call (some (AllocBody264_242, 0, 264, 10)) (Sum.inl 235) (some (AllocBody264_245, 264, 11))

def AllocBody264_247 : StackLang.HolProg 64 :=
.seq AllocBody264_233 AllocBody264_246

def AllocBody264_248 : StackLang.HolProg 64 :=
.seq AllocBody264_232 AllocBody264_247

def AllocBody264_249 : StackLang.HolProg 64 :=
.seq AllocBody264_231 AllocBody264_248

def AllocBody264_250 : StackLang.HolProg 64 :=
.seq AllocBody264_212 AllocBody264_249

def AllocBody264_251 : StackLang.HolProg 64 :=
.seq AllocBody264_209 AllocBody264_250

def AllocBody264_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody264_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody264_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 626#64)

def AllocBody264_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_257 : StackLang.HolProg 64 :=
.seq AllocBody264_255 AllocBody264_256

def AllocBody264_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody264_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody264_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody264_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 13

def AllocBody264_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody264_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody264_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody264_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody264_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_268 : StackLang.HolProg 64 :=
.seq AllocBody264_266 AllocBody264_267

def AllocBody264_269 : StackLang.HolProg 64 :=
.seq AllocBody264_265 AllocBody264_268

def AllocBody264_270 : StackLang.HolProg 64 :=
.seq AllocBody264_264 AllocBody264_269

def AllocBody264_271 : StackLang.HolProg 64 :=
.seq AllocBody264_263 AllocBody264_270

def AllocBody264_272 : StackLang.HolProg 64 :=
.seq AllocBody264_262 AllocBody264_271

def AllocBody264_273 : StackLang.HolProg 64 :=
.seq AllocBody264_261 AllocBody264_272

def AllocBody264_274 : StackLang.HolProg 64 :=
.seq AllocBody264_260 AllocBody264_273

def AllocBody264_275 : StackLang.HolProg 64 :=
.seq AllocBody264_259 AllocBody264_274

def AllocBody264_276 : StackLang.HolProg 64 :=
.seq AllocBody264_258 AllocBody264_275

def AllocBody264_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody264_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody264_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody264_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody264_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody264_284 : StackLang.HolProg 64 :=
.seq AllocBody264_282 AllocBody264_283

def AllocBody264_285 : StackLang.HolProg 64 :=
.seq AllocBody264_281 AllocBody264_284

def AllocBody264_286 : StackLang.HolProg 64 :=
.seq AllocBody264_280 AllocBody264_285

def AllocBody264_287 : StackLang.HolProg 64 :=
.seq AllocBody264_279 AllocBody264_286

def AllocBody264_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody264_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody264_290 : StackLang.HolProg 64 :=
.seq AllocBody264_288 AllocBody264_289

def AllocBody264_291 : StackLang.HolProg 64 :=
.call (some (AllocBody264_287, 0, 264, 12)) (Sum.inl 70) (some (AllocBody264_290, 264, 13))

def AllocBody264_292 : StackLang.HolProg 64 :=
.seq AllocBody264_278 AllocBody264_291

def AllocBody264_293 : StackLang.HolProg 64 :=
.seq AllocBody264_277 AllocBody264_292

def AllocBody264_294 : StackLang.HolProg 64 :=
.seq AllocBody264_276 AllocBody264_293

def AllocBody264_295 : StackLang.HolProg 64 :=
.seq AllocBody264_257 AllocBody264_294

def AllocBody264_296 : StackLang.HolProg 64 :=
.seq AllocBody264_254 AllocBody264_295

def AllocBody264_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody264_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody264_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody264_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody264_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody264_302 : StackLang.HolProg 64 :=
.seq AllocBody264_300 AllocBody264_301

def AllocBody264_303 : StackLang.HolProg 64 :=
.seq AllocBody264_299 AllocBody264_302

def AllocBody264_304 : StackLang.HolProg 64 :=
.seq AllocBody264_298 AllocBody264_303

def AllocBody264_305 : StackLang.HolProg 64 :=
.seq AllocBody264_297 AllocBody264_304

def AllocBody264_306 : StackLang.HolProg 64 :=
.seq AllocBody264_296 AllocBody264_305

def AllocBody264_307 : StackLang.HolProg 64 :=
.seq AllocBody264_253 AllocBody264_306

def AllocBody264_308 : StackLang.HolProg 64 :=
.seq AllocBody264_252 AllocBody264_307

def AllocBody264_309 : StackLang.HolProg 64 :=
.seq AllocBody264_251 AllocBody264_308

def AllocBody264_310 : StackLang.HolProg 64 :=
.seq AllocBody264_208 AllocBody264_309

def AllocBody264_311 : StackLang.HolProg 64 :=
.seq AllocBody264_207 AllocBody264_310

def AllocBody264_312 : StackLang.HolProg 64 :=
.seq AllocBody264_206 AllocBody264_311

def AllocBody264_313 : StackLang.HolProg 64 :=
.seq AllocBody264_205 AllocBody264_312

def AllocBody264_314 : StackLang.HolProg 64 :=
.seq AllocBody264_204 AllocBody264_313

def AllocBody264_315 : StackLang.HolProg 64 :=
.seq AllocBody264_203 AllocBody264_314

def AllocBody264_316 : StackLang.HolProg 64 :=
.seq AllocBody264_156 AllocBody264_315

def AllocBody264_317 : StackLang.HolProg 64 :=
.seq AllocBody264_155 AllocBody264_316

def AllocBody264_318 : StackLang.HolProg 64 :=
.seq AllocBody264_154 AllocBody264_317

def AllocBody264_319 : StackLang.HolProg 64 :=
.seq AllocBody264_153 AllocBody264_318

def AllocBody264_320 : StackLang.HolProg 64 :=
.seq AllocBody264_152 AllocBody264_319

def AllocBody264_321 : StackLang.HolProg 64 :=
.seq AllocBody264_151 AllocBody264_320

def AllocBody264_322 : StackLang.HolProg 64 :=
.seq AllocBody264_150 AllocBody264_321

def AllocBody264_323 : StackLang.HolProg 64 :=
.seq AllocBody264_149 AllocBody264_322

def AllocBody264_324 : StackLang.HolProg 64 :=
.seq AllocBody264_102 AllocBody264_323

def AllocBody264_325 : StackLang.HolProg 64 :=
.seq AllocBody264_99 AllocBody264_324

def AllocBody264_326 : StackLang.HolProg 64 :=
.seq AllocBody264_98 AllocBody264_325

def AllocBody264_327 : StackLang.HolProg 64 :=
.seq AllocBody264_97 AllocBody264_326

def AllocBody264_328 : StackLang.HolProg 64 :=
.seq AllocBody264_96 AllocBody264_327

def AllocBody264_329 : StackLang.HolProg 64 :=
.seq AllocBody264_51 AllocBody264_328

def AllocBody264_330 : StackLang.HolProg 64 :=
.seq AllocBody264_50 AllocBody264_329

def AllocBody264_331 : StackLang.HolProg 64 :=
.seq AllocBody264_49 AllocBody264_330

def AllocBody264_332 : StackLang.HolProg 64 :=
.seq AllocBody264_48 AllocBody264_331

def AllocBody264_333 : StackLang.HolProg 64 :=
.seq AllocBody264_5 AllocBody264_332

def AllocBody264_334 : StackLang.HolProg 64 :=
.seq AllocBody264_0 AllocBody264_333

def Alloc264 : Nat × StackLang.HolProg 64 := (264, AllocBody264_334)
theorem Alloc264_eq : StackAlloc.progComp (264, raw264) = Alloc264 := by
  kernel_rfl
#print axioms Alloc264_eq
end InitECandidate.Proofs.BackendStages
