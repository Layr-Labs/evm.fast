import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw571
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody571_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody571_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def AllocBody571_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody571_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1988#64)

def AllocBody571_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_7 : StackLang.HolProg 64 :=
.seq AllocBody571_5 AllocBody571_6

def AllocBody571_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody571_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody571_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 3

def AllocBody571_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody571_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody571_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody571_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody571_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_18 : StackLang.HolProg 64 :=
.seq AllocBody571_16 AllocBody571_17

def AllocBody571_19 : StackLang.HolProg 64 :=
.seq AllocBody571_15 AllocBody571_18

def AllocBody571_20 : StackLang.HolProg 64 :=
.seq AllocBody571_14 AllocBody571_19

def AllocBody571_21 : StackLang.HolProg 64 :=
.seq AllocBody571_13 AllocBody571_20

def AllocBody571_22 : StackLang.HolProg 64 :=
.seq AllocBody571_12 AllocBody571_21

def AllocBody571_23 : StackLang.HolProg 64 :=
.seq AllocBody571_11 AllocBody571_22

def AllocBody571_24 : StackLang.HolProg 64 :=
.seq AllocBody571_10 AllocBody571_23

def AllocBody571_25 : StackLang.HolProg 64 :=
.seq AllocBody571_9 AllocBody571_24

def AllocBody571_26 : StackLang.HolProg 64 :=
.seq AllocBody571_8 AllocBody571_25

def AllocBody571_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody571_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody571_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody571_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_34 : StackLang.HolProg 64 :=
.seq AllocBody571_32 AllocBody571_33

def AllocBody571_35 : StackLang.HolProg 64 :=
.seq AllocBody571_31 AllocBody571_34

def AllocBody571_36 : StackLang.HolProg 64 :=
.seq AllocBody571_30 AllocBody571_35

def AllocBody571_37 : StackLang.HolProg 64 :=
.seq AllocBody571_29 AllocBody571_36

def AllocBody571_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody571_40 : StackLang.HolProg 64 :=
.seq AllocBody571_38 AllocBody571_39

def AllocBody571_41 : StackLang.HolProg 64 :=
.call (some (AllocBody571_37, 0, 571, 2)) (Sum.inl 470) (some (AllocBody571_40, 571, 3))

def AllocBody571_42 : StackLang.HolProg 64 :=
.seq AllocBody571_28 AllocBody571_41

def AllocBody571_43 : StackLang.HolProg 64 :=
.seq AllocBody571_27 AllocBody571_42

def AllocBody571_44 : StackLang.HolProg 64 :=
.seq AllocBody571_26 AllocBody571_43

def AllocBody571_45 : StackLang.HolProg 64 :=
.seq AllocBody571_7 AllocBody571_44

def AllocBody571_46 : StackLang.HolProg 64 :=
.seq AllocBody571_4 AllocBody571_45

def AllocBody571_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody571_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody571_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody571_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody571_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody571_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def AllocBody571_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody571_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1989#64)

def AllocBody571_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_58 : StackLang.HolProg 64 :=
.seq AllocBody571_56 AllocBody571_57

def AllocBody571_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody571_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody571_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 5

def AllocBody571_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody571_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody571_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody571_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody571_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_69 : StackLang.HolProg 64 :=
.seq AllocBody571_67 AllocBody571_68

def AllocBody571_70 : StackLang.HolProg 64 :=
.seq AllocBody571_66 AllocBody571_69

def AllocBody571_71 : StackLang.HolProg 64 :=
.seq AllocBody571_65 AllocBody571_70

def AllocBody571_72 : StackLang.HolProg 64 :=
.seq AllocBody571_64 AllocBody571_71

def AllocBody571_73 : StackLang.HolProg 64 :=
.seq AllocBody571_63 AllocBody571_72

def AllocBody571_74 : StackLang.HolProg 64 :=
.seq AllocBody571_62 AllocBody571_73

