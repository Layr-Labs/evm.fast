import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function387
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody387_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody387_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 72#64)

def rawBody387_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody387_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1148#64)

def rawBody387_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_7 : StackLang.HolProg 64 :=
.seq rawBody387_5 rawBody387_6

def rawBody387_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 3

def rawBody387_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_18 : StackLang.HolProg 64 :=
.seq rawBody387_16 rawBody387_17

def rawBody387_19 : StackLang.HolProg 64 :=
.seq rawBody387_15 rawBody387_18

def rawBody387_20 : StackLang.HolProg 64 :=
.seq rawBody387_14 rawBody387_19

def rawBody387_21 : StackLang.HolProg 64 :=
.seq rawBody387_13 rawBody387_20

def rawBody387_22 : StackLang.HolProg 64 :=
.seq rawBody387_12 rawBody387_21

def rawBody387_23 : StackLang.HolProg 64 :=
.seq rawBody387_11 rawBody387_22

def rawBody387_24 : StackLang.HolProg 64 :=
.seq rawBody387_10 rawBody387_23

def rawBody387_25 : StackLang.HolProg 64 :=
.seq rawBody387_9 rawBody387_24

def rawBody387_26 : StackLang.HolProg 64 :=
.seq rawBody387_8 rawBody387_25

def rawBody387_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_34 : StackLang.HolProg 64 :=
.seq rawBody387_32 rawBody387_33

def rawBody387_35 : StackLang.HolProg 64 :=
.seq rawBody387_31 rawBody387_34

def rawBody387_36 : StackLang.HolProg 64 :=
.seq rawBody387_30 rawBody387_35

def rawBody387_37 : StackLang.HolProg 64 :=
.seq rawBody387_29 rawBody387_36

def rawBody387_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_40 : StackLang.HolProg 64 :=
.seq rawBody387_38 rawBody387_39

def rawBody387_41 : StackLang.HolProg 64 :=
.call (some (rawBody387_37, 0, 387, 2)) (Sum.inl 68) (some (rawBody387_40, 387, 3))

def rawBody387_42 : StackLang.HolProg 64 :=
.seq rawBody387_28 rawBody387_41

def rawBody387_43 : StackLang.HolProg 64 :=
.seq rawBody387_27 rawBody387_42

def rawBody387_44 : StackLang.HolProg 64 :=
.seq rawBody387_26 rawBody387_43

def rawBody387_45 : StackLang.HolProg 64 :=
.seq rawBody387_7 rawBody387_44

def rawBody387_46 : StackLang.HolProg 64 :=
.seq rawBody387_4 rawBody387_45

def rawBody387_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody387_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551432#64)))

def rawBody387_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def rawBody387_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def rawBody387_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody387_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def rawBody387_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1149#64)

def rawBody387_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_66 : StackLang.HolProg 64 :=
.seq rawBody387_64 rawBody387_65

def rawBody387_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 5

def rawBody387_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_77 : StackLang.HolProg 64 :=
.seq rawBody387_75 rawBody387_76

def rawBody387_78 : StackLang.HolProg 64 :=
.seq rawBody387_74 rawBody387_77

def rawBody387_79 : StackLang.HolProg 64 :=
.seq rawBody387_73 rawBody387_78

def rawBody387_80 : StackLang.HolProg 64 :=
.seq rawBody387_72 rawBody387_79

def rawBody387_81 : StackLang.HolProg 64 :=
.seq rawBody387_71 rawBody387_80

def rawBody387_82 : StackLang.HolProg 64 :=
.seq rawBody387_70 rawBody387_81

def rawBody387_83 : StackLang.HolProg 64 :=
.seq rawBody387_69 rawBody387_82

def rawBody387_84 : StackLang.HolProg 64 :=
.seq rawBody387_68 rawBody387_83

def rawBody387_85 : StackLang.HolProg 64 :=
.seq rawBody387_67 rawBody387_84

def rawBody387_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_93 : StackLang.HolProg 64 :=
.seq rawBody387_91 rawBody387_92

def rawBody387_94 : StackLang.HolProg 64 :=
.seq rawBody387_90 rawBody387_93

def rawBody387_95 : StackLang.HolProg 64 :=
.seq rawBody387_89 rawBody387_94

def rawBody387_96 : StackLang.HolProg 64 :=
.seq rawBody387_88 rawBody387_95

def rawBody387_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_99 : StackLang.HolProg 64 :=
.seq rawBody387_97 rawBody387_98

def rawBody387_100 : StackLang.HolProg 64 :=
.call (some (rawBody387_96, 0, 387, 4)) (Sum.inl 182) (some (rawBody387_99, 387, 5))

