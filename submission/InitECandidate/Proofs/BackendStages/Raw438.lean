import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function438
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody438_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody438_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody438_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 20#64)

def rawBody438_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody438_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1319#64)

def rawBody438_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_8 : StackLang.HolProg 64 :=
.seq rawBody438_6 rawBody438_7

def rawBody438_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody438_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody438_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 3

def rawBody438_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody438_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody438_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody438_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody438_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_19 : StackLang.HolProg 64 :=
.seq rawBody438_17 rawBody438_18

def rawBody438_20 : StackLang.HolProg 64 :=
.seq rawBody438_16 rawBody438_19

def rawBody438_21 : StackLang.HolProg 64 :=
.seq rawBody438_15 rawBody438_20

def rawBody438_22 : StackLang.HolProg 64 :=
.seq rawBody438_14 rawBody438_21

def rawBody438_23 : StackLang.HolProg 64 :=
.seq rawBody438_13 rawBody438_22

def rawBody438_24 : StackLang.HolProg 64 :=
.seq rawBody438_12 rawBody438_23

def rawBody438_25 : StackLang.HolProg 64 :=
.seq rawBody438_11 rawBody438_24

def rawBody438_26 : StackLang.HolProg 64 :=
.seq rawBody438_10 rawBody438_25

def rawBody438_27 : StackLang.HolProg 64 :=
.seq rawBody438_9 rawBody438_26

def rawBody438_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody438_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody438_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody438_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody438_35 : StackLang.HolProg 64 :=
.seq rawBody438_33 rawBody438_34

def rawBody438_36 : StackLang.HolProg 64 :=
.seq rawBody438_32 rawBody438_35

def rawBody438_37 : StackLang.HolProg 64 :=
.seq rawBody438_31 rawBody438_36

def rawBody438_38 : StackLang.HolProg 64 :=
.seq rawBody438_30 rawBody438_37

def rawBody438_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_40 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody438_41 : StackLang.HolProg 64 :=
.seq rawBody438_39 rawBody438_40

def rawBody438_42 : StackLang.HolProg 64 :=
.call (some (rawBody438_38, 0, 438, 2)) (Sum.inl 182) (some (rawBody438_41, 438, 3))

def rawBody438_43 : StackLang.HolProg 64 :=
.seq rawBody438_29 rawBody438_42

def rawBody438_44 : StackLang.HolProg 64 :=
.seq rawBody438_28 rawBody438_43

def rawBody438_45 : StackLang.HolProg 64 :=
.seq rawBody438_27 rawBody438_44

def rawBody438_46 : StackLang.HolProg 64 :=
.seq rawBody438_8 rawBody438_45

def rawBody438_47 : StackLang.HolProg 64 :=
.seq rawBody438_5 rawBody438_46

def rawBody438_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody438_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody438_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody438_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody438_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551400#64)))

def rawBody438_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody438_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody438_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 28#64)

def rawBody438_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1320#64)

def rawBody438_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_61 : StackLang.HolProg 64 :=
.seq rawBody438_59 rawBody438_60

def rawBody438_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody438_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody438_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 5

def rawBody438_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody438_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody438_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody438_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody438_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_72 : StackLang.HolProg 64 :=
.seq rawBody438_70 rawBody438_71

def rawBody438_73 : StackLang.HolProg 64 :=
.seq rawBody438_69 rawBody438_72

def rawBody438_74 : StackLang.HolProg 64 :=
.seq rawBody438_68 rawBody438_73

def rawBody438_75 : StackLang.HolProg 64 :=
.seq rawBody438_67 rawBody438_74

def rawBody438_76 : StackLang.HolProg 64 :=
.seq rawBody438_66 rawBody438_75

def rawBody438_77 : StackLang.HolProg 64 :=
.seq rawBody438_65 rawBody438_76

def rawBody438_78 : StackLang.HolProg 64 :=
.seq rawBody438_64 rawBody438_77

def rawBody438_79 : StackLang.HolProg 64 :=
.seq rawBody438_63 rawBody438_78

def rawBody438_80 : StackLang.HolProg 64 :=
.seq rawBody438_62 rawBody438_79

def rawBody438_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody438_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody438_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody438_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody438_88 : StackLang.HolProg 64 :=
.seq rawBody438_86 rawBody438_87

