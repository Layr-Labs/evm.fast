import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw387
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody387_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody387_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 72#64)

def AllocBody387_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody387_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1148#64)

def AllocBody387_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_7 : StackLang.HolProg 64 :=
.seq AllocBody387_5 AllocBody387_6

def AllocBody387_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 3

def AllocBody387_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_18 : StackLang.HolProg 64 :=
.seq AllocBody387_16 AllocBody387_17

def AllocBody387_19 : StackLang.HolProg 64 :=
.seq AllocBody387_15 AllocBody387_18

def AllocBody387_20 : StackLang.HolProg 64 :=
.seq AllocBody387_14 AllocBody387_19

def AllocBody387_21 : StackLang.HolProg 64 :=
.seq AllocBody387_13 AllocBody387_20

def AllocBody387_22 : StackLang.HolProg 64 :=
.seq AllocBody387_12 AllocBody387_21

def AllocBody387_23 : StackLang.HolProg 64 :=
.seq AllocBody387_11 AllocBody387_22

def AllocBody387_24 : StackLang.HolProg 64 :=
.seq AllocBody387_10 AllocBody387_23

def AllocBody387_25 : StackLang.HolProg 64 :=
.seq AllocBody387_9 AllocBody387_24

def AllocBody387_26 : StackLang.HolProg 64 :=
.seq AllocBody387_8 AllocBody387_25

def AllocBody387_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_34 : StackLang.HolProg 64 :=
.seq AllocBody387_32 AllocBody387_33

def AllocBody387_35 : StackLang.HolProg 64 :=
.seq AllocBody387_31 AllocBody387_34

def AllocBody387_36 : StackLang.HolProg 64 :=
.seq AllocBody387_30 AllocBody387_35

def AllocBody387_37 : StackLang.HolProg 64 :=
.seq AllocBody387_29 AllocBody387_36

def AllocBody387_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_40 : StackLang.HolProg 64 :=
.seq AllocBody387_38 AllocBody387_39

def AllocBody387_41 : StackLang.HolProg 64 :=
.call (some (AllocBody387_37, 0, 387, 2)) (Sum.inl 68) (some (AllocBody387_40, 387, 3))

def AllocBody387_42 : StackLang.HolProg 64 :=
.seq AllocBody387_28 AllocBody387_41

def AllocBody387_43 : StackLang.HolProg 64 :=
.seq AllocBody387_27 AllocBody387_42

def AllocBody387_44 : StackLang.HolProg 64 :=
.seq AllocBody387_26 AllocBody387_43

def AllocBody387_45 : StackLang.HolProg 64 :=
.seq AllocBody387_7 AllocBody387_44

def AllocBody387_46 : StackLang.HolProg 64 :=
.seq AllocBody387_4 AllocBody387_45

def AllocBody387_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody387_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551432#64)))

def AllocBody387_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def AllocBody387_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def AllocBody387_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody387_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def AllocBody387_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1149#64)

def AllocBody387_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_66 : StackLang.HolProg 64 :=
.seq AllocBody387_64 AllocBody387_65

def AllocBody387_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 5

def AllocBody387_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_77 : StackLang.HolProg 64 :=
.seq AllocBody387_75 AllocBody387_76

def AllocBody387_78 : StackLang.HolProg 64 :=
.seq AllocBody387_74 AllocBody387_77

def AllocBody387_79 : StackLang.HolProg 64 :=
.seq AllocBody387_73 AllocBody387_78

def AllocBody387_80 : StackLang.HolProg 64 :=
.seq AllocBody387_72 AllocBody387_79

def AllocBody387_81 : StackLang.HolProg 64 :=
.seq AllocBody387_71 AllocBody387_80

def AllocBody387_82 : StackLang.HolProg 64 :=
.seq AllocBody387_70 AllocBody387_81

def AllocBody387_83 : StackLang.HolProg 64 :=
.seq AllocBody387_69 AllocBody387_82

def AllocBody387_84 : StackLang.HolProg 64 :=
.seq AllocBody387_68 AllocBody387_83

def AllocBody387_85 : StackLang.HolProg 64 :=
.seq AllocBody387_67 AllocBody387_84

def AllocBody387_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_93 : StackLang.HolProg 64 :=
.seq AllocBody387_91 AllocBody387_92

def AllocBody387_94 : StackLang.HolProg 64 :=
.seq AllocBody387_90 AllocBody387_93

def AllocBody387_95 : StackLang.HolProg 64 :=
.seq AllocBody387_89 AllocBody387_94

def AllocBody387_96 : StackLang.HolProg 64 :=
.seq AllocBody387_88 AllocBody387_95

def AllocBody387_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_99 : StackLang.HolProg 64 :=
.seq AllocBody387_97 AllocBody387_98

def AllocBody387_100 : StackLang.HolProg 64 :=
.call (some (AllocBody387_96, 0, 387, 4)) (Sum.inl 182) (some (AllocBody387_99, 387, 5))