def rawBody387_101 : StackLang.HolProg 64 :=
.seq rawBody387_87 rawBody387_100

def rawBody387_102 : StackLang.HolProg 64 :=
.seq rawBody387_86 rawBody387_101

def rawBody387_103 : StackLang.HolProg 64 :=
.seq rawBody387_85 rawBody387_102

def rawBody387_104 : StackLang.HolProg 64 :=
.seq rawBody387_66 rawBody387_103

def rawBody387_105 : StackLang.HolProg 64 :=
.seq rawBody387_63 rawBody387_104

def rawBody387_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody387_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody387_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody387_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody387_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def rawBody387_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1150#64)

def rawBody387_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_120 : StackLang.HolProg 64 :=
.seq rawBody387_118 rawBody387_119

def rawBody387_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 7

def rawBody387_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_131 : StackLang.HolProg 64 :=
.seq rawBody387_129 rawBody387_130

def rawBody387_132 : StackLang.HolProg 64 :=
.seq rawBody387_128 rawBody387_131

def rawBody387_133 : StackLang.HolProg 64 :=
.seq rawBody387_127 rawBody387_132

def rawBody387_134 : StackLang.HolProg 64 :=
.seq rawBody387_126 rawBody387_133

def rawBody387_135 : StackLang.HolProg 64 :=
.seq rawBody387_125 rawBody387_134

def rawBody387_136 : StackLang.HolProg 64 :=
.seq rawBody387_124 rawBody387_135

def rawBody387_137 : StackLang.HolProg 64 :=
.seq rawBody387_123 rawBody387_136

def rawBody387_138 : StackLang.HolProg 64 :=
.seq rawBody387_122 rawBody387_137

def rawBody387_139 : StackLang.HolProg 64 :=
.seq rawBody387_121 rawBody387_138

def rawBody387_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_147 : StackLang.HolProg 64 :=
.seq rawBody387_145 rawBody387_146

def rawBody387_148 : StackLang.HolProg 64 :=
.seq rawBody387_144 rawBody387_147

def rawBody387_149 : StackLang.HolProg 64 :=
.seq rawBody387_143 rawBody387_148

def rawBody387_150 : StackLang.HolProg 64 :=
.seq rawBody387_142 rawBody387_149

def rawBody387_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_152 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_153 : StackLang.HolProg 64 :=
.seq rawBody387_151 rawBody387_152

def rawBody387_154 : StackLang.HolProg 64 :=
.call (some (rawBody387_150, 0, 387, 6)) (Sum.inl 182) (some (rawBody387_153, 387, 7))

def rawBody387_155 : StackLang.HolProg 64 :=
.seq rawBody387_141 rawBody387_154

def rawBody387_156 : StackLang.HolProg 64 :=
.seq rawBody387_140 rawBody387_155

def rawBody387_157 : StackLang.HolProg 64 :=
.seq rawBody387_139 rawBody387_156

def rawBody387_158 : StackLang.HolProg 64 :=
.seq rawBody387_120 rawBody387_157

def rawBody387_159 : StackLang.HolProg 64 :=
.seq rawBody387_117 rawBody387_158

def rawBody387_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody387_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody387_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody387_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody387_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def rawBody387_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1151#64)

def rawBody387_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_174 : StackLang.HolProg 64 :=
.seq rawBody387_172 rawBody387_173

def rawBody387_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 9

def rawBody387_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_185 : StackLang.HolProg 64 :=
.seq rawBody387_183 rawBody387_184

def rawBody387_186 : StackLang.HolProg 64 :=
.seq rawBody387_182 rawBody387_185

def rawBody387_187 : StackLang.HolProg 64 :=
.seq rawBody387_181 rawBody387_186

def rawBody387_188 : StackLang.HolProg 64 :=
.seq rawBody387_180 rawBody387_187

def rawBody387_189 : StackLang.HolProg 64 :=
.seq rawBody387_179 rawBody387_188

def rawBody387_190 : StackLang.HolProg 64 :=
.seq rawBody387_178 rawBody387_189

def rawBody387_191 : StackLang.HolProg 64 :=
.seq rawBody387_177 rawBody387_190

def rawBody387_192 : StackLang.HolProg 64 :=
.seq rawBody387_176 rawBody387_191

def rawBody387_193 : StackLang.HolProg 64 :=
.seq rawBody387_175 rawBody387_192

def rawBody387_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_201 : StackLang.HolProg 64 :=
.seq rawBody387_199 rawBody387_200

def rawBody387_202 : StackLang.HolProg 64 :=
.seq rawBody387_198 rawBody387_201

def rawBody387_203 : StackLang.HolProg 64 :=
.seq rawBody387_197 rawBody387_202