def rawBody438_89 : StackLang.HolProg 64 :=
.seq rawBody438_85 rawBody438_88

def rawBody438_90 : StackLang.HolProg 64 :=
.seq rawBody438_84 rawBody438_89

def rawBody438_91 : StackLang.HolProg 64 :=
.seq rawBody438_83 rawBody438_90

def rawBody438_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody438_94 : StackLang.HolProg 64 :=
.seq rawBody438_92 rawBody438_93

def rawBody438_95 : StackLang.HolProg 64 :=
.call (some (rawBody438_91, 0, 438, 4)) (Sum.inl 182) (some (rawBody438_94, 438, 5))

def rawBody438_96 : StackLang.HolProg 64 :=
.seq rawBody438_82 rawBody438_95

def rawBody438_97 : StackLang.HolProg 64 :=
.seq rawBody438_81 rawBody438_96

def rawBody438_98 : StackLang.HolProg 64 :=
.seq rawBody438_80 rawBody438_97

def rawBody438_99 : StackLang.HolProg 64 :=
.seq rawBody438_61 rawBody438_98

def rawBody438_100 : StackLang.HolProg 64 :=
.seq rawBody438_58 rawBody438_99

def rawBody438_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody438_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody438_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody438_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody438_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551384#64)))

def rawBody438_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody438_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def rawBody438_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 60#64)

def rawBody438_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1321#64)

def rawBody438_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_114 : StackLang.HolProg 64 :=
.seq rawBody438_112 rawBody438_113

def rawBody438_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody438_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody438_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 7

def rawBody438_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody438_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody438_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody438_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody438_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_125 : StackLang.HolProg 64 :=
.seq rawBody438_123 rawBody438_124

def rawBody438_126 : StackLang.HolProg 64 :=
.seq rawBody438_122 rawBody438_125

def rawBody438_127 : StackLang.HolProg 64 :=
.seq rawBody438_121 rawBody438_126

def rawBody438_128 : StackLang.HolProg 64 :=
.seq rawBody438_120 rawBody438_127

def rawBody438_129 : StackLang.HolProg 64 :=
.seq rawBody438_119 rawBody438_128

def rawBody438_130 : StackLang.HolProg 64 :=
.seq rawBody438_118 rawBody438_129

def rawBody438_131 : StackLang.HolProg 64 :=
.seq rawBody438_117 rawBody438_130

def rawBody438_132 : StackLang.HolProg 64 :=
.seq rawBody438_116 rawBody438_131

def rawBody438_133 : StackLang.HolProg 64 :=
.seq rawBody438_115 rawBody438_132

def rawBody438_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody438_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody438_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody438_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody438_141 : StackLang.HolProg 64 :=
.seq rawBody438_139 rawBody438_140

def rawBody438_142 : StackLang.HolProg 64 :=
.seq rawBody438_138 rawBody438_141

def rawBody438_143 : StackLang.HolProg 64 :=
.seq rawBody438_137 rawBody438_142

def rawBody438_144 : StackLang.HolProg 64 :=
.seq rawBody438_136 rawBody438_143

def rawBody438_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody438_147 : StackLang.HolProg 64 :=
.seq rawBody438_145 rawBody438_146

def rawBody438_148 : StackLang.HolProg 64 :=
.call (some (rawBody438_144, 0, 438, 6)) (Sum.inl 182) (some (rawBody438_147, 438, 7))

def rawBody438_149 : StackLang.HolProg 64 :=
.seq rawBody438_135 rawBody438_148

def rawBody438_150 : StackLang.HolProg 64 :=
.seq rawBody438_134 rawBody438_149

def rawBody438_151 : StackLang.HolProg 64 :=
.seq rawBody438_133 rawBody438_150

def rawBody438_152 : StackLang.HolProg 64 :=
.seq rawBody438_114 rawBody438_151

def rawBody438_153 : StackLang.HolProg 64 :=
.seq rawBody438_111 rawBody438_152

def rawBody438_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody438_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody438_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody438_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody438_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551376#64)))

def rawBody438_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody438_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody438_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1322#64)

def rawBody438_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_166 : StackLang.HolProg 64 :=
.seq rawBody438_164 rawBody438_165

def rawBody438_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody438_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody438_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody438_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 438 9

def rawBody438_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody438_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody438_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody438_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody438_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_177 : StackLang.HolProg 64 :=
.seq rawBody438_175 rawBody438_176

