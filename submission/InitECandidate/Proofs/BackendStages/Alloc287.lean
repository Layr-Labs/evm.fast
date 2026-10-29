import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw287
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody287_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody287_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody287_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody287_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 783#64)

def AllocBody287_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_7 : StackLang.HolProg 64 :=
.seq AllocBody287_5 AllocBody287_6

def AllocBody287_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody287_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody287_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 3

def AllocBody287_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody287_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody287_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody287_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody287_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_18 : StackLang.HolProg 64 :=
.seq AllocBody287_16 AllocBody287_17

def AllocBody287_19 : StackLang.HolProg 64 :=
.seq AllocBody287_15 AllocBody287_18

def AllocBody287_20 : StackLang.HolProg 64 :=
.seq AllocBody287_14 AllocBody287_19

def AllocBody287_21 : StackLang.HolProg 64 :=
.seq AllocBody287_13 AllocBody287_20

def AllocBody287_22 : StackLang.HolProg 64 :=
.seq AllocBody287_12 AllocBody287_21

def AllocBody287_23 : StackLang.HolProg 64 :=
.seq AllocBody287_11 AllocBody287_22

def AllocBody287_24 : StackLang.HolProg 64 :=
.seq AllocBody287_10 AllocBody287_23

def AllocBody287_25 : StackLang.HolProg 64 :=
.seq AllocBody287_9 AllocBody287_24

def AllocBody287_26 : StackLang.HolProg 64 :=
.seq AllocBody287_8 AllocBody287_25

def AllocBody287_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody287_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody287_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody287_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody287_34 : StackLang.HolProg 64 :=
.seq AllocBody287_32 AllocBody287_33

def AllocBody287_35 : StackLang.HolProg 64 :=
.seq AllocBody287_31 AllocBody287_34

def AllocBody287_36 : StackLang.HolProg 64 :=
.seq AllocBody287_30 AllocBody287_35

def AllocBody287_37 : StackLang.HolProg 64 :=
.seq AllocBody287_29 AllocBody287_36

def AllocBody287_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody287_40 : StackLang.HolProg 64 :=
.seq AllocBody287_38 AllocBody287_39

def AllocBody287_41 : StackLang.HolProg 64 :=
.call (some (AllocBody287_37, 0, 287, 2)) (Sum.inl 68) (some (AllocBody287_40, 287, 3))

def AllocBody287_42 : StackLang.HolProg 64 :=
.seq AllocBody287_28 AllocBody287_41

def AllocBody287_43 : StackLang.HolProg 64 :=
.seq AllocBody287_27 AllocBody287_42

def AllocBody287_44 : StackLang.HolProg 64 :=
.seq AllocBody287_26 AllocBody287_43

def AllocBody287_45 : StackLang.HolProg 64 :=
.seq AllocBody287_7 AllocBody287_44

def AllocBody287_46 : StackLang.HolProg 64 :=
.seq AllocBody287_4 AllocBody287_45

def AllocBody287_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody287_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody287_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody287_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody287_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def AllocBody287_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody287_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody287_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 784#64)

def AllocBody287_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_59 : StackLang.HolProg 64 :=
.seq AllocBody287_57 AllocBody287_58

def AllocBody287_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody287_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody287_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 5

def AllocBody287_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody287_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody287_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody287_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody287_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_70 : StackLang.HolProg 64 :=
.seq AllocBody287_68 AllocBody287_69

def AllocBody287_71 : StackLang.HolProg 64 :=
.seq AllocBody287_67 AllocBody287_70

def AllocBody287_72 : StackLang.HolProg 64 :=
.seq AllocBody287_66 AllocBody287_71

def AllocBody287_73 : StackLang.HolProg 64 :=
.seq AllocBody287_65 AllocBody287_72

def AllocBody287_74 : StackLang.HolProg 64 :=
.seq AllocBody287_64 AllocBody287_73

def AllocBody287_75 : StackLang.HolProg 64 :=
.seq AllocBody287_63 AllocBody287_74

def AllocBody287_76 : StackLang.HolProg 64 :=
.seq AllocBody287_62 AllocBody287_75

def AllocBody287_77 : StackLang.HolProg 64 :=
.seq AllocBody287_61 AllocBody287_76

