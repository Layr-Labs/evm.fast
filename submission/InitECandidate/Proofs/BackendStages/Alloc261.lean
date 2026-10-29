import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw261
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody261_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody261_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody261_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody261_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody261_4 : StackLang.HolProg 64 :=
.seq AllocBody261_2 AllocBody261_3

def AllocBody261_5 : StackLang.HolProg 64 :=
.seq AllocBody261_1 AllocBody261_4

def AllocBody261_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 599#64)

def AllocBody261_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_9 : StackLang.HolProg 64 :=
.seq AllocBody261_7 AllocBody261_8

def AllocBody261_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody261_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody261_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 3

def AllocBody261_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody261_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody261_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody261_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody261_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_20 : StackLang.HolProg 64 :=
.seq AllocBody261_18 AllocBody261_19

def AllocBody261_21 : StackLang.HolProg 64 :=
.seq AllocBody261_17 AllocBody261_20

def AllocBody261_22 : StackLang.HolProg 64 :=
.seq AllocBody261_16 AllocBody261_21

def AllocBody261_23 : StackLang.HolProg 64 :=
.seq AllocBody261_15 AllocBody261_22

def AllocBody261_24 : StackLang.HolProg 64 :=
.seq AllocBody261_14 AllocBody261_23

def AllocBody261_25 : StackLang.HolProg 64 :=
.seq AllocBody261_13 AllocBody261_24

def AllocBody261_26 : StackLang.HolProg 64 :=
.seq AllocBody261_12 AllocBody261_25

def AllocBody261_27 : StackLang.HolProg 64 :=
.seq AllocBody261_11 AllocBody261_26

def AllocBody261_28 : StackLang.HolProg 64 :=
.seq AllocBody261_10 AllocBody261_27

def AllocBody261_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody261_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody261_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody261_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody261_36 : StackLang.HolProg 64 :=
.seq AllocBody261_34 AllocBody261_35

def AllocBody261_37 : StackLang.HolProg 64 :=
.seq AllocBody261_33 AllocBody261_36

def AllocBody261_38 : StackLang.HolProg 64 :=
.seq AllocBody261_32 AllocBody261_37

def AllocBody261_39 : StackLang.HolProg 64 :=
.seq AllocBody261_31 AllocBody261_38

def AllocBody261_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody261_42 : StackLang.HolProg 64 :=
.seq AllocBody261_40 AllocBody261_41

def AllocBody261_43 : StackLang.HolProg 64 :=
.call (some (AllocBody261_39, 0, 261, 2)) (Sum.inl 69) (some (AllocBody261_42, 261, 3))

def AllocBody261_44 : StackLang.HolProg 64 :=
.seq AllocBody261_30 AllocBody261_43

def AllocBody261_45 : StackLang.HolProg 64 :=
.seq AllocBody261_29 AllocBody261_44

def AllocBody261_46 : StackLang.HolProg 64 :=
.seq AllocBody261_28 AllocBody261_45

def AllocBody261_47 : StackLang.HolProg 64 :=
.seq AllocBody261_9 AllocBody261_46

def AllocBody261_48 : StackLang.HolProg 64 :=
.seq AllocBody261_6 AllocBody261_47

def AllocBody261_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody261_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def AllocBody261_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody261_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 600#64)

def AllocBody261_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_55 : StackLang.HolProg 64 :=
.seq AllocBody261_53 AllocBody261_54

def AllocBody261_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody261_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody261_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 5

def AllocBody261_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody261_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody261_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody261_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody261_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_66 : StackLang.HolProg 64 :=
.seq AllocBody261_64 AllocBody261_65

def AllocBody261_67 : StackLang.HolProg 64 :=
.seq AllocBody261_63 AllocBody261_66

def AllocBody261_68 : StackLang.HolProg 64 :=
.seq AllocBody261_62 AllocBody261_67

def AllocBody261_69 : StackLang.HolProg 64 :=
.seq AllocBody261_61 AllocBody261_68

def AllocBody261_70 : StackLang.HolProg 64 :=
.seq AllocBody261_60 AllocBody261_69

def AllocBody261_71 : StackLang.HolProg 64 :=
.seq AllocBody261_59 AllocBody261_70

def AllocBody261_72 : StackLang.HolProg 64 :=
.seq AllocBody261_58 AllocBody261_71

def AllocBody261_73 : StackLang.HolProg 64 :=
.seq AllocBody261_57 AllocBody261_72