def rawBody438_178 : StackLang.HolProg 64 :=
.seq rawBody438_174 rawBody438_177

def rawBody438_179 : StackLang.HolProg 64 :=
.seq rawBody438_173 rawBody438_178

def rawBody438_180 : StackLang.HolProg 64 :=
.seq rawBody438_172 rawBody438_179

def rawBody438_181 : StackLang.HolProg 64 :=
.seq rawBody438_171 rawBody438_180

def rawBody438_182 : StackLang.HolProg 64 :=
.seq rawBody438_170 rawBody438_181

def rawBody438_183 : StackLang.HolProg 64 :=
.seq rawBody438_169 rawBody438_182

def rawBody438_184 : StackLang.HolProg 64 :=
.seq rawBody438_168 rawBody438_183

def rawBody438_185 : StackLang.HolProg 64 :=
.seq rawBody438_167 rawBody438_184

def rawBody438_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody438_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody438_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody438_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody438_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody438_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody438_194 : StackLang.HolProg 64 :=
.seq rawBody438_192 rawBody438_193

def rawBody438_195 : StackLang.HolProg 64 :=
.seq rawBody438_191 rawBody438_194

def rawBody438_196 : StackLang.HolProg 64 :=
.seq rawBody438_190 rawBody438_195

def rawBody438_197 : StackLang.HolProg 64 :=
.seq rawBody438_189 rawBody438_196

def rawBody438_198 : StackLang.HolProg 64 :=
.seq rawBody438_188 rawBody438_197

def rawBody438_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody438_200 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody438_201 : StackLang.HolProg 64 :=
.seq rawBody438_199 rawBody438_200

def rawBody438_202 : StackLang.HolProg 64 :=
.call (some (rawBody438_198, 0, 438, 8)) (Sum.inl 68) (some (rawBody438_201, 438, 9))

def rawBody438_203 : StackLang.HolProg 64 :=
.seq rawBody438_187 rawBody438_202

def rawBody438_204 : StackLang.HolProg 64 :=
.seq rawBody438_186 rawBody438_203

def rawBody438_205 : StackLang.HolProg 64 :=
.seq rawBody438_185 rawBody438_204

def rawBody438_206 : StackLang.HolProg 64 :=
.seq rawBody438_166 rawBody438_205

def rawBody438_207 : StackLang.HolProg 64 :=
.seq rawBody438_163 rawBody438_206

def rawBody438_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody438_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody438_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody438_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody438_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551368#64)))

def rawBody438_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody438_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551392#64)))

def rawBody438_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody438_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody438_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody438_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody438_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody438_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody438_224 : StackLang.HolProg 64 :=
.seq rawBody438_222 rawBody438_223

def rawBody438_225 : StackLang.HolProg 64 :=
.seq rawBody438_221 rawBody438_224

def rawBody438_226 : StackLang.HolProg 64 :=
.seq rawBody438_220 rawBody438_225

def rawBody438_227 : StackLang.HolProg 64 :=
.seq rawBody438_219 rawBody438_226

def rawBody438_228 : StackLang.HolProg 64 :=
.seq rawBody438_218 rawBody438_227

def rawBody438_229 : StackLang.HolProg 64 :=
.seq rawBody438_217 rawBody438_228

def rawBody438_230 : StackLang.HolProg 64 :=
.seq rawBody438_216 rawBody438_229

def rawBody438_231 : StackLang.HolProg 64 :=
.seq rawBody438_215 rawBody438_230

def rawBody438_232 : StackLang.HolProg 64 :=
.seq rawBody438_214 rawBody438_231

def rawBody438_233 : StackLang.HolProg 64 :=
.seq rawBody438_213 rawBody438_232

def rawBody438_234 : StackLang.HolProg 64 :=
.seq rawBody438_212 rawBody438_233

def rawBody438_235 : StackLang.HolProg 64 :=
.seq rawBody438_211 rawBody438_234

def rawBody438_236 : StackLang.HolProg 64 :=
.seq rawBody438_210 rawBody438_235

def rawBody438_237 : StackLang.HolProg 64 :=
.seq rawBody438_209 rawBody438_236

def rawBody438_238 : StackLang.HolProg 64 :=
.seq rawBody438_208 rawBody438_237

def rawBody438_239 : StackLang.HolProg 64 :=
.seq rawBody438_207 rawBody438_238

