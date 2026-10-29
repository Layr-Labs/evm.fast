import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function293
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody293_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody293_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4#64)

def rawBody293_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody293_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody293_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody293_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody293_8 : StackLang.HolProg 64 :=
.seq rawBody293_6 rawBody293_7

def rawBody293_9 : StackLang.HolProg 64 :=
.seq rawBody293_5 rawBody293_8

def rawBody293_10 : StackLang.HolProg 64 :=
.seq rawBody293_4 rawBody293_9

def rawBody293_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody293_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody293_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody293_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody293_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody293_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody293_19 : StackLang.HolProg 64 :=
.seq rawBody293_17 rawBody293_18

def rawBody293_20 : StackLang.HolProg 64 :=
.seq rawBody293_16 rawBody293_19

def rawBody293_21 : StackLang.HolProg 64 :=
.seq rawBody293_15 rawBody293_20

def rawBody293_22 : StackLang.HolProg 64 :=
.seq rawBody293_14 rawBody293_21

def rawBody293_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody293_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody293_26 : StackLang.HolProg 64 :=
.seq rawBody293_24 rawBody293_25

def rawBody293_27 : StackLang.HolProg 64 :=
.seq rawBody293_23 rawBody293_26

def rawBody293_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody293_22 rawBody293_27

def rawBody293_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_31 : StackLang.HolProg 64 :=
.seq rawBody293_29 rawBody293_30

def rawBody293_32 : StackLang.HolProg 64 :=
.seq rawBody293_28 rawBody293_31

def rawBody293_33 : StackLang.HolProg 64 :=
.seq rawBody293_13 rawBody293_32

def rawBody293_34 : StackLang.HolProg 64 :=
.seq rawBody293_12 rawBody293_33

def rawBody293_35 : StackLang.HolProg 64 :=
.seq rawBody293_11 rawBody293_34

def rawBody293_36 : StackLang.HolProg 64 :=
.loop rawBody293_35

def rawBody293_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody293_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody293_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 797#64)

def rawBody293_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody293_44 : StackLang.HolProg 64 :=
.seq rawBody293_42 rawBody293_43

def rawBody293_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody293_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody293_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody293_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 3

def rawBody293_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody293_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody293_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody293_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody293_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody293_55 : StackLang.HolProg 64 :=
.seq rawBody293_53 rawBody293_54

def rawBody293_56 : StackLang.HolProg 64 :=
.seq rawBody293_52 rawBody293_55

def rawBody293_57 : StackLang.HolProg 64 :=
.seq rawBody293_51 rawBody293_56

def rawBody293_58 : StackLang.HolProg 64 :=
.seq rawBody293_50 rawBody293_57

def rawBody293_59 : StackLang.HolProg 64 :=
.seq rawBody293_49 rawBody293_58

def rawBody293_60 : StackLang.HolProg 64 :=
.seq rawBody293_48 rawBody293_59

def rawBody293_61 : StackLang.HolProg 64 :=
.seq rawBody293_47 rawBody293_60

def rawBody293_62 : StackLang.HolProg 64 :=
.seq rawBody293_46 rawBody293_61

def rawBody293_63 : StackLang.HolProg 64 :=
.seq rawBody293_45 rawBody293_62

def rawBody293_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody293_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody293_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody293_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody293_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody293_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody293_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody293_73 : StackLang.HolProg 64 :=
.seq rawBody293_71 rawBody293_72

def rawBody293_74 : StackLang.HolProg 64 :=
.seq rawBody293_70 rawBody293_73

def rawBody293_75 : StackLang.HolProg 64 :=
.seq rawBody293_69 rawBody293_74

def rawBody293_76 : StackLang.HolProg 64 :=
.seq rawBody293_68 rawBody293_75

def rawBody293_77 : StackLang.HolProg 64 :=
.seq rawBody293_67 rawBody293_76

def rawBody293_78 : StackLang.HolProg 64 :=
.seq rawBody293_66 rawBody293_77