def rawBody387_204 : StackLang.HolProg 64 :=
.seq rawBody387_196 rawBody387_203

def rawBody387_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_207 : StackLang.HolProg 64 :=
.seq rawBody387_205 rawBody387_206

def rawBody387_208 : StackLang.HolProg 64 :=
.call (some (rawBody387_204, 0, 387, 8)) (Sum.inl 182) (some (rawBody387_207, 387, 9))

def rawBody387_209 : StackLang.HolProg 64 :=
.seq rawBody387_195 rawBody387_208

def rawBody387_210 : StackLang.HolProg 64 :=
.seq rawBody387_194 rawBody387_209

def rawBody387_211 : StackLang.HolProg 64 :=
.seq rawBody387_193 rawBody387_210

def rawBody387_212 : StackLang.HolProg 64 :=
.seq rawBody387_174 rawBody387_211

def rawBody387_213 : StackLang.HolProg 64 :=
.seq rawBody387_171 rawBody387_212

def rawBody387_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody387_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody387_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody387_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody387_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def rawBody387_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1152#64)

def rawBody387_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_228 : StackLang.HolProg 64 :=
.seq rawBody387_226 rawBody387_227

def rawBody387_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 11

def rawBody387_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_239 : StackLang.HolProg 64 :=
.seq rawBody387_237 rawBody387_238

def rawBody387_240 : StackLang.HolProg 64 :=
.seq rawBody387_236 rawBody387_239

def rawBody387_241 : StackLang.HolProg 64 :=
.seq rawBody387_235 rawBody387_240

def rawBody387_242 : StackLang.HolProg 64 :=
.seq rawBody387_234 rawBody387_241

def rawBody387_243 : StackLang.HolProg 64 :=
.seq rawBody387_233 rawBody387_242

def rawBody387_244 : StackLang.HolProg 64 :=
.seq rawBody387_232 rawBody387_243

def rawBody387_245 : StackLang.HolProg 64 :=
.seq rawBody387_231 rawBody387_244

def rawBody387_246 : StackLang.HolProg 64 :=
.seq rawBody387_230 rawBody387_245

def rawBody387_247 : StackLang.HolProg 64 :=
.seq rawBody387_229 rawBody387_246

def rawBody387_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_255 : StackLang.HolProg 64 :=
.seq rawBody387_253 rawBody387_254

def rawBody387_256 : StackLang.HolProg 64 :=
.seq rawBody387_252 rawBody387_255

def rawBody387_257 : StackLang.HolProg 64 :=
.seq rawBody387_251 rawBody387_256

def rawBody387_258 : StackLang.HolProg 64 :=
.seq rawBody387_250 rawBody387_257

def rawBody387_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_260 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_261 : StackLang.HolProg 64 :=
.seq rawBody387_259 rawBody387_260

def rawBody387_262 : StackLang.HolProg 64 :=
.call (some (rawBody387_258, 0, 387, 10)) (Sum.inl 182) (some (rawBody387_261, 387, 11))

def rawBody387_263 : StackLang.HolProg 64 :=
.seq rawBody387_249 rawBody387_262

def rawBody387_264 : StackLang.HolProg 64 :=
.seq rawBody387_248 rawBody387_263

def rawBody387_265 : StackLang.HolProg 64 :=
.seq rawBody387_247 rawBody387_264

def rawBody387_266 : StackLang.HolProg 64 :=
.seq rawBody387_228 rawBody387_265

def rawBody387_267 : StackLang.HolProg 64 :=
.seq rawBody387_225 rawBody387_266

def rawBody387_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody387_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody387_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody387_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody387_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def rawBody387_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1153#64)

def rawBody387_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_282 : StackLang.HolProg 64 :=
.seq rawBody387_280 rawBody387_281

def rawBody387_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 13

def rawBody387_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_293 : StackLang.HolProg 64 :=
.seq rawBody387_291 rawBody387_292

def rawBody387_294 : StackLang.HolProg 64 :=
.seq rawBody387_290 rawBody387_293

def rawBody387_295 : StackLang.HolProg 64 :=
.seq rawBody387_289 rawBody387_294

def rawBody387_296 : StackLang.HolProg 64 :=
.seq rawBody387_288 rawBody387_295

def rawBody387_297 : StackLang.HolProg 64 :=
.seq rawBody387_287 rawBody387_296

def rawBody387_298 : StackLang.HolProg 64 :=
.seq rawBody387_286 rawBody387_297

def rawBody387_299 : StackLang.HolProg 64 :=
.seq rawBody387_285 rawBody387_298

def rawBody387_300 : StackLang.HolProg 64 :=
.seq rawBody387_284 rawBody387_299