def AllocBody387_101 : StackLang.HolProg 64 :=
.seq AllocBody387_87 AllocBody387_100

def AllocBody387_102 : StackLang.HolProg 64 :=
.seq AllocBody387_86 AllocBody387_101

def AllocBody387_103 : StackLang.HolProg 64 :=
.seq AllocBody387_85 AllocBody387_102

def AllocBody387_104 : StackLang.HolProg 64 :=
.seq AllocBody387_66 AllocBody387_103

def AllocBody387_105 : StackLang.HolProg 64 :=
.seq AllocBody387_63 AllocBody387_104

def AllocBody387_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody387_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody387_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody387_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody387_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def AllocBody387_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1150#64)

def AllocBody387_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_120 : StackLang.HolProg 64 :=
.seq AllocBody387_118 AllocBody387_119

def AllocBody387_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 7

def AllocBody387_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_131 : StackLang.HolProg 64 :=
.seq AllocBody387_129 AllocBody387_130

def AllocBody387_132 : StackLang.HolProg 64 :=
.seq AllocBody387_128 AllocBody387_131

def AllocBody387_133 : StackLang.HolProg 64 :=
.seq AllocBody387_127 AllocBody387_132

def AllocBody387_134 : StackLang.HolProg 64 :=
.seq AllocBody387_126 AllocBody387_133

def AllocBody387_135 : StackLang.HolProg 64 :=
.seq AllocBody387_125 AllocBody387_134

def AllocBody387_136 : StackLang.HolProg 64 :=
.seq AllocBody387_124 AllocBody387_135

def AllocBody387_137 : StackLang.HolProg 64 :=
.seq AllocBody387_123 AllocBody387_136

def AllocBody387_138 : StackLang.HolProg 64 :=
.seq AllocBody387_122 AllocBody387_137

def AllocBody387_139 : StackLang.HolProg 64 :=
.seq AllocBody387_121 AllocBody387_138

def AllocBody387_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_147 : StackLang.HolProg 64 :=
.seq AllocBody387_145 AllocBody387_146

def AllocBody387_148 : StackLang.HolProg 64 :=
.seq AllocBody387_144 AllocBody387_147

def AllocBody387_149 : StackLang.HolProg 64 :=
.seq AllocBody387_143 AllocBody387_148

def AllocBody387_150 : StackLang.HolProg 64 :=
.seq AllocBody387_142 AllocBody387_149

def AllocBody387_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_153 : StackLang.HolProg 64 :=
.seq AllocBody387_151 AllocBody387_152

def AllocBody387_154 : StackLang.HolProg 64 :=
.call (some (AllocBody387_150, 0, 387, 6)) (Sum.inl 182) (some (AllocBody387_153, 387, 7))

def AllocBody387_155 : StackLang.HolProg 64 :=
.seq AllocBody387_141 AllocBody387_154

def AllocBody387_156 : StackLang.HolProg 64 :=
.seq AllocBody387_140 AllocBody387_155

def AllocBody387_157 : StackLang.HolProg 64 :=
.seq AllocBody387_139 AllocBody387_156

def AllocBody387_158 : StackLang.HolProg 64 :=
.seq AllocBody387_120 AllocBody387_157

def AllocBody387_159 : StackLang.HolProg 64 :=
.seq AllocBody387_117 AllocBody387_158

def AllocBody387_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody387_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody387_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody387_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody387_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def AllocBody387_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1151#64)

def AllocBody387_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_174 : StackLang.HolProg 64 :=
.seq AllocBody387_172 AllocBody387_173

def AllocBody387_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 9

def AllocBody387_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_185 : StackLang.HolProg 64 :=
.seq AllocBody387_183 AllocBody387_184

def AllocBody387_186 : StackLang.HolProg 64 :=
.seq AllocBody387_182 AllocBody387_185

def AllocBody387_187 : StackLang.HolProg 64 :=
.seq AllocBody387_181 AllocBody387_186

def AllocBody387_188 : StackLang.HolProg 64 :=
.seq AllocBody387_180 AllocBody387_187

def AllocBody387_189 : StackLang.HolProg 64 :=
.seq AllocBody387_179 AllocBody387_188

def AllocBody387_190 : StackLang.HolProg 64 :=
.seq AllocBody387_178 AllocBody387_189

def AllocBody387_191 : StackLang.HolProg 64 :=
.seq AllocBody387_177 AllocBody387_190

def AllocBody387_192 : StackLang.HolProg 64 :=
.seq AllocBody387_176 AllocBody387_191

def AllocBody387_193 : StackLang.HolProg 64 :=
.seq AllocBody387_175 AllocBody387_192

def AllocBody387_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_201 : StackLang.HolProg 64 :=
.seq AllocBody387_199 AllocBody387_200

def AllocBody387_202 : StackLang.HolProg 64 :=
.seq AllocBody387_198 AllocBody387_201

def AllocBody387_203 : StackLang.HolProg 64 :=
.seq AllocBody387_197 AllocBody387_202