def rawBody293_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody293_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody293_81 : StackLang.HolProg 64 :=
.seq rawBody293_79 rawBody293_80

def rawBody293_82 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody293_83 : StackLang.HolProg 64 :=
.seq rawBody293_81 rawBody293_82

def rawBody293_84 : StackLang.HolProg 64 :=
.call (some (rawBody293_78, 0, 293, 2)) (Sum.inl 182) (some (rawBody293_83, 293, 3))

def rawBody293_85 : StackLang.HolProg 64 :=
.seq rawBody293_65 rawBody293_84

def rawBody293_86 : StackLang.HolProg 64 :=
.seq rawBody293_64 rawBody293_85

def rawBody293_87 : StackLang.HolProg 64 :=
.seq rawBody293_63 rawBody293_86

def rawBody293_88 : StackLang.HolProg 64 :=
.seq rawBody293_44 rawBody293_87

def rawBody293_89 : StackLang.HolProg 64 :=
.seq rawBody293_41 rawBody293_88

def rawBody293_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody293_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody293_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody293_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody293_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody293_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody293_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody293_103 : StackLang.HolProg 64 :=
.seq rawBody293_101 rawBody293_102

def rawBody293_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody293_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody293_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody293_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def rawBody293_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551464#64))

def rawBody293_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 4

def rawBody293_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody293_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody293_112 : StackLang.HolProg 64 :=
.seq rawBody293_110 rawBody293_111

def rawBody293_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 5

def rawBody293_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody293_115 : StackLang.HolProg 64 :=
.seq rawBody293_113 rawBody293_114

def rawBody293_116 : StackLang.HolProg 64 :=
.seq rawBody293_112 rawBody293_115

def rawBody293_117 : StackLang.HolProg 64 :=
.seq rawBody293_109 rawBody293_116

def rawBody293_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 798#64)

def rawBody293_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody293_121 : StackLang.HolProg 64 :=
.seq rawBody293_119 rawBody293_120

def rawBody293_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody293_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody293_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody293_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 5

def rawBody293_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody293_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody293_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody293_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody293_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody293_132 : StackLang.HolProg 64 :=
.seq rawBody293_130 rawBody293_131

def rawBody293_133 : StackLang.HolProg 64 :=
.seq rawBody293_129 rawBody293_132

def rawBody293_134 : StackLang.HolProg 64 :=
.seq rawBody293_128 rawBody293_133

def rawBody293_135 : StackLang.HolProg 64 :=
.seq rawBody293_127 rawBody293_134

def rawBody293_136 : StackLang.HolProg 64 :=
.seq rawBody293_126 rawBody293_135

def rawBody293_137 : StackLang.HolProg 64 :=
.seq rawBody293_125 rawBody293_136

def rawBody293_138 : StackLang.HolProg 64 :=
.seq rawBody293_124 rawBody293_137

def rawBody293_139 : StackLang.HolProg 64 :=
.seq rawBody293_123 rawBody293_138

def rawBody293_140 : StackLang.HolProg 64 :=
.seq rawBody293_122 rawBody293_139

def rawBody293_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody293_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody293_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody293_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody293_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody293_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody293_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody293_150 : StackLang.HolProg 64 :=
.seq rawBody293_148 rawBody293_149

def rawBody293_151 : StackLang.HolProg 64 :=
.seq rawBody293_147 rawBody293_150

def rawBody293_152 : StackLang.HolProg 64 :=
.seq rawBody293_146 rawBody293_151

def rawBody293_153 : StackLang.HolProg 64 :=
.seq rawBody293_145 rawBody293_152

def rawBody293_154 : StackLang.HolProg 64 :=
.seq rawBody293_144 rawBody293_153

def rawBody293_155 : StackLang.HolProg 64 :=
.seq rawBody293_143 rawBody293_154

def rawBody293_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody293_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody293_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody293_159 : StackLang.HolProg 64 :=
.seq rawBody293_157 rawBody293_158

def rawBody293_160 : StackLang.HolProg 64 :=
.seq rawBody293_156 rawBody293_159

