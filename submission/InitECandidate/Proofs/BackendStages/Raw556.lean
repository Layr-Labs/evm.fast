import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function556
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody556_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody556_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody556_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody556_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1891#64)

def rawBody556_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_7 : StackLang.HolProg 64 :=
.seq rawBody556_5 rawBody556_6

def rawBody556_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody556_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody556_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 3

def rawBody556_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody556_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody556_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody556_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody556_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_18 : StackLang.HolProg 64 :=
.seq rawBody556_16 rawBody556_17

def rawBody556_19 : StackLang.HolProg 64 :=
.seq rawBody556_15 rawBody556_18

def rawBody556_20 : StackLang.HolProg 64 :=
.seq rawBody556_14 rawBody556_19

def rawBody556_21 : StackLang.HolProg 64 :=
.seq rawBody556_13 rawBody556_20

def rawBody556_22 : StackLang.HolProg 64 :=
.seq rawBody556_12 rawBody556_21

def rawBody556_23 : StackLang.HolProg 64 :=
.seq rawBody556_11 rawBody556_22

def rawBody556_24 : StackLang.HolProg 64 :=
.seq rawBody556_10 rawBody556_23

def rawBody556_25 : StackLang.HolProg 64 :=
.seq rawBody556_9 rawBody556_24

def rawBody556_26 : StackLang.HolProg 64 :=
.seq rawBody556_8 rawBody556_25

def rawBody556_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody556_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody556_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody556_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_34 : StackLang.HolProg 64 :=
.seq rawBody556_32 rawBody556_33

def rawBody556_35 : StackLang.HolProg 64 :=
.seq rawBody556_31 rawBody556_34

def rawBody556_36 : StackLang.HolProg 64 :=
.seq rawBody556_30 rawBody556_35

def rawBody556_37 : StackLang.HolProg 64 :=
.seq rawBody556_29 rawBody556_36

def rawBody556_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody556_40 : StackLang.HolProg 64 :=
.seq rawBody556_38 rawBody556_39

def rawBody556_41 : StackLang.HolProg 64 :=
.call (some (rawBody556_37, 0, 556, 2)) (Sum.inl 470) (some (rawBody556_40, 556, 3))

def rawBody556_42 : StackLang.HolProg 64 :=
.seq rawBody556_28 rawBody556_41

def rawBody556_43 : StackLang.HolProg 64 :=
.seq rawBody556_27 rawBody556_42

def rawBody556_44 : StackLang.HolProg 64 :=
.seq rawBody556_26 rawBody556_43

def rawBody556_45 : StackLang.HolProg 64 :=
.seq rawBody556_7 rawBody556_44

def rawBody556_46 : StackLang.HolProg 64 :=
.seq rawBody556_4 rawBody556_45

def rawBody556_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody556_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody556_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody556_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody556_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody556_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def rawBody556_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody556_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1892#64)

def rawBody556_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_58 : StackLang.HolProg 64 :=
.seq rawBody556_56 rawBody556_57

def rawBody556_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody556_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody556_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 5

def rawBody556_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody556_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody556_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody556_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody556_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_69 : StackLang.HolProg 64 :=
.seq rawBody556_67 rawBody556_68

def rawBody556_70 : StackLang.HolProg 64 :=
.seq rawBody556_66 rawBody556_69

def rawBody556_71 : StackLang.HolProg 64 :=
.seq rawBody556_65 rawBody556_70

def rawBody556_72 : StackLang.HolProg 64 :=
.seq rawBody556_64 rawBody556_71

def rawBody556_73 : StackLang.HolProg 64 :=
.seq rawBody556_63 rawBody556_72

def rawBody556_74 : StackLang.HolProg 64 :=
.seq rawBody556_62 rawBody556_73

def rawBody556_75 : StackLang.HolProg 64 :=
.seq rawBody556_61 rawBody556_74

def rawBody556_76 : StackLang.HolProg 64 :=
.seq rawBody556_60 rawBody556_75

def rawBody556_77 : StackLang.HolProg 64 :=
.seq rawBody556_59 rawBody556_76

def rawBody556_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody556_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody556_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody556_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody556_85 : StackLang.HolProg 64 :=
.seq rawBody556_83 rawBody556_84

def rawBody556_86 : StackLang.HolProg 64 :=
.seq rawBody556_82 rawBody556_85

def rawBody556_87 : StackLang.HolProg 64 :=
.seq rawBody556_81 rawBody556_86

def rawBody556_88 : StackLang.HolProg 64 :=
.seq rawBody556_80 rawBody556_87

