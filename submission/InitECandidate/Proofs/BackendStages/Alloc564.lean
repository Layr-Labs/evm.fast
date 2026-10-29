import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw564
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody564_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody564_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody564_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody564_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1929#64)

def AllocBody564_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody564_7 : StackLang.HolProg 64 :=
.seq AllocBody564_5 AllocBody564_6

def AllocBody564_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody564_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody564_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody564_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 3

def AllocBody564_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody564_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody564_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody564_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody564_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody564_18 : StackLang.HolProg 64 :=
.seq AllocBody564_16 AllocBody564_17

def AllocBody564_19 : StackLang.HolProg 64 :=
.seq AllocBody564_15 AllocBody564_18

def AllocBody564_20 : StackLang.HolProg 64 :=
.seq AllocBody564_14 AllocBody564_19

def AllocBody564_21 : StackLang.HolProg 64 :=
.seq AllocBody564_13 AllocBody564_20

def AllocBody564_22 : StackLang.HolProg 64 :=
.seq AllocBody564_12 AllocBody564_21

def AllocBody564_23 : StackLang.HolProg 64 :=
.seq AllocBody564_11 AllocBody564_22

def AllocBody564_24 : StackLang.HolProg 64 :=
.seq AllocBody564_10 AllocBody564_23

def AllocBody564_25 : StackLang.HolProg 64 :=
.seq AllocBody564_9 AllocBody564_24

def AllocBody564_26 : StackLang.HolProg 64 :=
.seq AllocBody564_8 AllocBody564_25

def AllocBody564_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody564_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody564_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody564_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody564_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_34 : StackLang.HolProg 64 :=
.seq AllocBody564_32 AllocBody564_33

def AllocBody564_35 : StackLang.HolProg 64 :=
.seq AllocBody564_31 AllocBody564_34

def AllocBody564_36 : StackLang.HolProg 64 :=
.seq AllocBody564_30 AllocBody564_35

def AllocBody564_37 : StackLang.HolProg 64 :=
.seq AllocBody564_29 AllocBody564_36

def AllocBody564_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody564_40 : StackLang.HolProg 64 :=
.seq AllocBody564_38 AllocBody564_39

def AllocBody564_41 : StackLang.HolProg 64 :=
.call (some (AllocBody564_37, 0, 564, 2)) (Sum.inl 470) (some (AllocBody564_40, 564, 3))

def AllocBody564_42 : StackLang.HolProg 64 :=
.seq AllocBody564_28 AllocBody564_41

def AllocBody564_43 : StackLang.HolProg 64 :=
.seq AllocBody564_27 AllocBody564_42

def AllocBody564_44 : StackLang.HolProg 64 :=
.seq AllocBody564_26 AllocBody564_43

def AllocBody564_45 : StackLang.HolProg 64 :=
.seq AllocBody564_7 AllocBody564_44

def AllocBody564_46 : StackLang.HolProg 64 :=
.seq AllocBody564_4 AllocBody564_45

def AllocBody564_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody564_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody564_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody564_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody564_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody564_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def AllocBody564_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody564_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody564_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def AllocBody564_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def AllocBody564_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 72#64))

def AllocBody564_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1930#64)

def AllocBody564_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody564_66 : StackLang.HolProg 64 :=
.seq AllocBody564_64 AllocBody564_65

def AllocBody564_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody564_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody564_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody564_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 5

def AllocBody564_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody564_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody564_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody564_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody564_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody564_77 : StackLang.HolProg 64 :=
.seq AllocBody564_75 AllocBody564_76

def AllocBody564_78 : StackLang.HolProg 64 :=
.seq AllocBody564_74 AllocBody564_77

def AllocBody564_79 : StackLang.HolProg 64 :=
.seq AllocBody564_73 AllocBody564_78

def AllocBody564_80 : StackLang.HolProg 64 :=
.seq AllocBody564_72 AllocBody564_79

def AllocBody564_81 : StackLang.HolProg 64 :=
.seq AllocBody564_71 AllocBody564_80

def AllocBody564_82 : StackLang.HolProg 64 :=
.seq AllocBody564_70 AllocBody564_81

def AllocBody564_83 : StackLang.HolProg 64 :=
.seq AllocBody564_69 AllocBody564_82