def AllocBody261_74 : StackLang.HolProg 64 :=
.seq AllocBody261_56 AllocBody261_73

def AllocBody261_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody261_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody261_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody261_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody261_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_83 : StackLang.HolProg 64 :=
.seq AllocBody261_81 AllocBody261_82

def AllocBody261_84 : StackLang.HolProg 64 :=
.seq AllocBody261_80 AllocBody261_83

def AllocBody261_85 : StackLang.HolProg 64 :=
.seq AllocBody261_79 AllocBody261_84

def AllocBody261_86 : StackLang.HolProg 64 :=
.seq AllocBody261_78 AllocBody261_85

def AllocBody261_87 : StackLang.HolProg 64 :=
.seq AllocBody261_77 AllocBody261_86

def AllocBody261_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody261_90 : StackLang.HolProg 64 :=
.seq AllocBody261_88 AllocBody261_89

def AllocBody261_91 : StackLang.HolProg 64 :=
.call (some (AllocBody261_87, 0, 261, 4)) (Sum.inl 68) (some (AllocBody261_90, 261, 5))

def AllocBody261_92 : StackLang.HolProg 64 :=
.seq AllocBody261_76 AllocBody261_91

def AllocBody261_93 : StackLang.HolProg 64 :=
.seq AllocBody261_75 AllocBody261_92

def AllocBody261_94 : StackLang.HolProg 64 :=
.seq AllocBody261_74 AllocBody261_93

def AllocBody261_95 : StackLang.HolProg 64 :=
.seq AllocBody261_55 AllocBody261_94

def AllocBody261_96 : StackLang.HolProg 64 :=
.seq AllocBody261_52 AllocBody261_95

def AllocBody261_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody261_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody261_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def AllocBody261_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody261_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody261_102 : StackLang.HolProg 64 :=
.seq AllocBody261_100 AllocBody261_101

def AllocBody261_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 601#64)

def AllocBody261_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_106 : StackLang.HolProg 64 :=
.seq AllocBody261_104 AllocBody261_105

def AllocBody261_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody261_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody261_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 7

def AllocBody261_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody261_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody261_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody261_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody261_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_117 : StackLang.HolProg 64 :=
.seq AllocBody261_115 AllocBody261_116

def AllocBody261_118 : StackLang.HolProg 64 :=
.seq AllocBody261_114 AllocBody261_117

def AllocBody261_119 : StackLang.HolProg 64 :=
.seq AllocBody261_113 AllocBody261_118

def AllocBody261_120 : StackLang.HolProg 64 :=
.seq AllocBody261_112 AllocBody261_119

def AllocBody261_121 : StackLang.HolProg 64 :=
.seq AllocBody261_111 AllocBody261_120

def AllocBody261_122 : StackLang.HolProg 64 :=
.seq AllocBody261_110 AllocBody261_121

def AllocBody261_123 : StackLang.HolProg 64 :=
.seq AllocBody261_109 AllocBody261_122

def AllocBody261_124 : StackLang.HolProg 64 :=
.seq AllocBody261_108 AllocBody261_123

def AllocBody261_125 : StackLang.HolProg 64 :=
.seq AllocBody261_107 AllocBody261_124

def AllocBody261_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody261_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody261_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody261_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody261_134 : StackLang.HolProg 64 :=
.seq AllocBody261_132 AllocBody261_133

def AllocBody261_135 : StackLang.HolProg 64 :=
.seq AllocBody261_131 AllocBody261_134

def AllocBody261_136 : StackLang.HolProg 64 :=
.seq AllocBody261_130 AllocBody261_135

def AllocBody261_137 : StackLang.HolProg 64 :=
.seq AllocBody261_129 AllocBody261_136

def AllocBody261_138 : StackLang.HolProg 64 :=
.seq AllocBody261_128 AllocBody261_137

def AllocBody261_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody261_141 : StackLang.HolProg 64 :=
.seq AllocBody261_139 AllocBody261_140

def AllocBody261_142 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody261_143 : StackLang.HolProg 64 :=
.seq AllocBody261_141 AllocBody261_142

def AllocBody261_144 : StackLang.HolProg 64 :=
.call (some (AllocBody261_138, 0, 261, 6)) (Sum.inl 242) (some (AllocBody261_143, 261, 7))

