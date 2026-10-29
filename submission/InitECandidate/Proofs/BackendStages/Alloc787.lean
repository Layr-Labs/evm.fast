import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw787
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody787_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody787_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody787_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody787_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody787_4 : StackLang.HolProg 64 :=
.seq AllocBody787_2 AllocBody787_3

def AllocBody787_5 : StackLang.HolProg 64 :=
.seq AllocBody787_1 AllocBody787_4

def AllocBody787_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3643#64)

def AllocBody787_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_9 : StackLang.HolProg 64 :=
.seq AllocBody787_7 AllocBody787_8

def AllocBody787_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 3

def AllocBody787_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_20 : StackLang.HolProg 64 :=
.seq AllocBody787_18 AllocBody787_19

def AllocBody787_21 : StackLang.HolProg 64 :=
.seq AllocBody787_17 AllocBody787_20

def AllocBody787_22 : StackLang.HolProg 64 :=
.seq AllocBody787_16 AllocBody787_21

def AllocBody787_23 : StackLang.HolProg 64 :=
.seq AllocBody787_15 AllocBody787_22

def AllocBody787_24 : StackLang.HolProg 64 :=
.seq AllocBody787_14 AllocBody787_23

def AllocBody787_25 : StackLang.HolProg 64 :=
.seq AllocBody787_13 AllocBody787_24

def AllocBody787_26 : StackLang.HolProg 64 :=
.seq AllocBody787_12 AllocBody787_25

def AllocBody787_27 : StackLang.HolProg 64 :=
.seq AllocBody787_11 AllocBody787_26

def AllocBody787_28 : StackLang.HolProg 64 :=
.seq AllocBody787_10 AllocBody787_27

def AllocBody787_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody787_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody787_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody787_39 : StackLang.HolProg 64 :=
.seq AllocBody787_37 AllocBody787_38

def AllocBody787_40 : StackLang.HolProg 64 :=
.seq AllocBody787_36 AllocBody787_39

def AllocBody787_41 : StackLang.HolProg 64 :=
.seq AllocBody787_35 AllocBody787_40

def AllocBody787_42 : StackLang.HolProg 64 :=
.seq AllocBody787_34 AllocBody787_41

def AllocBody787_43 : StackLang.HolProg 64 :=
.seq AllocBody787_33 AllocBody787_42

def AllocBody787_44 : StackLang.HolProg 64 :=
.seq AllocBody787_32 AllocBody787_43

def AllocBody787_45 : StackLang.HolProg 64 :=
.seq AllocBody787_31 AllocBody787_44

def AllocBody787_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody787_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody787_49 : StackLang.HolProg 64 :=
.seq AllocBody787_47 AllocBody787_48

def AllocBody787_50 : StackLang.HolProg 64 :=
.seq AllocBody787_46 AllocBody787_49

def AllocBody787_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_52 : StackLang.HolProg 64 :=
.seq AllocBody787_50 AllocBody787_51

def AllocBody787_53 : StackLang.HolProg 64 :=
.call (some (AllocBody787_45, 0, 787, 2)) (Sum.inl 727) (some (AllocBody787_52, 787, 3))

def AllocBody787_54 : StackLang.HolProg 64 :=
.seq AllocBody787_30 AllocBody787_53

def AllocBody787_55 : StackLang.HolProg 64 :=
.seq AllocBody787_29 AllocBody787_54

def AllocBody787_56 : StackLang.HolProg 64 :=
.seq AllocBody787_28 AllocBody787_55

def AllocBody787_57 : StackLang.HolProg 64 :=
.seq AllocBody787_9 AllocBody787_56

def AllocBody787_58 : StackLang.HolProg 64 :=
.seq AllocBody787_6 AllocBody787_57

def AllocBody787_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody787_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody787_67 : StackLang.HolProg 64 :=
.seq AllocBody787_65 AllocBody787_66

def AllocBody787_68 : StackLang.HolProg 64 :=
.seq AllocBody787_64 AllocBody787_67

def AllocBody787_69 : StackLang.HolProg 64 :=
.seq AllocBody787_63 AllocBody787_68

def AllocBody787_70 : StackLang.HolProg 64 :=
.seq AllocBody787_62 AllocBody787_69

def AllocBody787_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody787_70 AllocBody787_71

def AllocBody787_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody787_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody787_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody787_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody787_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody787_82 : StackLang.HolProg 64 :=
.seq AllocBody787_80 AllocBody787_81

def AllocBody787_83 : StackLang.HolProg 64 :=
.seq AllocBody787_79 AllocBody787_82

def AllocBody787_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3644#64)

def AllocBody787_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_87 : StackLang.HolProg 64 :=
.seq AllocBody787_85 AllocBody787_86

def AllocBody787_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 5

def AllocBody787_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_98 : StackLang.HolProg 64 :=
.seq AllocBody787_96 AllocBody787_97

def AllocBody787_99 : StackLang.HolProg 64 :=
.seq AllocBody787_95 AllocBody787_98

