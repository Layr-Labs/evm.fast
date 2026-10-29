import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw438
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody438_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody438_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody438_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def AllocBody438_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody438_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1319#64)

def AllocBody438_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_8 : StackLang.HolProg 64 :=
.seq AllocBody438_6 AllocBody438_7

def AllocBody438_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody438_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody438_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 3

def AllocBody438_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody438_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody438_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody438_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody438_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_19 : StackLang.HolProg 64 :=
.seq AllocBody438_17 AllocBody438_18

def AllocBody438_20 : StackLang.HolProg 64 :=
.seq AllocBody438_16 AllocBody438_19

def AllocBody438_21 : StackLang.HolProg 64 :=
.seq AllocBody438_15 AllocBody438_20

def AllocBody438_22 : StackLang.HolProg 64 :=
.seq AllocBody438_14 AllocBody438_21

def AllocBody438_23 : StackLang.HolProg 64 :=
.seq AllocBody438_13 AllocBody438_22

def AllocBody438_24 : StackLang.HolProg 64 :=
.seq AllocBody438_12 AllocBody438_23

def AllocBody438_25 : StackLang.HolProg 64 :=
.seq AllocBody438_11 AllocBody438_24

def AllocBody438_26 : StackLang.HolProg 64 :=
.seq AllocBody438_10 AllocBody438_25

def AllocBody438_27 : StackLang.HolProg 64 :=
.seq AllocBody438_9 AllocBody438_26

def AllocBody438_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody438_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody438_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody438_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody438_35 : StackLang.HolProg 64 :=
.seq AllocBody438_33 AllocBody438_34

def AllocBody438_36 : StackLang.HolProg 64 :=
.seq AllocBody438_32 AllocBody438_35

def AllocBody438_37 : StackLang.HolProg 64 :=
.seq AllocBody438_31 AllocBody438_36

def AllocBody438_38 : StackLang.HolProg 64 :=
.seq AllocBody438_30 AllocBody438_37

def AllocBody438_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_40 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody438_41 : StackLang.HolProg 64 :=
.seq AllocBody438_39 AllocBody438_40

def AllocBody438_42 : StackLang.HolProg 64 :=
.call (some (AllocBody438_38, 0, 438, 2)) (Sum.inl 182) (some (AllocBody438_41, 438, 3))

def AllocBody438_43 : StackLang.HolProg 64 :=
.seq AllocBody438_29 AllocBody438_42

def AllocBody438_44 : StackLang.HolProg 64 :=
.seq AllocBody438_28 AllocBody438_43

def AllocBody438_45 : StackLang.HolProg 64 :=
.seq AllocBody438_27 AllocBody438_44

def AllocBody438_46 : StackLang.HolProg 64 :=
.seq AllocBody438_8 AllocBody438_45

def AllocBody438_47 : StackLang.HolProg 64 :=
.seq AllocBody438_5 AllocBody438_46

def AllocBody438_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody438_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody438_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody438_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody438_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551400#64)))

def AllocBody438_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody438_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody438_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 28#64)

def AllocBody438_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1320#64)

def AllocBody438_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_61 : StackLang.HolProg 64 :=
.seq AllocBody438_59 AllocBody438_60

def AllocBody438_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody438_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody438_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 5

def AllocBody438_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody438_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody438_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody438_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody438_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_72 : StackLang.HolProg 64 :=
.seq AllocBody438_70 AllocBody438_71

def AllocBody438_73 : StackLang.HolProg 64 :=
.seq AllocBody438_69 AllocBody438_72

def AllocBody438_74 : StackLang.HolProg 64 :=
.seq AllocBody438_68 AllocBody438_73

def AllocBody438_75 : StackLang.HolProg 64 :=
.seq AllocBody438_67 AllocBody438_74

def AllocBody438_76 : StackLang.HolProg 64 :=
.seq AllocBody438_66 AllocBody438_75

def AllocBody438_77 : StackLang.HolProg 64 :=
.seq AllocBody438_65 AllocBody438_76

def AllocBody438_78 : StackLang.HolProg 64 :=
.seq AllocBody438_64 AllocBody438_77

def AllocBody438_79 : StackLang.HolProg 64 :=
.seq AllocBody438_63 AllocBody438_78

def AllocBody438_80 : StackLang.HolProg 64 :=
.seq AllocBody438_62 AllocBody438_79

def AllocBody438_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody438_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody438_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody438_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody438_88 : StackLang.HolProg 64 :=
.seq AllocBody438_86 AllocBody438_87

def AllocBody438_89 : StackLang.HolProg 64 :=
.seq AllocBody438_85 AllocBody438_88

