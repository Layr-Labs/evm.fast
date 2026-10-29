import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function287
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody287_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody287_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody287_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody287_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 783#64)

def rawBody287_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_7 : StackLang.HolProg 64 :=
.seq rawBody287_5 rawBody287_6

def rawBody287_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody287_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody287_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 3

def rawBody287_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody287_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody287_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody287_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody287_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_18 : StackLang.HolProg 64 :=
.seq rawBody287_16 rawBody287_17

def rawBody287_19 : StackLang.HolProg 64 :=
.seq rawBody287_15 rawBody287_18

def rawBody287_20 : StackLang.HolProg 64 :=
.seq rawBody287_14 rawBody287_19

def rawBody287_21 : StackLang.HolProg 64 :=
.seq rawBody287_13 rawBody287_20

def rawBody287_22 : StackLang.HolProg 64 :=
.seq rawBody287_12 rawBody287_21

def rawBody287_23 : StackLang.HolProg 64 :=
.seq rawBody287_11 rawBody287_22

def rawBody287_24 : StackLang.HolProg 64 :=
.seq rawBody287_10 rawBody287_23

def rawBody287_25 : StackLang.HolProg 64 :=
.seq rawBody287_9 rawBody287_24

def rawBody287_26 : StackLang.HolProg 64 :=
.seq rawBody287_8 rawBody287_25

def rawBody287_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody287_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody287_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody287_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody287_34 : StackLang.HolProg 64 :=
.seq rawBody287_32 rawBody287_33

def rawBody287_35 : StackLang.HolProg 64 :=
.seq rawBody287_31 rawBody287_34

def rawBody287_36 : StackLang.HolProg 64 :=
.seq rawBody287_30 rawBody287_35

def rawBody287_37 : StackLang.HolProg 64 :=
.seq rawBody287_29 rawBody287_36

def rawBody287_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody287_40 : StackLang.HolProg 64 :=
.seq rawBody287_38 rawBody287_39

def rawBody287_41 : StackLang.HolProg 64 :=
.call (some (rawBody287_37, 0, 287, 2)) (Sum.inl 68) (some (rawBody287_40, 287, 3))

def rawBody287_42 : StackLang.HolProg 64 :=
.seq rawBody287_28 rawBody287_41

def rawBody287_43 : StackLang.HolProg 64 :=
.seq rawBody287_27 rawBody287_42

def rawBody287_44 : StackLang.HolProg 64 :=
.seq rawBody287_26 rawBody287_43

def rawBody287_45 : StackLang.HolProg 64 :=
.seq rawBody287_7 rawBody287_44

def rawBody287_46 : StackLang.HolProg 64 :=
.seq rawBody287_4 rawBody287_45

def rawBody287_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody287_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody287_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody287_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody287_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def rawBody287_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody287_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody287_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 784#64)

def rawBody287_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_59 : StackLang.HolProg 64 :=
.seq rawBody287_57 rawBody287_58

def rawBody287_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody287_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody287_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 5

def rawBody287_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody287_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody287_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody287_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody287_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_70 : StackLang.HolProg 64 :=
.seq rawBody287_68 rawBody287_69

def rawBody287_71 : StackLang.HolProg 64 :=
.seq rawBody287_67 rawBody287_70

def rawBody287_72 : StackLang.HolProg 64 :=
.seq rawBody287_66 rawBody287_71

def rawBody287_73 : StackLang.HolProg 64 :=
.seq rawBody287_65 rawBody287_72

def rawBody287_74 : StackLang.HolProg 64 :=
.seq rawBody287_64 rawBody287_73

def rawBody287_75 : StackLang.HolProg 64 :=
.seq rawBody287_63 rawBody287_74

def rawBody287_76 : StackLang.HolProg 64 :=
.seq rawBody287_62 rawBody287_75

def rawBody287_77 : StackLang.HolProg 64 :=
.seq rawBody287_61 rawBody287_76

def rawBody287_78 : StackLang.HolProg 64 :=
.seq rawBody287_60 rawBody287_77