def rawBody293_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody293_162 : StackLang.HolProg 64 :=
.seq rawBody293_160 rawBody293_161

def rawBody293_163 : StackLang.HolProg 64 :=
.call (some (rawBody293_155, 0, 293, 4)) (Sum.inl 158) (some (rawBody293_162, 293, 5))

def rawBody293_164 : StackLang.HolProg 64 :=
.seq rawBody293_142 rawBody293_163

def rawBody293_165 : StackLang.HolProg 64 :=
.seq rawBody293_141 rawBody293_164

def rawBody293_166 : StackLang.HolProg 64 :=
.seq rawBody293_140 rawBody293_165

def rawBody293_167 : StackLang.HolProg 64 :=
.seq rawBody293_121 rawBody293_166

def rawBody293_168 : StackLang.HolProg 64 :=
.seq rawBody293_118 rawBody293_167

def rawBody293_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody293_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody293_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody293_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody293_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551464#64))

def rawBody293_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody293_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody293_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody293_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody293_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody293_182 : StackLang.HolProg 64 :=
.seq rawBody293_180 rawBody293_181

def rawBody293_183 : StackLang.HolProg 64 :=
.seq rawBody293_179 rawBody293_182

def rawBody293_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 799#64)

def rawBody293_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody293_187 : StackLang.HolProg 64 :=
.seq rawBody293_185 rawBody293_186

def rawBody293_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody293_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody293_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody293_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 7

def rawBody293_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody293_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody293_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody293_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody293_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody293_198 : StackLang.HolProg 64 :=
.seq rawBody293_196 rawBody293_197

def rawBody293_199 : StackLang.HolProg 64 :=
.seq rawBody293_195 rawBody293_198

def rawBody293_200 : StackLang.HolProg 64 :=
.seq rawBody293_194 rawBody293_199

def rawBody293_201 : StackLang.HolProg 64 :=
.seq rawBody293_193 rawBody293_200

def rawBody293_202 : StackLang.HolProg 64 :=
.seq rawBody293_192 rawBody293_201

def rawBody293_203 : StackLang.HolProg 64 :=
.seq rawBody293_191 rawBody293_202

def rawBody293_204 : StackLang.HolProg 64 :=
.seq rawBody293_190 rawBody293_203

def rawBody293_205 : StackLang.HolProg 64 :=
.seq rawBody293_189 rawBody293_204

def rawBody293_206 : StackLang.HolProg 64 :=
.seq rawBody293_188 rawBody293_205

def rawBody293_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody293_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody293_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody293_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody293_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody293_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody293_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody293_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody293_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody293_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody293_219 : StackLang.HolProg 64 :=
.seq rawBody293_217 rawBody293_218

def rawBody293_220 : StackLang.HolProg 64 :=
.seq rawBody293_216 rawBody293_219

def rawBody293_221 : StackLang.HolProg 64 :=
.seq rawBody293_215 rawBody293_220

def rawBody293_222 : StackLang.HolProg 64 :=
.seq rawBody293_214 rawBody293_221

def rawBody293_223 : StackLang.HolProg 64 :=
.seq rawBody293_213 rawBody293_222

def rawBody293_224 : StackLang.HolProg 64 :=
.seq rawBody293_212 rawBody293_223

def rawBody293_225 : StackLang.HolProg 64 :=
.seq rawBody293_211 rawBody293_224

def rawBody293_226 : StackLang.HolProg 64 :=
.seq rawBody293_210 rawBody293_225

def rawBody293_227 : StackLang.HolProg 64 :=
.seq rawBody293_209 rawBody293_226

def rawBody293_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody293_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody293_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody293_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody293_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody293_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody293_234 : StackLang.HolProg 64 :=
.seq rawBody293_232 rawBody293_233

def rawBody293_235 : StackLang.HolProg 64 :=
.seq rawBody293_231 rawBody293_234

def rawBody293_236 : StackLang.HolProg 64 :=
.seq rawBody293_230 rawBody293_235