def AllocBody438_90 : StackLang.HolProg 64 :=
.seq AllocBody438_84 AllocBody438_89

def AllocBody438_91 : StackLang.HolProg 64 :=
.seq AllocBody438_83 AllocBody438_90

def AllocBody438_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody438_94 : StackLang.HolProg 64 :=
.seq AllocBody438_92 AllocBody438_93

def AllocBody438_95 : StackLang.HolProg 64 :=
.call (some (AllocBody438_91, 0, 438, 4)) (Sum.inl 182) (some (AllocBody438_94, 438, 5))

def AllocBody438_96 : StackLang.HolProg 64 :=
.seq AllocBody438_82 AllocBody438_95

def AllocBody438_97 : StackLang.HolProg 64 :=
.seq AllocBody438_81 AllocBody438_96

def AllocBody438_98 : StackLang.HolProg 64 :=
.seq AllocBody438_80 AllocBody438_97

def AllocBody438_99 : StackLang.HolProg 64 :=
.seq AllocBody438_61 AllocBody438_98

def AllocBody438_100 : StackLang.HolProg 64 :=
.seq AllocBody438_58 AllocBody438_99

def AllocBody438_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody438_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody438_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody438_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody438_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551384#64)))

def AllocBody438_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody438_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def AllocBody438_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 60#64)

def AllocBody438_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1321#64)

def AllocBody438_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_114 : StackLang.HolProg 64 :=
.seq AllocBody438_112 AllocBody438_113

def AllocBody438_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody438_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody438_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 7

def AllocBody438_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody438_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody438_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody438_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody438_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_125 : StackLang.HolProg 64 :=
.seq AllocBody438_123 AllocBody438_124

def AllocBody438_126 : StackLang.HolProg 64 :=
.seq AllocBody438_122 AllocBody438_125

def AllocBody438_127 : StackLang.HolProg 64 :=
.seq AllocBody438_121 AllocBody438_126

def AllocBody438_128 : StackLang.HolProg 64 :=
.seq AllocBody438_120 AllocBody438_127

def AllocBody438_129 : StackLang.HolProg 64 :=
.seq AllocBody438_119 AllocBody438_128

def AllocBody438_130 : StackLang.HolProg 64 :=
.seq AllocBody438_118 AllocBody438_129

def AllocBody438_131 : StackLang.HolProg 64 :=
.seq AllocBody438_117 AllocBody438_130

def AllocBody438_132 : StackLang.HolProg 64 :=
.seq AllocBody438_116 AllocBody438_131

def AllocBody438_133 : StackLang.HolProg 64 :=
.seq AllocBody438_115 AllocBody438_132

def AllocBody438_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody438_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody438_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody438_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody438_141 : StackLang.HolProg 64 :=
.seq AllocBody438_139 AllocBody438_140

def AllocBody438_142 : StackLang.HolProg 64 :=
.seq AllocBody438_138 AllocBody438_141

def AllocBody438_143 : StackLang.HolProg 64 :=
.seq AllocBody438_137 AllocBody438_142

def AllocBody438_144 : StackLang.HolProg 64 :=
.seq AllocBody438_136 AllocBody438_143

def AllocBody438_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody438_147 : StackLang.HolProg 64 :=
.seq AllocBody438_145 AllocBody438_146

def AllocBody438_148 : StackLang.HolProg 64 :=
.call (some (AllocBody438_144, 0, 438, 6)) (Sum.inl 182) (some (AllocBody438_147, 438, 7))

def AllocBody438_149 : StackLang.HolProg 64 :=
.seq AllocBody438_135 AllocBody438_148

def AllocBody438_150 : StackLang.HolProg 64 :=
.seq AllocBody438_134 AllocBody438_149

def AllocBody438_151 : StackLang.HolProg 64 :=
.seq AllocBody438_133 AllocBody438_150

def AllocBody438_152 : StackLang.HolProg 64 :=
.seq AllocBody438_114 AllocBody438_151

def AllocBody438_153 : StackLang.HolProg 64 :=
.seq AllocBody438_111 AllocBody438_152

def AllocBody438_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody438_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody438_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody438_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody438_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551376#64)))

def AllocBody438_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody438_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody438_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1322#64)

def AllocBody438_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_166 : StackLang.HolProg 64 :=
.seq AllocBody438_164 AllocBody438_165

def AllocBody438_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody438_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody438_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody438_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 9

def AllocBody438_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody438_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody438_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody438_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody438_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_177 : StackLang.HolProg 64 :=
.seq AllocBody438_175 AllocBody438_176

