import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw544
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody544_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody544_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody544_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody544_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1800#64)

def AllocBody544_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_7 : StackLang.HolProg 64 :=
.seq AllocBody544_5 AllocBody544_6

def AllocBody544_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody544_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody544_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 3

def AllocBody544_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody544_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody544_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody544_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody544_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_18 : StackLang.HolProg 64 :=
.seq AllocBody544_16 AllocBody544_17

def AllocBody544_19 : StackLang.HolProg 64 :=
.seq AllocBody544_15 AllocBody544_18

def AllocBody544_20 : StackLang.HolProg 64 :=
.seq AllocBody544_14 AllocBody544_19

def AllocBody544_21 : StackLang.HolProg 64 :=
.seq AllocBody544_13 AllocBody544_20

def AllocBody544_22 : StackLang.HolProg 64 :=
.seq AllocBody544_12 AllocBody544_21

def AllocBody544_23 : StackLang.HolProg 64 :=
.seq AllocBody544_11 AllocBody544_22

def AllocBody544_24 : StackLang.HolProg 64 :=
.seq AllocBody544_10 AllocBody544_23

def AllocBody544_25 : StackLang.HolProg 64 :=
.seq AllocBody544_9 AllocBody544_24

def AllocBody544_26 : StackLang.HolProg 64 :=
.seq AllocBody544_8 AllocBody544_25

def AllocBody544_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody544_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody544_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody544_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_34 : StackLang.HolProg 64 :=
.seq AllocBody544_32 AllocBody544_33

def AllocBody544_35 : StackLang.HolProg 64 :=
.seq AllocBody544_31 AllocBody544_34

def AllocBody544_36 : StackLang.HolProg 64 :=
.seq AllocBody544_30 AllocBody544_35

def AllocBody544_37 : StackLang.HolProg 64 :=
.seq AllocBody544_29 AllocBody544_36

def AllocBody544_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody544_40 : StackLang.HolProg 64 :=
.seq AllocBody544_38 AllocBody544_39

def AllocBody544_41 : StackLang.HolProg 64 :=
.call (some (AllocBody544_37, 0, 544, 2)) (Sum.inl 470) (some (AllocBody544_40, 544, 3))

def AllocBody544_42 : StackLang.HolProg 64 :=
.seq AllocBody544_28 AllocBody544_41

def AllocBody544_43 : StackLang.HolProg 64 :=
.seq AllocBody544_27 AllocBody544_42

def AllocBody544_44 : StackLang.HolProg 64 :=
.seq AllocBody544_26 AllocBody544_43

def AllocBody544_45 : StackLang.HolProg 64 :=
.seq AllocBody544_7 AllocBody544_44

def AllocBody544_46 : StackLang.HolProg 64 :=
.seq AllocBody544_4 AllocBody544_45

def AllocBody544_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1801#64)

def AllocBody544_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_52 : StackLang.HolProg 64 :=
.seq AllocBody544_50 AllocBody544_51

def AllocBody544_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody544_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody544_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 5

def AllocBody544_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody544_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody544_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody544_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody544_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_63 : StackLang.HolProg 64 :=
.seq AllocBody544_61 AllocBody544_62

def AllocBody544_64 : StackLang.HolProg 64 :=
.seq AllocBody544_60 AllocBody544_63

def AllocBody544_65 : StackLang.HolProg 64 :=
.seq AllocBody544_59 AllocBody544_64

def AllocBody544_66 : StackLang.HolProg 64 :=
.seq AllocBody544_58 AllocBody544_65

def AllocBody544_67 : StackLang.HolProg 64 :=
.seq AllocBody544_57 AllocBody544_66

def AllocBody544_68 : StackLang.HolProg 64 :=
.seq AllocBody544_56 AllocBody544_67

def AllocBody544_69 : StackLang.HolProg 64 :=
.seq AllocBody544_55 AllocBody544_68

def AllocBody544_70 : StackLang.HolProg 64 :=
.seq AllocBody544_54 AllocBody544_69

def AllocBody544_71 : StackLang.HolProg 64 :=
.seq AllocBody544_53 AllocBody544_70

def AllocBody544_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody544_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody544_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody544_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody544_79 : StackLang.HolProg 64 :=
.seq AllocBody544_77 AllocBody544_78