def rawBody287_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody287_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody287_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody287_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody287_86 : StackLang.HolProg 64 :=
.seq rawBody287_84 rawBody287_85

def rawBody287_87 : StackLang.HolProg 64 :=
.seq rawBody287_83 rawBody287_86

def rawBody287_88 : StackLang.HolProg 64 :=
.seq rawBody287_82 rawBody287_87

def rawBody287_89 : StackLang.HolProg 64 :=
.seq rawBody287_81 rawBody287_88

def rawBody287_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody287_92 : StackLang.HolProg 64 :=
.seq rawBody287_90 rawBody287_91

def rawBody287_93 : StackLang.HolProg 64 :=
.call (some (rawBody287_89, 0, 287, 4)) (Sum.inl 68) (some (rawBody287_92, 287, 5))

def rawBody287_94 : StackLang.HolProg 64 :=
.seq rawBody287_80 rawBody287_93

def rawBody287_95 : StackLang.HolProg 64 :=
.seq rawBody287_79 rawBody287_94

def rawBody287_96 : StackLang.HolProg 64 :=
.seq rawBody287_78 rawBody287_95

def rawBody287_97 : StackLang.HolProg 64 :=
.seq rawBody287_59 rawBody287_96

def rawBody287_98 : StackLang.HolProg 64 :=
.seq rawBody287_56 rawBody287_97

def rawBody287_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody287_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody287_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody287_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody287_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551480#64)))

def rawBody287_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody287_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody287_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 785#64)

def rawBody287_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_111 : StackLang.HolProg 64 :=
.seq rawBody287_109 rawBody287_110

def rawBody287_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody287_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody287_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 7

def rawBody287_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody287_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody287_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody287_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody287_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_122 : StackLang.HolProg 64 :=
.seq rawBody287_120 rawBody287_121

def rawBody287_123 : StackLang.HolProg 64 :=
.seq rawBody287_119 rawBody287_122

def rawBody287_124 : StackLang.HolProg 64 :=
.seq rawBody287_118 rawBody287_123

def rawBody287_125 : StackLang.HolProg 64 :=
.seq rawBody287_117 rawBody287_124

def rawBody287_126 : StackLang.HolProg 64 :=
.seq rawBody287_116 rawBody287_125

def rawBody287_127 : StackLang.HolProg 64 :=
.seq rawBody287_115 rawBody287_126

def rawBody287_128 : StackLang.HolProg 64 :=
.seq rawBody287_114 rawBody287_127

def rawBody287_129 : StackLang.HolProg 64 :=
.seq rawBody287_113 rawBody287_128

def rawBody287_130 : StackLang.HolProg 64 :=
.seq rawBody287_112 rawBody287_129

def rawBody287_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody287_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody287_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody287_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody287_138 : StackLang.HolProg 64 :=
.seq rawBody287_136 rawBody287_137

def rawBody287_139 : StackLang.HolProg 64 :=
.seq rawBody287_135 rawBody287_138

def rawBody287_140 : StackLang.HolProg 64 :=
.seq rawBody287_134 rawBody287_139

def rawBody287_141 : StackLang.HolProg 64 :=
.seq rawBody287_133 rawBody287_140

def rawBody287_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody287_144 : StackLang.HolProg 64 :=
.seq rawBody287_142 rawBody287_143

def rawBody287_145 : StackLang.HolProg 64 :=
.call (some (rawBody287_141, 0, 287, 6)) (Sum.inl 68) (some (rawBody287_144, 287, 7))

def rawBody287_146 : StackLang.HolProg 64 :=
.seq rawBody287_132 rawBody287_145

def rawBody287_147 : StackLang.HolProg 64 :=
.seq rawBody287_131 rawBody287_146

def rawBody287_148 : StackLang.HolProg 64 :=
.seq rawBody287_130 rawBody287_147

def rawBody287_149 : StackLang.HolProg 64 :=
.seq rawBody287_111 rawBody287_148

