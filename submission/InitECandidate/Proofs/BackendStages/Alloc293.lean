import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw293
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody293_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody293_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 4#64)

def AllocBody293_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody293_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody293_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody293_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody293_8 : StackLang.HolProg 64 :=
.seq AllocBody293_6 AllocBody293_7

def AllocBody293_9 : StackLang.HolProg 64 :=
.seq AllocBody293_5 AllocBody293_8

def AllocBody293_10 : StackLang.HolProg 64 :=
.seq AllocBody293_4 AllocBody293_9

def AllocBody293_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody293_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody293_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody293_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody293_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody293_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody293_19 : StackLang.HolProg 64 :=
.seq AllocBody293_17 AllocBody293_18

def AllocBody293_20 : StackLang.HolProg 64 :=
.seq AllocBody293_16 AllocBody293_19

def AllocBody293_21 : StackLang.HolProg 64 :=
.seq AllocBody293_15 AllocBody293_20

def AllocBody293_22 : StackLang.HolProg 64 :=
.seq AllocBody293_14 AllocBody293_21

def AllocBody293_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody293_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody293_26 : StackLang.HolProg 64 :=
.seq AllocBody293_24 AllocBody293_25

def AllocBody293_27 : StackLang.HolProg 64 :=
.seq AllocBody293_23 AllocBody293_26

def AllocBody293_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody293_22 AllocBody293_27

def AllocBody293_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_31 : StackLang.HolProg 64 :=
.seq AllocBody293_29 AllocBody293_30

def AllocBody293_32 : StackLang.HolProg 64 :=
.seq AllocBody293_28 AllocBody293_31

def AllocBody293_33 : StackLang.HolProg 64 :=
.seq AllocBody293_13 AllocBody293_32

def AllocBody293_34 : StackLang.HolProg 64 :=
.seq AllocBody293_12 AllocBody293_33

def AllocBody293_35 : StackLang.HolProg 64 :=
.seq AllocBody293_11 AllocBody293_34

def AllocBody293_36 : StackLang.HolProg 64 :=
.loop AllocBody293_35

def AllocBody293_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody293_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody293_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 797#64)

def AllocBody293_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody293_44 : StackLang.HolProg 64 :=
.seq AllocBody293_42 AllocBody293_43

def AllocBody293_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody293_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody293_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody293_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 3

def AllocBody293_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody293_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody293_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody293_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody293_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody293_55 : StackLang.HolProg 64 :=
.seq AllocBody293_53 AllocBody293_54

def AllocBody293_56 : StackLang.HolProg 64 :=
.seq AllocBody293_52 AllocBody293_55

def AllocBody293_57 : StackLang.HolProg 64 :=
.seq AllocBody293_51 AllocBody293_56

def AllocBody293_58 : StackLang.HolProg 64 :=
.seq AllocBody293_50 AllocBody293_57

def AllocBody293_59 : StackLang.HolProg 64 :=
.seq AllocBody293_49 AllocBody293_58

def AllocBody293_60 : StackLang.HolProg 64 :=
.seq AllocBody293_48 AllocBody293_59

def AllocBody293_61 : StackLang.HolProg 64 :=
.seq AllocBody293_47 AllocBody293_60

def AllocBody293_62 : StackLang.HolProg 64 :=
.seq AllocBody293_46 AllocBody293_61

def AllocBody293_63 : StackLang.HolProg 64 :=
.seq AllocBody293_45 AllocBody293_62

def AllocBody293_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody293_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody293_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody293_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody293_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody293_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody293_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody293_73 : StackLang.HolProg 64 :=
.seq AllocBody293_71 AllocBody293_72

def AllocBody293_74 : StackLang.HolProg 64 :=
.seq AllocBody293_70 AllocBody293_73

def AllocBody293_75 : StackLang.HolProg 64 :=
.seq AllocBody293_69 AllocBody293_74

def AllocBody293_76 : StackLang.HolProg 64 :=
.seq AllocBody293_68 AllocBody293_75

def AllocBody293_77 : StackLang.HolProg 64 :=
.seq AllocBody293_67 AllocBody293_76

def AllocBody293_78 : StackLang.HolProg 64 :=
.seq AllocBody293_66 AllocBody293_77