def rawBody387_301 : StackLang.HolProg 64 :=
.seq rawBody387_283 rawBody387_300

def rawBody387_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_309 : StackLang.HolProg 64 :=
.seq rawBody387_307 rawBody387_308

def rawBody387_310 : StackLang.HolProg 64 :=
.seq rawBody387_306 rawBody387_309

def rawBody387_311 : StackLang.HolProg 64 :=
.seq rawBody387_305 rawBody387_310

def rawBody387_312 : StackLang.HolProg 64 :=
.seq rawBody387_304 rawBody387_311

def rawBody387_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_314 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_315 : StackLang.HolProg 64 :=
.seq rawBody387_313 rawBody387_314

def rawBody387_316 : StackLang.HolProg 64 :=
.call (some (rawBody387_312, 0, 387, 12)) (Sum.inl 182) (some (rawBody387_315, 387, 13))

def rawBody387_317 : StackLang.HolProg 64 :=
.seq rawBody387_303 rawBody387_316

def rawBody387_318 : StackLang.HolProg 64 :=
.seq rawBody387_302 rawBody387_317

def rawBody387_319 : StackLang.HolProg 64 :=
.seq rawBody387_301 rawBody387_318

def rawBody387_320 : StackLang.HolProg 64 :=
.seq rawBody387_282 rawBody387_319

def rawBody387_321 : StackLang.HolProg 64 :=
.seq rawBody387_279 rawBody387_320

def rawBody387_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody387_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody387_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody387_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody387_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody387_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1154#64)

def rawBody387_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_336 : StackLang.HolProg 64 :=
.seq rawBody387_334 rawBody387_335

def rawBody387_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 15

def rawBody387_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_347 : StackLang.HolProg 64 :=
.seq rawBody387_345 rawBody387_346

def rawBody387_348 : StackLang.HolProg 64 :=
.seq rawBody387_344 rawBody387_347

def rawBody387_349 : StackLang.HolProg 64 :=
.seq rawBody387_343 rawBody387_348

def rawBody387_350 : StackLang.HolProg 64 :=
.seq rawBody387_342 rawBody387_349

def rawBody387_351 : StackLang.HolProg 64 :=
.seq rawBody387_341 rawBody387_350

def rawBody387_352 : StackLang.HolProg 64 :=
.seq rawBody387_340 rawBody387_351

def rawBody387_353 : StackLang.HolProg 64 :=
.seq rawBody387_339 rawBody387_352

def rawBody387_354 : StackLang.HolProg 64 :=
.seq rawBody387_338 rawBody387_353

def rawBody387_355 : StackLang.HolProg 64 :=
.seq rawBody387_337 rawBody387_354

def rawBody387_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_363 : StackLang.HolProg 64 :=
.seq rawBody387_361 rawBody387_362

def rawBody387_364 : StackLang.HolProg 64 :=
.seq rawBody387_360 rawBody387_363

def rawBody387_365 : StackLang.HolProg 64 :=
.seq rawBody387_359 rawBody387_364

def rawBody387_366 : StackLang.HolProg 64 :=
.seq rawBody387_358 rawBody387_365

def rawBody387_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_368 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_369 : StackLang.HolProg 64 :=
.seq rawBody387_367 rawBody387_368

def rawBody387_370 : StackLang.HolProg 64 :=
.call (some (rawBody387_366, 0, 387, 14)) (Sum.inl 182) (some (rawBody387_369, 387, 15))

def rawBody387_371 : StackLang.HolProg 64 :=
.seq rawBody387_357 rawBody387_370

def rawBody387_372 : StackLang.HolProg 64 :=
.seq rawBody387_356 rawBody387_371

def rawBody387_373 : StackLang.HolProg 64 :=
.seq rawBody387_355 rawBody387_372

def rawBody387_374 : StackLang.HolProg 64 :=
.seq rawBody387_336 rawBody387_373

def rawBody387_375 : StackLang.HolProg 64 :=
.seq rawBody387_333 rawBody387_374

def rawBody387_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody387_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody387_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody387_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody387_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def rawBody387_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1155#64)

def rawBody387_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_390 : StackLang.HolProg 64 :=
.seq rawBody387_388 rawBody387_389

def rawBody387_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 17

def rawBody387_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_401 : StackLang.HolProg 64 :=
.seq rawBody387_399 rawBody387_400

def rawBody387_402 : StackLang.HolProg 64 :=
.seq rawBody387_398 rawBody387_401

def rawBody387_403 : StackLang.HolProg 64 :=
.seq rawBody387_397 rawBody387_402

def rawBody387_404 : StackLang.HolProg 64 :=
.seq rawBody387_396 rawBody387_403