def rawBody287_150 : StackLang.HolProg 64 :=
.seq rawBody287_108 rawBody287_149

def rawBody287_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody287_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody287_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody287_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody287_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551472#64)))

def rawBody287_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody287_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 40#64)

def rawBody287_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 786#64)

def rawBody287_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_163 : StackLang.HolProg 64 :=
.seq rawBody287_161 rawBody287_162

def rawBody287_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody287_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody287_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 9

def rawBody287_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody287_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody287_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody287_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody287_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_174 : StackLang.HolProg 64 :=
.seq rawBody287_172 rawBody287_173

def rawBody287_175 : StackLang.HolProg 64 :=
.seq rawBody287_171 rawBody287_174

def rawBody287_176 : StackLang.HolProg 64 :=
.seq rawBody287_170 rawBody287_175

def rawBody287_177 : StackLang.HolProg 64 :=
.seq rawBody287_169 rawBody287_176

def rawBody287_178 : StackLang.HolProg 64 :=
.seq rawBody287_168 rawBody287_177

def rawBody287_179 : StackLang.HolProg 64 :=
.seq rawBody287_167 rawBody287_178

def rawBody287_180 : StackLang.HolProg 64 :=
.seq rawBody287_166 rawBody287_179

def rawBody287_181 : StackLang.HolProg 64 :=
.seq rawBody287_165 rawBody287_180

def rawBody287_182 : StackLang.HolProg 64 :=
.seq rawBody287_164 rawBody287_181

def rawBody287_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody287_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody287_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody287_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody287_190 : StackLang.HolProg 64 :=
.seq rawBody287_188 rawBody287_189

def rawBody287_191 : StackLang.HolProg 64 :=
.seq rawBody287_187 rawBody287_190

def rawBody287_192 : StackLang.HolProg 64 :=
.seq rawBody287_186 rawBody287_191

def rawBody287_193 : StackLang.HolProg 64 :=
.seq rawBody287_185 rawBody287_192

def rawBody287_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_195 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody287_196 : StackLang.HolProg 64 :=
.seq rawBody287_194 rawBody287_195

def rawBody287_197 : StackLang.HolProg 64 :=
.call (some (rawBody287_193, 0, 287, 8)) (Sum.inl 68) (some (rawBody287_196, 287, 9))

def rawBody287_198 : StackLang.HolProg 64 :=
.seq rawBody287_184 rawBody287_197

def rawBody287_199 : StackLang.HolProg 64 :=
.seq rawBody287_183 rawBody287_198

def rawBody287_200 : StackLang.HolProg 64 :=
.seq rawBody287_182 rawBody287_199

def rawBody287_201 : StackLang.HolProg 64 :=
.seq rawBody287_163 rawBody287_200

def rawBody287_202 : StackLang.HolProg 64 :=
.seq rawBody287_160 rawBody287_201

def rawBody287_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody287_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody287_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody287_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody287_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551464#64)))

def rawBody287_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody287_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def rawBody287_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 787#64)

def rawBody287_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_215 : StackLang.HolProg 64 :=
.seq rawBody287_213 rawBody287_214

def rawBody287_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody287_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody287_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 11

def rawBody287_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody287_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody287_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody287_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody287_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_226 : StackLang.HolProg 64 :=
.seq rawBody287_224 rawBody287_225

def rawBody287_227 : StackLang.HolProg 64 :=
.seq rawBody287_223 rawBody287_226

def rawBody287_228 : StackLang.HolProg 64 :=
.seq rawBody287_222 rawBody287_227

def rawBody287_229 : StackLang.HolProg 64 :=
.seq rawBody287_221 rawBody287_228

def rawBody287_230 : StackLang.HolProg 64 :=
.seq rawBody287_220 rawBody287_229

def rawBody287_231 : StackLang.HolProg 64 :=
.seq rawBody287_219 rawBody287_230

def rawBody287_232 : StackLang.HolProg 64 :=
.seq rawBody287_218 rawBody287_231