def AllocBody544_80 : StackLang.HolProg 64 :=
.seq AllocBody544_76 AllocBody544_79

def AllocBody544_81 : StackLang.HolProg 64 :=
.seq AllocBody544_75 AllocBody544_80

def AllocBody544_82 : StackLang.HolProg 64 :=
.seq AllocBody544_74 AllocBody544_81

def AllocBody544_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody544_85 : StackLang.HolProg 64 :=
.seq AllocBody544_83 AllocBody544_84

def AllocBody544_86 : StackLang.HolProg 64 :=
.call (some (AllocBody544_82, 0, 544, 4)) (Sum.inl 540) (some (AllocBody544_85, 544, 5))

def AllocBody544_87 : StackLang.HolProg 64 :=
.seq AllocBody544_73 AllocBody544_86

def AllocBody544_88 : StackLang.HolProg 64 :=
.seq AllocBody544_72 AllocBody544_87

def AllocBody544_89 : StackLang.HolProg 64 :=
.seq AllocBody544_71 AllocBody544_88

def AllocBody544_90 : StackLang.HolProg 64 :=
.seq AllocBody544_52 AllocBody544_89

def AllocBody544_91 : StackLang.HolProg 64 :=
.seq AllocBody544_49 AllocBody544_90

def AllocBody544_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 81#64)

def AllocBody544_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody544_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_98 : StackLang.HolProg 64 :=
.seq AllocBody544_96 AllocBody544_97

def AllocBody544_99 : StackLang.HolProg 64 :=
.seq AllocBody544_95 AllocBody544_98

def AllocBody544_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody544_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_103 : StackLang.HolProg 64 :=
.seq AllocBody544_101 AllocBody544_102

def AllocBody544_104 : StackLang.HolProg 64 :=
.seq AllocBody544_100 AllocBody544_103

def AllocBody544_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody544_99 AllocBody544_104

def AllocBody544_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody544_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody544_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_112 : StackLang.HolProg 64 :=
.seq AllocBody544_110 AllocBody544_111

def AllocBody544_113 : StackLang.HolProg 64 :=
.seq AllocBody544_109 AllocBody544_112

def AllocBody544_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody544_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_117 : StackLang.HolProg 64 :=
.seq AllocBody544_115 AllocBody544_116

def AllocBody544_118 : StackLang.HolProg 64 :=
.seq AllocBody544_114 AllocBody544_117

def AllocBody544_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody544_113 AllocBody544_118

def AllocBody544_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody544_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody544_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody544_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody544_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody544_129 : StackLang.HolProg 64 :=
.seq AllocBody544_127 AllocBody544_128

def AllocBody544_130 : StackLang.HolProg 64 :=
.seq AllocBody544_126 AllocBody544_129

def AllocBody544_131 : StackLang.HolProg 64 :=
.seq AllocBody544_125 AllocBody544_130

def AllocBody544_132 : StackLang.HolProg 64 :=
.seq AllocBody544_124 AllocBody544_131

def AllocBody544_133 : StackLang.HolProg 64 :=
.seq AllocBody544_123 AllocBody544_132

def AllocBody544_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody544_133 AllocBody544_134

def AllocBody544_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 143#64)))

def AllocBody544_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody544_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody544_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody544_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody544_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_150 : StackLang.HolProg 64 :=
.seq AllocBody544_148 AllocBody544_149

def AllocBody544_151 : StackLang.HolProg 64 :=
.seq AllocBody544_147 AllocBody544_150

def AllocBody544_152 : StackLang.HolProg 64 :=
.seq AllocBody544_146 AllocBody544_151

def AllocBody544_153 : StackLang.HolProg 64 :=
.seq AllocBody544_145 AllocBody544_152

def AllocBody544_154 : StackLang.HolProg 64 :=
.seq AllocBody544_144 AllocBody544_153

def AllocBody544_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody544_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 29#64)

def AllocBody544_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody544_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_162 : StackLang.HolProg 64 :=
.seq AllocBody544_160 AllocBody544_161

def AllocBody544_163 : StackLang.HolProg 64 :=
.seq AllocBody544_159 AllocBody544_162