def AllocBody387_204 : StackLang.HolProg 64 :=
.seq AllocBody387_196 AllocBody387_203

def AllocBody387_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_207 : StackLang.HolProg 64 :=
.seq AllocBody387_205 AllocBody387_206

def AllocBody387_208 : StackLang.HolProg 64 :=
.call (some (AllocBody387_204, 0, 387, 8)) (Sum.inl 182) (some (AllocBody387_207, 387, 9))

def AllocBody387_209 : StackLang.HolProg 64 :=
.seq AllocBody387_195 AllocBody387_208

def AllocBody387_210 : StackLang.HolProg 64 :=
.seq AllocBody387_194 AllocBody387_209

def AllocBody387_211 : StackLang.HolProg 64 :=
.seq AllocBody387_193 AllocBody387_210

def AllocBody387_212 : StackLang.HolProg 64 :=
.seq AllocBody387_174 AllocBody387_211

def AllocBody387_213 : StackLang.HolProg 64 :=
.seq AllocBody387_171 AllocBody387_212

def AllocBody387_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody387_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody387_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody387_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody387_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def AllocBody387_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1152#64)

def AllocBody387_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_228 : StackLang.HolProg 64 :=
.seq AllocBody387_226 AllocBody387_227

def AllocBody387_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 11

def AllocBody387_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_239 : StackLang.HolProg 64 :=
.seq AllocBody387_237 AllocBody387_238

def AllocBody387_240 : StackLang.HolProg 64 :=
.seq AllocBody387_236 AllocBody387_239

def AllocBody387_241 : StackLang.HolProg 64 :=
.seq AllocBody387_235 AllocBody387_240

def AllocBody387_242 : StackLang.HolProg 64 :=
.seq AllocBody387_234 AllocBody387_241

def AllocBody387_243 : StackLang.HolProg 64 :=
.seq AllocBody387_233 AllocBody387_242

def AllocBody387_244 : StackLang.HolProg 64 :=
.seq AllocBody387_232 AllocBody387_243

def AllocBody387_245 : StackLang.HolProg 64 :=
.seq AllocBody387_231 AllocBody387_244

def AllocBody387_246 : StackLang.HolProg 64 :=
.seq AllocBody387_230 AllocBody387_245

def AllocBody387_247 : StackLang.HolProg 64 :=
.seq AllocBody387_229 AllocBody387_246

def AllocBody387_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_255 : StackLang.HolProg 64 :=
.seq AllocBody387_253 AllocBody387_254

def AllocBody387_256 : StackLang.HolProg 64 :=
.seq AllocBody387_252 AllocBody387_255

def AllocBody387_257 : StackLang.HolProg 64 :=
.seq AllocBody387_251 AllocBody387_256

def AllocBody387_258 : StackLang.HolProg 64 :=
.seq AllocBody387_250 AllocBody387_257

def AllocBody387_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_260 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_261 : StackLang.HolProg 64 :=
.seq AllocBody387_259 AllocBody387_260

def AllocBody387_262 : StackLang.HolProg 64 :=
.call (some (AllocBody387_258, 0, 387, 10)) (Sum.inl 182) (some (AllocBody387_261, 387, 11))

def AllocBody387_263 : StackLang.HolProg 64 :=
.seq AllocBody387_249 AllocBody387_262

def AllocBody387_264 : StackLang.HolProg 64 :=
.seq AllocBody387_248 AllocBody387_263

def AllocBody387_265 : StackLang.HolProg 64 :=
.seq AllocBody387_247 AllocBody387_264

def AllocBody387_266 : StackLang.HolProg 64 :=
.seq AllocBody387_228 AllocBody387_265

def AllocBody387_267 : StackLang.HolProg 64 :=
.seq AllocBody387_225 AllocBody387_266

def AllocBody387_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody387_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody387_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody387_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody387_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def AllocBody387_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1153#64)

def AllocBody387_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_282 : StackLang.HolProg 64 :=
.seq AllocBody387_280 AllocBody387_281

def AllocBody387_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 13

def AllocBody387_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_293 : StackLang.HolProg 64 :=
.seq AllocBody387_291 AllocBody387_292

def AllocBody387_294 : StackLang.HolProg 64 :=
.seq AllocBody387_290 AllocBody387_293

def AllocBody387_295 : StackLang.HolProg 64 :=
.seq AllocBody387_289 AllocBody387_294

def AllocBody387_296 : StackLang.HolProg 64 :=
.seq AllocBody387_288 AllocBody387_295

def AllocBody387_297 : StackLang.HolProg 64 :=
.seq AllocBody387_287 AllocBody387_296

def AllocBody387_298 : StackLang.HolProg 64 :=
.seq AllocBody387_286 AllocBody387_297

def AllocBody387_299 : StackLang.HolProg 64 :=
.seq AllocBody387_285 AllocBody387_298

def AllocBody387_300 : StackLang.HolProg 64 :=
.seq AllocBody387_284 AllocBody387_299