def AllocBody571_75 : StackLang.HolProg 64 :=
.seq AllocBody571_61 AllocBody571_74

def AllocBody571_76 : StackLang.HolProg 64 :=
.seq AllocBody571_60 AllocBody571_75

def AllocBody571_77 : StackLang.HolProg 64 :=
.seq AllocBody571_59 AllocBody571_76

def AllocBody571_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody571_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody571_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody571_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody571_85 : StackLang.HolProg 64 :=
.seq AllocBody571_83 AllocBody571_84

def AllocBody571_86 : StackLang.HolProg 64 :=
.seq AllocBody571_82 AllocBody571_85

def AllocBody571_87 : StackLang.HolProg 64 :=
.seq AllocBody571_81 AllocBody571_86

def AllocBody571_88 : StackLang.HolProg 64 :=
.seq AllocBody571_80 AllocBody571_87

def AllocBody571_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody571_91 : StackLang.HolProg 64 :=
.seq AllocBody571_89 AllocBody571_90

def AllocBody571_92 : StackLang.HolProg 64 :=
.call (some (AllocBody571_88, 0, 571, 4)) (Sum.inl 407) (some (AllocBody571_91, 571, 5))

def AllocBody571_93 : StackLang.HolProg 64 :=
.seq AllocBody571_79 AllocBody571_92

def AllocBody571_94 : StackLang.HolProg 64 :=
.seq AllocBody571_78 AllocBody571_93

def AllocBody571_95 : StackLang.HolProg 64 :=
.seq AllocBody571_77 AllocBody571_94

def AllocBody571_96 : StackLang.HolProg 64 :=
.seq AllocBody571_58 AllocBody571_95

def AllocBody571_97 : StackLang.HolProg 64 :=
.seq AllocBody571_55 AllocBody571_96

def AllocBody571_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody571_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody571_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody571_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody571_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody571_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1990#64)

def AllocBody571_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_111 : StackLang.HolProg 64 :=
.seq AllocBody571_109 AllocBody571_110

def AllocBody571_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody571_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody571_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 7

def AllocBody571_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody571_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody571_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody571_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody571_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_122 : StackLang.HolProg 64 :=
.seq AllocBody571_120 AllocBody571_121

def AllocBody571_123 : StackLang.HolProg 64 :=
.seq AllocBody571_119 AllocBody571_122

def AllocBody571_124 : StackLang.HolProg 64 :=
.seq AllocBody571_118 AllocBody571_123

def AllocBody571_125 : StackLang.HolProg 64 :=
.seq AllocBody571_117 AllocBody571_124

def AllocBody571_126 : StackLang.HolProg 64 :=
.seq AllocBody571_116 AllocBody571_125

def AllocBody571_127 : StackLang.HolProg 64 :=
.seq AllocBody571_115 AllocBody571_126

def AllocBody571_128 : StackLang.HolProg 64 :=
.seq AllocBody571_114 AllocBody571_127

def AllocBody571_129 : StackLang.HolProg 64 :=
.seq AllocBody571_113 AllocBody571_128

def AllocBody571_130 : StackLang.HolProg 64 :=
.seq AllocBody571_112 AllocBody571_129

def AllocBody571_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody571_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody571_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody571_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_138 : StackLang.HolProg 64 :=
.seq AllocBody571_136 AllocBody571_137

def AllocBody571_139 : StackLang.HolProg 64 :=
.seq AllocBody571_135 AllocBody571_138

def AllocBody571_140 : StackLang.HolProg 64 :=
.seq AllocBody571_134 AllocBody571_139

def AllocBody571_141 : StackLang.HolProg 64 :=
.seq AllocBody571_133 AllocBody571_140

def AllocBody571_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody571_144 : StackLang.HolProg 64 :=
.seq AllocBody571_142 AllocBody571_143