def AllocBody544_164 : StackLang.HolProg 64 :=
.seq AllocBody544_158 AllocBody544_163

def AllocBody544_165 : StackLang.HolProg 64 :=
.seq AllocBody544_157 AllocBody544_164

def AllocBody544_166 : StackLang.HolProg 64 :=
.seq AllocBody544_156 AllocBody544_165

def AllocBody544_167 : StackLang.HolProg 64 :=
.seq AllocBody544_155 AllocBody544_166

def AllocBody544_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody544_154 AllocBody544_167

def AllocBody544_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody544_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody544_172 : StackLang.HolProg 64 :=
.seq AllocBody544_170 AllocBody544_171

def AllocBody544_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1802#64)

def AllocBody544_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_176 : StackLang.HolProg 64 :=
.seq AllocBody544_174 AllocBody544_175

def AllocBody544_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody544_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody544_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 7

def AllocBody544_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody544_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody544_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody544_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody544_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_187 : StackLang.HolProg 64 :=
.seq AllocBody544_185 AllocBody544_186

def AllocBody544_188 : StackLang.HolProg 64 :=
.seq AllocBody544_184 AllocBody544_187

def AllocBody544_189 : StackLang.HolProg 64 :=
.seq AllocBody544_183 AllocBody544_188

def AllocBody544_190 : StackLang.HolProg 64 :=
.seq AllocBody544_182 AllocBody544_189

def AllocBody544_191 : StackLang.HolProg 64 :=
.seq AllocBody544_181 AllocBody544_190

def AllocBody544_192 : StackLang.HolProg 64 :=
.seq AllocBody544_180 AllocBody544_191

def AllocBody544_193 : StackLang.HolProg 64 :=
.seq AllocBody544_179 AllocBody544_192

def AllocBody544_194 : StackLang.HolProg 64 :=
.seq AllocBody544_178 AllocBody544_193

def AllocBody544_195 : StackLang.HolProg 64 :=
.seq AllocBody544_177 AllocBody544_194

def AllocBody544_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody544_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody544_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody544_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody544_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody544_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody544_205 : StackLang.HolProg 64 :=
.seq AllocBody544_203 AllocBody544_204

def AllocBody544_206 : StackLang.HolProg 64 :=
.seq AllocBody544_202 AllocBody544_205

def AllocBody544_207 : StackLang.HolProg 64 :=
.seq AllocBody544_201 AllocBody544_206

def AllocBody544_208 : StackLang.HolProg 64 :=
.seq AllocBody544_200 AllocBody544_207

def AllocBody544_209 : StackLang.HolProg 64 :=
.seq AllocBody544_199 AllocBody544_208

def AllocBody544_210 : StackLang.HolProg 64 :=
.seq AllocBody544_198 AllocBody544_209

def AllocBody544_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody544_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody544_213 : StackLang.HolProg 64 :=
.seq AllocBody544_211 AllocBody544_212

def AllocBody544_214 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody544_215 : StackLang.HolProg 64 :=
.seq AllocBody544_213 AllocBody544_214

def AllocBody544_216 : StackLang.HolProg 64 :=
.call (some (AllocBody544_210, 0, 544, 6)) (Sum.inl 93) (some (AllocBody544_215, 544, 7))

def AllocBody544_217 : StackLang.HolProg 64 :=
.seq AllocBody544_197 AllocBody544_216

def AllocBody544_218 : StackLang.HolProg 64 :=
.seq AllocBody544_196 AllocBody544_217

def AllocBody544_219 : StackLang.HolProg 64 :=
.seq AllocBody544_195 AllocBody544_218

def AllocBody544_220 : StackLang.HolProg 64 :=
.seq AllocBody544_176 AllocBody544_219

def AllocBody544_221 : StackLang.HolProg 64 :=
.seq AllocBody544_173 AllocBody544_220

def AllocBody544_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody544_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody544_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody544_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody544_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody544_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody544_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def AllocBody544_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody544_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody544_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody544_237 : StackLang.HolProg 64 :=
.seq AllocBody544_235 AllocBody544_236

def AllocBody544_238 : StackLang.HolProg 64 :=
.seq AllocBody544_234 AllocBody544_237