def AllocBody387_301 : StackLang.HolProg 64 :=
.seq AllocBody387_283 AllocBody387_300

def AllocBody387_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_309 : StackLang.HolProg 64 :=
.seq AllocBody387_307 AllocBody387_308

def AllocBody387_310 : StackLang.HolProg 64 :=
.seq AllocBody387_306 AllocBody387_309

def AllocBody387_311 : StackLang.HolProg 64 :=
.seq AllocBody387_305 AllocBody387_310

def AllocBody387_312 : StackLang.HolProg 64 :=
.seq AllocBody387_304 AllocBody387_311

def AllocBody387_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_315 : StackLang.HolProg 64 :=
.seq AllocBody387_313 AllocBody387_314

def AllocBody387_316 : StackLang.HolProg 64 :=
.call (some (AllocBody387_312, 0, 387, 12)) (Sum.inl 182) (some (AllocBody387_315, 387, 13))

def AllocBody387_317 : StackLang.HolProg 64 :=
.seq AllocBody387_303 AllocBody387_316

def AllocBody387_318 : StackLang.HolProg 64 :=
.seq AllocBody387_302 AllocBody387_317

def AllocBody387_319 : StackLang.HolProg 64 :=
.seq AllocBody387_301 AllocBody387_318

def AllocBody387_320 : StackLang.HolProg 64 :=
.seq AllocBody387_282 AllocBody387_319

def AllocBody387_321 : StackLang.HolProg 64 :=
.seq AllocBody387_279 AllocBody387_320

def AllocBody387_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody387_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody387_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody387_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody387_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody387_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1154#64)

def AllocBody387_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_336 : StackLang.HolProg 64 :=
.seq AllocBody387_334 AllocBody387_335

def AllocBody387_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 15

def AllocBody387_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_347 : StackLang.HolProg 64 :=
.seq AllocBody387_345 AllocBody387_346

def AllocBody387_348 : StackLang.HolProg 64 :=
.seq AllocBody387_344 AllocBody387_347

def AllocBody387_349 : StackLang.HolProg 64 :=
.seq AllocBody387_343 AllocBody387_348

def AllocBody387_350 : StackLang.HolProg 64 :=
.seq AllocBody387_342 AllocBody387_349

def AllocBody387_351 : StackLang.HolProg 64 :=
.seq AllocBody387_341 AllocBody387_350

def AllocBody387_352 : StackLang.HolProg 64 :=
.seq AllocBody387_340 AllocBody387_351

def AllocBody387_353 : StackLang.HolProg 64 :=
.seq AllocBody387_339 AllocBody387_352

def AllocBody387_354 : StackLang.HolProg 64 :=
.seq AllocBody387_338 AllocBody387_353

def AllocBody387_355 : StackLang.HolProg 64 :=
.seq AllocBody387_337 AllocBody387_354

def AllocBody387_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_363 : StackLang.HolProg 64 :=
.seq AllocBody387_361 AllocBody387_362

def AllocBody387_364 : StackLang.HolProg 64 :=
.seq AllocBody387_360 AllocBody387_363

def AllocBody387_365 : StackLang.HolProg 64 :=
.seq AllocBody387_359 AllocBody387_364

def AllocBody387_366 : StackLang.HolProg 64 :=
.seq AllocBody387_358 AllocBody387_365

def AllocBody387_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_368 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_369 : StackLang.HolProg 64 :=
.seq AllocBody387_367 AllocBody387_368

def AllocBody387_370 : StackLang.HolProg 64 :=
.call (some (AllocBody387_366, 0, 387, 14)) (Sum.inl 182) (some (AllocBody387_369, 387, 15))

def AllocBody387_371 : StackLang.HolProg 64 :=
.seq AllocBody387_357 AllocBody387_370

def AllocBody387_372 : StackLang.HolProg 64 :=
.seq AllocBody387_356 AllocBody387_371

def AllocBody387_373 : StackLang.HolProg 64 :=
.seq AllocBody387_355 AllocBody387_372

def AllocBody387_374 : StackLang.HolProg 64 :=
.seq AllocBody387_336 AllocBody387_373

def AllocBody387_375 : StackLang.HolProg 64 :=
.seq AllocBody387_333 AllocBody387_374

def AllocBody387_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody387_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody387_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody387_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody387_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def AllocBody387_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1155#64)

def AllocBody387_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_390 : StackLang.HolProg 64 :=
.seq AllocBody387_388 AllocBody387_389

def AllocBody387_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 17

def AllocBody387_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_401 : StackLang.HolProg 64 :=
.seq AllocBody387_399 AllocBody387_400

def AllocBody387_402 : StackLang.HolProg 64 :=
.seq AllocBody387_398 AllocBody387_401

def AllocBody387_403 : StackLang.HolProg 64 :=
.seq AllocBody387_397 AllocBody387_402

def AllocBody387_404 : StackLang.HolProg 64 :=
.seq AllocBody387_396 AllocBody387_403