def rawBody556_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody556_91 : StackLang.HolProg 64 :=
.seq rawBody556_89 rawBody556_90

def rawBody556_92 : StackLang.HolProg 64 :=
.call (some (rawBody556_88, 0, 556, 4)) (Sum.inl 467) (some (rawBody556_91, 556, 5))

def rawBody556_93 : StackLang.HolProg 64 :=
.seq rawBody556_79 rawBody556_92

def rawBody556_94 : StackLang.HolProg 64 :=
.seq rawBody556_78 rawBody556_93

def rawBody556_95 : StackLang.HolProg 64 :=
.seq rawBody556_77 rawBody556_94

def rawBody556_96 : StackLang.HolProg 64 :=
.seq rawBody556_58 rawBody556_95

def rawBody556_97 : StackLang.HolProg 64 :=
.seq rawBody556_55 rawBody556_96

def rawBody556_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody556_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody556_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1893#64)

def rawBody556_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_103 : StackLang.HolProg 64 :=
.seq rawBody556_101 rawBody556_102

def rawBody556_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody556_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody556_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 7

def rawBody556_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody556_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody556_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody556_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody556_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_114 : StackLang.HolProg 64 :=
.seq rawBody556_112 rawBody556_113

def rawBody556_115 : StackLang.HolProg 64 :=
.seq rawBody556_111 rawBody556_114

def rawBody556_116 : StackLang.HolProg 64 :=
.seq rawBody556_110 rawBody556_115

def rawBody556_117 : StackLang.HolProg 64 :=
.seq rawBody556_109 rawBody556_116

def rawBody556_118 : StackLang.HolProg 64 :=
.seq rawBody556_108 rawBody556_117

def rawBody556_119 : StackLang.HolProg 64 :=
.seq rawBody556_107 rawBody556_118

def rawBody556_120 : StackLang.HolProg 64 :=
.seq rawBody556_106 rawBody556_119

def rawBody556_121 : StackLang.HolProg 64 :=
.seq rawBody556_105 rawBody556_120

def rawBody556_122 : StackLang.HolProg 64 :=
.seq rawBody556_104 rawBody556_121

def rawBody556_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody556_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody556_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody556_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_130 : StackLang.HolProg 64 :=
.seq rawBody556_128 rawBody556_129

def rawBody556_131 : StackLang.HolProg 64 :=
.seq rawBody556_127 rawBody556_130

def rawBody556_132 : StackLang.HolProg 64 :=
.seq rawBody556_126 rawBody556_131

def rawBody556_133 : StackLang.HolProg 64 :=
.seq rawBody556_125 rawBody556_132

def rawBody556_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody556_136 : StackLang.HolProg 64 :=
.seq rawBody556_134 rawBody556_135

def rawBody556_137 : StackLang.HolProg 64 :=
.call (some (rawBody556_133, 0, 556, 6)) (Sum.inl 476) (some (rawBody556_136, 556, 7))

def rawBody556_138 : StackLang.HolProg 64 :=
.seq rawBody556_124 rawBody556_137

def rawBody556_139 : StackLang.HolProg 64 :=
.seq rawBody556_123 rawBody556_138

def rawBody556_140 : StackLang.HolProg 64 :=
.seq rawBody556_122 rawBody556_139

def rawBody556_141 : StackLang.HolProg 64 :=
.seq rawBody556_103 rawBody556_140

def rawBody556_142 : StackLang.HolProg 64 :=
.seq rawBody556_100 rawBody556_141

def rawBody556_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody556_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody556_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1894#64)

def rawBody556_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_149 : StackLang.HolProg 64 :=
.seq rawBody556_147 rawBody556_148

def rawBody556_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody556_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody556_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody556_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 556 9

def rawBody556_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody556_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody556_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody556_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody556_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_160 : StackLang.HolProg 64 :=
.seq rawBody556_158 rawBody556_159

def rawBody556_161 : StackLang.HolProg 64 :=
.seq rawBody556_157 rawBody556_160

def rawBody556_162 : StackLang.HolProg 64 :=
.seq rawBody556_156 rawBody556_161

def rawBody556_163 : StackLang.HolProg 64 :=
.seq rawBody556_155 rawBody556_162

def rawBody556_164 : StackLang.HolProg 64 :=
.seq rawBody556_154 rawBody556_163

def rawBody556_165 : StackLang.HolProg 64 :=
.seq rawBody556_153 rawBody556_164

def rawBody556_166 : StackLang.HolProg 64 :=
.seq rawBody556_152 rawBody556_165

def rawBody556_167 : StackLang.HolProg 64 :=
.seq rawBody556_151 rawBody556_166