def AllocBody438_178 : StackLang.HolProg 64 :=
.seq AllocBody438_174 AllocBody438_177

def AllocBody438_179 : StackLang.HolProg 64 :=
.seq AllocBody438_173 AllocBody438_178

def AllocBody438_180 : StackLang.HolProg 64 :=
.seq AllocBody438_172 AllocBody438_179

def AllocBody438_181 : StackLang.HolProg 64 :=
.seq AllocBody438_171 AllocBody438_180

def AllocBody438_182 : StackLang.HolProg 64 :=
.seq AllocBody438_170 AllocBody438_181

def AllocBody438_183 : StackLang.HolProg 64 :=
.seq AllocBody438_169 AllocBody438_182

def AllocBody438_184 : StackLang.HolProg 64 :=
.seq AllocBody438_168 AllocBody438_183

def AllocBody438_185 : StackLang.HolProg 64 :=
.seq AllocBody438_167 AllocBody438_184

def AllocBody438_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody438_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody438_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody438_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody438_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody438_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody438_194 : StackLang.HolProg 64 :=
.seq AllocBody438_192 AllocBody438_193

def AllocBody438_195 : StackLang.HolProg 64 :=
.seq AllocBody438_191 AllocBody438_194

def AllocBody438_196 : StackLang.HolProg 64 :=
.seq AllocBody438_190 AllocBody438_195

def AllocBody438_197 : StackLang.HolProg 64 :=
.seq AllocBody438_189 AllocBody438_196

def AllocBody438_198 : StackLang.HolProg 64 :=
.seq AllocBody438_188 AllocBody438_197

def AllocBody438_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody438_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody438_201 : StackLang.HolProg 64 :=
.seq AllocBody438_199 AllocBody438_200

def AllocBody438_202 : StackLang.HolProg 64 :=
.call (some (AllocBody438_198, 0, 438, 8)) (Sum.inl 68) (some (AllocBody438_201, 438, 9))

def AllocBody438_203 : StackLang.HolProg 64 :=
.seq AllocBody438_187 AllocBody438_202

def AllocBody438_204 : StackLang.HolProg 64 :=
.seq AllocBody438_186 AllocBody438_203

def AllocBody438_205 : StackLang.HolProg 64 :=
.seq AllocBody438_185 AllocBody438_204

def AllocBody438_206 : StackLang.HolProg 64 :=
.seq AllocBody438_166 AllocBody438_205

def AllocBody438_207 : StackLang.HolProg 64 :=
.seq AllocBody438_163 AllocBody438_206

def AllocBody438_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody438_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody438_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody438_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody438_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551368#64)))

def AllocBody438_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody438_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551392#64)))

def AllocBody438_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody438_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody438_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody438_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody438_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody438_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody438_224 : StackLang.HolProg 64 :=
.seq AllocBody438_222 AllocBody438_223

def AllocBody438_225 : StackLang.HolProg 64 :=
.seq AllocBody438_221 AllocBody438_224

def AllocBody438_226 : StackLang.HolProg 64 :=
.seq AllocBody438_220 AllocBody438_225

def AllocBody438_227 : StackLang.HolProg 64 :=
.seq AllocBody438_219 AllocBody438_226

def AllocBody438_228 : StackLang.HolProg 64 :=
.seq AllocBody438_218 AllocBody438_227

def AllocBody438_229 : StackLang.HolProg 64 :=
.seq AllocBody438_217 AllocBody438_228

def AllocBody438_230 : StackLang.HolProg 64 :=
.seq AllocBody438_216 AllocBody438_229

def AllocBody438_231 : StackLang.HolProg 64 :=
.seq AllocBody438_215 AllocBody438_230

def AllocBody438_232 : StackLang.HolProg 64 :=
.seq AllocBody438_214 AllocBody438_231

def AllocBody438_233 : StackLang.HolProg 64 :=
.seq AllocBody438_213 AllocBody438_232

def AllocBody438_234 : StackLang.HolProg 64 :=
.seq AllocBody438_212 AllocBody438_233

def AllocBody438_235 : StackLang.HolProg 64 :=
.seq AllocBody438_211 AllocBody438_234

def AllocBody438_236 : StackLang.HolProg 64 :=
.seq AllocBody438_210 AllocBody438_235

def AllocBody438_237 : StackLang.HolProg 64 :=
.seq AllocBody438_209 AllocBody438_236

def AllocBody438_238 : StackLang.HolProg 64 :=
.seq AllocBody438_208 AllocBody438_237

def AllocBody438_239 : StackLang.HolProg 64 :=
.seq AllocBody438_207 AllocBody438_238