def AllocBody787_100 : StackLang.HolProg 64 :=
.seq AllocBody787_94 AllocBody787_99

def AllocBody787_101 : StackLang.HolProg 64 :=
.seq AllocBody787_93 AllocBody787_100

def AllocBody787_102 : StackLang.HolProg 64 :=
.seq AllocBody787_92 AllocBody787_101

def AllocBody787_103 : StackLang.HolProg 64 :=
.seq AllocBody787_91 AllocBody787_102

def AllocBody787_104 : StackLang.HolProg 64 :=
.seq AllocBody787_90 AllocBody787_103

def AllocBody787_105 : StackLang.HolProg 64 :=
.seq AllocBody787_89 AllocBody787_104

def AllocBody787_106 : StackLang.HolProg 64 :=
.seq AllocBody787_88 AllocBody787_105

def AllocBody787_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody787_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody787_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody787_117 : StackLang.HolProg 64 :=
.seq AllocBody787_115 AllocBody787_116

def AllocBody787_118 : StackLang.HolProg 64 :=
.seq AllocBody787_114 AllocBody787_117

def AllocBody787_119 : StackLang.HolProg 64 :=
.seq AllocBody787_113 AllocBody787_118

def AllocBody787_120 : StackLang.HolProg 64 :=
.seq AllocBody787_112 AllocBody787_119

def AllocBody787_121 : StackLang.HolProg 64 :=
.seq AllocBody787_111 AllocBody787_120

def AllocBody787_122 : StackLang.HolProg 64 :=
.seq AllocBody787_110 AllocBody787_121

def AllocBody787_123 : StackLang.HolProg 64 :=
.seq AllocBody787_109 AllocBody787_122

def AllocBody787_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody787_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody787_127 : StackLang.HolProg 64 :=
.seq AllocBody787_125 AllocBody787_126

def AllocBody787_128 : StackLang.HolProg 64 :=
.seq AllocBody787_124 AllocBody787_127

def AllocBody787_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_130 : StackLang.HolProg 64 :=
.seq AllocBody787_128 AllocBody787_129

def AllocBody787_131 : StackLang.HolProg 64 :=
.call (some (AllocBody787_123, 0, 787, 4)) (Sum.inl 727) (some (AllocBody787_130, 787, 5))

def AllocBody787_132 : StackLang.HolProg 64 :=
.seq AllocBody787_108 AllocBody787_131

def AllocBody787_133 : StackLang.HolProg 64 :=
.seq AllocBody787_107 AllocBody787_132

def AllocBody787_134 : StackLang.HolProg 64 :=
.seq AllocBody787_106 AllocBody787_133

def AllocBody787_135 : StackLang.HolProg 64 :=
.seq AllocBody787_87 AllocBody787_134

def AllocBody787_136 : StackLang.HolProg 64 :=
.seq AllocBody787_84 AllocBody787_135

def AllocBody787_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody787_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody787_145 : StackLang.HolProg 64 :=
.seq AllocBody787_143 AllocBody787_144

def AllocBody787_146 : StackLang.HolProg 64 :=
.seq AllocBody787_142 AllocBody787_145

def AllocBody787_147 : StackLang.HolProg 64 :=
.seq AllocBody787_141 AllocBody787_146

def AllocBody787_148 : StackLang.HolProg 64 :=
.seq AllocBody787_140 AllocBody787_147

def AllocBody787_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody787_148 AllocBody787_149

def AllocBody787_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody787_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody787_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody787_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody787_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody787_160 : StackLang.HolProg 64 :=
.seq AllocBody787_158 AllocBody787_159

def AllocBody787_161 : StackLang.HolProg 64 :=
.seq AllocBody787_157 AllocBody787_160

def AllocBody787_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3645#64)

def AllocBody787_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_165 : StackLang.HolProg 64 :=
.seq AllocBody787_163 AllocBody787_164

def AllocBody787_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 7

def AllocBody787_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_176 : StackLang.HolProg 64 :=
.seq AllocBody787_174 AllocBody787_175

def AllocBody787_177 : StackLang.HolProg 64 :=
.seq AllocBody787_173 AllocBody787_176

def AllocBody787_178 : StackLang.HolProg 64 :=
.seq AllocBody787_172 AllocBody787_177

def AllocBody787_179 : StackLang.HolProg 64 :=
.seq AllocBody787_171 AllocBody787_178

def AllocBody787_180 : StackLang.HolProg 64 :=
.seq AllocBody787_170 AllocBody787_179

def AllocBody787_181 : StackLang.HolProg 64 :=
.seq AllocBody787_169 AllocBody787_180

def AllocBody787_182 : StackLang.HolProg 64 :=
.seq AllocBody787_168 AllocBody787_181

def AllocBody787_183 : StackLang.HolProg 64 :=
.seq AllocBody787_167 AllocBody787_182

def AllocBody787_184 : StackLang.HolProg 64 :=
.seq AllocBody787_166 AllocBody787_183