def rawBody556_168 : StackLang.HolProg 64 :=
.seq rawBody556_150 rawBody556_167

def rawBody556_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody556_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody556_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody556_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody556_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody556_176 : StackLang.HolProg 64 :=
.seq rawBody556_174 rawBody556_175

def rawBody556_177 : StackLang.HolProg 64 :=
.seq rawBody556_173 rawBody556_176

def rawBody556_178 : StackLang.HolProg 64 :=
.seq rawBody556_172 rawBody556_177

def rawBody556_179 : StackLang.HolProg 64 :=
.seq rawBody556_171 rawBody556_178

def rawBody556_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody556_181 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody556_182 : StackLang.HolProg 64 :=
.seq rawBody556_180 rawBody556_181

def rawBody556_183 : StackLang.HolProg 64 :=
.call (some (rawBody556_179, 0, 556, 8)) (Sum.inl 490) (some (rawBody556_182, 556, 9))

def rawBody556_184 : StackLang.HolProg 64 :=
.seq rawBody556_170 rawBody556_183

def rawBody556_185 : StackLang.HolProg 64 :=
.seq rawBody556_169 rawBody556_184

def rawBody556_186 : StackLang.HolProg 64 :=
.seq rawBody556_168 rawBody556_185

def rawBody556_187 : StackLang.HolProg 64 :=
.seq rawBody556_149 rawBody556_186

def rawBody556_188 : StackLang.HolProg 64 :=
.seq rawBody556_146 rawBody556_187

def rawBody556_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody556_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody556_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody556_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody556_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody556_194 : StackLang.HolProg 64 :=
.seq rawBody556_192 rawBody556_193

def rawBody556_195 : StackLang.HolProg 64 :=
.seq rawBody556_191 rawBody556_194

def rawBody556_196 : StackLang.HolProg 64 :=
.seq rawBody556_190 rawBody556_195

def rawBody556_197 : StackLang.HolProg 64 :=
.seq rawBody556_189 rawBody556_196

def rawBody556_198 : StackLang.HolProg 64 :=
.seq rawBody556_188 rawBody556_197

def rawBody556_199 : StackLang.HolProg 64 :=
.seq rawBody556_145 rawBody556_198

def rawBody556_200 : StackLang.HolProg 64 :=
.seq rawBody556_144 rawBody556_199

def rawBody556_201 : StackLang.HolProg 64 :=
.seq rawBody556_143 rawBody556_200

def rawBody556_202 : StackLang.HolProg 64 :=
.seq rawBody556_142 rawBody556_201

def rawBody556_203 : StackLang.HolProg 64 :=
.seq rawBody556_99 rawBody556_202

def rawBody556_204 : StackLang.HolProg 64 :=
.seq rawBody556_98 rawBody556_203

def rawBody556_205 : StackLang.HolProg 64 :=
.seq rawBody556_97 rawBody556_204

def rawBody556_206 : StackLang.HolProg 64 :=
.seq rawBody556_54 rawBody556_205

def rawBody556_207 : StackLang.HolProg 64 :=
.seq rawBody556_53 rawBody556_206

def rawBody556_208 : StackLang.HolProg 64 :=
.seq rawBody556_52 rawBody556_207

def rawBody556_209 : StackLang.HolProg 64 :=
.seq rawBody556_51 rawBody556_208

def rawBody556_210 : StackLang.HolProg 64 :=
.seq rawBody556_50 rawBody556_209

def rawBody556_211 : StackLang.HolProg 64 :=
.seq rawBody556_49 rawBody556_210

def rawBody556_212 : StackLang.HolProg 64 :=
.seq rawBody556_48 rawBody556_211

def rawBody556_213 : StackLang.HolProg 64 :=
.seq rawBody556_47 rawBody556_212

def rawBody556_214 : StackLang.HolProg 64 :=
.seq rawBody556_46 rawBody556_213

def rawBody556_215 : StackLang.HolProg 64 :=
.seq rawBody556_3 rawBody556_214

def rawBody556_216 : StackLang.HolProg 64 :=
.seq rawBody556_2 rawBody556_215

def rawBody556_217 : StackLang.HolProg 64 :=
.seq rawBody556_1 rawBody556_216

def rawBody556_218 : StackLang.HolProg 64 :=
.seq rawBody556_0 rawBody556_217

def raw556 : StackLang.HolProg 64 := rawBody556_218
theorem raw556_eq : StackRawCall.compTop RawInfo.rawInfo (function556 (.list [])).1 = raw556 := by
  kernel_rfl
#print axioms raw556_eq
end InitECandidate.Proofs.BackendStages