def rawBody387_405 : StackLang.HolProg 64 :=
.seq rawBody387_395 rawBody387_404

def rawBody387_406 : StackLang.HolProg 64 :=
.seq rawBody387_394 rawBody387_405

def rawBody387_407 : StackLang.HolProg 64 :=
.seq rawBody387_393 rawBody387_406

def rawBody387_408 : StackLang.HolProg 64 :=
.seq rawBody387_392 rawBody387_407

def rawBody387_409 : StackLang.HolProg 64 :=
.seq rawBody387_391 rawBody387_408

def rawBody387_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_417 : StackLang.HolProg 64 :=
.seq rawBody387_415 rawBody387_416

def rawBody387_418 : StackLang.HolProg 64 :=
.seq rawBody387_414 rawBody387_417

def rawBody387_419 : StackLang.HolProg 64 :=
.seq rawBody387_413 rawBody387_418

def rawBody387_420 : StackLang.HolProg 64 :=
.seq rawBody387_412 rawBody387_419

def rawBody387_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_422 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_423 : StackLang.HolProg 64 :=
.seq rawBody387_421 rawBody387_422

def rawBody387_424 : StackLang.HolProg 64 :=
.call (some (rawBody387_420, 0, 387, 16)) (Sum.inl 182) (some (rawBody387_423, 387, 17))

def rawBody387_425 : StackLang.HolProg 64 :=
.seq rawBody387_411 rawBody387_424

def rawBody387_426 : StackLang.HolProg 64 :=
.seq rawBody387_410 rawBody387_425

def rawBody387_427 : StackLang.HolProg 64 :=
.seq rawBody387_409 rawBody387_426

def rawBody387_428 : StackLang.HolProg 64 :=
.seq rawBody387_390 rawBody387_427

def rawBody387_429 : StackLang.HolProg 64 :=
.seq rawBody387_387 rawBody387_428

def rawBody387_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody387_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody387_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def rawBody387_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody387_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 52#64)

def rawBody387_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1156#64)

def rawBody387_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_444 : StackLang.HolProg 64 :=
.seq rawBody387_442 rawBody387_443

def rawBody387_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody387_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody387_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody387_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 387 19

def rawBody387_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody387_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody387_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody387_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody387_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_455 : StackLang.HolProg 64 :=
.seq rawBody387_453 rawBody387_454

def rawBody387_456 : StackLang.HolProg 64 :=
.seq rawBody387_452 rawBody387_455

def rawBody387_457 : StackLang.HolProg 64 :=
.seq rawBody387_451 rawBody387_456

def rawBody387_458 : StackLang.HolProg 64 :=
.seq rawBody387_450 rawBody387_457

def rawBody387_459 : StackLang.HolProg 64 :=
.seq rawBody387_449 rawBody387_458

def rawBody387_460 : StackLang.HolProg 64 :=
.seq rawBody387_448 rawBody387_459

def rawBody387_461 : StackLang.HolProg 64 :=
.seq rawBody387_447 rawBody387_460

def rawBody387_462 : StackLang.HolProg 64 :=
.seq rawBody387_446 rawBody387_461

def rawBody387_463 : StackLang.HolProg 64 :=
.seq rawBody387_445 rawBody387_462

def rawBody387_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody387_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody387_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody387_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody387_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody387_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody387_472 : StackLang.HolProg 64 :=
.seq rawBody387_470 rawBody387_471

def rawBody387_473 : StackLang.HolProg 64 :=
.seq rawBody387_469 rawBody387_472

def rawBody387_474 : StackLang.HolProg 64 :=
.seq rawBody387_468 rawBody387_473

def rawBody387_475 : StackLang.HolProg 64 :=
.seq rawBody387_467 rawBody387_474

def rawBody387_476 : StackLang.HolProg 64 :=
.seq rawBody387_466 rawBody387_475

def rawBody387_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody387_478 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody387_479 : StackLang.HolProg 64 :=
.seq rawBody387_477 rawBody387_478

def rawBody387_480 : StackLang.HolProg 64 :=
.call (some (rawBody387_476, 0, 387, 18)) (Sum.inl 182) (some (rawBody387_479, 387, 19))

def rawBody387_481 : StackLang.HolProg 64 :=
.seq rawBody387_465 rawBody387_480

def rawBody387_482 : StackLang.HolProg 64 :=
.seq rawBody387_464 rawBody387_481

def rawBody387_483 : StackLang.HolProg 64 :=
.seq rawBody387_463 rawBody387_482

def rawBody387_484 : StackLang.HolProg 64 :=
.seq rawBody387_444 rawBody387_483