def AllocBody544_239 : StackLang.HolProg 64 :=
.seq AllocBody544_233 AllocBody544_238

def AllocBody544_240 : StackLang.HolProg 64 :=
.seq AllocBody544_232 AllocBody544_239

def AllocBody544_241 : StackLang.HolProg 64 :=
.seq AllocBody544_231 AllocBody544_240

def AllocBody544_242 : StackLang.HolProg 64 :=
.seq AllocBody544_230 AllocBody544_241

def AllocBody544_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_244 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody544_242 AllocBody544_243

def AllocBody544_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody544_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1803#64)

def AllocBody544_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_251 : StackLang.HolProg 64 :=
.seq AllocBody544_249 AllocBody544_250

def AllocBody544_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody544_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody544_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 9

def AllocBody544_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody544_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody544_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody544_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody544_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_262 : StackLang.HolProg 64 :=
.seq AllocBody544_260 AllocBody544_261

def AllocBody544_263 : StackLang.HolProg 64 :=
.seq AllocBody544_259 AllocBody544_262

def AllocBody544_264 : StackLang.HolProg 64 :=
.seq AllocBody544_258 AllocBody544_263

def AllocBody544_265 : StackLang.HolProg 64 :=
.seq AllocBody544_257 AllocBody544_264

def AllocBody544_266 : StackLang.HolProg 64 :=
.seq AllocBody544_256 AllocBody544_265

def AllocBody544_267 : StackLang.HolProg 64 :=
.seq AllocBody544_255 AllocBody544_266

def AllocBody544_268 : StackLang.HolProg 64 :=
.seq AllocBody544_254 AllocBody544_267

def AllocBody544_269 : StackLang.HolProg 64 :=
.seq AllocBody544_253 AllocBody544_268

def AllocBody544_270 : StackLang.HolProg 64 :=
.seq AllocBody544_252 AllocBody544_269

def AllocBody544_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody544_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody544_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody544_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_278 : StackLang.HolProg 64 :=
.seq AllocBody544_276 AllocBody544_277

def AllocBody544_279 : StackLang.HolProg 64 :=
.seq AllocBody544_275 AllocBody544_278

def AllocBody544_280 : StackLang.HolProg 64 :=
.seq AllocBody544_274 AllocBody544_279

def AllocBody544_281 : StackLang.HolProg 64 :=
.seq AllocBody544_273 AllocBody544_280

def AllocBody544_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_283 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody544_284 : StackLang.HolProg 64 :=
.seq AllocBody544_282 AllocBody544_283

def AllocBody544_285 : StackLang.HolProg 64 :=
.call (some (AllocBody544_281, 0, 544, 8)) (Sum.inl 538) (some (AllocBody544_284, 544, 9))

def AllocBody544_286 : StackLang.HolProg 64 :=
.seq AllocBody544_272 AllocBody544_285

def AllocBody544_287 : StackLang.HolProg 64 :=
.seq AllocBody544_271 AllocBody544_286

def AllocBody544_288 : StackLang.HolProg 64 :=
.seq AllocBody544_270 AllocBody544_287

def AllocBody544_289 : StackLang.HolProg 64 :=
.seq AllocBody544_251 AllocBody544_288

def AllocBody544_290 : StackLang.HolProg 64 :=
.seq AllocBody544_248 AllocBody544_289

def AllocBody544_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody544_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1804#64)

def AllocBody544_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_297 : StackLang.HolProg 64 :=
.seq AllocBody544_295 AllocBody544_296

def AllocBody544_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody544_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody544_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody544_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 544 11

def AllocBody544_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody544_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody544_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody544_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody544_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_308 : StackLang.HolProg 64 :=
.seq AllocBody544_306 AllocBody544_307

def AllocBody544_309 : StackLang.HolProg 64 :=
.seq AllocBody544_305 AllocBody544_308

def AllocBody544_310 : StackLang.HolProg 64 :=
.seq AllocBody544_304 AllocBody544_309

def AllocBody544_311 : StackLang.HolProg 64 :=
.seq AllocBody544_303 AllocBody544_310

def AllocBody544_312 : StackLang.HolProg 64 :=
.seq AllocBody544_302 AllocBody544_311

def AllocBody544_313 : StackLang.HolProg 64 :=
.seq AllocBody544_301 AllocBody544_312