def AllocBody287_78 : StackLang.HolProg 64 :=
.seq AllocBody287_60 AllocBody287_77

def AllocBody287_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody287_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody287_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody287_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody287_86 : StackLang.HolProg 64 :=
.seq AllocBody287_84 AllocBody287_85

def AllocBody287_87 : StackLang.HolProg 64 :=
.seq AllocBody287_83 AllocBody287_86

def AllocBody287_88 : StackLang.HolProg 64 :=
.seq AllocBody287_82 AllocBody287_87

def AllocBody287_89 : StackLang.HolProg 64 :=
.seq AllocBody287_81 AllocBody287_88

def AllocBody287_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody287_92 : StackLang.HolProg 64 :=
.seq AllocBody287_90 AllocBody287_91

def AllocBody287_93 : StackLang.HolProg 64 :=
.call (some (AllocBody287_89, 0, 287, 4)) (Sum.inl 68) (some (AllocBody287_92, 287, 5))

def AllocBody287_94 : StackLang.HolProg 64 :=
.seq AllocBody287_80 AllocBody287_93

def AllocBody287_95 : StackLang.HolProg 64 :=
.seq AllocBody287_79 AllocBody287_94

def AllocBody287_96 : StackLang.HolProg 64 :=
.seq AllocBody287_78 AllocBody287_95

def AllocBody287_97 : StackLang.HolProg 64 :=
.seq AllocBody287_59 AllocBody287_96

def AllocBody287_98 : StackLang.HolProg 64 :=
.seq AllocBody287_56 AllocBody287_97

def AllocBody287_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody287_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody287_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody287_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody287_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551480#64)))

def AllocBody287_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody287_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody287_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 785#64)

def AllocBody287_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_111 : StackLang.HolProg 64 :=
.seq AllocBody287_109 AllocBody287_110

def AllocBody287_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody287_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody287_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 7

def AllocBody287_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody287_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody287_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody287_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody287_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_122 : StackLang.HolProg 64 :=
.seq AllocBody287_120 AllocBody287_121

def AllocBody287_123 : StackLang.HolProg 64 :=
.seq AllocBody287_119 AllocBody287_122

def AllocBody287_124 : StackLang.HolProg 64 :=
.seq AllocBody287_118 AllocBody287_123

def AllocBody287_125 : StackLang.HolProg 64 :=
.seq AllocBody287_117 AllocBody287_124

def AllocBody287_126 : StackLang.HolProg 64 :=
.seq AllocBody287_116 AllocBody287_125

def AllocBody287_127 : StackLang.HolProg 64 :=
.seq AllocBody287_115 AllocBody287_126

def AllocBody287_128 : StackLang.HolProg 64 :=
.seq AllocBody287_114 AllocBody287_127

def AllocBody287_129 : StackLang.HolProg 64 :=
.seq AllocBody287_113 AllocBody287_128

def AllocBody287_130 : StackLang.HolProg 64 :=
.seq AllocBody287_112 AllocBody287_129

def AllocBody287_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody287_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody287_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody287_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody287_138 : StackLang.HolProg 64 :=
.seq AllocBody287_136 AllocBody287_137

def AllocBody287_139 : StackLang.HolProg 64 :=
.seq AllocBody287_135 AllocBody287_138

def AllocBody287_140 : StackLang.HolProg 64 :=
.seq AllocBody287_134 AllocBody287_139

def AllocBody287_141 : StackLang.HolProg 64 :=
.seq AllocBody287_133 AllocBody287_140

def AllocBody287_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody287_144 : StackLang.HolProg 64 :=
.seq AllocBody287_142 AllocBody287_143

def AllocBody287_145 : StackLang.HolProg 64 :=
.call (some (AllocBody287_141, 0, 287, 6)) (Sum.inl 68) (some (AllocBody287_144, 287, 7))

def AllocBody287_146 : StackLang.HolProg 64 :=
.seq AllocBody287_132 AllocBody287_145

def AllocBody287_147 : StackLang.HolProg 64 :=
.seq AllocBody287_131 AllocBody287_146

def AllocBody287_148 : StackLang.HolProg 64 :=
.seq AllocBody287_130 AllocBody287_147

def AllocBody287_149 : StackLang.HolProg 64 :=
.seq AllocBody287_111 AllocBody287_148