def rawBody287_233 : StackLang.HolProg 64 :=
.seq rawBody287_217 rawBody287_232

def rawBody287_234 : StackLang.HolProg 64 :=
.seq rawBody287_216 rawBody287_233

def rawBody287_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody287_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody287_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody287_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody287_242 : StackLang.HolProg 64 :=
.seq rawBody287_240 rawBody287_241

def rawBody287_243 : StackLang.HolProg 64 :=
.seq rawBody287_239 rawBody287_242

def rawBody287_244 : StackLang.HolProg 64 :=
.seq rawBody287_238 rawBody287_243

def rawBody287_245 : StackLang.HolProg 64 :=
.seq rawBody287_237 rawBody287_244

def rawBody287_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody287_248 : StackLang.HolProg 64 :=
.seq rawBody287_246 rawBody287_247

def rawBody287_249 : StackLang.HolProg 64 :=
.call (some (rawBody287_245, 0, 287, 10)) (Sum.inl 68) (some (rawBody287_248, 287, 11))

def rawBody287_250 : StackLang.HolProg 64 :=
.seq rawBody287_236 rawBody287_249

def rawBody287_251 : StackLang.HolProg 64 :=
.seq rawBody287_235 rawBody287_250

def rawBody287_252 : StackLang.HolProg 64 :=
.seq rawBody287_234 rawBody287_251

def rawBody287_253 : StackLang.HolProg 64 :=
.seq rawBody287_215 rawBody287_252

def rawBody287_254 : StackLang.HolProg 64 :=
.seq rawBody287_212 rawBody287_253

def rawBody287_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody287_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody287_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody287_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody287_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551456#64)))

def rawBody287_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody287_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def rawBody287_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody287_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody287_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def rawBody287_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551488#64))

def rawBody287_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody287_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 788#64)

def rawBody287_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_275 : StackLang.HolProg 64 :=
.seq rawBody287_273 rawBody287_274

def rawBody287_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody287_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody287_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 13

def rawBody287_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody287_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody287_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody287_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody287_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_286 : StackLang.HolProg 64 :=
.seq rawBody287_284 rawBody287_285

def rawBody287_287 : StackLang.HolProg 64 :=
.seq rawBody287_283 rawBody287_286

def rawBody287_288 : StackLang.HolProg 64 :=
.seq rawBody287_282 rawBody287_287

def rawBody287_289 : StackLang.HolProg 64 :=
.seq rawBody287_281 rawBody287_288

def rawBody287_290 : StackLang.HolProg 64 :=
.seq rawBody287_280 rawBody287_289

def rawBody287_291 : StackLang.HolProg 64 :=
.seq rawBody287_279 rawBody287_290

def rawBody287_292 : StackLang.HolProg 64 :=
.seq rawBody287_278 rawBody287_291

def rawBody287_293 : StackLang.HolProg 64 :=
.seq rawBody287_277 rawBody287_292

def rawBody287_294 : StackLang.HolProg 64 :=
.seq rawBody287_276 rawBody287_293

def rawBody287_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody287_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody287_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody287_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_302 : StackLang.HolProg 64 :=
.seq rawBody287_300 rawBody287_301

def rawBody287_303 : StackLang.HolProg 64 :=
.seq rawBody287_299 rawBody287_302

def rawBody287_304 : StackLang.HolProg 64 :=
.seq rawBody287_298 rawBody287_303

def rawBody287_305 : StackLang.HolProg 64 :=
.seq rawBody287_297 rawBody287_304

def rawBody287_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_307 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody287_308 : StackLang.HolProg 64 :=
.seq rawBody287_306 rawBody287_307

def rawBody287_309 : StackLang.HolProg 64 :=
.call (some (rawBody287_305, 0, 287, 12)) (Sum.inl 158) (some (rawBody287_308, 287, 13))

def rawBody287_310 : StackLang.HolProg 64 :=
.seq rawBody287_296 rawBody287_309