def AllocBody544_314 : StackLang.HolProg 64 :=
.seq AllocBody544_300 AllocBody544_313

def AllocBody544_315 : StackLang.HolProg 64 :=
.seq AllocBody544_299 AllocBody544_314

def AllocBody544_316 : StackLang.HolProg 64 :=
.seq AllocBody544_298 AllocBody544_315

def AllocBody544_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody544_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody544_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody544_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody544_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody544_324 : StackLang.HolProg 64 :=
.seq AllocBody544_322 AllocBody544_323

def AllocBody544_325 : StackLang.HolProg 64 :=
.seq AllocBody544_321 AllocBody544_324

def AllocBody544_326 : StackLang.HolProg 64 :=
.seq AllocBody544_320 AllocBody544_325

def AllocBody544_327 : StackLang.HolProg 64 :=
.seq AllocBody544_319 AllocBody544_326

def AllocBody544_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody544_329 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody544_330 : StackLang.HolProg 64 :=
.seq AllocBody544_328 AllocBody544_329

def AllocBody544_331 : StackLang.HolProg 64 :=
.call (some (AllocBody544_327, 0, 544, 10)) (Sum.inl 490) (some (AllocBody544_330, 544, 11))

def AllocBody544_332 : StackLang.HolProg 64 :=
.seq AllocBody544_318 AllocBody544_331

def AllocBody544_333 : StackLang.HolProg 64 :=
.seq AllocBody544_317 AllocBody544_332

def AllocBody544_334 : StackLang.HolProg 64 :=
.seq AllocBody544_316 AllocBody544_333

def AllocBody544_335 : StackLang.HolProg 64 :=
.seq AllocBody544_297 AllocBody544_334

def AllocBody544_336 : StackLang.HolProg 64 :=
.seq AllocBody544_294 AllocBody544_335

def AllocBody544_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody544_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody544_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody544_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody544_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody544_342 : StackLang.HolProg 64 :=
.seq AllocBody544_340 AllocBody544_341

def AllocBody544_343 : StackLang.HolProg 64 :=
.seq AllocBody544_339 AllocBody544_342

def AllocBody544_344 : StackLang.HolProg 64 :=
.seq AllocBody544_338 AllocBody544_343

def AllocBody544_345 : StackLang.HolProg 64 :=
.seq AllocBody544_337 AllocBody544_344

def AllocBody544_346 : StackLang.HolProg 64 :=
.seq AllocBody544_336 AllocBody544_345

def AllocBody544_347 : StackLang.HolProg 64 :=
.seq AllocBody544_293 AllocBody544_346

def AllocBody544_348 : StackLang.HolProg 64 :=
.seq AllocBody544_292 AllocBody544_347

def AllocBody544_349 : StackLang.HolProg 64 :=
.seq AllocBody544_291 AllocBody544_348

def AllocBody544_350 : StackLang.HolProg 64 :=
.seq AllocBody544_290 AllocBody544_349

def AllocBody544_351 : StackLang.HolProg 64 :=
.seq AllocBody544_247 AllocBody544_350

def AllocBody544_352 : StackLang.HolProg 64 :=
.seq AllocBody544_246 AllocBody544_351

def AllocBody544_353 : StackLang.HolProg 64 :=
.seq AllocBody544_245 AllocBody544_352

def AllocBody544_354 : StackLang.HolProg 64 :=
.seq AllocBody544_244 AllocBody544_353

def AllocBody544_355 : StackLang.HolProg 64 :=
.seq AllocBody544_229 AllocBody544_354

def AllocBody544_356 : StackLang.HolProg 64 :=
.seq AllocBody544_228 AllocBody544_355

def AllocBody544_357 : StackLang.HolProg 64 :=
.seq AllocBody544_227 AllocBody544_356

def AllocBody544_358 : StackLang.HolProg 64 :=
.seq AllocBody544_226 AllocBody544_357

def AllocBody544_359 : StackLang.HolProg 64 :=
.seq AllocBody544_225 AllocBody544_358

def AllocBody544_360 : StackLang.HolProg 64 :=
.seq AllocBody544_224 AllocBody544_359

def AllocBody544_361 : StackLang.HolProg 64 :=
.seq AllocBody544_223 AllocBody544_360