def AllocBody287_150 : StackLang.HolProg 64 :=
.seq AllocBody287_108 AllocBody287_149

def AllocBody287_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody287_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody287_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody287_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody287_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551472#64)))

def AllocBody287_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody287_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 40#64)

def AllocBody287_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 786#64)

def AllocBody287_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_163 : StackLang.HolProg 64 :=
.seq AllocBody287_161 AllocBody287_162

def AllocBody287_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody287_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody287_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 9

def AllocBody287_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody287_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody287_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody287_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody287_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_174 : StackLang.HolProg 64 :=
.seq AllocBody287_172 AllocBody287_173

def AllocBody287_175 : StackLang.HolProg 64 :=
.seq AllocBody287_171 AllocBody287_174

def AllocBody287_176 : StackLang.HolProg 64 :=
.seq AllocBody287_170 AllocBody287_175

def AllocBody287_177 : StackLang.HolProg 64 :=
.seq AllocBody287_169 AllocBody287_176

def AllocBody287_178 : StackLang.HolProg 64 :=
.seq AllocBody287_168 AllocBody287_177

def AllocBody287_179 : StackLang.HolProg 64 :=
.seq AllocBody287_167 AllocBody287_178

def AllocBody287_180 : StackLang.HolProg 64 :=
.seq AllocBody287_166 AllocBody287_179

def AllocBody287_181 : StackLang.HolProg 64 :=
.seq AllocBody287_165 AllocBody287_180

def AllocBody287_182 : StackLang.HolProg 64 :=
.seq AllocBody287_164 AllocBody287_181

def AllocBody287_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody287_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody287_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody287_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody287_190 : StackLang.HolProg 64 :=
.seq AllocBody287_188 AllocBody287_189

def AllocBody287_191 : StackLang.HolProg 64 :=
.seq AllocBody287_187 AllocBody287_190

def AllocBody287_192 : StackLang.HolProg 64 :=
.seq AllocBody287_186 AllocBody287_191

def AllocBody287_193 : StackLang.HolProg 64 :=
.seq AllocBody287_185 AllocBody287_192

def AllocBody287_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_195 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody287_196 : StackLang.HolProg 64 :=
.seq AllocBody287_194 AllocBody287_195

def AllocBody287_197 : StackLang.HolProg 64 :=
.call (some (AllocBody287_193, 0, 287, 8)) (Sum.inl 68) (some (AllocBody287_196, 287, 9))

def AllocBody287_198 : StackLang.HolProg 64 :=
.seq AllocBody287_184 AllocBody287_197

def AllocBody287_199 : StackLang.HolProg 64 :=
.seq AllocBody287_183 AllocBody287_198

def AllocBody287_200 : StackLang.HolProg 64 :=
.seq AllocBody287_182 AllocBody287_199

def AllocBody287_201 : StackLang.HolProg 64 :=
.seq AllocBody287_163 AllocBody287_200

def AllocBody287_202 : StackLang.HolProg 64 :=
.seq AllocBody287_160 AllocBody287_201

def AllocBody287_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody287_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody287_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody287_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody287_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551464#64)))

def AllocBody287_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody287_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def AllocBody287_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 787#64)

def AllocBody287_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_215 : StackLang.HolProg 64 :=
.seq AllocBody287_213 AllocBody287_214

def AllocBody287_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody287_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody287_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 11

def AllocBody287_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody287_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody287_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody287_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody287_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_226 : StackLang.HolProg 64 :=
.seq AllocBody287_224 AllocBody287_225

def AllocBody287_227 : StackLang.HolProg 64 :=
.seq AllocBody287_223 AllocBody287_226

def AllocBody287_228 : StackLang.HolProg 64 :=
.seq AllocBody287_222 AllocBody287_227

def AllocBody287_229 : StackLang.HolProg 64 :=
.seq AllocBody287_221 AllocBody287_228

def AllocBody287_230 : StackLang.HolProg 64 :=
.seq AllocBody287_220 AllocBody287_229

def AllocBody287_231 : StackLang.HolProg 64 :=
.seq AllocBody287_219 AllocBody287_230

def AllocBody287_232 : StackLang.HolProg 64 :=
.seq AllocBody287_218 AllocBody287_231