def rawBody287_311 : StackLang.HolProg 64 :=
.seq rawBody287_295 rawBody287_310

def rawBody287_312 : StackLang.HolProg 64 :=
.seq rawBody287_294 rawBody287_311

def rawBody287_313 : StackLang.HolProg 64 :=
.seq rawBody287_275 rawBody287_312

def rawBody287_314 : StackLang.HolProg 64 :=
.seq rawBody287_272 rawBody287_313

def rawBody287_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody287_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody287_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody287_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody287_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def rawBody287_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551480#64))

def rawBody287_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody287_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 789#64)

def rawBody287_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_327 : StackLang.HolProg 64 :=
.seq rawBody287_325 rawBody287_326

def rawBody287_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody287_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody287_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody287_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 287 15

def rawBody287_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody287_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody287_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody287_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody287_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_338 : StackLang.HolProg 64 :=
.seq rawBody287_336 rawBody287_337

def rawBody287_339 : StackLang.HolProg 64 :=
.seq rawBody287_335 rawBody287_338

def rawBody287_340 : StackLang.HolProg 64 :=
.seq rawBody287_334 rawBody287_339

def rawBody287_341 : StackLang.HolProg 64 :=
.seq rawBody287_333 rawBody287_340

def rawBody287_342 : StackLang.HolProg 64 :=
.seq rawBody287_332 rawBody287_341

def rawBody287_343 : StackLang.HolProg 64 :=
.seq rawBody287_331 rawBody287_342

def rawBody287_344 : StackLang.HolProg 64 :=
.seq rawBody287_330 rawBody287_343

def rawBody287_345 : StackLang.HolProg 64 :=
.seq rawBody287_329 rawBody287_344

def rawBody287_346 : StackLang.HolProg 64 :=
.seq rawBody287_328 rawBody287_345

def rawBody287_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody287_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody287_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody287_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody287_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody287_354 : StackLang.HolProg 64 :=
.seq rawBody287_352 rawBody287_353

def rawBody287_355 : StackLang.HolProg 64 :=
.seq rawBody287_351 rawBody287_354

def rawBody287_356 : StackLang.HolProg 64 :=
.seq rawBody287_350 rawBody287_355

def rawBody287_357 : StackLang.HolProg 64 :=
.seq rawBody287_349 rawBody287_356

def rawBody287_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody287_359 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody287_360 : StackLang.HolProg 64 :=
.seq rawBody287_358 rawBody287_359

def rawBody287_361 : StackLang.HolProg 64 :=
.call (some (rawBody287_357, 0, 287, 14)) (Sum.inl 158) (some (rawBody287_360, 287, 15))

def rawBody287_362 : StackLang.HolProg 64 :=
.seq rawBody287_348 rawBody287_361

def rawBody287_363 : StackLang.HolProg 64 :=
.seq rawBody287_347 rawBody287_362

def rawBody287_364 : StackLang.HolProg 64 :=
.seq rawBody287_346 rawBody287_363

def rawBody287_365 : StackLang.HolProg 64 :=
.seq rawBody287_327 rawBody287_364

def rawBody287_366 : StackLang.HolProg 64 :=
.seq rawBody287_324 rawBody287_365

def rawBody287_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody287_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody287_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody287_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody287_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody287_372 : StackLang.HolProg 64 :=
.seq rawBody287_370 rawBody287_371

def rawBody287_373 : StackLang.HolProg 64 :=
.seq rawBody287_369 rawBody287_372

def rawBody287_374 : StackLang.HolProg 64 :=
.seq rawBody287_368 rawBody287_373

def rawBody287_375 : StackLang.HolProg 64 :=
.seq rawBody287_367 rawBody287_374

def rawBody287_376 : StackLang.HolProg 64 :=
.seq rawBody287_366 rawBody287_375

def rawBody287_377 : StackLang.HolProg 64 :=
.seq rawBody287_323 rawBody287_376

def rawBody287_378 : StackLang.HolProg 64 :=
.seq rawBody287_322 rawBody287_377