def AllocBody787_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody787_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody787_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody787_195 : StackLang.HolProg 64 :=
.seq AllocBody787_193 AllocBody787_194

def AllocBody787_196 : StackLang.HolProg 64 :=
.seq AllocBody787_192 AllocBody787_195

def AllocBody787_197 : StackLang.HolProg 64 :=
.seq AllocBody787_191 AllocBody787_196

def AllocBody787_198 : StackLang.HolProg 64 :=
.seq AllocBody787_190 AllocBody787_197

def AllocBody787_199 : StackLang.HolProg 64 :=
.seq AllocBody787_189 AllocBody787_198

def AllocBody787_200 : StackLang.HolProg 64 :=
.seq AllocBody787_188 AllocBody787_199

def AllocBody787_201 : StackLang.HolProg 64 :=
.seq AllocBody787_187 AllocBody787_200

def AllocBody787_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody787_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody787_205 : StackLang.HolProg 64 :=
.seq AllocBody787_203 AllocBody787_204

def AllocBody787_206 : StackLang.HolProg 64 :=
.seq AllocBody787_202 AllocBody787_205

def AllocBody787_207 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_208 : StackLang.HolProg 64 :=
.seq AllocBody787_206 AllocBody787_207

def AllocBody787_209 : StackLang.HolProg 64 :=
.call (some (AllocBody787_201, 0, 787, 6)) (Sum.inl 727) (some (AllocBody787_208, 787, 7))

def AllocBody787_210 : StackLang.HolProg 64 :=
.seq AllocBody787_186 AllocBody787_209

def AllocBody787_211 : StackLang.HolProg 64 :=
.seq AllocBody787_185 AllocBody787_210

def AllocBody787_212 : StackLang.HolProg 64 :=
.seq AllocBody787_184 AllocBody787_211

def AllocBody787_213 : StackLang.HolProg 64 :=
.seq AllocBody787_165 AllocBody787_212

def AllocBody787_214 : StackLang.HolProg 64 :=
.seq AllocBody787_162 AllocBody787_213

def AllocBody787_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody787_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody787_223 : StackLang.HolProg 64 :=
.seq AllocBody787_221 AllocBody787_222

def AllocBody787_224 : StackLang.HolProg 64 :=
.seq AllocBody787_220 AllocBody787_223

def AllocBody787_225 : StackLang.HolProg 64 :=
.seq AllocBody787_219 AllocBody787_224

def AllocBody787_226 : StackLang.HolProg 64 :=
.seq AllocBody787_218 AllocBody787_225

def AllocBody787_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody787_226 AllocBody787_227

def AllocBody787_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody787_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def AllocBody787_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody787_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody787_237 : StackLang.HolProg 64 :=
.seq AllocBody787_235 AllocBody787_236

def AllocBody787_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3646#64)

def AllocBody787_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_241 : StackLang.HolProg 64 :=
.seq AllocBody787_239 AllocBody787_240

def AllocBody787_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 9

def AllocBody787_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_252 : StackLang.HolProg 64 :=
.seq AllocBody787_250 AllocBody787_251

def AllocBody787_253 : StackLang.HolProg 64 :=
.seq AllocBody787_249 AllocBody787_252

def AllocBody787_254 : StackLang.HolProg 64 :=
.seq AllocBody787_248 AllocBody787_253

def AllocBody787_255 : StackLang.HolProg 64 :=
.seq AllocBody787_247 AllocBody787_254

def AllocBody787_256 : StackLang.HolProg 64 :=
.seq AllocBody787_246 AllocBody787_255

def AllocBody787_257 : StackLang.HolProg 64 :=
.seq AllocBody787_245 AllocBody787_256

def AllocBody787_258 : StackLang.HolProg 64 :=
.seq AllocBody787_244 AllocBody787_257

def AllocBody787_259 : StackLang.HolProg 64 :=
.seq AllocBody787_243 AllocBody787_258

def AllocBody787_260 : StackLang.HolProg 64 :=
.seq AllocBody787_242 AllocBody787_259

def AllocBody787_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody787_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody787_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody787_270 : StackLang.HolProg 64 :=
.seq AllocBody787_268 AllocBody787_269

def AllocBody787_271 : StackLang.HolProg 64 :=
.seq AllocBody787_267 AllocBody787_270

def AllocBody787_272 : StackLang.HolProg 64 :=
.seq AllocBody787_266 AllocBody787_271

def AllocBody787_273 : StackLang.HolProg 64 :=
.seq AllocBody787_265 AllocBody787_272

def AllocBody787_274 : StackLang.HolProg 64 :=
.seq AllocBody787_264 AllocBody787_273

def AllocBody787_275 : StackLang.HolProg 64 :=
.seq AllocBody787_263 AllocBody787_274

def AllocBody787_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody787_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody787_278 : StackLang.HolProg 64 :=
.seq AllocBody787_276 AllocBody787_277

def AllocBody787_279 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_280 : StackLang.HolProg 64 :=
.seq AllocBody787_278 AllocBody787_279