def AllocBody287_233 : StackLang.HolProg 64 :=
.seq AllocBody287_217 AllocBody287_232

def AllocBody287_234 : StackLang.HolProg 64 :=
.seq AllocBody287_216 AllocBody287_233

def AllocBody287_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody287_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody287_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody287_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody287_242 : StackLang.HolProg 64 :=
.seq AllocBody287_240 AllocBody287_241

def AllocBody287_243 : StackLang.HolProg 64 :=
.seq AllocBody287_239 AllocBody287_242

def AllocBody287_244 : StackLang.HolProg 64 :=
.seq AllocBody287_238 AllocBody287_243

def AllocBody287_245 : StackLang.HolProg 64 :=
.seq AllocBody287_237 AllocBody287_244

def AllocBody287_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody287_248 : StackLang.HolProg 64 :=
.seq AllocBody287_246 AllocBody287_247

def AllocBody287_249 : StackLang.HolProg 64 :=
.call (some (AllocBody287_245, 0, 287, 10)) (Sum.inl 68) (some (AllocBody287_248, 287, 11))

def AllocBody287_250 : StackLang.HolProg 64 :=
.seq AllocBody287_236 AllocBody287_249

def AllocBody287_251 : StackLang.HolProg 64 :=
.seq AllocBody287_235 AllocBody287_250

def AllocBody287_252 : StackLang.HolProg 64 :=
.seq AllocBody287_234 AllocBody287_251

def AllocBody287_253 : StackLang.HolProg 64 :=
.seq AllocBody287_215 AllocBody287_252

def AllocBody287_254 : StackLang.HolProg 64 :=
.seq AllocBody287_212 AllocBody287_253

def AllocBody287_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody287_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody287_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody287_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody287_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551456#64)))

def AllocBody287_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody287_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def AllocBody287_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody287_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody287_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def AllocBody287_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def AllocBody287_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody287_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 788#64)

def AllocBody287_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_275 : StackLang.HolProg 64 :=
.seq AllocBody287_273 AllocBody287_274

def AllocBody287_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody287_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody287_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 13

def AllocBody287_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody287_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody287_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody287_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody287_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_286 : StackLang.HolProg 64 :=
.seq AllocBody287_284 AllocBody287_285

def AllocBody287_287 : StackLang.HolProg 64 :=
.seq AllocBody287_283 AllocBody287_286

def AllocBody287_288 : StackLang.HolProg 64 :=
.seq AllocBody287_282 AllocBody287_287

def AllocBody287_289 : StackLang.HolProg 64 :=
.seq AllocBody287_281 AllocBody287_288

def AllocBody287_290 : StackLang.HolProg 64 :=
.seq AllocBody287_280 AllocBody287_289

def AllocBody287_291 : StackLang.HolProg 64 :=
.seq AllocBody287_279 AllocBody287_290

def AllocBody287_292 : StackLang.HolProg 64 :=
.seq AllocBody287_278 AllocBody287_291

def AllocBody287_293 : StackLang.HolProg 64 :=
.seq AllocBody287_277 AllocBody287_292

def AllocBody287_294 : StackLang.HolProg 64 :=
.seq AllocBody287_276 AllocBody287_293

def AllocBody287_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody287_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody287_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody287_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_302 : StackLang.HolProg 64 :=
.seq AllocBody287_300 AllocBody287_301

def AllocBody287_303 : StackLang.HolProg 64 :=
.seq AllocBody287_299 AllocBody287_302

def AllocBody287_304 : StackLang.HolProg 64 :=
.seq AllocBody287_298 AllocBody287_303

def AllocBody287_305 : StackLang.HolProg 64 :=
.seq AllocBody287_297 AllocBody287_304

def AllocBody287_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_307 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody287_308 : StackLang.HolProg 64 :=
.seq AllocBody287_306 AllocBody287_307

def AllocBody287_309 : StackLang.HolProg 64 :=
.call (some (AllocBody287_305, 0, 287, 12)) (Sum.inl 158) (some (AllocBody287_308, 287, 13))

def AllocBody287_310 : StackLang.HolProg 64 :=
.seq AllocBody287_296 AllocBody287_309