def AllocBody571_145 : StackLang.HolProg 64 :=
.call (some (AllocBody571_141, 0, 571, 6)) (Sum.inl 476) (some (AllocBody571_144, 571, 7))

def AllocBody571_146 : StackLang.HolProg 64 :=
.seq AllocBody571_132 AllocBody571_145

def AllocBody571_147 : StackLang.HolProg 64 :=
.seq AllocBody571_131 AllocBody571_146

def AllocBody571_148 : StackLang.HolProg 64 :=
.seq AllocBody571_130 AllocBody571_147

def AllocBody571_149 : StackLang.HolProg 64 :=
.seq AllocBody571_111 AllocBody571_148

def AllocBody571_150 : StackLang.HolProg 64 :=
.seq AllocBody571_108 AllocBody571_149

def AllocBody571_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody571_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody571_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1991#64)

def AllocBody571_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_157 : StackLang.HolProg 64 :=
.seq AllocBody571_155 AllocBody571_156

def AllocBody571_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody571_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody571_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody571_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 571 9

def AllocBody571_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody571_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody571_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody571_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody571_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_168 : StackLang.HolProg 64 :=
.seq AllocBody571_166 AllocBody571_167

def AllocBody571_169 : StackLang.HolProg 64 :=
.seq AllocBody571_165 AllocBody571_168

def AllocBody571_170 : StackLang.HolProg 64 :=
.seq AllocBody571_164 AllocBody571_169

def AllocBody571_171 : StackLang.HolProg 64 :=
.seq AllocBody571_163 AllocBody571_170

def AllocBody571_172 : StackLang.HolProg 64 :=
.seq AllocBody571_162 AllocBody571_171

def AllocBody571_173 : StackLang.HolProg 64 :=
.seq AllocBody571_161 AllocBody571_172

def AllocBody571_174 : StackLang.HolProg 64 :=
.seq AllocBody571_160 AllocBody571_173

def AllocBody571_175 : StackLang.HolProg 64 :=
.seq AllocBody571_159 AllocBody571_174

def AllocBody571_176 : StackLang.HolProg 64 :=
.seq AllocBody571_158 AllocBody571_175

def AllocBody571_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody571_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody571_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody571_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody571_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody571_184 : StackLang.HolProg 64 :=
.seq AllocBody571_182 AllocBody571_183

def AllocBody571_185 : StackLang.HolProg 64 :=
.seq AllocBody571_181 AllocBody571_184

def AllocBody571_186 : StackLang.HolProg 64 :=
.seq AllocBody571_180 AllocBody571_185

def AllocBody571_187 : StackLang.HolProg 64 :=
.seq AllocBody571_179 AllocBody571_186

def AllocBody571_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody571_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody571_190 : StackLang.HolProg 64 :=
.seq AllocBody571_188 AllocBody571_189

def AllocBody571_191 : StackLang.HolProg 64 :=
.call (some (AllocBody571_187, 0, 571, 8)) (Sum.inl 490) (some (AllocBody571_190, 571, 9))

def AllocBody571_192 : StackLang.HolProg 64 :=
.seq AllocBody571_178 AllocBody571_191

def AllocBody571_193 : StackLang.HolProg 64 :=
.seq AllocBody571_177 AllocBody571_192

def AllocBody571_194 : StackLang.HolProg 64 :=
.seq AllocBody571_176 AllocBody571_193

def AllocBody571_195 : StackLang.HolProg 64 :=
.seq AllocBody571_157 AllocBody571_194

def AllocBody571_196 : StackLang.HolProg 64 :=
.seq AllocBody571_154 AllocBody571_195

def AllocBody571_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody571_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody571_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody571_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody571_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody571_202 : StackLang.HolProg 64 :=
.seq AllocBody571_200 AllocBody571_201

def AllocBody571_203 : StackLang.HolProg 64 :=
.seq AllocBody571_199 AllocBody571_202