def rawBody293_237 : StackLang.HolProg 64 :=
.seq rawBody293_229 rawBody293_236

def rawBody293_238 : StackLang.HolProg 64 :=
.seq rawBody293_228 rawBody293_237

def rawBody293_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody293_240 : StackLang.HolProg 64 :=
.seq rawBody293_238 rawBody293_239

def rawBody293_241 : StackLang.HolProg 64 :=
.call (some (rawBody293_227, 0, 293, 6)) (Sum.inl 192) (some (rawBody293_240, 293, 7))

def rawBody293_242 : StackLang.HolProg 64 :=
.seq rawBody293_208 rawBody293_241

def rawBody293_243 : StackLang.HolProg 64 :=
.seq rawBody293_207 rawBody293_242

def rawBody293_244 : StackLang.HolProg 64 :=
.seq rawBody293_206 rawBody293_243

def rawBody293_245 : StackLang.HolProg 64 :=
.seq rawBody293_187 rawBody293_244

def rawBody293_246 : StackLang.HolProg 64 :=
.seq rawBody293_184 rawBody293_245

def rawBody293_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody293_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody293_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody293_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody293_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody293_253 : StackLang.HolProg 64 :=
.seq rawBody293_251 rawBody293_252

def rawBody293_254 : StackLang.HolProg 64 :=
.seq rawBody293_250 rawBody293_253

def rawBody293_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody293_256 : StackLang.HolProg 64 :=
.seq rawBody293_254 rawBody293_255

def rawBody293_257 : StackLang.HolProg 64 :=
.seq rawBody293_249 rawBody293_256

def rawBody293_258 : StackLang.HolProg 64 :=
.seq rawBody293_248 rawBody293_257

def rawBody293_259 : StackLang.HolProg 64 :=
.seq rawBody293_247 rawBody293_258

def rawBody293_260 : StackLang.HolProg 64 :=
.seq rawBody293_246 rawBody293_259

def rawBody293_261 : StackLang.HolProg 64 :=
.seq rawBody293_183 rawBody293_260

def rawBody293_262 : StackLang.HolProg 64 :=
.seq rawBody293_178 rawBody293_261

def rawBody293_263 : StackLang.HolProg 64 :=
.seq rawBody293_177 rawBody293_262

def rawBody293_264 : StackLang.HolProg 64 :=
.seq rawBody293_176 rawBody293_263

def rawBody293_265 : StackLang.HolProg 64 :=
.seq rawBody293_175 rawBody293_264

def rawBody293_266 : StackLang.HolProg 64 :=
.seq rawBody293_174 rawBody293_265

def rawBody293_267 : StackLang.HolProg 64 :=
.seq rawBody293_173 rawBody293_266

def rawBody293_268 : StackLang.HolProg 64 :=
.seq rawBody293_172 rawBody293_267

def rawBody293_269 : StackLang.HolProg 64 :=
.seq rawBody293_171 rawBody293_268

def rawBody293_270 : StackLang.HolProg 64 :=
.seq rawBody293_170 rawBody293_269

def rawBody293_271 : StackLang.HolProg 64 :=
.seq rawBody293_169 rawBody293_270

def rawBody293_272 : StackLang.HolProg 64 :=
.seq rawBody293_168 rawBody293_271

def rawBody293_273 : StackLang.HolProg 64 :=
.seq rawBody293_117 rawBody293_272

def rawBody293_274 : StackLang.HolProg 64 :=
.seq rawBody293_108 rawBody293_273

def rawBody293_275 : StackLang.HolProg 64 :=
.seq rawBody293_107 rawBody293_274

def rawBody293_276 : StackLang.HolProg 64 :=
.seq rawBody293_106 rawBody293_275

def rawBody293_277 : StackLang.HolProg 64 :=
.seq rawBody293_105 rawBody293_276

def rawBody293_278 : StackLang.HolProg 64 :=
.seq rawBody293_104 rawBody293_277

def rawBody293_279 : StackLang.HolProg 64 :=
.seq rawBody293_103 rawBody293_278