def AllocBody287_311 : StackLang.HolProg 64 :=
.seq AllocBody287_295 AllocBody287_310

def AllocBody287_312 : StackLang.HolProg 64 :=
.seq AllocBody287_294 AllocBody287_311

def AllocBody287_313 : StackLang.HolProg 64 :=
.seq AllocBody287_275 AllocBody287_312

def AllocBody287_314 : StackLang.HolProg 64 :=
.seq AllocBody287_272 AllocBody287_313

def AllocBody287_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody287_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody287_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody287_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody287_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def AllocBody287_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551480#64))

def AllocBody287_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody287_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 789#64)

def AllocBody287_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_327 : StackLang.HolProg 64 :=
.seq AllocBody287_325 AllocBody287_326

def AllocBody287_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody287_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody287_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody287_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 15

def AllocBody287_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody287_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody287_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody287_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody287_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_338 : StackLang.HolProg 64 :=
.seq AllocBody287_336 AllocBody287_337

def AllocBody287_339 : StackLang.HolProg 64 :=
.seq AllocBody287_335 AllocBody287_338

def AllocBody287_340 : StackLang.HolProg 64 :=
.seq AllocBody287_334 AllocBody287_339

def AllocBody287_341 : StackLang.HolProg 64 :=
.seq AllocBody287_333 AllocBody287_340

def AllocBody287_342 : StackLang.HolProg 64 :=
.seq AllocBody287_332 AllocBody287_341

def AllocBody287_343 : StackLang.HolProg 64 :=
.seq AllocBody287_331 AllocBody287_342

def AllocBody287_344 : StackLang.HolProg 64 :=
.seq AllocBody287_330 AllocBody287_343

def AllocBody287_345 : StackLang.HolProg 64 :=
.seq AllocBody287_329 AllocBody287_344

def AllocBody287_346 : StackLang.HolProg 64 :=
.seq AllocBody287_328 AllocBody287_345

def AllocBody287_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody287_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody287_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody287_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody287_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody287_354 : StackLang.HolProg 64 :=
.seq AllocBody287_352 AllocBody287_353

def AllocBody287_355 : StackLang.HolProg 64 :=
.seq AllocBody287_351 AllocBody287_354

def AllocBody287_356 : StackLang.HolProg 64 :=
.seq AllocBody287_350 AllocBody287_355

def AllocBody287_357 : StackLang.HolProg 64 :=
.seq AllocBody287_349 AllocBody287_356

def AllocBody287_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody287_359 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody287_360 : StackLang.HolProg 64 :=
.seq AllocBody287_358 AllocBody287_359

def AllocBody287_361 : StackLang.HolProg 64 :=
.call (some (AllocBody287_357, 0, 287, 14)) (Sum.inl 158) (some (AllocBody287_360, 287, 15))

def AllocBody287_362 : StackLang.HolProg 64 :=
.seq AllocBody287_348 AllocBody287_361

def AllocBody287_363 : StackLang.HolProg 64 :=
.seq AllocBody287_347 AllocBody287_362

def AllocBody287_364 : StackLang.HolProg 64 :=
.seq AllocBody287_346 AllocBody287_363

def AllocBody287_365 : StackLang.HolProg 64 :=
.seq AllocBody287_327 AllocBody287_364

def AllocBody287_366 : StackLang.HolProg 64 :=
.seq AllocBody287_324 AllocBody287_365

def AllocBody287_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody287_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody287_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody287_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody287_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody287_372 : StackLang.HolProg 64 :=
.seq AllocBody287_370 AllocBody287_371

def AllocBody287_373 : StackLang.HolProg 64 :=
.seq AllocBody287_369 AllocBody287_372

def AllocBody287_374 : StackLang.HolProg 64 :=
.seq AllocBody287_368 AllocBody287_373

def AllocBody287_375 : StackLang.HolProg 64 :=
.seq AllocBody287_367 AllocBody287_374

def AllocBody287_376 : StackLang.HolProg 64 :=
.seq AllocBody287_366 AllocBody287_375

def AllocBody287_377 : StackLang.HolProg 64 :=
.seq AllocBody287_323 AllocBody287_376

def AllocBody287_378 : StackLang.HolProg 64 :=
.seq AllocBody287_322 AllocBody287_377