def AllocBody261_145 : StackLang.HolProg 64 :=
.seq AllocBody261_127 AllocBody261_144

def AllocBody261_146 : StackLang.HolProg 64 :=
.seq AllocBody261_126 AllocBody261_145

def AllocBody261_147 : StackLang.HolProg 64 :=
.seq AllocBody261_125 AllocBody261_146

def AllocBody261_148 : StackLang.HolProg 64 :=
.seq AllocBody261_106 AllocBody261_147

def AllocBody261_149 : StackLang.HolProg 64 :=
.seq AllocBody261_103 AllocBody261_148

def AllocBody261_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody261_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def AllocBody261_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody261_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 48#64)

def AllocBody261_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody261_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody261_158 : StackLang.HolProg 64 :=
.seq AllocBody261_156 AllocBody261_157

def AllocBody261_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 602#64)

def AllocBody261_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_162 : StackLang.HolProg 64 :=
.seq AllocBody261_160 AllocBody261_161

def AllocBody261_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody261_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody261_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 9

def AllocBody261_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody261_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody261_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody261_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody261_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_173 : StackLang.HolProg 64 :=
.seq AllocBody261_171 AllocBody261_172

def AllocBody261_174 : StackLang.HolProg 64 :=
.seq AllocBody261_170 AllocBody261_173

def AllocBody261_175 : StackLang.HolProg 64 :=
.seq AllocBody261_169 AllocBody261_174

def AllocBody261_176 : StackLang.HolProg 64 :=
.seq AllocBody261_168 AllocBody261_175

def AllocBody261_177 : StackLang.HolProg 64 :=
.seq AllocBody261_167 AllocBody261_176

def AllocBody261_178 : StackLang.HolProg 64 :=
.seq AllocBody261_166 AllocBody261_177

def AllocBody261_179 : StackLang.HolProg 64 :=
.seq AllocBody261_165 AllocBody261_178

def AllocBody261_180 : StackLang.HolProg 64 :=
.seq AllocBody261_164 AllocBody261_179

def AllocBody261_181 : StackLang.HolProg 64 :=
.seq AllocBody261_163 AllocBody261_180

def AllocBody261_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody261_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody261_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody261_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody261_190 : StackLang.HolProg 64 :=
.seq AllocBody261_188 AllocBody261_189

def AllocBody261_191 : StackLang.HolProg 64 :=
.seq AllocBody261_187 AllocBody261_190

def AllocBody261_192 : StackLang.HolProg 64 :=
.seq AllocBody261_186 AllocBody261_191

def AllocBody261_193 : StackLang.HolProg 64 :=
.seq AllocBody261_185 AllocBody261_192

def AllocBody261_194 : StackLang.HolProg 64 :=
.seq AllocBody261_184 AllocBody261_193

def AllocBody261_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody261_197 : StackLang.HolProg 64 :=
.seq AllocBody261_195 AllocBody261_196

def AllocBody261_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody261_199 : StackLang.HolProg 64 :=
.seq AllocBody261_197 AllocBody261_198

def AllocBody261_200 : StackLang.HolProg 64 :=
.call (some (AllocBody261_194, 0, 261, 8)) (Sum.inl 242) (some (AllocBody261_199, 261, 9))

def AllocBody261_201 : StackLang.HolProg 64 :=
.seq AllocBody261_183 AllocBody261_200

def AllocBody261_202 : StackLang.HolProg 64 :=
.seq AllocBody261_182 AllocBody261_201

def AllocBody261_203 : StackLang.HolProg 64 :=
.seq AllocBody261_181 AllocBody261_202

def AllocBody261_204 : StackLang.HolProg 64 :=
.seq AllocBody261_162 AllocBody261_203

def AllocBody261_205 : StackLang.HolProg 64 :=
.seq AllocBody261_159 AllocBody261_204

def AllocBody261_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody261_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 68#64)))

def AllocBody261_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody261_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody261_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 603#64)

def AllocBody261_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_215 : StackLang.HolProg 64 :=
.seq AllocBody261_213 AllocBody261_214

def AllocBody261_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody261_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody261_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 11

def AllocBody261_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody261_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody261_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody261_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody261_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_226 : StackLang.HolProg 64 :=
.seq AllocBody261_224 AllocBody261_225

def AllocBody261_227 : StackLang.HolProg 64 :=
.seq AllocBody261_223 AllocBody261_226