def AllocBody571_204 : StackLang.HolProg 64 :=
.seq AllocBody571_198 AllocBody571_203

def AllocBody571_205 : StackLang.HolProg 64 :=
.seq AllocBody571_197 AllocBody571_204

def AllocBody571_206 : StackLang.HolProg 64 :=
.seq AllocBody571_196 AllocBody571_205

def AllocBody571_207 : StackLang.HolProg 64 :=
.seq AllocBody571_153 AllocBody571_206

def AllocBody571_208 : StackLang.HolProg 64 :=
.seq AllocBody571_152 AllocBody571_207

def AllocBody571_209 : StackLang.HolProg 64 :=
.seq AllocBody571_151 AllocBody571_208

def AllocBody571_210 : StackLang.HolProg 64 :=
.seq AllocBody571_150 AllocBody571_209

def AllocBody571_211 : StackLang.HolProg 64 :=
.seq AllocBody571_107 AllocBody571_210

def AllocBody571_212 : StackLang.HolProg 64 :=
.seq AllocBody571_106 AllocBody571_211

def AllocBody571_213 : StackLang.HolProg 64 :=
.seq AllocBody571_105 AllocBody571_212

def AllocBody571_214 : StackLang.HolProg 64 :=
.seq AllocBody571_104 AllocBody571_213

def AllocBody571_215 : StackLang.HolProg 64 :=
.seq AllocBody571_103 AllocBody571_214

def AllocBody571_216 : StackLang.HolProg 64 :=
.seq AllocBody571_102 AllocBody571_215

def AllocBody571_217 : StackLang.HolProg 64 :=
.seq AllocBody571_101 AllocBody571_216

def AllocBody571_218 : StackLang.HolProg 64 :=
.seq AllocBody571_100 AllocBody571_217

def AllocBody571_219 : StackLang.HolProg 64 :=
.seq AllocBody571_99 AllocBody571_218

def AllocBody571_220 : StackLang.HolProg 64 :=
.seq AllocBody571_98 AllocBody571_219

def AllocBody571_221 : StackLang.HolProg 64 :=
.seq AllocBody571_97 AllocBody571_220

def AllocBody571_222 : StackLang.HolProg 64 :=
.seq AllocBody571_54 AllocBody571_221

def AllocBody571_223 : StackLang.HolProg 64 :=
.seq AllocBody571_53 AllocBody571_222

def AllocBody571_224 : StackLang.HolProg 64 :=
.seq AllocBody571_52 AllocBody571_223

def AllocBody571_225 : StackLang.HolProg 64 :=
.seq AllocBody571_51 AllocBody571_224

def AllocBody571_226 : StackLang.HolProg 64 :=
.seq AllocBody571_50 AllocBody571_225

def AllocBody571_227 : StackLang.HolProg 64 :=
.seq AllocBody571_49 AllocBody571_226

def AllocBody571_228 : StackLang.HolProg 64 :=
.seq AllocBody571_48 AllocBody571_227

def AllocBody571_229 : StackLang.HolProg 64 :=
.seq AllocBody571_47 AllocBody571_228

def AllocBody571_230 : StackLang.HolProg 64 :=
.seq AllocBody571_46 AllocBody571_229

def AllocBody571_231 : StackLang.HolProg 64 :=
.seq AllocBody571_3 AllocBody571_230

def AllocBody571_232 : StackLang.HolProg 64 :=
.seq AllocBody571_2 AllocBody571_231

def AllocBody571_233 : StackLang.HolProg 64 :=
.seq AllocBody571_1 AllocBody571_232

def AllocBody571_234 : StackLang.HolProg 64 :=
.seq AllocBody571_0 AllocBody571_233

def Alloc571 : Nat × StackLang.HolProg 64 := (571, AllocBody571_234)
theorem Alloc571_eq : StackAlloc.progComp (571, raw571) = Alloc571 := by
  kernel_rfl
#print axioms Alloc571_eq
end InitECandidate.Proofs.BackendStages