def AllocBody787_281 : StackLang.HolProg 64 :=
.call (some (AllocBody787_275, 0, 787, 8)) (Sum.inl 727) (some (AllocBody787_280, 787, 9))

def AllocBody787_282 : StackLang.HolProg 64 :=
.seq AllocBody787_262 AllocBody787_281

def AllocBody787_283 : StackLang.HolProg 64 :=
.seq AllocBody787_261 AllocBody787_282

def AllocBody787_284 : StackLang.HolProg 64 :=
.seq AllocBody787_260 AllocBody787_283

def AllocBody787_285 : StackLang.HolProg 64 :=
.seq AllocBody787_241 AllocBody787_284

def AllocBody787_286 : StackLang.HolProg 64 :=
.seq AllocBody787_238 AllocBody787_285

def AllocBody787_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody787_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody787_295 : StackLang.HolProg 64 :=
.seq AllocBody787_293 AllocBody787_294

def AllocBody787_296 : StackLang.HolProg 64 :=
.seq AllocBody787_292 AllocBody787_295

def AllocBody787_297 : StackLang.HolProg 64 :=
.seq AllocBody787_291 AllocBody787_296

def AllocBody787_298 : StackLang.HolProg 64 :=
.seq AllocBody787_290 AllocBody787_297

def AllocBody787_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_300 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody787_298 AllocBody787_299

def AllocBody787_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody787_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody787_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody787_306 : StackLang.HolProg 64 :=
.seq AllocBody787_304 AllocBody787_305

def AllocBody787_307 : StackLang.HolProg 64 :=
.seq AllocBody787_303 AllocBody787_306

def AllocBody787_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3647#64)

def AllocBody787_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_311 : StackLang.HolProg 64 :=
.seq AllocBody787_309 AllocBody787_310

def AllocBody787_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 11

def AllocBody787_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_322 : StackLang.HolProg 64 :=
.seq AllocBody787_320 AllocBody787_321

def AllocBody787_323 : StackLang.HolProg 64 :=
.seq AllocBody787_319 AllocBody787_322

def AllocBody787_324 : StackLang.HolProg 64 :=
.seq AllocBody787_318 AllocBody787_323

def AllocBody787_325 : StackLang.HolProg 64 :=
.seq AllocBody787_317 AllocBody787_324

def AllocBody787_326 : StackLang.HolProg 64 :=
.seq AllocBody787_316 AllocBody787_325

def AllocBody787_327 : StackLang.HolProg 64 :=
.seq AllocBody787_315 AllocBody787_326

def AllocBody787_328 : StackLang.HolProg 64 :=
.seq AllocBody787_314 AllocBody787_327

def AllocBody787_329 : StackLang.HolProg 64 :=
.seq AllocBody787_313 AllocBody787_328

def AllocBody787_330 : StackLang.HolProg 64 :=
.seq AllocBody787_312 AllocBody787_329

def AllocBody787_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody787_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_339 : StackLang.HolProg 64 :=
.seq AllocBody787_337 AllocBody787_338

def AllocBody787_340 : StackLang.HolProg 64 :=
.seq AllocBody787_336 AllocBody787_339

def AllocBody787_341 : StackLang.HolProg 64 :=
.seq AllocBody787_335 AllocBody787_340

def AllocBody787_342 : StackLang.HolProg 64 :=
.seq AllocBody787_334 AllocBody787_341

def AllocBody787_343 : StackLang.HolProg 64 :=
.seq AllocBody787_333 AllocBody787_342

def AllocBody787_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_345 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_346 : StackLang.HolProg 64 :=
.seq AllocBody787_344 AllocBody787_345

def AllocBody787_347 : StackLang.HolProg 64 :=
.call (some (AllocBody787_343, 0, 787, 10)) (Sum.inl 732) (some (AllocBody787_346, 787, 11))

def AllocBody787_348 : StackLang.HolProg 64 :=
.seq AllocBody787_332 AllocBody787_347

def AllocBody787_349 : StackLang.HolProg 64 :=
.seq AllocBody787_331 AllocBody787_348

def AllocBody787_350 : StackLang.HolProg 64 :=
.seq AllocBody787_330 AllocBody787_349

def AllocBody787_351 : StackLang.HolProg 64 :=
.seq AllocBody787_311 AllocBody787_350

def AllocBody787_352 : StackLang.HolProg 64 :=
.seq AllocBody787_308 AllocBody787_351

def AllocBody787_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody787_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody787_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody787_358 : StackLang.HolProg 64 :=
.seq AllocBody787_356 AllocBody787_357

def AllocBody787_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3648#64)

def AllocBody787_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_362 : StackLang.HolProg 64 :=
.seq AllocBody787_360 AllocBody787_361

def AllocBody787_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 13

def AllocBody787_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_373 : StackLang.HolProg 64 :=
.seq AllocBody787_371 AllocBody787_372

def AllocBody787_374 : StackLang.HolProg 64 :=
.seq AllocBody787_370 AllocBody787_373