def AllocBody261_228 : StackLang.HolProg 64 :=
.seq AllocBody261_222 AllocBody261_227

def AllocBody261_229 : StackLang.HolProg 64 :=
.seq AllocBody261_221 AllocBody261_228

def AllocBody261_230 : StackLang.HolProg 64 :=
.seq AllocBody261_220 AllocBody261_229

def AllocBody261_231 : StackLang.HolProg 64 :=
.seq AllocBody261_219 AllocBody261_230

def AllocBody261_232 : StackLang.HolProg 64 :=
.seq AllocBody261_218 AllocBody261_231

def AllocBody261_233 : StackLang.HolProg 64 :=
.seq AllocBody261_217 AllocBody261_232

def AllocBody261_234 : StackLang.HolProg 64 :=
.seq AllocBody261_216 AllocBody261_233

def AllocBody261_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody261_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody261_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody261_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody261_243 : StackLang.HolProg 64 :=
.seq AllocBody261_241 AllocBody261_242

def AllocBody261_244 : StackLang.HolProg 64 :=
.seq AllocBody261_240 AllocBody261_243

def AllocBody261_245 : StackLang.HolProg 64 :=
.seq AllocBody261_239 AllocBody261_244

def AllocBody261_246 : StackLang.HolProg 64 :=
.seq AllocBody261_238 AllocBody261_245

def AllocBody261_247 : StackLang.HolProg 64 :=
.seq AllocBody261_237 AllocBody261_246

def AllocBody261_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody261_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody261_250 : StackLang.HolProg 64 :=
.seq AllocBody261_248 AllocBody261_249

def AllocBody261_251 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody261_252 : StackLang.HolProg 64 :=
.seq AllocBody261_250 AllocBody261_251

def AllocBody261_253 : StackLang.HolProg 64 :=
.call (some (AllocBody261_247, 0, 261, 10)) (Sum.inl 244) (some (AllocBody261_252, 261, 11))

def AllocBody261_254 : StackLang.HolProg 64 :=
.seq AllocBody261_236 AllocBody261_253

def AllocBody261_255 : StackLang.HolProg 64 :=
.seq AllocBody261_235 AllocBody261_254

def AllocBody261_256 : StackLang.HolProg 64 :=
.seq AllocBody261_234 AllocBody261_255

def AllocBody261_257 : StackLang.HolProg 64 :=
.seq AllocBody261_215 AllocBody261_256

def AllocBody261_258 : StackLang.HolProg 64 :=
.seq AllocBody261_212 AllocBody261_257

def AllocBody261_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody261_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody261_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def AllocBody261_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def AllocBody261_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 604#64)

def AllocBody261_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_267 : StackLang.HolProg 64 :=
.seq AllocBody261_265 AllocBody261_266

def AllocBody261_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody261_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody261_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 13

def AllocBody261_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody261_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody261_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody261_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody261_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_278 : StackLang.HolProg 64 :=
.seq AllocBody261_276 AllocBody261_277

def AllocBody261_279 : StackLang.HolProg 64 :=
.seq AllocBody261_275 AllocBody261_278

def AllocBody261_280 : StackLang.HolProg 64 :=
.seq AllocBody261_274 AllocBody261_279

def AllocBody261_281 : StackLang.HolProg 64 :=
.seq AllocBody261_273 AllocBody261_280

def AllocBody261_282 : StackLang.HolProg 64 :=
.seq AllocBody261_272 AllocBody261_281

def AllocBody261_283 : StackLang.HolProg 64 :=
.seq AllocBody261_271 AllocBody261_282

def AllocBody261_284 : StackLang.HolProg 64 :=
.seq AllocBody261_270 AllocBody261_283

def AllocBody261_285 : StackLang.HolProg 64 :=
.seq AllocBody261_269 AllocBody261_284

def AllocBody261_286 : StackLang.HolProg 64 :=
.seq AllocBody261_268 AllocBody261_285

def AllocBody261_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody261_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody261_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody261_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody261_294 : StackLang.HolProg 64 :=
.seq AllocBody261_292 AllocBody261_293

def AllocBody261_295 : StackLang.HolProg 64 :=
.seq AllocBody261_291 AllocBody261_294

def AllocBody261_296 : StackLang.HolProg 64 :=
.seq AllocBody261_290 AllocBody261_295

def AllocBody261_297 : StackLang.HolProg 64 :=
.seq AllocBody261_289 AllocBody261_296

