import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw556
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody556_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody556_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody556_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody556_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1891#64)

def AllocBody556_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_7 : StackLang.HolProg 64 :=
.seq AllocBody556_5 AllocBody556_6

def AllocBody556_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody556_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody556_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 3

def AllocBody556_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody556_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody556_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody556_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody556_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_18 : StackLang.HolProg 64 :=
.seq AllocBody556_16 AllocBody556_17

def AllocBody556_19 : StackLang.HolProg 64 :=
.seq AllocBody556_15 AllocBody556_18

def AllocBody556_20 : StackLang.HolProg 64 :=
.seq AllocBody556_14 AllocBody556_19

def AllocBody556_21 : StackLang.HolProg 64 :=
.seq AllocBody556_13 AllocBody556_20

def AllocBody556_22 : StackLang.HolProg 64 :=
.seq AllocBody556_12 AllocBody556_21

def AllocBody556_23 : StackLang.HolProg 64 :=
.seq AllocBody556_11 AllocBody556_22

def AllocBody556_24 : StackLang.HolProg 64 :=
.seq AllocBody556_10 AllocBody556_23

def AllocBody556_25 : StackLang.HolProg 64 :=
.seq AllocBody556_9 AllocBody556_24

def AllocBody556_26 : StackLang.HolProg 64 :=
.seq AllocBody556_8 AllocBody556_25

def AllocBody556_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody556_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody556_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody556_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_34 : StackLang.HolProg 64 :=
.seq AllocBody556_32 AllocBody556_33

def AllocBody556_35 : StackLang.HolProg 64 :=
.seq AllocBody556_31 AllocBody556_34

def AllocBody556_36 : StackLang.HolProg 64 :=
.seq AllocBody556_30 AllocBody556_35

def AllocBody556_37 : StackLang.HolProg 64 :=
.seq AllocBody556_29 AllocBody556_36

def AllocBody556_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody556_40 : StackLang.HolProg 64 :=
.seq AllocBody556_38 AllocBody556_39

def AllocBody556_41 : StackLang.HolProg 64 :=
.call (some (AllocBody556_37, 0, 556, 2)) (Sum.inl 470) (some (AllocBody556_40, 556, 3))

def AllocBody556_42 : StackLang.HolProg 64 :=
.seq AllocBody556_28 AllocBody556_41

def AllocBody556_43 : StackLang.HolProg 64 :=
.seq AllocBody556_27 AllocBody556_42

def AllocBody556_44 : StackLang.HolProg 64 :=
.seq AllocBody556_26 AllocBody556_43

def AllocBody556_45 : StackLang.HolProg 64 :=
.seq AllocBody556_7 AllocBody556_44

def AllocBody556_46 : StackLang.HolProg 64 :=
.seq AllocBody556_4 AllocBody556_45

def AllocBody556_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody556_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody556_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody556_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody556_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody556_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def AllocBody556_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody556_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1892#64)

def AllocBody556_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_58 : StackLang.HolProg 64 :=
.seq AllocBody556_56 AllocBody556_57

def AllocBody556_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody556_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody556_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 5

def AllocBody556_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody556_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody556_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody556_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody556_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_69 : StackLang.HolProg 64 :=
.seq AllocBody556_67 AllocBody556_68

def AllocBody556_70 : StackLang.HolProg 64 :=
.seq AllocBody556_66 AllocBody556_69

def AllocBody556_71 : StackLang.HolProg 64 :=
.seq AllocBody556_65 AllocBody556_70

def AllocBody556_72 : StackLang.HolProg 64 :=
.seq AllocBody556_64 AllocBody556_71

def AllocBody556_73 : StackLang.HolProg 64 :=
.seq AllocBody556_63 AllocBody556_72

def AllocBody556_74 : StackLang.HolProg 64 :=
.seq AllocBody556_62 AllocBody556_73

def AllocBody556_75 : StackLang.HolProg 64 :=
.seq AllocBody556_61 AllocBody556_74

def AllocBody556_76 : StackLang.HolProg 64 :=
.seq AllocBody556_60 AllocBody556_75

def AllocBody556_77 : StackLang.HolProg 64 :=
.seq AllocBody556_59 AllocBody556_76

def AllocBody556_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody556_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody556_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody556_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody556_85 : StackLang.HolProg 64 :=
.seq AllocBody556_83 AllocBody556_84

def AllocBody556_86 : StackLang.HolProg 64 :=
.seq AllocBody556_82 AllocBody556_85

def AllocBody556_87 : StackLang.HolProg 64 :=
.seq AllocBody556_81 AllocBody556_86

def AllocBody556_88 : StackLang.HolProg 64 :=
.seq AllocBody556_80 AllocBody556_87

def AllocBody556_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody556_91 : StackLang.HolProg 64 :=
.seq AllocBody556_89 AllocBody556_90