def AllocBody287_379 : StackLang.HolProg 64 :=
.seq AllocBody287_321 AllocBody287_378

def AllocBody287_380 : StackLang.HolProg 64 :=
.seq AllocBody287_320 AllocBody287_379

def AllocBody287_381 : StackLang.HolProg 64 :=
.seq AllocBody287_319 AllocBody287_380

def AllocBody287_382 : StackLang.HolProg 64 :=
.seq AllocBody287_318 AllocBody287_381

def AllocBody287_383 : StackLang.HolProg 64 :=
.seq AllocBody287_317 AllocBody287_382

def AllocBody287_384 : StackLang.HolProg 64 :=
.seq AllocBody287_316 AllocBody287_383

def AllocBody287_385 : StackLang.HolProg 64 :=
.seq AllocBody287_315 AllocBody287_384

def AllocBody287_386 : StackLang.HolProg 64 :=
.seq AllocBody287_314 AllocBody287_385

def AllocBody287_387 : StackLang.HolProg 64 :=
.seq AllocBody287_271 AllocBody287_386

def AllocBody287_388 : StackLang.HolProg 64 :=
.seq AllocBody287_270 AllocBody287_387

def AllocBody287_389 : StackLang.HolProg 64 :=
.seq AllocBody287_269 AllocBody287_388

def AllocBody287_390 : StackLang.HolProg 64 :=
.seq AllocBody287_268 AllocBody287_389

def AllocBody287_391 : StackLang.HolProg 64 :=
.seq AllocBody287_267 AllocBody287_390

def AllocBody287_392 : StackLang.HolProg 64 :=
.seq AllocBody287_266 AllocBody287_391

def AllocBody287_393 : StackLang.HolProg 64 :=
.seq AllocBody287_265 AllocBody287_392

def AllocBody287_394 : StackLang.HolProg 64 :=
.seq AllocBody287_264 AllocBody287_393

def AllocBody287_395 : StackLang.HolProg 64 :=
.seq AllocBody287_263 AllocBody287_394

def AllocBody287_396 : StackLang.HolProg 64 :=
.seq AllocBody287_262 AllocBody287_395

def AllocBody287_397 : StackLang.HolProg 64 :=
.seq AllocBody287_261 AllocBody287_396

def AllocBody287_398 : StackLang.HolProg 64 :=
.seq AllocBody287_260 AllocBody287_397

def AllocBody287_399 : StackLang.HolProg 64 :=
.seq AllocBody287_259 AllocBody287_398

def AllocBody287_400 : StackLang.HolProg 64 :=
.seq AllocBody287_258 AllocBody287_399

def AllocBody287_401 : StackLang.HolProg 64 :=
.seq AllocBody287_257 AllocBody287_400

def AllocBody287_402 : StackLang.HolProg 64 :=
.seq AllocBody287_256 AllocBody287_401

def AllocBody287_403 : StackLang.HolProg 64 :=
.seq AllocBody287_255 AllocBody287_402

def AllocBody287_404 : StackLang.HolProg 64 :=
.seq AllocBody287_254 AllocBody287_403

def AllocBody287_405 : StackLang.HolProg 64 :=
.seq AllocBody287_211 AllocBody287_404

def AllocBody287_406 : StackLang.HolProg 64 :=
.seq AllocBody287_210 AllocBody287_405

def AllocBody287_407 : StackLang.HolProg 64 :=
.seq AllocBody287_209 AllocBody287_406

def AllocBody287_408 : StackLang.HolProg 64 :=
.seq AllocBody287_208 AllocBody287_407

def AllocBody287_409 : StackLang.HolProg 64 :=
.seq AllocBody287_207 AllocBody287_408

def AllocBody287_410 : StackLang.HolProg 64 :=
.seq AllocBody287_206 AllocBody287_409

def AllocBody287_411 : StackLang.HolProg 64 :=
.seq AllocBody287_205 AllocBody287_410

def AllocBody287_412 : StackLang.HolProg 64 :=
.seq AllocBody287_204 AllocBody287_411

def AllocBody287_413 : StackLang.HolProg 64 :=
.seq AllocBody287_203 AllocBody287_412

def AllocBody287_414 : StackLang.HolProg 64 :=
.seq AllocBody287_202 AllocBody287_413