def rawBody287_379 : StackLang.HolProg 64 :=
.seq rawBody287_321 rawBody287_378

def rawBody287_380 : StackLang.HolProg 64 :=
.seq rawBody287_320 rawBody287_379

def rawBody287_381 : StackLang.HolProg 64 :=
.seq rawBody287_319 rawBody287_380

def rawBody287_382 : StackLang.HolProg 64 :=
.seq rawBody287_318 rawBody287_381

def rawBody287_383 : StackLang.HolProg 64 :=
.seq rawBody287_317 rawBody287_382

def rawBody287_384 : StackLang.HolProg 64 :=
.seq rawBody287_316 rawBody287_383

def rawBody287_385 : StackLang.HolProg 64 :=
.seq rawBody287_315 rawBody287_384

def rawBody287_386 : StackLang.HolProg 64 :=
.seq rawBody287_314 rawBody287_385

def rawBody287_387 : StackLang.HolProg 64 :=
.seq rawBody287_271 rawBody287_386

def rawBody287_388 : StackLang.HolProg 64 :=
.seq rawBody287_270 rawBody287_387

def rawBody287_389 : StackLang.HolProg 64 :=
.seq rawBody287_269 rawBody287_388

def rawBody287_390 : StackLang.HolProg 64 :=
.seq rawBody287_268 rawBody287_389

def rawBody287_391 : StackLang.HolProg 64 :=
.seq rawBody287_267 rawBody287_390

def rawBody287_392 : StackLang.HolProg 64 :=
.seq rawBody287_266 rawBody287_391

def rawBody287_393 : StackLang.HolProg 64 :=
.seq rawBody287_265 rawBody287_392

def rawBody287_394 : StackLang.HolProg 64 :=
.seq rawBody287_264 rawBody287_393

def rawBody287_395 : StackLang.HolProg 64 :=
.seq rawBody287_263 rawBody287_394

def rawBody287_396 : StackLang.HolProg 64 :=
.seq rawBody287_262 rawBody287_395

def rawBody287_397 : StackLang.HolProg 64 :=
.seq rawBody287_261 rawBody287_396

def rawBody287_398 : StackLang.HolProg 64 :=
.seq rawBody287_260 rawBody287_397

def rawBody287_399 : StackLang.HolProg 64 :=
.seq rawBody287_259 rawBody287_398

def rawBody287_400 : StackLang.HolProg 64 :=
.seq rawBody287_258 rawBody287_399

def rawBody287_401 : StackLang.HolProg 64 :=
.seq rawBody287_257 rawBody287_400

def rawBody287_402 : StackLang.HolProg 64 :=
.seq rawBody287_256 rawBody287_401

def rawBody287_403 : StackLang.HolProg 64 :=
.seq rawBody287_255 rawBody287_402

def rawBody287_404 : StackLang.HolProg 64 :=
.seq rawBody287_254 rawBody287_403

def rawBody287_405 : StackLang.HolProg 64 :=
.seq rawBody287_211 rawBody287_404

def rawBody287_406 : StackLang.HolProg 64 :=
.seq rawBody287_210 rawBody287_405

def rawBody287_407 : StackLang.HolProg 64 :=
.seq rawBody287_209 rawBody287_406

def rawBody287_408 : StackLang.HolProg 64 :=
.seq rawBody287_208 rawBody287_407

def rawBody287_409 : StackLang.HolProg 64 :=
.seq rawBody287_207 rawBody287_408

def rawBody287_410 : StackLang.HolProg 64 :=
.seq rawBody287_206 rawBody287_409

def rawBody287_411 : StackLang.HolProg 64 :=
.seq rawBody287_205 rawBody287_410

def rawBody287_412 : StackLang.HolProg 64 :=
.seq rawBody287_204 rawBody287_411

def rawBody287_413 : StackLang.HolProg 64 :=
.seq rawBody287_203 rawBody287_412

def rawBody287_414 : StackLang.HolProg 64 :=
.seq rawBody287_202 rawBody287_413