def AllocBody556_92 : StackLang.HolProg 64 :=
.call (some (AllocBody556_88, 0, 556, 4)) (Sum.inl 467) (some (AllocBody556_91, 556, 5))

def AllocBody556_93 : StackLang.HolProg 64 :=
.seq AllocBody556_79 AllocBody556_92

def AllocBody556_94 : StackLang.HolProg 64 :=
.seq AllocBody556_78 AllocBody556_93

def AllocBody556_95 : StackLang.HolProg 64 :=
.seq AllocBody556_77 AllocBody556_94

def AllocBody556_96 : StackLang.HolProg 64 :=
.seq AllocBody556_58 AllocBody556_95

def AllocBody556_97 : StackLang.HolProg 64 :=
.seq AllocBody556_55 AllocBody556_96

def AllocBody556_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody556_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody556_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1893#64)

def AllocBody556_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_103 : StackLang.HolProg 64 :=
.seq AllocBody556_101 AllocBody556_102

def AllocBody556_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody556_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody556_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 7

def AllocBody556_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody556_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody556_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody556_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody556_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_114 : StackLang.HolProg 64 :=
.seq AllocBody556_112 AllocBody556_113

def AllocBody556_115 : StackLang.HolProg 64 :=
.seq AllocBody556_111 AllocBody556_114

def AllocBody556_116 : StackLang.HolProg 64 :=
.seq AllocBody556_110 AllocBody556_115

def AllocBody556_117 : StackLang.HolProg 64 :=
.seq AllocBody556_109 AllocBody556_116

def AllocBody556_118 : StackLang.HolProg 64 :=
.seq AllocBody556_108 AllocBody556_117

def AllocBody556_119 : StackLang.HolProg 64 :=
.seq AllocBody556_107 AllocBody556_118

def AllocBody556_120 : StackLang.HolProg 64 :=
.seq AllocBody556_106 AllocBody556_119

def AllocBody556_121 : StackLang.HolProg 64 :=
.seq AllocBody556_105 AllocBody556_120

def AllocBody556_122 : StackLang.HolProg 64 :=
.seq AllocBody556_104 AllocBody556_121

def AllocBody556_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody556_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody556_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody556_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_130 : StackLang.HolProg 64 :=
.seq AllocBody556_128 AllocBody556_129

def AllocBody556_131 : StackLang.HolProg 64 :=
.seq AllocBody556_127 AllocBody556_130

def AllocBody556_132 : StackLang.HolProg 64 :=
.seq AllocBody556_126 AllocBody556_131

def AllocBody556_133 : StackLang.HolProg 64 :=
.seq AllocBody556_125 AllocBody556_132

def AllocBody556_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody556_136 : StackLang.HolProg 64 :=
.seq AllocBody556_134 AllocBody556_135

def AllocBody556_137 : StackLang.HolProg 64 :=
.call (some (AllocBody556_133, 0, 556, 6)) (Sum.inl 476) (some (AllocBody556_136, 556, 7))

def AllocBody556_138 : StackLang.HolProg 64 :=
.seq AllocBody556_124 AllocBody556_137

def AllocBody556_139 : StackLang.HolProg 64 :=
.seq AllocBody556_123 AllocBody556_138

def AllocBody556_140 : StackLang.HolProg 64 :=
.seq AllocBody556_122 AllocBody556_139

def AllocBody556_141 : StackLang.HolProg 64 :=
.seq AllocBody556_103 AllocBody556_140

def AllocBody556_142 : StackLang.HolProg 64 :=
.seq AllocBody556_100 AllocBody556_141

def AllocBody556_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody556_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody556_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1894#64)

def AllocBody556_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_149 : StackLang.HolProg 64 :=
.seq AllocBody556_147 AllocBody556_148

def AllocBody556_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody556_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody556_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody556_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 9

def AllocBody556_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody556_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody556_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody556_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody556_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_160 : StackLang.HolProg 64 :=
.seq AllocBody556_158 AllocBody556_159

def AllocBody556_161 : StackLang.HolProg 64 :=
.seq AllocBody556_157 AllocBody556_160

def AllocBody556_162 : StackLang.HolProg 64 :=
.seq AllocBody556_156 AllocBody556_161

def AllocBody556_163 : StackLang.HolProg 64 :=
.seq AllocBody556_155 AllocBody556_162

def AllocBody556_164 : StackLang.HolProg 64 :=
.seq AllocBody556_154 AllocBody556_163

def AllocBody556_165 : StackLang.HolProg 64 :=
.seq AllocBody556_153 AllocBody556_164

def AllocBody556_166 : StackLang.HolProg 64 :=
.seq AllocBody556_152 AllocBody556_165

def AllocBody556_167 : StackLang.HolProg 64 :=
.seq AllocBody556_151 AllocBody556_166