def rawBody438_240 : StackLang.HolProg 64 :=
.seq rawBody438_162 rawBody438_239

def rawBody438_241 : StackLang.HolProg 64 :=
.seq rawBody438_161 rawBody438_240

def rawBody438_242 : StackLang.HolProg 64 :=
.seq rawBody438_160 rawBody438_241

def rawBody438_243 : StackLang.HolProg 64 :=
.seq rawBody438_159 rawBody438_242

def rawBody438_244 : StackLang.HolProg 64 :=
.seq rawBody438_158 rawBody438_243

def rawBody438_245 : StackLang.HolProg 64 :=
.seq rawBody438_157 rawBody438_244

def rawBody438_246 : StackLang.HolProg 64 :=
.seq rawBody438_156 rawBody438_245

def rawBody438_247 : StackLang.HolProg 64 :=
.seq rawBody438_155 rawBody438_246

def rawBody438_248 : StackLang.HolProg 64 :=
.seq rawBody438_154 rawBody438_247

def rawBody438_249 : StackLang.HolProg 64 :=
.seq rawBody438_153 rawBody438_248

def rawBody438_250 : StackLang.HolProg 64 :=
.seq rawBody438_110 rawBody438_249

def rawBody438_251 : StackLang.HolProg 64 :=
.seq rawBody438_109 rawBody438_250

def rawBody438_252 : StackLang.HolProg 64 :=
.seq rawBody438_108 rawBody438_251

def rawBody438_253 : StackLang.HolProg 64 :=
.seq rawBody438_107 rawBody438_252

def rawBody438_254 : StackLang.HolProg 64 :=
.seq rawBody438_106 rawBody438_253

def rawBody438_255 : StackLang.HolProg 64 :=
.seq rawBody438_105 rawBody438_254

def rawBody438_256 : StackLang.HolProg 64 :=
.seq rawBody438_104 rawBody438_255

def rawBody438_257 : StackLang.HolProg 64 :=
.seq rawBody438_103 rawBody438_256

def rawBody438_258 : StackLang.HolProg 64 :=
.seq rawBody438_102 rawBody438_257

def rawBody438_259 : StackLang.HolProg 64 :=
.seq rawBody438_101 rawBody438_258

def rawBody438_260 : StackLang.HolProg 64 :=
.seq rawBody438_100 rawBody438_259

def rawBody438_261 : StackLang.HolProg 64 :=
.seq rawBody438_57 rawBody438_260

def rawBody438_262 : StackLang.HolProg 64 :=
.seq rawBody438_56 rawBody438_261

def rawBody438_263 : StackLang.HolProg 64 :=
.seq rawBody438_55 rawBody438_262

def rawBody438_264 : StackLang.HolProg 64 :=
.seq rawBody438_54 rawBody438_263

def rawBody438_265 : StackLang.HolProg 64 :=
.seq rawBody438_53 rawBody438_264

def rawBody438_266 : StackLang.HolProg 64 :=
.seq rawBody438_52 rawBody438_265

def rawBody438_267 : StackLang.HolProg 64 :=
.seq rawBody438_51 rawBody438_266

def rawBody438_268 : StackLang.HolProg 64 :=
.seq rawBody438_50 rawBody438_267

def rawBody438_269 : StackLang.HolProg 64 :=
.seq rawBody438_49 rawBody438_268

def rawBody438_270 : StackLang.HolProg 64 :=
.seq rawBody438_48 rawBody438_269

def rawBody438_271 : StackLang.HolProg 64 :=
.seq rawBody438_47 rawBody438_270

def rawBody438_272 : StackLang.HolProg 64 :=
.seq rawBody438_4 rawBody438_271

def rawBody438_273 : StackLang.HolProg 64 :=
.seq rawBody438_3 rawBody438_272

def rawBody438_274 : StackLang.HolProg 64 :=
.seq rawBody438_2 rawBody438_273

def rawBody438_275 : StackLang.HolProg 64 :=
.seq rawBody438_1 rawBody438_274

def rawBody438_276 : StackLang.HolProg 64 :=
.seq rawBody438_0 rawBody438_275

def raw438 : StackLang.HolProg 64 := rawBody438_276
theorem raw438_eq : StackRawCall.compTop RawInfo.rawInfo (function438 (.list [])).1 = raw438 := by
  kernel_rfl
#print axioms raw438_eq
end InitECandidate.Proofs.BackendStages