def AllocBody787_375 : StackLang.HolProg 64 :=
.seq AllocBody787_369 AllocBody787_374

def AllocBody787_376 : StackLang.HolProg 64 :=
.seq AllocBody787_368 AllocBody787_375

def AllocBody787_377 : StackLang.HolProg 64 :=
.seq AllocBody787_367 AllocBody787_376

def AllocBody787_378 : StackLang.HolProg 64 :=
.seq AllocBody787_366 AllocBody787_377

def AllocBody787_379 : StackLang.HolProg 64 :=
.seq AllocBody787_365 AllocBody787_378

def AllocBody787_380 : StackLang.HolProg 64 :=
.seq AllocBody787_364 AllocBody787_379

def AllocBody787_381 : StackLang.HolProg 64 :=
.seq AllocBody787_363 AllocBody787_380

def AllocBody787_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody787_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody787_391 : StackLang.HolProg 64 :=
.seq AllocBody787_389 AllocBody787_390

def AllocBody787_392 : StackLang.HolProg 64 :=
.seq AllocBody787_388 AllocBody787_391

def AllocBody787_393 : StackLang.HolProg 64 :=
.seq AllocBody787_387 AllocBody787_392

def AllocBody787_394 : StackLang.HolProg 64 :=
.seq AllocBody787_386 AllocBody787_393

def AllocBody787_395 : StackLang.HolProg 64 :=
.seq AllocBody787_385 AllocBody787_394

def AllocBody787_396 : StackLang.HolProg 64 :=
.seq AllocBody787_384 AllocBody787_395

def AllocBody787_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody787_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody787_399 : StackLang.HolProg 64 :=
.seq AllocBody787_397 AllocBody787_398

def AllocBody787_400 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_401 : StackLang.HolProg 64 :=
.seq AllocBody787_399 AllocBody787_400

def AllocBody787_402 : StackLang.HolProg 64 :=
.call (some (AllocBody787_396, 0, 787, 12)) (Sum.inl 732) (some (AllocBody787_401, 787, 13))

def AllocBody787_403 : StackLang.HolProg 64 :=
.seq AllocBody787_383 AllocBody787_402

def AllocBody787_404 : StackLang.HolProg 64 :=
.seq AllocBody787_382 AllocBody787_403

def AllocBody787_405 : StackLang.HolProg 64 :=
.seq AllocBody787_381 AllocBody787_404

def AllocBody787_406 : StackLang.HolProg 64 :=
.seq AllocBody787_362 AllocBody787_405

def AllocBody787_407 : StackLang.HolProg 64 :=
.seq AllocBody787_359 AllocBody787_406

def AllocBody787_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody787_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody787_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_414 : StackLang.HolProg 64 :=
.seq AllocBody787_412 AllocBody787_413

def AllocBody787_415 : StackLang.HolProg 64 :=
.seq AllocBody787_411 AllocBody787_414

def AllocBody787_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody787_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_419 : StackLang.HolProg 64 :=
.seq AllocBody787_417 AllocBody787_418

def AllocBody787_420 : StackLang.HolProg 64 :=
.seq AllocBody787_416 AllocBody787_419

def AllocBody787_421 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody787_415 AllocBody787_420

def AllocBody787_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody787_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody787_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_428 : StackLang.HolProg 64 :=
.seq AllocBody787_426 AllocBody787_427

def AllocBody787_429 : StackLang.HolProg 64 :=
.seq AllocBody787_425 AllocBody787_428

def AllocBody787_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody787_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_433 : StackLang.HolProg 64 :=
.seq AllocBody787_431 AllocBody787_432

def AllocBody787_434 : StackLang.HolProg 64 :=
.seq AllocBody787_430 AllocBody787_433

def AllocBody787_435 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody787_429 AllocBody787_434

def AllocBody787_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody787_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody787_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody787_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_443 : StackLang.HolProg 64 :=
.seq AllocBody787_441 AllocBody787_442

def AllocBody787_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3649#64)

def AllocBody787_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_447 : StackLang.HolProg 64 :=
.seq AllocBody787_445 AllocBody787_446

def AllocBody787_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 15

def AllocBody787_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_458 : StackLang.HolProg 64 :=
.seq AllocBody787_456 AllocBody787_457

def AllocBody787_459 : StackLang.HolProg 64 :=
.seq AllocBody787_455 AllocBody787_458

def AllocBody787_460 : StackLang.HolProg 64 :=
.seq AllocBody787_454 AllocBody787_459

def AllocBody787_461 : StackLang.HolProg 64 :=
.seq AllocBody787_453 AllocBody787_460

def AllocBody787_462 : StackLang.HolProg 64 :=
.seq AllocBody787_452 AllocBody787_461

def AllocBody787_463 : StackLang.HolProg 64 :=
.seq AllocBody787_451 AllocBody787_462

def AllocBody787_464 : StackLang.HolProg 64 :=
.seq AllocBody787_450 AllocBody787_463

def AllocBody787_465 : StackLang.HolProg 64 :=
.seq AllocBody787_449 AllocBody787_464