def AllocBody556_168 : StackLang.HolProg 64 :=
.seq AllocBody556_150 AllocBody556_167

def AllocBody556_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody556_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody556_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody556_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody556_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody556_176 : StackLang.HolProg 64 :=
.seq AllocBody556_174 AllocBody556_175

def AllocBody556_177 : StackLang.HolProg 64 :=
.seq AllocBody556_173 AllocBody556_176

def AllocBody556_178 : StackLang.HolProg 64 :=
.seq AllocBody556_172 AllocBody556_177

def AllocBody556_179 : StackLang.HolProg 64 :=
.seq AllocBody556_171 AllocBody556_178

def AllocBody556_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody556_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody556_182 : StackLang.HolProg 64 :=
.seq AllocBody556_180 AllocBody556_181

def AllocBody556_183 : StackLang.HolProg 64 :=
.call (some (AllocBody556_179, 0, 556, 8)) (Sum.inl 490) (some (AllocBody556_182, 556, 9))

def AllocBody556_184 : StackLang.HolProg 64 :=
.seq AllocBody556_170 AllocBody556_183

def AllocBody556_185 : StackLang.HolProg 64 :=
.seq AllocBody556_169 AllocBody556_184

def AllocBody556_186 : StackLang.HolProg 64 :=
.seq AllocBody556_168 AllocBody556_185

def AllocBody556_187 : StackLang.HolProg 64 :=
.seq AllocBody556_149 AllocBody556_186

def AllocBody556_188 : StackLang.HolProg 64 :=
.seq AllocBody556_146 AllocBody556_187

def AllocBody556_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody556_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody556_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody556_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody556_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody556_194 : StackLang.HolProg 64 :=
.seq AllocBody556_192 AllocBody556_193

def AllocBody556_195 : StackLang.HolProg 64 :=
.seq AllocBody556_191 AllocBody556_194

def AllocBody556_196 : StackLang.HolProg 64 :=
.seq AllocBody556_190 AllocBody556_195

def AllocBody556_197 : StackLang.HolProg 64 :=
.seq AllocBody556_189 AllocBody556_196

def AllocBody556_198 : StackLang.HolProg 64 :=
.seq AllocBody556_188 AllocBody556_197

def AllocBody556_199 : StackLang.HolProg 64 :=
.seq AllocBody556_145 AllocBody556_198

def AllocBody556_200 : StackLang.HolProg 64 :=
.seq AllocBody556_144 AllocBody556_199

def AllocBody556_201 : StackLang.HolProg 64 :=
.seq AllocBody556_143 AllocBody556_200

def AllocBody556_202 : StackLang.HolProg 64 :=
.seq AllocBody556_142 AllocBody556_201

def AllocBody556_203 : StackLang.HolProg 64 :=
.seq AllocBody556_99 AllocBody556_202

def AllocBody556_204 : StackLang.HolProg 64 :=
.seq AllocBody556_98 AllocBody556_203

def AllocBody556_205 : StackLang.HolProg 64 :=
.seq AllocBody556_97 AllocBody556_204

def AllocBody556_206 : StackLang.HolProg 64 :=
.seq AllocBody556_54 AllocBody556_205

def AllocBody556_207 : StackLang.HolProg 64 :=
.seq AllocBody556_53 AllocBody556_206

def AllocBody556_208 : StackLang.HolProg 64 :=
.seq AllocBody556_52 AllocBody556_207

def AllocBody556_209 : StackLang.HolProg 64 :=
.seq AllocBody556_51 AllocBody556_208

def AllocBody556_210 : StackLang.HolProg 64 :=
.seq AllocBody556_50 AllocBody556_209

def AllocBody556_211 : StackLang.HolProg 64 :=
.seq AllocBody556_49 AllocBody556_210

def AllocBody556_212 : StackLang.HolProg 64 :=
.seq AllocBody556_48 AllocBody556_211

def AllocBody556_213 : StackLang.HolProg 64 :=
.seq AllocBody556_47 AllocBody556_212

def AllocBody556_214 : StackLang.HolProg 64 :=
.seq AllocBody556_46 AllocBody556_213

def AllocBody556_215 : StackLang.HolProg 64 :=
.seq AllocBody556_3 AllocBody556_214

def AllocBody556_216 : StackLang.HolProg 64 :=
.seq AllocBody556_2 AllocBody556_215

def AllocBody556_217 : StackLang.HolProg 64 :=
.seq AllocBody556_1 AllocBody556_216

def AllocBody556_218 : StackLang.HolProg 64 :=
.seq AllocBody556_0 AllocBody556_217

def Alloc556 : Nat × StackLang.HolProg 64 := (556, AllocBody556_218)
theorem Alloc556_eq : StackAlloc.progComp (556, raw556) = Alloc556 := by
  kernel_rfl
#print axioms Alloc556_eq
end InitECandidate.Proofs.BackendStages