def rawBody287_415 : StackLang.HolProg 64 :=
.seq rawBody287_159 rawBody287_414

def rawBody287_416 : StackLang.HolProg 64 :=
.seq rawBody287_158 rawBody287_415

def rawBody287_417 : StackLang.HolProg 64 :=
.seq rawBody287_157 rawBody287_416

def rawBody287_418 : StackLang.HolProg 64 :=
.seq rawBody287_156 rawBody287_417

def rawBody287_419 : StackLang.HolProg 64 :=
.seq rawBody287_155 rawBody287_418

def rawBody287_420 : StackLang.HolProg 64 :=
.seq rawBody287_154 rawBody287_419

def rawBody287_421 : StackLang.HolProg 64 :=
.seq rawBody287_153 rawBody287_420

def rawBody287_422 : StackLang.HolProg 64 :=
.seq rawBody287_152 rawBody287_421

def rawBody287_423 : StackLang.HolProg 64 :=
.seq rawBody287_151 rawBody287_422

def rawBody287_424 : StackLang.HolProg 64 :=
.seq rawBody287_150 rawBody287_423

def rawBody287_425 : StackLang.HolProg 64 :=
.seq rawBody287_107 rawBody287_424

def rawBody287_426 : StackLang.HolProg 64 :=
.seq rawBody287_106 rawBody287_425

def rawBody287_427 : StackLang.HolProg 64 :=
.seq rawBody287_105 rawBody287_426

def rawBody287_428 : StackLang.HolProg 64 :=
.seq rawBody287_104 rawBody287_427

def rawBody287_429 : StackLang.HolProg 64 :=
.seq rawBody287_103 rawBody287_428

def rawBody287_430 : StackLang.HolProg 64 :=
.seq rawBody287_102 rawBody287_429

def rawBody287_431 : StackLang.HolProg 64 :=
.seq rawBody287_101 rawBody287_430

def rawBody287_432 : StackLang.HolProg 64 :=
.seq rawBody287_100 rawBody287_431

def rawBody287_433 : StackLang.HolProg 64 :=
.seq rawBody287_99 rawBody287_432

def rawBody287_434 : StackLang.HolProg 64 :=
.seq rawBody287_98 rawBody287_433

def rawBody287_435 : StackLang.HolProg 64 :=
.seq rawBody287_55 rawBody287_434

def rawBody287_436 : StackLang.HolProg 64 :=
.seq rawBody287_54 rawBody287_435

def rawBody287_437 : StackLang.HolProg 64 :=
.seq rawBody287_53 rawBody287_436

def rawBody287_438 : StackLang.HolProg 64 :=
.seq rawBody287_52 rawBody287_437

def rawBody287_439 : StackLang.HolProg 64 :=
.seq rawBody287_51 rawBody287_438

def rawBody287_440 : StackLang.HolProg 64 :=
.seq rawBody287_50 rawBody287_439

def rawBody287_441 : StackLang.HolProg 64 :=
.seq rawBody287_49 rawBody287_440

def rawBody287_442 : StackLang.HolProg 64 :=
.seq rawBody287_48 rawBody287_441

def rawBody287_443 : StackLang.HolProg 64 :=
.seq rawBody287_47 rawBody287_442

def rawBody287_444 : StackLang.HolProg 64 :=
.seq rawBody287_46 rawBody287_443

def rawBody287_445 : StackLang.HolProg 64 :=
.seq rawBody287_3 rawBody287_444

def rawBody287_446 : StackLang.HolProg 64 :=
.seq rawBody287_2 rawBody287_445

def rawBody287_447 : StackLang.HolProg 64 :=
.seq rawBody287_1 rawBody287_446

def rawBody287_448 : StackLang.HolProg 64 :=
.seq rawBody287_0 rawBody287_447

def raw287 : StackLang.HolProg 64 := rawBody287_448
theorem raw287_eq : StackRawCall.compTop RawInfo.rawInfo (function287 (.list [])).1 = raw287 := by
  kernel_rfl
#print axioms raw287_eq
end InitECandidate.Proofs.BackendStages