def AllocBody261_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody261_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody261_300 : StackLang.HolProg 64 :=
.seq AllocBody261_298 AllocBody261_299

def AllocBody261_301 : StackLang.HolProg 64 :=
.call (some (AllocBody261_297, 0, 261, 12)) (Sum.inl 235) (some (AllocBody261_300, 261, 13))

def AllocBody261_302 : StackLang.HolProg 64 :=
.seq AllocBody261_288 AllocBody261_301

def AllocBody261_303 : StackLang.HolProg 64 :=
.seq AllocBody261_287 AllocBody261_302

def AllocBody261_304 : StackLang.HolProg 64 :=
.seq AllocBody261_286 AllocBody261_303

def AllocBody261_305 : StackLang.HolProg 64 :=
.seq AllocBody261_267 AllocBody261_304

def AllocBody261_306 : StackLang.HolProg 64 :=
.seq AllocBody261_264 AllocBody261_305

def AllocBody261_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody261_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody261_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 605#64)

def AllocBody261_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_312 : StackLang.HolProg 64 :=
.seq AllocBody261_310 AllocBody261_311

def AllocBody261_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody261_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody261_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody261_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 261 15

def AllocBody261_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody261_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody261_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody261_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody261_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_323 : StackLang.HolProg 64 :=
.seq AllocBody261_321 AllocBody261_322

def AllocBody261_324 : StackLang.HolProg 64 :=
.seq AllocBody261_320 AllocBody261_323

def AllocBody261_325 : StackLang.HolProg 64 :=
.seq AllocBody261_319 AllocBody261_324

def AllocBody261_326 : StackLang.HolProg 64 :=
.seq AllocBody261_318 AllocBody261_325

def AllocBody261_327 : StackLang.HolProg 64 :=
.seq AllocBody261_317 AllocBody261_326

def AllocBody261_328 : StackLang.HolProg 64 :=
.seq AllocBody261_316 AllocBody261_327

def AllocBody261_329 : StackLang.HolProg 64 :=
.seq AllocBody261_315 AllocBody261_328

def AllocBody261_330 : StackLang.HolProg 64 :=
.seq AllocBody261_314 AllocBody261_329

def AllocBody261_331 : StackLang.HolProg 64 :=
.seq AllocBody261_313 AllocBody261_330

def AllocBody261_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody261_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody261_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody261_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody261_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody261_339 : StackLang.HolProg 64 :=
.seq AllocBody261_337 AllocBody261_338

def AllocBody261_340 : StackLang.HolProg 64 :=
.seq AllocBody261_336 AllocBody261_339

def AllocBody261_341 : StackLang.HolProg 64 :=
.seq AllocBody261_335 AllocBody261_340

def AllocBody261_342 : StackLang.HolProg 64 :=
.seq AllocBody261_334 AllocBody261_341

def AllocBody261_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody261_344 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody261_345 : StackLang.HolProg 64 :=
.seq AllocBody261_343 AllocBody261_344

def AllocBody261_346 : StackLang.HolProg 64 :=
.call (some (AllocBody261_342, 0, 261, 14)) (Sum.inl 70) (some (AllocBody261_345, 261, 15))

def AllocBody261_347 : StackLang.HolProg 64 :=
.seq AllocBody261_333 AllocBody261_346

def AllocBody261_348 : StackLang.HolProg 64 :=
.seq AllocBody261_332 AllocBody261_347

def AllocBody261_349 : StackLang.HolProg 64 :=
.seq AllocBody261_331 AllocBody261_348

def AllocBody261_350 : StackLang.HolProg 64 :=
.seq AllocBody261_312 AllocBody261_349

def AllocBody261_351 : StackLang.HolProg 64 :=
.seq AllocBody261_309 AllocBody261_350

def AllocBody261_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody261_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody261_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody261_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody261_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody261_357 : StackLang.HolProg 64 :=
.seq AllocBody261_355 AllocBody261_356

def AllocBody261_358 : StackLang.HolProg 64 :=
.seq AllocBody261_354 AllocBody261_357

def AllocBody261_359 : StackLang.HolProg 64 :=
.seq AllocBody261_353 AllocBody261_358

def AllocBody261_360 : StackLang.HolProg 64 :=
.seq AllocBody261_352 AllocBody261_359

def AllocBody261_361 : StackLang.HolProg 64 :=
.seq AllocBody261_351 AllocBody261_360