def AllocBody387_405 : StackLang.HolProg 64 :=
.seq AllocBody387_395 AllocBody387_404

def AllocBody387_406 : StackLang.HolProg 64 :=
.seq AllocBody387_394 AllocBody387_405

def AllocBody387_407 : StackLang.HolProg 64 :=
.seq AllocBody387_393 AllocBody387_406

def AllocBody387_408 : StackLang.HolProg 64 :=
.seq AllocBody387_392 AllocBody387_407

def AllocBody387_409 : StackLang.HolProg 64 :=
.seq AllocBody387_391 AllocBody387_408

def AllocBody387_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_417 : StackLang.HolProg 64 :=
.seq AllocBody387_415 AllocBody387_416

def AllocBody387_418 : StackLang.HolProg 64 :=
.seq AllocBody387_414 AllocBody387_417

def AllocBody387_419 : StackLang.HolProg 64 :=
.seq AllocBody387_413 AllocBody387_418

def AllocBody387_420 : StackLang.HolProg 64 :=
.seq AllocBody387_412 AllocBody387_419

def AllocBody387_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_422 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_423 : StackLang.HolProg 64 :=
.seq AllocBody387_421 AllocBody387_422

def AllocBody387_424 : StackLang.HolProg 64 :=
.call (some (AllocBody387_420, 0, 387, 16)) (Sum.inl 182) (some (AllocBody387_423, 387, 17))

def AllocBody387_425 : StackLang.HolProg 64 :=
.seq AllocBody387_411 AllocBody387_424

def AllocBody387_426 : StackLang.HolProg 64 :=
.seq AllocBody387_410 AllocBody387_425

def AllocBody387_427 : StackLang.HolProg 64 :=
.seq AllocBody387_409 AllocBody387_426

def AllocBody387_428 : StackLang.HolProg 64 :=
.seq AllocBody387_390 AllocBody387_427

def AllocBody387_429 : StackLang.HolProg 64 :=
.seq AllocBody387_387 AllocBody387_428

def AllocBody387_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody387_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody387_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def AllocBody387_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def AllocBody387_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def AllocBody387_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1156#64)

def AllocBody387_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_444 : StackLang.HolProg 64 :=
.seq AllocBody387_442 AllocBody387_443

def AllocBody387_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody387_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody387_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody387_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 19

def AllocBody387_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody387_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody387_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody387_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody387_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_455 : StackLang.HolProg 64 :=
.seq AllocBody387_453 AllocBody387_454

def AllocBody387_456 : StackLang.HolProg 64 :=
.seq AllocBody387_452 AllocBody387_455

def AllocBody387_457 : StackLang.HolProg 64 :=
.seq AllocBody387_451 AllocBody387_456

def AllocBody387_458 : StackLang.HolProg 64 :=
.seq AllocBody387_450 AllocBody387_457

def AllocBody387_459 : StackLang.HolProg 64 :=
.seq AllocBody387_449 AllocBody387_458

def AllocBody387_460 : StackLang.HolProg 64 :=
.seq AllocBody387_448 AllocBody387_459

def AllocBody387_461 : StackLang.HolProg 64 :=
.seq AllocBody387_447 AllocBody387_460

def AllocBody387_462 : StackLang.HolProg 64 :=
.seq AllocBody387_446 AllocBody387_461

def AllocBody387_463 : StackLang.HolProg 64 :=
.seq AllocBody387_445 AllocBody387_462

def AllocBody387_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody387_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody387_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody387_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody387_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody387_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody387_472 : StackLang.HolProg 64 :=
.seq AllocBody387_470 AllocBody387_471

def AllocBody387_473 : StackLang.HolProg 64 :=
.seq AllocBody387_469 AllocBody387_472

def AllocBody387_474 : StackLang.HolProg 64 :=
.seq AllocBody387_468 AllocBody387_473

def AllocBody387_475 : StackLang.HolProg 64 :=
.seq AllocBody387_467 AllocBody387_474

def AllocBody387_476 : StackLang.HolProg 64 :=
.seq AllocBody387_466 AllocBody387_475

def AllocBody387_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody387_478 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody387_479 : StackLang.HolProg 64 :=
.seq AllocBody387_477 AllocBody387_478

def AllocBody387_480 : StackLang.HolProg 64 :=
.call (some (AllocBody387_476, 0, 387, 18)) (Sum.inl 182) (some (AllocBody387_479, 387, 19))

def AllocBody387_481 : StackLang.HolProg 64 :=
.seq AllocBody387_465 AllocBody387_480

def AllocBody387_482 : StackLang.HolProg 64 :=
.seq AllocBody387_464 AllocBody387_481

def AllocBody387_483 : StackLang.HolProg 64 :=
.seq AllocBody387_463 AllocBody387_482

def AllocBody387_484 : StackLang.HolProg 64 :=
.seq AllocBody387_444 AllocBody387_483

def AllocBody387_485 : StackLang.HolProg 64 :=
.seq AllocBody387_441 AllocBody387_484