def AllocBody293_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody293_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody293_81 : StackLang.HolProg 64 :=
.seq AllocBody293_79 AllocBody293_80

def AllocBody293_82 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody293_83 : StackLang.HolProg 64 :=
.seq AllocBody293_81 AllocBody293_82

def AllocBody293_84 : StackLang.HolProg 64 :=
.call (some (AllocBody293_78, 0, 293, 2)) (Sum.inl 182) (some (AllocBody293_83, 293, 3))

def AllocBody293_85 : StackLang.HolProg 64 :=
.seq AllocBody293_65 AllocBody293_84

def AllocBody293_86 : StackLang.HolProg 64 :=
.seq AllocBody293_64 AllocBody293_85

def AllocBody293_87 : StackLang.HolProg 64 :=
.seq AllocBody293_63 AllocBody293_86

def AllocBody293_88 : StackLang.HolProg 64 :=
.seq AllocBody293_44 AllocBody293_87

def AllocBody293_89 : StackLang.HolProg 64 :=
.seq AllocBody293_41 AllocBody293_88

def AllocBody293_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody293_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody293_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody293_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody293_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody293_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody293_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody293_103 : StackLang.HolProg 64 :=
.seq AllocBody293_101 AllocBody293_102

def AllocBody293_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody293_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody293_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody293_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def AllocBody293_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551464#64))

def AllocBody293_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 4

def AllocBody293_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody293_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody293_112 : StackLang.HolProg 64 :=
.seq AllocBody293_110 AllocBody293_111

def AllocBody293_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 5

def AllocBody293_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody293_115 : StackLang.HolProg 64 :=
.seq AllocBody293_113 AllocBody293_114

def AllocBody293_116 : StackLang.HolProg 64 :=
.seq AllocBody293_112 AllocBody293_115

def AllocBody293_117 : StackLang.HolProg 64 :=
.seq AllocBody293_109 AllocBody293_116

def AllocBody293_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 798#64)

def AllocBody293_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody293_121 : StackLang.HolProg 64 :=
.seq AllocBody293_119 AllocBody293_120

def AllocBody293_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody293_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody293_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody293_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 5

def AllocBody293_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody293_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody293_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody293_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody293_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody293_132 : StackLang.HolProg 64 :=
.seq AllocBody293_130 AllocBody293_131

def AllocBody293_133 : StackLang.HolProg 64 :=
.seq AllocBody293_129 AllocBody293_132

def AllocBody293_134 : StackLang.HolProg 64 :=
.seq AllocBody293_128 AllocBody293_133

def AllocBody293_135 : StackLang.HolProg 64 :=
.seq AllocBody293_127 AllocBody293_134

def AllocBody293_136 : StackLang.HolProg 64 :=
.seq AllocBody293_126 AllocBody293_135

def AllocBody293_137 : StackLang.HolProg 64 :=
.seq AllocBody293_125 AllocBody293_136

def AllocBody293_138 : StackLang.HolProg 64 :=
.seq AllocBody293_124 AllocBody293_137

def AllocBody293_139 : StackLang.HolProg 64 :=
.seq AllocBody293_123 AllocBody293_138

def AllocBody293_140 : StackLang.HolProg 64 :=
.seq AllocBody293_122 AllocBody293_139

def AllocBody293_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody293_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody293_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody293_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody293_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody293_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody293_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody293_150 : StackLang.HolProg 64 :=
.seq AllocBody293_148 AllocBody293_149

def AllocBody293_151 : StackLang.HolProg 64 :=
.seq AllocBody293_147 AllocBody293_150

def AllocBody293_152 : StackLang.HolProg 64 :=
.seq AllocBody293_146 AllocBody293_151

def AllocBody293_153 : StackLang.HolProg 64 :=
.seq AllocBody293_145 AllocBody293_152

def AllocBody293_154 : StackLang.HolProg 64 :=
.seq AllocBody293_144 AllocBody293_153

def AllocBody293_155 : StackLang.HolProg 64 :=
.seq AllocBody293_143 AllocBody293_154

def AllocBody293_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody293_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody293_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody293_159 : StackLang.HolProg 64 :=
.seq AllocBody293_157 AllocBody293_158

def AllocBody293_160 : StackLang.HolProg 64 :=
.seq AllocBody293_156 AllocBody293_159