def rawBody293_280 : StackLang.HolProg 64 :=
.seq rawBody293_100 rawBody293_279

def rawBody293_281 : StackLang.HolProg 64 :=
.seq rawBody293_99 rawBody293_280

def rawBody293_282 : StackLang.HolProg 64 :=
.seq rawBody293_98 rawBody293_281

def rawBody293_283 : StackLang.HolProg 64 :=
.seq rawBody293_97 rawBody293_282

def rawBody293_284 : StackLang.HolProg 64 :=
.seq rawBody293_96 rawBody293_283

def rawBody293_285 : StackLang.HolProg 64 :=
.seq rawBody293_95 rawBody293_284

def rawBody293_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody293_288 : StackLang.HolProg 64 :=
.seq rawBody293_286 rawBody293_287

def rawBody293_289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody293_285 rawBody293_288

def rawBody293_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody293_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody293_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def rawBody293_294 : StackLang.HolProg 64 :=
.seq rawBody293_292 rawBody293_293

def rawBody293_295 : StackLang.HolProg 64 :=
.seq rawBody293_291 rawBody293_294

def rawBody293_296 : StackLang.HolProg 64 :=
.seq rawBody293_290 rawBody293_295

def rawBody293_297 : StackLang.HolProg 64 :=
.seq rawBody293_289 rawBody293_296

def rawBody293_298 : StackLang.HolProg 64 :=
.seq rawBody293_94 rawBody293_297

def rawBody293_299 : StackLang.HolProg 64 :=
.loop rawBody293_298

def rawBody293_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody293_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def rawBody293_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody293_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody293_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody293_305 : StackLang.HolProg 64 :=
.seq rawBody293_303 rawBody293_304

def rawBody293_306 : StackLang.HolProg 64 :=
.seq rawBody293_302 rawBody293_305

def rawBody293_307 : StackLang.HolProg 64 :=
.seq rawBody293_301 rawBody293_306

def rawBody293_308 : StackLang.HolProg 64 :=
.seq rawBody293_300 rawBody293_307

def rawBody293_309 : StackLang.HolProg 64 :=
.seq rawBody293_299 rawBody293_308

def rawBody293_310 : StackLang.HolProg 64 :=
.seq rawBody293_93 rawBody293_309

def rawBody293_311 : StackLang.HolProg 64 :=
.seq rawBody293_92 rawBody293_310

def rawBody293_312 : StackLang.HolProg 64 :=
.seq rawBody293_91 rawBody293_311

def rawBody293_313 : StackLang.HolProg 64 :=
.seq rawBody293_90 rawBody293_312

def rawBody293_314 : StackLang.HolProg 64 :=
.seq rawBody293_89 rawBody293_313

def rawBody293_315 : StackLang.HolProg 64 :=
.seq rawBody293_40 rawBody293_314

def rawBody293_316 : StackLang.HolProg 64 :=
.seq rawBody293_39 rawBody293_315

def rawBody293_317 : StackLang.HolProg 64 :=
.seq rawBody293_38 rawBody293_316

def rawBody293_318 : StackLang.HolProg 64 :=
.seq rawBody293_37 rawBody293_317

def rawBody293_319 : StackLang.HolProg 64 :=
.seq rawBody293_36 rawBody293_318

def rawBody293_320 : StackLang.HolProg 64 :=
.seq rawBody293_10 rawBody293_319

def rawBody293_321 : StackLang.HolProg 64 :=
.seq rawBody293_3 rawBody293_320

def rawBody293_322 : StackLang.HolProg 64 :=
.seq rawBody293_2 rawBody293_321

def rawBody293_323 : StackLang.HolProg 64 :=
.seq rawBody293_1 rawBody293_322

def rawBody293_324 : StackLang.HolProg 64 :=
.seq rawBody293_0 rawBody293_323

def raw293 : StackLang.HolProg 64 := rawBody293_324
theorem raw293_eq : StackRawCall.compTop RawInfo.rawInfo (function293 (.list [])).1 = raw293 := by
  kernel_rfl
#print axioms raw293_eq
end InitECandidate.Proofs.BackendStages