def AllocBody787_466 : StackLang.HolProg 64 :=
.seq AllocBody787_448 AllocBody787_465

def AllocBody787_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody787_474 : StackLang.HolProg 64 :=
.seq AllocBody787_472 AllocBody787_473

def AllocBody787_475 : StackLang.HolProg 64 :=
.seq AllocBody787_471 AllocBody787_474

def AllocBody787_476 : StackLang.HolProg 64 :=
.seq AllocBody787_470 AllocBody787_475

def AllocBody787_477 : StackLang.HolProg 64 :=
.seq AllocBody787_469 AllocBody787_476

def AllocBody787_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody787_479 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_480 : StackLang.HolProg 64 :=
.seq AllocBody787_478 AllocBody787_479

def AllocBody787_481 : StackLang.HolProg 64 :=
.call (some (AllocBody787_477, 0, 787, 14)) (Sum.inl 730) (some (AllocBody787_480, 787, 15))

def AllocBody787_482 : StackLang.HolProg 64 :=
.seq AllocBody787_468 AllocBody787_481

def AllocBody787_483 : StackLang.HolProg 64 :=
.seq AllocBody787_467 AllocBody787_482

def AllocBody787_484 : StackLang.HolProg 64 :=
.seq AllocBody787_466 AllocBody787_483

def AllocBody787_485 : StackLang.HolProg 64 :=
.seq AllocBody787_447 AllocBody787_484

def AllocBody787_486 : StackLang.HolProg 64 :=
.seq AllocBody787_444 AllocBody787_485

def AllocBody787_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody787_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody787_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody787_492 : StackLang.HolProg 64 :=
.seq AllocBody787_490 AllocBody787_491

def AllocBody787_493 : StackLang.HolProg 64 :=
.seq AllocBody787_489 AllocBody787_492

def AllocBody787_494 : StackLang.HolProg 64 :=
.seq AllocBody787_488 AllocBody787_493

def AllocBody787_495 : StackLang.HolProg 64 :=
.seq AllocBody787_487 AllocBody787_494

def AllocBody787_496 : StackLang.HolProg 64 :=
.seq AllocBody787_486 AllocBody787_495

def AllocBody787_497 : StackLang.HolProg 64 :=
.seq AllocBody787_443 AllocBody787_496

def AllocBody787_498 : StackLang.HolProg 64 :=
.seq AllocBody787_440 AllocBody787_497

def AllocBody787_499 : StackLang.HolProg 64 :=
.seq AllocBody787_439 AllocBody787_498

def AllocBody787_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_501 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody787_499 AllocBody787_500

def AllocBody787_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody787_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody787_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3650#64)

def AllocBody787_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_509 : StackLang.HolProg 64 :=
.seq AllocBody787_507 AllocBody787_508

def AllocBody787_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody787_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody787_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody787_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 17

def AllocBody787_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody787_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody787_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody787_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody787_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_520 : StackLang.HolProg 64 :=
.seq AllocBody787_518 AllocBody787_519

def AllocBody787_521 : StackLang.HolProg 64 :=
.seq AllocBody787_517 AllocBody787_520

def AllocBody787_522 : StackLang.HolProg 64 :=
.seq AllocBody787_516 AllocBody787_521

def AllocBody787_523 : StackLang.HolProg 64 :=
.seq AllocBody787_515 AllocBody787_522

def AllocBody787_524 : StackLang.HolProg 64 :=
.seq AllocBody787_514 AllocBody787_523

def AllocBody787_525 : StackLang.HolProg 64 :=
.seq AllocBody787_513 AllocBody787_524

def AllocBody787_526 : StackLang.HolProg 64 :=
.seq AllocBody787_512 AllocBody787_525

def AllocBody787_527 : StackLang.HolProg 64 :=
.seq AllocBody787_511 AllocBody787_526

def AllocBody787_528 : StackLang.HolProg 64 :=
.seq AllocBody787_510 AllocBody787_527

def AllocBody787_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody787_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody787_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody787_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody787_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody787_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody787_537 : StackLang.HolProg 64 :=
.seq AllocBody787_535 AllocBody787_536

def AllocBody787_538 : StackLang.HolProg 64 :=
.seq AllocBody787_534 AllocBody787_537

def AllocBody787_539 : StackLang.HolProg 64 :=
.seq AllocBody787_533 AllocBody787_538

def AllocBody787_540 : StackLang.HolProg 64 :=
.seq AllocBody787_532 AllocBody787_539

def AllocBody787_541 : StackLang.HolProg 64 :=
.seq AllocBody787_531 AllocBody787_540

def AllocBody787_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody787_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody787_544 : StackLang.HolProg 64 :=
.seq AllocBody787_542 AllocBody787_543

def AllocBody787_545 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody787_546 : StackLang.HolProg 64 :=
.seq AllocBody787_544 AllocBody787_545

def AllocBody787_547 : StackLang.HolProg 64 :=
.call (some (AllocBody787_541, 0, 787, 16)) (Sum.inl 731) (some (AllocBody787_546, 787, 17))