def AllocBody293_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody293_162 : StackLang.HolProg 64 :=
.seq AllocBody293_160 AllocBody293_161

def AllocBody293_163 : StackLang.HolProg 64 :=
.call (some (AllocBody293_155, 0, 293, 4)) (Sum.inl 158) (some (AllocBody293_162, 293, 5))

def AllocBody293_164 : StackLang.HolProg 64 :=
.seq AllocBody293_142 AllocBody293_163

def AllocBody293_165 : StackLang.HolProg 64 :=
.seq AllocBody293_141 AllocBody293_164

def AllocBody293_166 : StackLang.HolProg 64 :=
.seq AllocBody293_140 AllocBody293_165

def AllocBody293_167 : StackLang.HolProg 64 :=
.seq AllocBody293_121 AllocBody293_166

def AllocBody293_168 : StackLang.HolProg 64 :=
.seq AllocBody293_118 AllocBody293_167

def AllocBody293_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody293_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody293_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody293_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody293_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551464#64))

def AllocBody293_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody293_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody293_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody293_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody293_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody293_182 : StackLang.HolProg 64 :=
.seq AllocBody293_180 AllocBody293_181

def AllocBody293_183 : StackLang.HolProg 64 :=
.seq AllocBody293_179 AllocBody293_182

def AllocBody293_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 799#64)

def AllocBody293_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody293_187 : StackLang.HolProg 64 :=
.seq AllocBody293_185 AllocBody293_186

def AllocBody293_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody293_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody293_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody293_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 293 7

def AllocBody293_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody293_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody293_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody293_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody293_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody293_198 : StackLang.HolProg 64 :=
.seq AllocBody293_196 AllocBody293_197

def AllocBody293_199 : StackLang.HolProg 64 :=
.seq AllocBody293_195 AllocBody293_198

def AllocBody293_200 : StackLang.HolProg 64 :=
.seq AllocBody293_194 AllocBody293_199

def AllocBody293_201 : StackLang.HolProg 64 :=
.seq AllocBody293_193 AllocBody293_200

def AllocBody293_202 : StackLang.HolProg 64 :=
.seq AllocBody293_192 AllocBody293_201

def AllocBody293_203 : StackLang.HolProg 64 :=
.seq AllocBody293_191 AllocBody293_202

def AllocBody293_204 : StackLang.HolProg 64 :=
.seq AllocBody293_190 AllocBody293_203

def AllocBody293_205 : StackLang.HolProg 64 :=
.seq AllocBody293_189 AllocBody293_204

def AllocBody293_206 : StackLang.HolProg 64 :=
.seq AllocBody293_188 AllocBody293_205

def AllocBody293_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody293_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody293_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody293_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody293_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody293_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody293_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody293_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody293_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody293_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody293_219 : StackLang.HolProg 64 :=
.seq AllocBody293_217 AllocBody293_218

def AllocBody293_220 : StackLang.HolProg 64 :=
.seq AllocBody293_216 AllocBody293_219

def AllocBody293_221 : StackLang.HolProg 64 :=
.seq AllocBody293_215 AllocBody293_220

def AllocBody293_222 : StackLang.HolProg 64 :=
.seq AllocBody293_214 AllocBody293_221

def AllocBody293_223 : StackLang.HolProg 64 :=
.seq AllocBody293_213 AllocBody293_222

def AllocBody293_224 : StackLang.HolProg 64 :=
.seq AllocBody293_212 AllocBody293_223

def AllocBody293_225 : StackLang.HolProg 64 :=
.seq AllocBody293_211 AllocBody293_224

def AllocBody293_226 : StackLang.HolProg 64 :=
.seq AllocBody293_210 AllocBody293_225

def AllocBody293_227 : StackLang.HolProg 64 :=
.seq AllocBody293_209 AllocBody293_226

def AllocBody293_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody293_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody293_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody293_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody293_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody293_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody293_234 : StackLang.HolProg 64 :=
.seq AllocBody293_232 AllocBody293_233

def AllocBody293_235 : StackLang.HolProg 64 :=
.seq AllocBody293_231 AllocBody293_234

def AllocBody293_236 : StackLang.HolProg 64 :=
.seq AllocBody293_230 AllocBody293_235