def AllocBody387_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody387_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody387_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody387_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody387_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def AllocBody387_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody387_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody387_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def AllocBody387_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody387_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody387_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody387_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody387_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody387_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody387_503 : StackLang.HolProg 64 :=
.seq AllocBody387_501 AllocBody387_502

def AllocBody387_504 : StackLang.HolProg 64 :=
.seq AllocBody387_500 AllocBody387_503

def AllocBody387_505 : StackLang.HolProg 64 :=
.seq AllocBody387_499 AllocBody387_504

def AllocBody387_506 : StackLang.HolProg 64 :=
.seq AllocBody387_498 AllocBody387_505

def AllocBody387_507 : StackLang.HolProg 64 :=
.seq AllocBody387_497 AllocBody387_506

def AllocBody387_508 : StackLang.HolProg 64 :=
.seq AllocBody387_496 AllocBody387_507

def AllocBody387_509 : StackLang.HolProg 64 :=
.seq AllocBody387_495 AllocBody387_508

def AllocBody387_510 : StackLang.HolProg 64 :=
.seq AllocBody387_494 AllocBody387_509

def AllocBody387_511 : StackLang.HolProg 64 :=
.seq AllocBody387_493 AllocBody387_510

def AllocBody387_512 : StackLang.HolProg 64 :=
.seq AllocBody387_492 AllocBody387_511

def AllocBody387_513 : StackLang.HolProg 64 :=
.seq AllocBody387_491 AllocBody387_512

def AllocBody387_514 : StackLang.HolProg 64 :=
.seq AllocBody387_490 AllocBody387_513

def AllocBody387_515 : StackLang.HolProg 64 :=
.seq AllocBody387_489 AllocBody387_514

def AllocBody387_516 : StackLang.HolProg 64 :=
.seq AllocBody387_488 AllocBody387_515

def AllocBody387_517 : StackLang.HolProg 64 :=
.seq AllocBody387_487 AllocBody387_516

def AllocBody387_518 : StackLang.HolProg 64 :=
.seq AllocBody387_486 AllocBody387_517

def AllocBody387_519 : StackLang.HolProg 64 :=
.seq AllocBody387_485 AllocBody387_518

def AllocBody387_520 : StackLang.HolProg 64 :=
.seq AllocBody387_440 AllocBody387_519

def AllocBody387_521 : StackLang.HolProg 64 :=
.seq AllocBody387_439 AllocBody387_520

def AllocBody387_522 : StackLang.HolProg 64 :=
.seq AllocBody387_438 AllocBody387_521

def AllocBody387_523 : StackLang.HolProg 64 :=
.seq AllocBody387_437 AllocBody387_522

def AllocBody387_524 : StackLang.HolProg 64 :=
.seq AllocBody387_436 AllocBody387_523

def AllocBody387_525 : StackLang.HolProg 64 :=
.seq AllocBody387_435 AllocBody387_524

def AllocBody387_526 : StackLang.HolProg 64 :=
.seq AllocBody387_434 AllocBody387_525

def AllocBody387_527 : StackLang.HolProg 64 :=
.seq AllocBody387_433 AllocBody387_526

def AllocBody387_528 : StackLang.HolProg 64 :=
.seq AllocBody387_432 AllocBody387_527

def AllocBody387_529 : StackLang.HolProg 64 :=
.seq AllocBody387_431 AllocBody387_528

def AllocBody387_530 : StackLang.HolProg 64 :=
.seq AllocBody387_430 AllocBody387_529

def AllocBody387_531 : StackLang.HolProg 64 :=
.seq AllocBody387_429 AllocBody387_530

def AllocBody387_532 : StackLang.HolProg 64 :=
.seq AllocBody387_386 AllocBody387_531

def AllocBody387_533 : StackLang.HolProg 64 :=
.seq AllocBody387_385 AllocBody387_532

def AllocBody387_534 : StackLang.HolProg 64 :=
.seq AllocBody387_384 AllocBody387_533

def AllocBody387_535 : StackLang.HolProg 64 :=
.seq AllocBody387_383 AllocBody387_534

def AllocBody387_536 : StackLang.HolProg 64 :=
.seq AllocBody387_382 AllocBody387_535

def AllocBody387_537 : StackLang.HolProg 64 :=
.seq AllocBody387_381 AllocBody387_536

def AllocBody387_538 : StackLang.HolProg 64 :=
.seq AllocBody387_380 AllocBody387_537

def AllocBody387_539 : StackLang.HolProg 64 :=
.seq AllocBody387_379 AllocBody387_538

def AllocBody387_540 : StackLang.HolProg 64 :=
.seq AllocBody387_378 AllocBody387_539

def AllocBody387_541 : StackLang.HolProg 64 :=
.seq AllocBody387_377 AllocBody387_540

def AllocBody387_542 : StackLang.HolProg 64 :=
.seq AllocBody387_376 AllocBody387_541