def AllocBody564_84 : StackLang.HolProg 64 :=
.seq AllocBody564_68 AllocBody564_83

def AllocBody564_85 : StackLang.HolProg 64 :=
.seq AllocBody564_67 AllocBody564_84

def AllocBody564_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody564_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody564_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody564_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody564_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_93 : StackLang.HolProg 64 :=
.seq AllocBody564_91 AllocBody564_92

def AllocBody564_94 : StackLang.HolProg 64 :=
.seq AllocBody564_90 AllocBody564_93

def AllocBody564_95 : StackLang.HolProg 64 :=
.seq AllocBody564_89 AllocBody564_94

def AllocBody564_96 : StackLang.HolProg 64 :=
.seq AllocBody564_88 AllocBody564_95

def AllocBody564_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_98 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody564_99 : StackLang.HolProg 64 :=
.seq AllocBody564_97 AllocBody564_98

def AllocBody564_100 : StackLang.HolProg 64 :=
.call (some (AllocBody564_96, 0, 564, 4)) (Sum.inl 476) (some (AllocBody564_99, 564, 5))

def AllocBody564_101 : StackLang.HolProg 64 :=
.seq AllocBody564_87 AllocBody564_100

def AllocBody564_102 : StackLang.HolProg 64 :=
.seq AllocBody564_86 AllocBody564_101

def AllocBody564_103 : StackLang.HolProg 64 :=
.seq AllocBody564_85 AllocBody564_102

def AllocBody564_104 : StackLang.HolProg 64 :=
.seq AllocBody564_66 AllocBody564_103

def AllocBody564_105 : StackLang.HolProg 64 :=
.seq AllocBody564_63 AllocBody564_104

def AllocBody564_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody564_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody564_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1931#64)

def AllocBody564_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody564_112 : StackLang.HolProg 64 :=
.seq AllocBody564_110 AllocBody564_111

def AllocBody564_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody564_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody564_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody564_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 564 7

def AllocBody564_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody564_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody564_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody564_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody564_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody564_123 : StackLang.HolProg 64 :=
.seq AllocBody564_121 AllocBody564_122

def AllocBody564_124 : StackLang.HolProg 64 :=
.seq AllocBody564_120 AllocBody564_123

def AllocBody564_125 : StackLang.HolProg 64 :=
.seq AllocBody564_119 AllocBody564_124

def AllocBody564_126 : StackLang.HolProg 64 :=
.seq AllocBody564_118 AllocBody564_125

def AllocBody564_127 : StackLang.HolProg 64 :=
.seq AllocBody564_117 AllocBody564_126

def AllocBody564_128 : StackLang.HolProg 64 :=
.seq AllocBody564_116 AllocBody564_127

def AllocBody564_129 : StackLang.HolProg 64 :=
.seq AllocBody564_115 AllocBody564_128

def AllocBody564_130 : StackLang.HolProg 64 :=
.seq AllocBody564_114 AllocBody564_129

def AllocBody564_131 : StackLang.HolProg 64 :=
.seq AllocBody564_113 AllocBody564_130

def AllocBody564_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody564_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody564_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody564_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody564_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody564_139 : StackLang.HolProg 64 :=
.seq AllocBody564_137 AllocBody564_138

def AllocBody564_140 : StackLang.HolProg 64 :=
.seq AllocBody564_136 AllocBody564_139

def AllocBody564_141 : StackLang.HolProg 64 :=
.seq AllocBody564_135 AllocBody564_140

def AllocBody564_142 : StackLang.HolProg 64 :=
.seq AllocBody564_134 AllocBody564_141

def AllocBody564_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody564_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody564_145 : StackLang.HolProg 64 :=
.seq AllocBody564_143 AllocBody564_144

def AllocBody564_146 : StackLang.HolProg 64 :=
.call (some (AllocBody564_142, 0, 564, 6)) (Sum.inl 490) (some (AllocBody564_145, 564, 7))

def AllocBody564_147 : StackLang.HolProg 64 :=
.seq AllocBody564_133 AllocBody564_146

def AllocBody564_148 : StackLang.HolProg 64 :=
.seq AllocBody564_132 AllocBody564_147