def AllocBody293_237 : StackLang.HolProg 64 :=
.seq AllocBody293_229 AllocBody293_236

def AllocBody293_238 : StackLang.HolProg 64 :=
.seq AllocBody293_228 AllocBody293_237

def AllocBody293_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody293_240 : StackLang.HolProg 64 :=
.seq AllocBody293_238 AllocBody293_239

def AllocBody293_241 : StackLang.HolProg 64 :=
.call (some (AllocBody293_227, 0, 293, 6)) (Sum.inl 192) (some (AllocBody293_240, 293, 7))

def AllocBody293_242 : StackLang.HolProg 64 :=
.seq AllocBody293_208 AllocBody293_241

def AllocBody293_243 : StackLang.HolProg 64 :=
.seq AllocBody293_207 AllocBody293_242

def AllocBody293_244 : StackLang.HolProg 64 :=
.seq AllocBody293_206 AllocBody293_243

def AllocBody293_245 : StackLang.HolProg 64 :=
.seq AllocBody293_187 AllocBody293_244

def AllocBody293_246 : StackLang.HolProg 64 :=
.seq AllocBody293_184 AllocBody293_245

def AllocBody293_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody293_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody293_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody293_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody293_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody293_253 : StackLang.HolProg 64 :=
.seq AllocBody293_251 AllocBody293_252

def AllocBody293_254 : StackLang.HolProg 64 :=
.seq AllocBody293_250 AllocBody293_253

def AllocBody293_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody293_256 : StackLang.HolProg 64 :=
.seq AllocBody293_254 AllocBody293_255

def AllocBody293_257 : StackLang.HolProg 64 :=
.seq AllocBody293_249 AllocBody293_256

def AllocBody293_258 : StackLang.HolProg 64 :=
.seq AllocBody293_248 AllocBody293_257

def AllocBody293_259 : StackLang.HolProg 64 :=
.seq AllocBody293_247 AllocBody293_258

def AllocBody293_260 : StackLang.HolProg 64 :=
.seq AllocBody293_246 AllocBody293_259

def AllocBody293_261 : StackLang.HolProg 64 :=
.seq AllocBody293_183 AllocBody293_260

def AllocBody293_262 : StackLang.HolProg 64 :=
.seq AllocBody293_178 AllocBody293_261

def AllocBody293_263 : StackLang.HolProg 64 :=
.seq AllocBody293_177 AllocBody293_262

def AllocBody293_264 : StackLang.HolProg 64 :=
.seq AllocBody293_176 AllocBody293_263

def AllocBody293_265 : StackLang.HolProg 64 :=
.seq AllocBody293_175 AllocBody293_264

def AllocBody293_266 : StackLang.HolProg 64 :=
.seq AllocBody293_174 AllocBody293_265

def AllocBody293_267 : StackLang.HolProg 64 :=
.seq AllocBody293_173 AllocBody293_266

def AllocBody293_268 : StackLang.HolProg 64 :=
.seq AllocBody293_172 AllocBody293_267

def AllocBody293_269 : StackLang.HolProg 64 :=
.seq AllocBody293_171 AllocBody293_268

def AllocBody293_270 : StackLang.HolProg 64 :=
.seq AllocBody293_170 AllocBody293_269

def AllocBody293_271 : StackLang.HolProg 64 :=
.seq AllocBody293_169 AllocBody293_270

def AllocBody293_272 : StackLang.HolProg 64 :=
.seq AllocBody293_168 AllocBody293_271

def AllocBody293_273 : StackLang.HolProg 64 :=
.seq AllocBody293_117 AllocBody293_272

def AllocBody293_274 : StackLang.HolProg 64 :=
.seq AllocBody293_108 AllocBody293_273

def AllocBody293_275 : StackLang.HolProg 64 :=
.seq AllocBody293_107 AllocBody293_274

def AllocBody293_276 : StackLang.HolProg 64 :=
.seq AllocBody293_106 AllocBody293_275

def AllocBody293_277 : StackLang.HolProg 64 :=
.seq AllocBody293_105 AllocBody293_276

def AllocBody293_278 : StackLang.HolProg 64 :=
.seq AllocBody293_104 AllocBody293_277

def AllocBody293_279 : StackLang.HolProg 64 :=
.seq AllocBody293_103 AllocBody293_278