def AllocBody387_543 : StackLang.HolProg 64 :=
.seq AllocBody387_375 AllocBody387_542

def AllocBody387_544 : StackLang.HolProg 64 :=
.seq AllocBody387_332 AllocBody387_543

def AllocBody387_545 : StackLang.HolProg 64 :=
.seq AllocBody387_331 AllocBody387_544

def AllocBody387_546 : StackLang.HolProg 64 :=
.seq AllocBody387_330 AllocBody387_545

def AllocBody387_547 : StackLang.HolProg 64 :=
.seq AllocBody387_329 AllocBody387_546

def AllocBody387_548 : StackLang.HolProg 64 :=
.seq AllocBody387_328 AllocBody387_547

def AllocBody387_549 : StackLang.HolProg 64 :=
.seq AllocBody387_327 AllocBody387_548

def AllocBody387_550 : StackLang.HolProg 64 :=
.seq AllocBody387_326 AllocBody387_549

def AllocBody387_551 : StackLang.HolProg 64 :=
.seq AllocBody387_325 AllocBody387_550

def AllocBody387_552 : StackLang.HolProg 64 :=
.seq AllocBody387_324 AllocBody387_551

def AllocBody387_553 : StackLang.HolProg 64 :=
.seq AllocBody387_323 AllocBody387_552

def AllocBody387_554 : StackLang.HolProg 64 :=
.seq AllocBody387_322 AllocBody387_553

def AllocBody387_555 : StackLang.HolProg 64 :=
.seq AllocBody387_321 AllocBody387_554

def AllocBody387_556 : StackLang.HolProg 64 :=
.seq AllocBody387_278 AllocBody387_555

def AllocBody387_557 : StackLang.HolProg 64 :=
.seq AllocBody387_277 AllocBody387_556

def AllocBody387_558 : StackLang.HolProg 64 :=
.seq AllocBody387_276 AllocBody387_557

def AllocBody387_559 : StackLang.HolProg 64 :=
.seq AllocBody387_275 AllocBody387_558

def AllocBody387_560 : StackLang.HolProg 64 :=
.seq AllocBody387_274 AllocBody387_559

def AllocBody387_561 : StackLang.HolProg 64 :=
.seq AllocBody387_273 AllocBody387_560

def AllocBody387_562 : StackLang.HolProg 64 :=
.seq AllocBody387_272 AllocBody387_561

def AllocBody387_563 : StackLang.HolProg 64 :=
.seq AllocBody387_271 AllocBody387_562

def AllocBody387_564 : StackLang.HolProg 64 :=
.seq AllocBody387_270 AllocBody387_563

def AllocBody387_565 : StackLang.HolProg 64 :=
.seq AllocBody387_269 AllocBody387_564

def AllocBody387_566 : StackLang.HolProg 64 :=
.seq AllocBody387_268 AllocBody387_565

def AllocBody387_567 : StackLang.HolProg 64 :=
.seq AllocBody387_267 AllocBody387_566

def AllocBody387_568 : StackLang.HolProg 64 :=
.seq AllocBody387_224 AllocBody387_567

def AllocBody387_569 : StackLang.HolProg 64 :=
.seq AllocBody387_223 AllocBody387_568

def AllocBody387_570 : StackLang.HolProg 64 :=
.seq AllocBody387_222 AllocBody387_569

def AllocBody387_571 : StackLang.HolProg 64 :=
.seq AllocBody387_221 AllocBody387_570

def AllocBody387_572 : StackLang.HolProg 64 :=
.seq AllocBody387_220 AllocBody387_571

def AllocBody387_573 : StackLang.HolProg 64 :=
.seq AllocBody387_219 AllocBody387_572

def AllocBody387_574 : StackLang.HolProg 64 :=
.seq AllocBody387_218 AllocBody387_573

def AllocBody387_575 : StackLang.HolProg 64 :=
.seq AllocBody387_217 AllocBody387_574

def AllocBody387_576 : StackLang.HolProg 64 :=
.seq AllocBody387_216 AllocBody387_575

def AllocBody387_577 : StackLang.HolProg 64 :=
.seq AllocBody387_215 AllocBody387_576

def AllocBody387_578 : StackLang.HolProg 64 :=
.seq AllocBody387_214 AllocBody387_577

def AllocBody387_579 : StackLang.HolProg 64 :=
.seq AllocBody387_213 AllocBody387_578

def AllocBody387_580 : StackLang.HolProg 64 :=
.seq AllocBody387_170 AllocBody387_579

def AllocBody387_581 : StackLang.HolProg 64 :=
.seq AllocBody387_169 AllocBody387_580

def AllocBody387_582 : StackLang.HolProg 64 :=
.seq AllocBody387_168 AllocBody387_581

def AllocBody387_583 : StackLang.HolProg 64 :=
.seq AllocBody387_167 AllocBody387_582

def AllocBody387_584 : StackLang.HolProg 64 :=
.seq AllocBody387_166 AllocBody387_583