def AllocBody261_362 : StackLang.HolProg 64 :=
.seq AllocBody261_308 AllocBody261_361

def AllocBody261_363 : StackLang.HolProg 64 :=
.seq AllocBody261_307 AllocBody261_362

def AllocBody261_364 : StackLang.HolProg 64 :=
.seq AllocBody261_306 AllocBody261_363

def AllocBody261_365 : StackLang.HolProg 64 :=
.seq AllocBody261_263 AllocBody261_364

def AllocBody261_366 : StackLang.HolProg 64 :=
.seq AllocBody261_262 AllocBody261_365

def AllocBody261_367 : StackLang.HolProg 64 :=
.seq AllocBody261_261 AllocBody261_366

def AllocBody261_368 : StackLang.HolProg 64 :=
.seq AllocBody261_260 AllocBody261_367

def AllocBody261_369 : StackLang.HolProg 64 :=
.seq AllocBody261_259 AllocBody261_368

def AllocBody261_370 : StackLang.HolProg 64 :=
.seq AllocBody261_258 AllocBody261_369

def AllocBody261_371 : StackLang.HolProg 64 :=
.seq AllocBody261_211 AllocBody261_370

def AllocBody261_372 : StackLang.HolProg 64 :=
.seq AllocBody261_210 AllocBody261_371

def AllocBody261_373 : StackLang.HolProg 64 :=
.seq AllocBody261_209 AllocBody261_372

def AllocBody261_374 : StackLang.HolProg 64 :=
.seq AllocBody261_208 AllocBody261_373

def AllocBody261_375 : StackLang.HolProg 64 :=
.seq AllocBody261_207 AllocBody261_374

def AllocBody261_376 : StackLang.HolProg 64 :=
.seq AllocBody261_206 AllocBody261_375

def AllocBody261_377 : StackLang.HolProg 64 :=
.seq AllocBody261_205 AllocBody261_376

def AllocBody261_378 : StackLang.HolProg 64 :=
.seq AllocBody261_158 AllocBody261_377

def AllocBody261_379 : StackLang.HolProg 64 :=
.seq AllocBody261_155 AllocBody261_378

def AllocBody261_380 : StackLang.HolProg 64 :=
.seq AllocBody261_154 AllocBody261_379

def AllocBody261_381 : StackLang.HolProg 64 :=
.seq AllocBody261_153 AllocBody261_380

def AllocBody261_382 : StackLang.HolProg 64 :=
.seq AllocBody261_152 AllocBody261_381

def AllocBody261_383 : StackLang.HolProg 64 :=
.seq AllocBody261_151 AllocBody261_382

def AllocBody261_384 : StackLang.HolProg 64 :=
.seq AllocBody261_150 AllocBody261_383

def AllocBody261_385 : StackLang.HolProg 64 :=
.seq AllocBody261_149 AllocBody261_384

def AllocBody261_386 : StackLang.HolProg 64 :=
.seq AllocBody261_102 AllocBody261_385

def AllocBody261_387 : StackLang.HolProg 64 :=
.seq AllocBody261_99 AllocBody261_386

def AllocBody261_388 : StackLang.HolProg 64 :=
.seq AllocBody261_98 AllocBody261_387

def AllocBody261_389 : StackLang.HolProg 64 :=
.seq AllocBody261_97 AllocBody261_388

def AllocBody261_390 : StackLang.HolProg 64 :=
.seq AllocBody261_96 AllocBody261_389

def AllocBody261_391 : StackLang.HolProg 64 :=
.seq AllocBody261_51 AllocBody261_390

def AllocBody261_392 : StackLang.HolProg 64 :=
.seq AllocBody261_50 AllocBody261_391

def AllocBody261_393 : StackLang.HolProg 64 :=
.seq AllocBody261_49 AllocBody261_392

def AllocBody261_394 : StackLang.HolProg 64 :=
.seq AllocBody261_48 AllocBody261_393

def AllocBody261_395 : StackLang.HolProg 64 :=
.seq AllocBody261_5 AllocBody261_394

def AllocBody261_396 : StackLang.HolProg 64 :=
.seq AllocBody261_0 AllocBody261_395

def Alloc261 : Nat × StackLang.HolProg 64 := (261, AllocBody261_396)
theorem Alloc261_eq : StackAlloc.progComp (261, raw261) = Alloc261 := by
  kernel_rfl
#print axioms Alloc261_eq
end InitECandidate.Proofs.BackendStages