def AllocBody564_149 : StackLang.HolProg 64 :=
.seq AllocBody564_131 AllocBody564_148

def AllocBody564_150 : StackLang.HolProg 64 :=
.seq AllocBody564_112 AllocBody564_149

def AllocBody564_151 : StackLang.HolProg 64 :=
.seq AllocBody564_109 AllocBody564_150

def AllocBody564_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody564_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody564_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody564_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody564_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody564_157 : StackLang.HolProg 64 :=
.seq AllocBody564_155 AllocBody564_156

def AllocBody564_158 : StackLang.HolProg 64 :=
.seq AllocBody564_154 AllocBody564_157

def AllocBody564_159 : StackLang.HolProg 64 :=
.seq AllocBody564_153 AllocBody564_158

def AllocBody564_160 : StackLang.HolProg 64 :=
.seq AllocBody564_152 AllocBody564_159

def AllocBody564_161 : StackLang.HolProg 64 :=
.seq AllocBody564_151 AllocBody564_160

def AllocBody564_162 : StackLang.HolProg 64 :=
.seq AllocBody564_108 AllocBody564_161

def AllocBody564_163 : StackLang.HolProg 64 :=
.seq AllocBody564_107 AllocBody564_162

def AllocBody564_164 : StackLang.HolProg 64 :=
.seq AllocBody564_106 AllocBody564_163

def AllocBody564_165 : StackLang.HolProg 64 :=
.seq AllocBody564_105 AllocBody564_164

def AllocBody564_166 : StackLang.HolProg 64 :=
.seq AllocBody564_62 AllocBody564_165

def AllocBody564_167 : StackLang.HolProg 64 :=
.seq AllocBody564_61 AllocBody564_166

def AllocBody564_168 : StackLang.HolProg 64 :=
.seq AllocBody564_60 AllocBody564_167

def AllocBody564_169 : StackLang.HolProg 64 :=
.seq AllocBody564_59 AllocBody564_168

def AllocBody564_170 : StackLang.HolProg 64 :=
.seq AllocBody564_58 AllocBody564_169

def AllocBody564_171 : StackLang.HolProg 64 :=
.seq AllocBody564_57 AllocBody564_170

def AllocBody564_172 : StackLang.HolProg 64 :=
.seq AllocBody564_56 AllocBody564_171

def AllocBody564_173 : StackLang.HolProg 64 :=
.seq AllocBody564_55 AllocBody564_172

def AllocBody564_174 : StackLang.HolProg 64 :=
.seq AllocBody564_54 AllocBody564_173

def AllocBody564_175 : StackLang.HolProg 64 :=
.seq AllocBody564_53 AllocBody564_174

def AllocBody564_176 : StackLang.HolProg 64 :=
.seq AllocBody564_52 AllocBody564_175

def AllocBody564_177 : StackLang.HolProg 64 :=
.seq AllocBody564_51 AllocBody564_176

def AllocBody564_178 : StackLang.HolProg 64 :=
.seq AllocBody564_50 AllocBody564_177

def AllocBody564_179 : StackLang.HolProg 64 :=
.seq AllocBody564_49 AllocBody564_178

def AllocBody564_180 : StackLang.HolProg 64 :=
.seq AllocBody564_48 AllocBody564_179

def AllocBody564_181 : StackLang.HolProg 64 :=
.seq AllocBody564_47 AllocBody564_180

def AllocBody564_182 : StackLang.HolProg 64 :=
.seq AllocBody564_46 AllocBody564_181

def AllocBody564_183 : StackLang.HolProg 64 :=
.seq AllocBody564_3 AllocBody564_182

def AllocBody564_184 : StackLang.HolProg 64 :=
.seq AllocBody564_2 AllocBody564_183

def AllocBody564_185 : StackLang.HolProg 64 :=
.seq AllocBody564_1 AllocBody564_184

def AllocBody564_186 : StackLang.HolProg 64 :=
.seq AllocBody564_0 AllocBody564_185

def Alloc564 : Nat × StackLang.HolProg 64 := (564, AllocBody564_186)
theorem Alloc564_eq : StackAlloc.progComp (564, raw564) = Alloc564 := by
  kernel_rfl
#print axioms Alloc564_eq
end InitECandidate.Proofs.BackendStages