def rawBody387_485 : StackLang.HolProg 64 :=
.seq rawBody387_441 rawBody387_484

def rawBody387_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody387_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody387_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody387_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody387_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def rawBody387_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody387_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody387_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def rawBody387_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody387_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody387_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody387_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody387_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody387_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody387_503 : StackLang.HolProg 64 :=
.seq rawBody387_501 rawBody387_502

def rawBody387_504 : StackLang.HolProg 64 :=
.seq rawBody387_500 rawBody387_503

def rawBody387_505 : StackLang.HolProg 64 :=
.seq rawBody387_499 rawBody387_504

def rawBody387_506 : StackLang.HolProg 64 :=
.seq rawBody387_498 rawBody387_505

def rawBody387_507 : StackLang.HolProg 64 :=
.seq rawBody387_497 rawBody387_506

def rawBody387_508 : StackLang.HolProg 64 :=
.seq rawBody387_496 rawBody387_507

def rawBody387_509 : StackLang.HolProg 64 :=
.seq rawBody387_495 rawBody387_508

def rawBody387_510 : StackLang.HolProg 64 :=
.seq rawBody387_494 rawBody387_509

def rawBody387_511 : StackLang.HolProg 64 :=
.seq rawBody387_493 rawBody387_510

def rawBody387_512 : StackLang.HolProg 64 :=
.seq rawBody387_492 rawBody387_511

def rawBody387_513 : StackLang.HolProg 64 :=
.seq rawBody387_491 rawBody387_512

def rawBody387_514 : StackLang.HolProg 64 :=
.seq rawBody387_490 rawBody387_513

def rawBody387_515 : StackLang.HolProg 64 :=
.seq rawBody387_489 rawBody387_514

def rawBody387_516 : StackLang.HolProg 64 :=
.seq rawBody387_488 rawBody387_515

def rawBody387_517 : StackLang.HolProg 64 :=
.seq rawBody387_487 rawBody387_516

def rawBody387_518 : StackLang.HolProg 64 :=
.seq rawBody387_486 rawBody387_517

def rawBody387_519 : StackLang.HolProg 64 :=
.seq rawBody387_485 rawBody387_518

def rawBody387_520 : StackLang.HolProg 64 :=
.seq rawBody387_440 rawBody387_519

def rawBody387_521 : StackLang.HolProg 64 :=
.seq rawBody387_439 rawBody387_520

def rawBody387_522 : StackLang.HolProg 64 :=
.seq rawBody387_438 rawBody387_521

def rawBody387_523 : StackLang.HolProg 64 :=
.seq rawBody387_437 rawBody387_522

def rawBody387_524 : StackLang.HolProg 64 :=
.seq rawBody387_436 rawBody387_523

def rawBody387_525 : StackLang.HolProg 64 :=
.seq rawBody387_435 rawBody387_524

def rawBody387_526 : StackLang.HolProg 64 :=
.seq rawBody387_434 rawBody387_525

def rawBody387_527 : StackLang.HolProg 64 :=
.seq rawBody387_433 rawBody387_526

def rawBody387_528 : StackLang.HolProg 64 :=
.seq rawBody387_432 rawBody387_527

def rawBody387_529 : StackLang.HolProg 64 :=
.seq rawBody387_431 rawBody387_528

def rawBody387_530 : StackLang.HolProg 64 :=
.seq rawBody387_430 rawBody387_529

def rawBody387_531 : StackLang.HolProg 64 :=
.seq rawBody387_429 rawBody387_530

def rawBody387_532 : StackLang.HolProg 64 :=
.seq rawBody387_386 rawBody387_531

def rawBody387_533 : StackLang.HolProg 64 :=
.seq rawBody387_385 rawBody387_532

def rawBody387_534 : StackLang.HolProg 64 :=
.seq rawBody387_384 rawBody387_533

def rawBody387_535 : StackLang.HolProg 64 :=
.seq rawBody387_383 rawBody387_534

def rawBody387_536 : StackLang.HolProg 64 :=
.seq rawBody387_382 rawBody387_535

def rawBody387_537 : StackLang.HolProg 64 :=
.seq rawBody387_381 rawBody387_536

def rawBody387_538 : StackLang.HolProg 64 :=
.seq rawBody387_380 rawBody387_537

def rawBody387_539 : StackLang.HolProg 64 :=
.seq rawBody387_379 rawBody387_538

def rawBody387_540 : StackLang.HolProg 64 :=
.seq rawBody387_378 rawBody387_539

def rawBody387_541 : StackLang.HolProg 64 :=
.seq rawBody387_377 rawBody387_540

def rawBody387_542 : StackLang.HolProg 64 :=
.seq rawBody387_376 rawBody387_541