def AllocBody787_548 : StackLang.HolProg 64 :=
.seq AllocBody787_530 AllocBody787_547

def AllocBody787_549 : StackLang.HolProg 64 :=
.seq AllocBody787_529 AllocBody787_548

def AllocBody787_550 : StackLang.HolProg 64 :=
.seq AllocBody787_528 AllocBody787_549

def AllocBody787_551 : StackLang.HolProg 64 :=
.seq AllocBody787_509 AllocBody787_550

def AllocBody787_552 : StackLang.HolProg 64 :=
.seq AllocBody787_506 AllocBody787_551

def AllocBody787_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody787_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody787_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody787_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody787_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody787_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 786

def AllocBody787_561 : StackLang.HolProg 64 :=
.seq AllocBody787_559 AllocBody787_560

def AllocBody787_562 : StackLang.HolProg 64 :=
.seq AllocBody787_558 AllocBody787_561

def AllocBody787_563 : StackLang.HolProg 64 :=
.seq AllocBody787_557 AllocBody787_562

def AllocBody787_564 : StackLang.HolProg 64 :=
.seq AllocBody787_556 AllocBody787_563

def AllocBody787_565 : StackLang.HolProg 64 :=
.seq AllocBody787_555 AllocBody787_564

def AllocBody787_566 : StackLang.HolProg 64 :=
.seq AllocBody787_554 AllocBody787_565

def AllocBody787_567 : StackLang.HolProg 64 :=
.seq AllocBody787_553 AllocBody787_566

def AllocBody787_568 : StackLang.HolProg 64 :=
.seq AllocBody787_552 AllocBody787_567

def AllocBody787_569 : StackLang.HolProg 64 :=
.seq AllocBody787_505 AllocBody787_568

def AllocBody787_570 : StackLang.HolProg 64 :=
.seq AllocBody787_504 AllocBody787_569

def AllocBody787_571 : StackLang.HolProg 64 :=
.seq AllocBody787_503 AllocBody787_570

def AllocBody787_572 : StackLang.HolProg 64 :=
.seq AllocBody787_502 AllocBody787_571

def AllocBody787_573 : StackLang.HolProg 64 :=
.seq AllocBody787_501 AllocBody787_572

def AllocBody787_574 : StackLang.HolProg 64 :=
.seq AllocBody787_438 AllocBody787_573

def AllocBody787_575 : StackLang.HolProg 64 :=
.seq AllocBody787_437 AllocBody787_574

def AllocBody787_576 : StackLang.HolProg 64 :=
.seq AllocBody787_436 AllocBody787_575

def AllocBody787_577 : StackLang.HolProg 64 :=
.seq AllocBody787_435 AllocBody787_576

def AllocBody787_578 : StackLang.HolProg 64 :=
.seq AllocBody787_424 AllocBody787_577

def AllocBody787_579 : StackLang.HolProg 64 :=
.seq AllocBody787_423 AllocBody787_578

def AllocBody787_580 : StackLang.HolProg 64 :=
.seq AllocBody787_422 AllocBody787_579

def AllocBody787_581 : StackLang.HolProg 64 :=
.seq AllocBody787_421 AllocBody787_580

def AllocBody787_582 : StackLang.HolProg 64 :=
.seq AllocBody787_410 AllocBody787_581

def AllocBody787_583 : StackLang.HolProg 64 :=
.seq AllocBody787_409 AllocBody787_582

def AllocBody787_584 : StackLang.HolProg 64 :=
.seq AllocBody787_408 AllocBody787_583

def AllocBody787_585 : StackLang.HolProg 64 :=
.seq AllocBody787_407 AllocBody787_584

def AllocBody787_586 : StackLang.HolProg 64 :=
.seq AllocBody787_358 AllocBody787_585

def AllocBody787_587 : StackLang.HolProg 64 :=
.seq AllocBody787_355 AllocBody787_586

def AllocBody787_588 : StackLang.HolProg 64 :=
.seq AllocBody787_354 AllocBody787_587

def AllocBody787_589 : StackLang.HolProg 64 :=
.seq AllocBody787_353 AllocBody787_588

def AllocBody787_590 : StackLang.HolProg 64 :=
.seq AllocBody787_352 AllocBody787_589

def AllocBody787_591 : StackLang.HolProg 64 :=
.seq AllocBody787_307 AllocBody787_590

def AllocBody787_592 : StackLang.HolProg 64 :=
.seq AllocBody787_302 AllocBody787_591

def AllocBody787_593 : StackLang.HolProg 64 :=
.seq AllocBody787_301 AllocBody787_592

def AllocBody787_594 : StackLang.HolProg 64 :=
.seq AllocBody787_300 AllocBody787_593

def AllocBody787_595 : StackLang.HolProg 64 :=
.seq AllocBody787_289 AllocBody787_594

def AllocBody787_596 : StackLang.HolProg 64 :=
.seq AllocBody787_288 AllocBody787_595