def AllocBody438_240 : StackLang.HolProg 64 :=
.seq AllocBody438_162 AllocBody438_239

def AllocBody438_241 : StackLang.HolProg 64 :=
.seq AllocBody438_161 AllocBody438_240

def AllocBody438_242 : StackLang.HolProg 64 :=
.seq AllocBody438_160 AllocBody438_241

def AllocBody438_243 : StackLang.HolProg 64 :=
.seq AllocBody438_159 AllocBody438_242

def AllocBody438_244 : StackLang.HolProg 64 :=
.seq AllocBody438_158 AllocBody438_243

def AllocBody438_245 : StackLang.HolProg 64 :=
.seq AllocBody438_157 AllocBody438_244

def AllocBody438_246 : StackLang.HolProg 64 :=
.seq AllocBody438_156 AllocBody438_245

def AllocBody438_247 : StackLang.HolProg 64 :=
.seq AllocBody438_155 AllocBody438_246

def AllocBody438_248 : StackLang.HolProg 64 :=
.seq AllocBody438_154 AllocBody438_247

def AllocBody438_249 : StackLang.HolProg 64 :=
.seq AllocBody438_153 AllocBody438_248

def AllocBody438_250 : StackLang.HolProg 64 :=
.seq AllocBody438_110 AllocBody438_249

def AllocBody438_251 : StackLang.HolProg 64 :=
.seq AllocBody438_109 AllocBody438_250

def AllocBody438_252 : StackLang.HolProg 64 :=
.seq AllocBody438_108 AllocBody438_251

def AllocBody438_253 : StackLang.HolProg 64 :=
.seq AllocBody438_107 AllocBody438_252

def AllocBody438_254 : StackLang.HolProg 64 :=
.seq AllocBody438_106 AllocBody438_253

def AllocBody438_255 : StackLang.HolProg 64 :=
.seq AllocBody438_105 AllocBody438_254

def AllocBody438_256 : StackLang.HolProg 64 :=
.seq AllocBody438_104 AllocBody438_255

def AllocBody438_257 : StackLang.HolProg 64 :=
.seq AllocBody438_103 AllocBody438_256

def AllocBody438_258 : StackLang.HolProg 64 :=
.seq AllocBody438_102 AllocBody438_257

def AllocBody438_259 : StackLang.HolProg 64 :=
.seq AllocBody438_101 AllocBody438_258

def AllocBody438_260 : StackLang.HolProg 64 :=
.seq AllocBody438_100 AllocBody438_259

def AllocBody438_261 : StackLang.HolProg 64 :=
.seq AllocBody438_57 AllocBody438_260

def AllocBody438_262 : StackLang.HolProg 64 :=
.seq AllocBody438_56 AllocBody438_261

def AllocBody438_263 : StackLang.HolProg 64 :=
.seq AllocBody438_55 AllocBody438_262

def AllocBody438_264 : StackLang.HolProg 64 :=
.seq AllocBody438_54 AllocBody438_263

def AllocBody438_265 : StackLang.HolProg 64 :=
.seq AllocBody438_53 AllocBody438_264

def AllocBody438_266 : StackLang.HolProg 64 :=
.seq AllocBody438_52 AllocBody438_265

def AllocBody438_267 : StackLang.HolProg 64 :=
.seq AllocBody438_51 AllocBody438_266

def AllocBody438_268 : StackLang.HolProg 64 :=
.seq AllocBody438_50 AllocBody438_267

def AllocBody438_269 : StackLang.HolProg 64 :=
.seq AllocBody438_49 AllocBody438_268

def AllocBody438_270 : StackLang.HolProg 64 :=
.seq AllocBody438_48 AllocBody438_269

def AllocBody438_271 : StackLang.HolProg 64 :=
.seq AllocBody438_47 AllocBody438_270

def AllocBody438_272 : StackLang.HolProg 64 :=
.seq AllocBody438_4 AllocBody438_271

def AllocBody438_273 : StackLang.HolProg 64 :=
.seq AllocBody438_3 AllocBody438_272

def AllocBody438_274 : StackLang.HolProg 64 :=
.seq AllocBody438_2 AllocBody438_273

def AllocBody438_275 : StackLang.HolProg 64 :=
.seq AllocBody438_1 AllocBody438_274

def AllocBody438_276 : StackLang.HolProg 64 :=
.seq AllocBody438_0 AllocBody438_275

def Alloc438 : Nat × StackLang.HolProg 64 := (438, AllocBody438_276)
theorem Alloc438_eq : StackAlloc.progComp (438, raw438) = Alloc438 := by
  kernel_rfl
#print axioms Alloc438_eq
end InitECandidate.Proofs.BackendStages