def rawBody387_543 : StackLang.HolProg 64 :=
.seq rawBody387_375 rawBody387_542

def rawBody387_544 : StackLang.HolProg 64 :=
.seq rawBody387_332 rawBody387_543

def rawBody387_545 : StackLang.HolProg 64 :=
.seq rawBody387_331 rawBody387_544

def rawBody387_546 : StackLang.HolProg 64 :=
.seq rawBody387_330 rawBody387_545

def rawBody387_547 : StackLang.HolProg 64 :=
.seq rawBody387_329 rawBody387_546

def rawBody387_548 : StackLang.HolProg 64 :=
.seq rawBody387_328 rawBody387_547

def rawBody387_549 : StackLang.HolProg 64 :=
.seq rawBody387_327 rawBody387_548

def rawBody387_550 : StackLang.HolProg 64 :=
.seq rawBody387_326 rawBody387_549

def rawBody387_551 : StackLang.HolProg 64 :=
.seq rawBody387_325 rawBody387_550

def rawBody387_552 : StackLang.HolProg 64 :=
.seq rawBody387_324 rawBody387_551

def rawBody387_553 : StackLang.HolProg 64 :=
.seq rawBody387_323 rawBody387_552

def rawBody387_554 : StackLang.HolProg 64 :=
.seq rawBody387_322 rawBody387_553

def rawBody387_555 : StackLang.HolProg 64 :=
.seq rawBody387_321 rawBody387_554

def rawBody387_556 : StackLang.HolProg 64 :=
.seq rawBody387_278 rawBody387_555

def rawBody387_557 : StackLang.HolProg 64 :=
.seq rawBody387_277 rawBody387_556

def rawBody387_558 : StackLang.HolProg 64 :=
.seq rawBody387_276 rawBody387_557

def rawBody387_559 : StackLang.HolProg 64 :=
.seq rawBody387_275 rawBody387_558

def rawBody387_560 : StackLang.HolProg 64 :=
.seq rawBody387_274 rawBody387_559

def rawBody387_561 : StackLang.HolProg 64 :=
.seq rawBody387_273 rawBody387_560

def rawBody387_562 : StackLang.HolProg 64 :=
.seq rawBody387_272 rawBody387_561

def rawBody387_563 : StackLang.HolProg 64 :=
.seq rawBody387_271 rawBody387_562

def rawBody387_564 : StackLang.HolProg 64 :=
.seq rawBody387_270 rawBody387_563

def rawBody387_565 : StackLang.HolProg 64 :=
.seq rawBody387_269 rawBody387_564

def rawBody387_566 : StackLang.HolProg 64 :=
.seq rawBody387_268 rawBody387_565

def rawBody387_567 : StackLang.HolProg 64 :=
.seq rawBody387_267 rawBody387_566

def rawBody387_568 : StackLang.HolProg 64 :=
.seq rawBody387_224 rawBody387_567

def rawBody387_569 : StackLang.HolProg 64 :=
.seq rawBody387_223 rawBody387_568

def rawBody387_570 : StackLang.HolProg 64 :=
.seq rawBody387_222 rawBody387_569

def rawBody387_571 : StackLang.HolProg 64 :=
.seq rawBody387_221 rawBody387_570

def rawBody387_572 : StackLang.HolProg 64 :=
.seq rawBody387_220 rawBody387_571

def rawBody387_573 : StackLang.HolProg 64 :=
.seq rawBody387_219 rawBody387_572

def rawBody387_574 : StackLang.HolProg 64 :=
.seq rawBody387_218 rawBody387_573

def rawBody387_575 : StackLang.HolProg 64 :=
.seq rawBody387_217 rawBody387_574

def rawBody387_576 : StackLang.HolProg 64 :=
.seq rawBody387_216 rawBody387_575

def rawBody387_577 : StackLang.HolProg 64 :=
.seq rawBody387_215 rawBody387_576

def rawBody387_578 : StackLang.HolProg 64 :=
.seq rawBody387_214 rawBody387_577

def rawBody387_579 : StackLang.HolProg 64 :=
.seq rawBody387_213 rawBody387_578

def rawBody387_580 : StackLang.HolProg 64 :=
.seq rawBody387_170 rawBody387_579

def rawBody387_581 : StackLang.HolProg 64 :=
.seq rawBody387_169 rawBody387_580

def rawBody387_582 : StackLang.HolProg 64 :=
.seq rawBody387_168 rawBody387_581

def rawBody387_583 : StackLang.HolProg 64 :=
.seq rawBody387_167 rawBody387_582

def rawBody387_584 : StackLang.HolProg 64 :=
.seq rawBody387_166 rawBody387_583