def AllocBody387_585 : StackLang.HolProg 64 :=
.seq AllocBody387_165 AllocBody387_584

def AllocBody387_586 : StackLang.HolProg 64 :=
.seq AllocBody387_164 AllocBody387_585

def AllocBody387_587 : StackLang.HolProg 64 :=
.seq AllocBody387_163 AllocBody387_586

def AllocBody387_588 : StackLang.HolProg 64 :=
.seq AllocBody387_162 AllocBody387_587

def AllocBody387_589 : StackLang.HolProg 64 :=
.seq AllocBody387_161 AllocBody387_588

def AllocBody387_590 : StackLang.HolProg 64 :=
.seq AllocBody387_160 AllocBody387_589

def AllocBody387_591 : StackLang.HolProg 64 :=
.seq AllocBody387_159 AllocBody387_590

def AllocBody387_592 : StackLang.HolProg 64 :=
.seq AllocBody387_116 AllocBody387_591

def AllocBody387_593 : StackLang.HolProg 64 :=
.seq AllocBody387_115 AllocBody387_592

def AllocBody387_594 : StackLang.HolProg 64 :=
.seq AllocBody387_114 AllocBody387_593

def AllocBody387_595 : StackLang.HolProg 64 :=
.seq AllocBody387_113 AllocBody387_594

def AllocBody387_596 : StackLang.HolProg 64 :=
.seq AllocBody387_112 AllocBody387_595

def AllocBody387_597 : StackLang.HolProg 64 :=
.seq AllocBody387_111 AllocBody387_596

def AllocBody387_598 : StackLang.HolProg 64 :=
.seq AllocBody387_110 AllocBody387_597

def AllocBody387_599 : StackLang.HolProg 64 :=
.seq AllocBody387_109 AllocBody387_598

def AllocBody387_600 : StackLang.HolProg 64 :=
.seq AllocBody387_108 AllocBody387_599

def AllocBody387_601 : StackLang.HolProg 64 :=
.seq AllocBody387_107 AllocBody387_600

def AllocBody387_602 : StackLang.HolProg 64 :=
.seq AllocBody387_106 AllocBody387_601

def AllocBody387_603 : StackLang.HolProg 64 :=
.seq AllocBody387_105 AllocBody387_602

def AllocBody387_604 : StackLang.HolProg 64 :=
.seq AllocBody387_62 AllocBody387_603

def AllocBody387_605 : StackLang.HolProg 64 :=
.seq AllocBody387_61 AllocBody387_604

def AllocBody387_606 : StackLang.HolProg 64 :=
.seq AllocBody387_60 AllocBody387_605

def AllocBody387_607 : StackLang.HolProg 64 :=
.seq AllocBody387_59 AllocBody387_606

def AllocBody387_608 : StackLang.HolProg 64 :=
.seq AllocBody387_58 AllocBody387_607

def AllocBody387_609 : StackLang.HolProg 64 :=
.seq AllocBody387_57 AllocBody387_608

def AllocBody387_610 : StackLang.HolProg 64 :=
.seq AllocBody387_56 AllocBody387_609

def AllocBody387_611 : StackLang.HolProg 64 :=
.seq AllocBody387_55 AllocBody387_610

def AllocBody387_612 : StackLang.HolProg 64 :=
.seq AllocBody387_54 AllocBody387_611

def AllocBody387_613 : StackLang.HolProg 64 :=
.seq AllocBody387_53 AllocBody387_612

def AllocBody387_614 : StackLang.HolProg 64 :=
.seq AllocBody387_52 AllocBody387_613

def AllocBody387_615 : StackLang.HolProg 64 :=
.seq AllocBody387_51 AllocBody387_614

def AllocBody387_616 : StackLang.HolProg 64 :=
.seq AllocBody387_50 AllocBody387_615

def AllocBody387_617 : StackLang.HolProg 64 :=
.seq AllocBody387_49 AllocBody387_616

def AllocBody387_618 : StackLang.HolProg 64 :=
.seq AllocBody387_48 AllocBody387_617

def AllocBody387_619 : StackLang.HolProg 64 :=
.seq AllocBody387_47 AllocBody387_618

def AllocBody387_620 : StackLang.HolProg 64 :=
.seq AllocBody387_46 AllocBody387_619

def AllocBody387_621 : StackLang.HolProg 64 :=
.seq AllocBody387_3 AllocBody387_620

def AllocBody387_622 : StackLang.HolProg 64 :=
.seq AllocBody387_2 AllocBody387_621

def AllocBody387_623 : StackLang.HolProg 64 :=
.seq AllocBody387_1 AllocBody387_622

def AllocBody387_624 : StackLang.HolProg 64 :=
.seq AllocBody387_0 AllocBody387_623

def Alloc387 : Nat × StackLang.HolProg 64 := (387, AllocBody387_624)
theorem Alloc387_eq : StackAlloc.progComp (387, raw387) = Alloc387 := by
  kernel_rfl
#print axioms Alloc387_eq
end InitECandidate.Proofs.BackendStages