def AllocBody287_415 : StackLang.HolProg 64 :=
.seq AllocBody287_159 AllocBody287_414

def AllocBody287_416 : StackLang.HolProg 64 :=
.seq AllocBody287_158 AllocBody287_415

def AllocBody287_417 : StackLang.HolProg 64 :=
.seq AllocBody287_157 AllocBody287_416

def AllocBody287_418 : StackLang.HolProg 64 :=
.seq AllocBody287_156 AllocBody287_417

def AllocBody287_419 : StackLang.HolProg 64 :=
.seq AllocBody287_155 AllocBody287_418

def AllocBody287_420 : StackLang.HolProg 64 :=
.seq AllocBody287_154 AllocBody287_419

def AllocBody287_421 : StackLang.HolProg 64 :=
.seq AllocBody287_153 AllocBody287_420

def AllocBody287_422 : StackLang.HolProg 64 :=
.seq AllocBody287_152 AllocBody287_421

def AllocBody287_423 : StackLang.HolProg 64 :=
.seq AllocBody287_151 AllocBody287_422

def AllocBody287_424 : StackLang.HolProg 64 :=
.seq AllocBody287_150 AllocBody287_423

def AllocBody287_425 : StackLang.HolProg 64 :=
.seq AllocBody287_107 AllocBody287_424

def AllocBody287_426 : StackLang.HolProg 64 :=
.seq AllocBody287_106 AllocBody287_425

def AllocBody287_427 : StackLang.HolProg 64 :=
.seq AllocBody287_105 AllocBody287_426

def AllocBody287_428 : StackLang.HolProg 64 :=
.seq AllocBody287_104 AllocBody287_427

def AllocBody287_429 : StackLang.HolProg 64 :=
.seq AllocBody287_103 AllocBody287_428

def AllocBody287_430 : StackLang.HolProg 64 :=
.seq AllocBody287_102 AllocBody287_429

def AllocBody287_431 : StackLang.HolProg 64 :=
.seq AllocBody287_101 AllocBody287_430

def AllocBody287_432 : StackLang.HolProg 64 :=
.seq AllocBody287_100 AllocBody287_431

def AllocBody287_433 : StackLang.HolProg 64 :=
.seq AllocBody287_99 AllocBody287_432

def AllocBody287_434 : StackLang.HolProg 64 :=
.seq AllocBody287_98 AllocBody287_433

def AllocBody287_435 : StackLang.HolProg 64 :=
.seq AllocBody287_55 AllocBody287_434

def AllocBody287_436 : StackLang.HolProg 64 :=
.seq AllocBody287_54 AllocBody287_435

def AllocBody287_437 : StackLang.HolProg 64 :=
.seq AllocBody287_53 AllocBody287_436

def AllocBody287_438 : StackLang.HolProg 64 :=
.seq AllocBody287_52 AllocBody287_437

def AllocBody287_439 : StackLang.HolProg 64 :=
.seq AllocBody287_51 AllocBody287_438

def AllocBody287_440 : StackLang.HolProg 64 :=
.seq AllocBody287_50 AllocBody287_439

def AllocBody287_441 : StackLang.HolProg 64 :=
.seq AllocBody287_49 AllocBody287_440

def AllocBody287_442 : StackLang.HolProg 64 :=
.seq AllocBody287_48 AllocBody287_441

def AllocBody287_443 : StackLang.HolProg 64 :=
.seq AllocBody287_47 AllocBody287_442

def AllocBody287_444 : StackLang.HolProg 64 :=
.seq AllocBody287_46 AllocBody287_443

def AllocBody287_445 : StackLang.HolProg 64 :=
.seq AllocBody287_3 AllocBody287_444

def AllocBody287_446 : StackLang.HolProg 64 :=
.seq AllocBody287_2 AllocBody287_445

def AllocBody287_447 : StackLang.HolProg 64 :=
.seq AllocBody287_1 AllocBody287_446

def AllocBody287_448 : StackLang.HolProg 64 :=
.seq AllocBody287_0 AllocBody287_447

def Alloc287 : Nat × StackLang.HolProg 64 := (287, AllocBody287_448)
theorem Alloc287_eq : StackAlloc.progComp (287, raw287) = Alloc287 := by
  kernel_rfl
#print axioms Alloc287_eq
end InitECandidate.Proofs.BackendStages