def AllocBody787_597 : StackLang.HolProg 64 :=
.seq AllocBody787_287 AllocBody787_596

def AllocBody787_598 : StackLang.HolProg 64 :=
.seq AllocBody787_286 AllocBody787_597

def AllocBody787_599 : StackLang.HolProg 64 :=
.seq AllocBody787_237 AllocBody787_598

def AllocBody787_600 : StackLang.HolProg 64 :=
.seq AllocBody787_234 AllocBody787_599

def AllocBody787_601 : StackLang.HolProg 64 :=
.seq AllocBody787_233 AllocBody787_600

def AllocBody787_602 : StackLang.HolProg 64 :=
.seq AllocBody787_232 AllocBody787_601

def AllocBody787_603 : StackLang.HolProg 64 :=
.seq AllocBody787_231 AllocBody787_602

def AllocBody787_604 : StackLang.HolProg 64 :=
.seq AllocBody787_230 AllocBody787_603

def AllocBody787_605 : StackLang.HolProg 64 :=
.seq AllocBody787_229 AllocBody787_604

def AllocBody787_606 : StackLang.HolProg 64 :=
.seq AllocBody787_228 AllocBody787_605

def AllocBody787_607 : StackLang.HolProg 64 :=
.seq AllocBody787_217 AllocBody787_606

def AllocBody787_608 : StackLang.HolProg 64 :=
.seq AllocBody787_216 AllocBody787_607

def AllocBody787_609 : StackLang.HolProg 64 :=
.seq AllocBody787_215 AllocBody787_608

def AllocBody787_610 : StackLang.HolProg 64 :=
.seq AllocBody787_214 AllocBody787_609

def AllocBody787_611 : StackLang.HolProg 64 :=
.seq AllocBody787_161 AllocBody787_610

def AllocBody787_612 : StackLang.HolProg 64 :=
.seq AllocBody787_156 AllocBody787_611

def AllocBody787_613 : StackLang.HolProg 64 :=
.seq AllocBody787_155 AllocBody787_612

def AllocBody787_614 : StackLang.HolProg 64 :=
.seq AllocBody787_154 AllocBody787_613

def AllocBody787_615 : StackLang.HolProg 64 :=
.seq AllocBody787_153 AllocBody787_614

def AllocBody787_616 : StackLang.HolProg 64 :=
.seq AllocBody787_152 AllocBody787_615

def AllocBody787_617 : StackLang.HolProg 64 :=
.seq AllocBody787_151 AllocBody787_616

def AllocBody787_618 : StackLang.HolProg 64 :=
.seq AllocBody787_150 AllocBody787_617

def AllocBody787_619 : StackLang.HolProg 64 :=
.seq AllocBody787_139 AllocBody787_618

def AllocBody787_620 : StackLang.HolProg 64 :=
.seq AllocBody787_138 AllocBody787_619

def AllocBody787_621 : StackLang.HolProg 64 :=
.seq AllocBody787_137 AllocBody787_620

def AllocBody787_622 : StackLang.HolProg 64 :=
.seq AllocBody787_136 AllocBody787_621

def AllocBody787_623 : StackLang.HolProg 64 :=
.seq AllocBody787_83 AllocBody787_622

def AllocBody787_624 : StackLang.HolProg 64 :=
.seq AllocBody787_78 AllocBody787_623

def AllocBody787_625 : StackLang.HolProg 64 :=
.seq AllocBody787_77 AllocBody787_624

def AllocBody787_626 : StackLang.HolProg 64 :=
.seq AllocBody787_76 AllocBody787_625

def AllocBody787_627 : StackLang.HolProg 64 :=
.seq AllocBody787_75 AllocBody787_626

def AllocBody787_628 : StackLang.HolProg 64 :=
.seq AllocBody787_74 AllocBody787_627

def AllocBody787_629 : StackLang.HolProg 64 :=
.seq AllocBody787_73 AllocBody787_628

def AllocBody787_630 : StackLang.HolProg 64 :=
.seq AllocBody787_72 AllocBody787_629

def AllocBody787_631 : StackLang.HolProg 64 :=
.seq AllocBody787_61 AllocBody787_630

def AllocBody787_632 : StackLang.HolProg 64 :=
.seq AllocBody787_60 AllocBody787_631

def AllocBody787_633 : StackLang.HolProg 64 :=
.seq AllocBody787_59 AllocBody787_632

def AllocBody787_634 : StackLang.HolProg 64 :=
.seq AllocBody787_58 AllocBody787_633

def AllocBody787_635 : StackLang.HolProg 64 :=
.seq AllocBody787_5 AllocBody787_634

def AllocBody787_636 : StackLang.HolProg 64 :=
.seq AllocBody787_0 AllocBody787_635

def Alloc787 : Nat × StackLang.HolProg 64 := (787, AllocBody787_636)
theorem Alloc787_eq : StackAlloc.progComp (787, raw787) = Alloc787 := by
  kernel_rfl
#print axioms Alloc787_eq
end InitECandidate.Proofs.BackendStages