def AllocBody544_362 : StackLang.HolProg 64 :=
.seq AllocBody544_222 AllocBody544_361

def AllocBody544_363 : StackLang.HolProg 64 :=
.seq AllocBody544_221 AllocBody544_362

def AllocBody544_364 : StackLang.HolProg 64 :=
.seq AllocBody544_172 AllocBody544_363

def AllocBody544_365 : StackLang.HolProg 64 :=
.seq AllocBody544_169 AllocBody544_364

def AllocBody544_366 : StackLang.HolProg 64 :=
.seq AllocBody544_168 AllocBody544_365

def AllocBody544_367 : StackLang.HolProg 64 :=
.seq AllocBody544_143 AllocBody544_366

def AllocBody544_368 : StackLang.HolProg 64 :=
.seq AllocBody544_142 AllocBody544_367

def AllocBody544_369 : StackLang.HolProg 64 :=
.seq AllocBody544_141 AllocBody544_368

def AllocBody544_370 : StackLang.HolProg 64 :=
.seq AllocBody544_140 AllocBody544_369

def AllocBody544_371 : StackLang.HolProg 64 :=
.seq AllocBody544_139 AllocBody544_370

def AllocBody544_372 : StackLang.HolProg 64 :=
.seq AllocBody544_138 AllocBody544_371

def AllocBody544_373 : StackLang.HolProg 64 :=
.seq AllocBody544_137 AllocBody544_372

def AllocBody544_374 : StackLang.HolProg 64 :=
.seq AllocBody544_136 AllocBody544_373

def AllocBody544_375 : StackLang.HolProg 64 :=
.seq AllocBody544_135 AllocBody544_374

def AllocBody544_376 : StackLang.HolProg 64 :=
.seq AllocBody544_122 AllocBody544_375

def AllocBody544_377 : StackLang.HolProg 64 :=
.seq AllocBody544_121 AllocBody544_376

def AllocBody544_378 : StackLang.HolProg 64 :=
.seq AllocBody544_120 AllocBody544_377

def AllocBody544_379 : StackLang.HolProg 64 :=
.seq AllocBody544_119 AllocBody544_378

def AllocBody544_380 : StackLang.HolProg 64 :=
.seq AllocBody544_108 AllocBody544_379

def AllocBody544_381 : StackLang.HolProg 64 :=
.seq AllocBody544_107 AllocBody544_380

def AllocBody544_382 : StackLang.HolProg 64 :=
.seq AllocBody544_106 AllocBody544_381

def AllocBody544_383 : StackLang.HolProg 64 :=
.seq AllocBody544_105 AllocBody544_382

def AllocBody544_384 : StackLang.HolProg 64 :=
.seq AllocBody544_94 AllocBody544_383

def AllocBody544_385 : StackLang.HolProg 64 :=
.seq AllocBody544_93 AllocBody544_384

def AllocBody544_386 : StackLang.HolProg 64 :=
.seq AllocBody544_92 AllocBody544_385

def AllocBody544_387 : StackLang.HolProg 64 :=
.seq AllocBody544_91 AllocBody544_386

def AllocBody544_388 : StackLang.HolProg 64 :=
.seq AllocBody544_48 AllocBody544_387

def AllocBody544_389 : StackLang.HolProg 64 :=
.seq AllocBody544_47 AllocBody544_388

def AllocBody544_390 : StackLang.HolProg 64 :=
.seq AllocBody544_46 AllocBody544_389

def AllocBody544_391 : StackLang.HolProg 64 :=
.seq AllocBody544_3 AllocBody544_390

def AllocBody544_392 : StackLang.HolProg 64 :=
.seq AllocBody544_2 AllocBody544_391

def AllocBody544_393 : StackLang.HolProg 64 :=
.seq AllocBody544_1 AllocBody544_392

def AllocBody544_394 : StackLang.HolProg 64 :=
.seq AllocBody544_0 AllocBody544_393

def Alloc544 : Nat × StackLang.HolProg 64 := (544, AllocBody544_394)
theorem Alloc544_eq : StackAlloc.progComp (544, raw544) = Alloc544 := by
  kernel_rfl
#print axioms Alloc544_eq
end InitECandidate.Proofs.BackendStages