def AllocBody293_280 : StackLang.HolProg 64 :=
.seq AllocBody293_100 AllocBody293_279

def AllocBody293_281 : StackLang.HolProg 64 :=
.seq AllocBody293_99 AllocBody293_280

def AllocBody293_282 : StackLang.HolProg 64 :=
.seq AllocBody293_98 AllocBody293_281

def AllocBody293_283 : StackLang.HolProg 64 :=
.seq AllocBody293_97 AllocBody293_282

def AllocBody293_284 : StackLang.HolProg 64 :=
.seq AllocBody293_96 AllocBody293_283

def AllocBody293_285 : StackLang.HolProg 64 :=
.seq AllocBody293_95 AllocBody293_284

def AllocBody293_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody293_288 : StackLang.HolProg 64 :=
.seq AllocBody293_286 AllocBody293_287

def AllocBody293_289 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody293_285 AllocBody293_288

def AllocBody293_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody293_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody293_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody293_294 : StackLang.HolProg 64 :=
.seq AllocBody293_292 AllocBody293_293

def AllocBody293_295 : StackLang.HolProg 64 :=
.seq AllocBody293_291 AllocBody293_294

def AllocBody293_296 : StackLang.HolProg 64 :=
.seq AllocBody293_290 AllocBody293_295

def AllocBody293_297 : StackLang.HolProg 64 :=
.seq AllocBody293_289 AllocBody293_296

def AllocBody293_298 : StackLang.HolProg 64 :=
.seq AllocBody293_94 AllocBody293_297

def AllocBody293_299 : StackLang.HolProg 64 :=
.loop AllocBody293_298

def AllocBody293_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody293_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def AllocBody293_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody293_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody293_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody293_305 : StackLang.HolProg 64 :=
.seq AllocBody293_303 AllocBody293_304

def AllocBody293_306 : StackLang.HolProg 64 :=
.seq AllocBody293_302 AllocBody293_305

def AllocBody293_307 : StackLang.HolProg 64 :=
.seq AllocBody293_301 AllocBody293_306

def AllocBody293_308 : StackLang.HolProg 64 :=
.seq AllocBody293_300 AllocBody293_307

def AllocBody293_309 : StackLang.HolProg 64 :=
.seq AllocBody293_299 AllocBody293_308

def AllocBody293_310 : StackLang.HolProg 64 :=
.seq AllocBody293_93 AllocBody293_309

def AllocBody293_311 : StackLang.HolProg 64 :=
.seq AllocBody293_92 AllocBody293_310

def AllocBody293_312 : StackLang.HolProg 64 :=
.seq AllocBody293_91 AllocBody293_311

def AllocBody293_313 : StackLang.HolProg 64 :=
.seq AllocBody293_90 AllocBody293_312

def AllocBody293_314 : StackLang.HolProg 64 :=
.seq AllocBody293_89 AllocBody293_313

def AllocBody293_315 : StackLang.HolProg 64 :=
.seq AllocBody293_40 AllocBody293_314

def AllocBody293_316 : StackLang.HolProg 64 :=
.seq AllocBody293_39 AllocBody293_315

def AllocBody293_317 : StackLang.HolProg 64 :=
.seq AllocBody293_38 AllocBody293_316

def AllocBody293_318 : StackLang.HolProg 64 :=
.seq AllocBody293_37 AllocBody293_317

def AllocBody293_319 : StackLang.HolProg 64 :=
.seq AllocBody293_36 AllocBody293_318

def AllocBody293_320 : StackLang.HolProg 64 :=
.seq AllocBody293_10 AllocBody293_319

def AllocBody293_321 : StackLang.HolProg 64 :=
.seq AllocBody293_3 AllocBody293_320

def AllocBody293_322 : StackLang.HolProg 64 :=
.seq AllocBody293_2 AllocBody293_321

def AllocBody293_323 : StackLang.HolProg 64 :=
.seq AllocBody293_1 AllocBody293_322

def AllocBody293_324 : StackLang.HolProg 64 :=
.seq AllocBody293_0 AllocBody293_323

def Alloc293 : Nat × StackLang.HolProg 64 := (293, AllocBody293_324)
theorem Alloc293_eq : StackAlloc.progComp (293, raw293) = Alloc293 := by
  kernel_rfl
#print axioms Alloc293_eq
end InitECandidate.Proofs.BackendStages