def rawBody387_585 : StackLang.HolProg 64 :=
.seq rawBody387_165 rawBody387_584

def rawBody387_586 : StackLang.HolProg 64 :=
.seq rawBody387_164 rawBody387_585

def rawBody387_587 : StackLang.HolProg 64 :=
.seq rawBody387_163 rawBody387_586

def rawBody387_588 : StackLang.HolProg 64 :=
.seq rawBody387_162 rawBody387_587

def rawBody387_589 : StackLang.HolProg 64 :=
.seq rawBody387_161 rawBody387_588

def rawBody387_590 : StackLang.HolProg 64 :=
.seq rawBody387_160 rawBody387_589

def rawBody387_591 : StackLang.HolProg 64 :=
.seq rawBody387_159 rawBody387_590

def rawBody387_592 : StackLang.HolProg 64 :=
.seq rawBody387_116 rawBody387_591

def rawBody387_593 : StackLang.HolProg 64 :=
.seq rawBody387_115 rawBody387_592

def rawBody387_594 : StackLang.HolProg 64 :=
.seq rawBody387_114 rawBody387_593

def rawBody387_595 : StackLang.HolProg 64 :=
.seq rawBody387_113 rawBody387_594

def rawBody387_596 : StackLang.HolProg 64 :=
.seq rawBody387_112 rawBody387_595

def rawBody387_597 : StackLang.HolProg 64 :=
.seq rawBody387_111 rawBody387_596

def rawBody387_598 : StackLang.HolProg 64 :=
.seq rawBody387_110 rawBody387_597

def rawBody387_599 : StackLang.HolProg 64 :=
.seq rawBody387_109 rawBody387_598

def rawBody387_600 : StackLang.HolProg 64 :=
.seq rawBody387_108 rawBody387_599

def rawBody387_601 : StackLang.HolProg 64 :=
.seq rawBody387_107 rawBody387_600

def rawBody387_602 : StackLang.HolProg 64 :=
.seq rawBody387_106 rawBody387_601

def rawBody387_603 : StackLang.HolProg 64 :=
.seq rawBody387_105 rawBody387_602

def rawBody387_604 : StackLang.HolProg 64 :=
.seq rawBody387_62 rawBody387_603

def rawBody387_605 : StackLang.HolProg 64 :=
.seq rawBody387_61 rawBody387_604

def rawBody387_606 : StackLang.HolProg 64 :=
.seq rawBody387_60 rawBody387_605

def rawBody387_607 : StackLang.HolProg 64 :=
.seq rawBody387_59 rawBody387_606

def rawBody387_608 : StackLang.HolProg 64 :=
.seq rawBody387_58 rawBody387_607

def rawBody387_609 : StackLang.HolProg 64 :=
.seq rawBody387_57 rawBody387_608

def rawBody387_610 : StackLang.HolProg 64 :=
.seq rawBody387_56 rawBody387_609

def rawBody387_611 : StackLang.HolProg 64 :=
.seq rawBody387_55 rawBody387_610

def rawBody387_612 : StackLang.HolProg 64 :=
.seq rawBody387_54 rawBody387_611

def rawBody387_613 : StackLang.HolProg 64 :=
.seq rawBody387_53 rawBody387_612

def rawBody387_614 : StackLang.HolProg 64 :=
.seq rawBody387_52 rawBody387_613

def rawBody387_615 : StackLang.HolProg 64 :=
.seq rawBody387_51 rawBody387_614

def rawBody387_616 : StackLang.HolProg 64 :=
.seq rawBody387_50 rawBody387_615

def rawBody387_617 : StackLang.HolProg 64 :=
.seq rawBody387_49 rawBody387_616

def rawBody387_618 : StackLang.HolProg 64 :=
.seq rawBody387_48 rawBody387_617

def rawBody387_619 : StackLang.HolProg 64 :=
.seq rawBody387_47 rawBody387_618

def rawBody387_620 : StackLang.HolProg 64 :=
.seq rawBody387_46 rawBody387_619

def rawBody387_621 : StackLang.HolProg 64 :=
.seq rawBody387_3 rawBody387_620

def rawBody387_622 : StackLang.HolProg 64 :=
.seq rawBody387_2 rawBody387_621

def rawBody387_623 : StackLang.HolProg 64 :=
.seq rawBody387_1 rawBody387_622

def rawBody387_624 : StackLang.HolProg 64 :=
.seq rawBody387_0 rawBody387_623

def raw387 : StackLang.HolProg 64 := rawBody387_624
theorem raw387_eq : StackRawCall.compTop RawInfo.rawInfo (function387 (.list [])).1 = raw387 := by
  kernel_rfl
#print axioms raw387_eq
end InitECandidate.Proofs.BackendStages
