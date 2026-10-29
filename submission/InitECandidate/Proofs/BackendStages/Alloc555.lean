import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw555
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody555_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody555_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody555_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody555_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1887#64)

def AllocBody555_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_7 : StackLang.HolProg 64 :=
.seq AllocBody555_5 AllocBody555_6

def AllocBody555_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody555_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody555_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 3

def AllocBody555_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody555_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody555_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody555_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody555_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_18 : StackLang.HolProg 64 :=
.seq AllocBody555_16 AllocBody555_17

def AllocBody555_19 : StackLang.HolProg 64 :=
.seq AllocBody555_15 AllocBody555_18

def AllocBody555_20 : StackLang.HolProg 64 :=
.seq AllocBody555_14 AllocBody555_19

def AllocBody555_21 : StackLang.HolProg 64 :=
.seq AllocBody555_13 AllocBody555_20

def AllocBody555_22 : StackLang.HolProg 64 :=
.seq AllocBody555_12 AllocBody555_21

def AllocBody555_23 : StackLang.HolProg 64 :=
.seq AllocBody555_11 AllocBody555_22

def AllocBody555_24 : StackLang.HolProg 64 :=
.seq AllocBody555_10 AllocBody555_23

def AllocBody555_25 : StackLang.HolProg 64 :=
.seq AllocBody555_9 AllocBody555_24

def AllocBody555_26 : StackLang.HolProg 64 :=
.seq AllocBody555_8 AllocBody555_25

def AllocBody555_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody555_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody555_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody555_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_34 : StackLang.HolProg 64 :=
.seq AllocBody555_32 AllocBody555_33

def AllocBody555_35 : StackLang.HolProg 64 :=
.seq AllocBody555_31 AllocBody555_34

def AllocBody555_36 : StackLang.HolProg 64 :=
.seq AllocBody555_30 AllocBody555_35

def AllocBody555_37 : StackLang.HolProg 64 :=
.seq AllocBody555_29 AllocBody555_36

def AllocBody555_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody555_40 : StackLang.HolProg 64 :=
.seq AllocBody555_38 AllocBody555_39

def AllocBody555_41 : StackLang.HolProg 64 :=
.call (some (AllocBody555_37, 0, 555, 2)) (Sum.inl 470) (some (AllocBody555_40, 555, 3))

def AllocBody555_42 : StackLang.HolProg 64 :=
.seq AllocBody555_28 AllocBody555_41

def AllocBody555_43 : StackLang.HolProg 64 :=
.seq AllocBody555_27 AllocBody555_42

def AllocBody555_44 : StackLang.HolProg 64 :=
.seq AllocBody555_26 AllocBody555_43

def AllocBody555_45 : StackLang.HolProg 64 :=
.seq AllocBody555_7 AllocBody555_44

def AllocBody555_46 : StackLang.HolProg 64 :=
.seq AllocBody555_4 AllocBody555_45

def AllocBody555_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody555_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody555_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody555_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody555_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody555_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 112#64))

def AllocBody555_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody555_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody555_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1888#64)

def AllocBody555_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_60 : StackLang.HolProg 64 :=
.seq AllocBody555_58 AllocBody555_59

def AllocBody555_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody555_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody555_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 5

def AllocBody555_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody555_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody555_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody555_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody555_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_71 : StackLang.HolProg 64 :=
.seq AllocBody555_69 AllocBody555_70

def AllocBody555_72 : StackLang.HolProg 64 :=
.seq AllocBody555_68 AllocBody555_71

def AllocBody555_73 : StackLang.HolProg 64 :=
.seq AllocBody555_67 AllocBody555_72

def AllocBody555_74 : StackLang.HolProg 64 :=
.seq AllocBody555_66 AllocBody555_73

def AllocBody555_75 : StackLang.HolProg 64 :=
.seq AllocBody555_65 AllocBody555_74

def AllocBody555_76 : StackLang.HolProg 64 :=
.seq AllocBody555_64 AllocBody555_75

def AllocBody555_77 : StackLang.HolProg 64 :=
.seq AllocBody555_63 AllocBody555_76

def AllocBody555_78 : StackLang.HolProg 64 :=
.seq AllocBody555_62 AllocBody555_77

def AllocBody555_79 : StackLang.HolProg 64 :=
.seq AllocBody555_61 AllocBody555_78

def AllocBody555_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody555_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody555_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody555_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody555_87 : StackLang.HolProg 64 :=
.seq AllocBody555_85 AllocBody555_86

def AllocBody555_88 : StackLang.HolProg 64 :=
.seq AllocBody555_84 AllocBody555_87

def AllocBody555_89 : StackLang.HolProg 64 :=
.seq AllocBody555_83 AllocBody555_88

def AllocBody555_90 : StackLang.HolProg 64 :=
.seq AllocBody555_82 AllocBody555_89

def AllocBody555_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody555_93 : StackLang.HolProg 64 :=
.seq AllocBody555_91 AllocBody555_92

def AllocBody555_94 : StackLang.HolProg 64 :=
.call (some (AllocBody555_90, 0, 555, 4)) (Sum.inl 467) (some (AllocBody555_93, 555, 5))

def AllocBody555_95 : StackLang.HolProg 64 :=
.seq AllocBody555_81 AllocBody555_94

def AllocBody555_96 : StackLang.HolProg 64 :=
.seq AllocBody555_80 AllocBody555_95

def AllocBody555_97 : StackLang.HolProg 64 :=
.seq AllocBody555_79 AllocBody555_96

def AllocBody555_98 : StackLang.HolProg 64 :=
.seq AllocBody555_60 AllocBody555_97

def AllocBody555_99 : StackLang.HolProg 64 :=
.seq AllocBody555_57 AllocBody555_98

def AllocBody555_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody555_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody555_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1889#64)

def AllocBody555_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_105 : StackLang.HolProg 64 :=
.seq AllocBody555_103 AllocBody555_104

def AllocBody555_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody555_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody555_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 7

def AllocBody555_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody555_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody555_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody555_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody555_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_116 : StackLang.HolProg 64 :=
.seq AllocBody555_114 AllocBody555_115

def AllocBody555_117 : StackLang.HolProg 64 :=
.seq AllocBody555_113 AllocBody555_116

def AllocBody555_118 : StackLang.HolProg 64 :=
.seq AllocBody555_112 AllocBody555_117

def AllocBody555_119 : StackLang.HolProg 64 :=
.seq AllocBody555_111 AllocBody555_118

def AllocBody555_120 : StackLang.HolProg 64 :=
.seq AllocBody555_110 AllocBody555_119

def AllocBody555_121 : StackLang.HolProg 64 :=
.seq AllocBody555_109 AllocBody555_120

def AllocBody555_122 : StackLang.HolProg 64 :=
.seq AllocBody555_108 AllocBody555_121

def AllocBody555_123 : StackLang.HolProg 64 :=
.seq AllocBody555_107 AllocBody555_122

def AllocBody555_124 : StackLang.HolProg 64 :=
.seq AllocBody555_106 AllocBody555_123

def AllocBody555_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody555_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody555_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody555_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_132 : StackLang.HolProg 64 :=
.seq AllocBody555_130 AllocBody555_131

def AllocBody555_133 : StackLang.HolProg 64 :=
.seq AllocBody555_129 AllocBody555_132

def AllocBody555_134 : StackLang.HolProg 64 :=
.seq AllocBody555_128 AllocBody555_133

def AllocBody555_135 : StackLang.HolProg 64 :=
.seq AllocBody555_127 AllocBody555_134

def AllocBody555_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody555_138 : StackLang.HolProg 64 :=
.seq AllocBody555_136 AllocBody555_137

def AllocBody555_139 : StackLang.HolProg 64 :=
.call (some (AllocBody555_135, 0, 555, 6)) (Sum.inl 476) (some (AllocBody555_138, 555, 7))

def AllocBody555_140 : StackLang.HolProg 64 :=
.seq AllocBody555_126 AllocBody555_139

def AllocBody555_141 : StackLang.HolProg 64 :=
.seq AllocBody555_125 AllocBody555_140

def AllocBody555_142 : StackLang.HolProg 64 :=
.seq AllocBody555_124 AllocBody555_141

def AllocBody555_143 : StackLang.HolProg 64 :=
.seq AllocBody555_105 AllocBody555_142

def AllocBody555_144 : StackLang.HolProg 64 :=
.seq AllocBody555_102 AllocBody555_143

def AllocBody555_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody555_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody555_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1890#64)

def AllocBody555_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_151 : StackLang.HolProg 64 :=
.seq AllocBody555_149 AllocBody555_150

def AllocBody555_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody555_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody555_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody555_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 555 9

def AllocBody555_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody555_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody555_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody555_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody555_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_162 : StackLang.HolProg 64 :=
.seq AllocBody555_160 AllocBody555_161

def AllocBody555_163 : StackLang.HolProg 64 :=
.seq AllocBody555_159 AllocBody555_162

def AllocBody555_164 : StackLang.HolProg 64 :=
.seq AllocBody555_158 AllocBody555_163

def AllocBody555_165 : StackLang.HolProg 64 :=
.seq AllocBody555_157 AllocBody555_164

def AllocBody555_166 : StackLang.HolProg 64 :=
.seq AllocBody555_156 AllocBody555_165

def AllocBody555_167 : StackLang.HolProg 64 :=
.seq AllocBody555_155 AllocBody555_166

def AllocBody555_168 : StackLang.HolProg 64 :=
.seq AllocBody555_154 AllocBody555_167

def AllocBody555_169 : StackLang.HolProg 64 :=
.seq AllocBody555_153 AllocBody555_168

def AllocBody555_170 : StackLang.HolProg 64 :=
.seq AllocBody555_152 AllocBody555_169

def AllocBody555_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody555_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody555_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody555_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody555_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody555_178 : StackLang.HolProg 64 :=
.seq AllocBody555_176 AllocBody555_177

def AllocBody555_179 : StackLang.HolProg 64 :=
.seq AllocBody555_175 AllocBody555_178

def AllocBody555_180 : StackLang.HolProg 64 :=
.seq AllocBody555_174 AllocBody555_179

def AllocBody555_181 : StackLang.HolProg 64 :=
.seq AllocBody555_173 AllocBody555_180

def AllocBody555_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody555_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody555_184 : StackLang.HolProg 64 :=
.seq AllocBody555_182 AllocBody555_183

def AllocBody555_185 : StackLang.HolProg 64 :=
.call (some (AllocBody555_181, 0, 555, 8)) (Sum.inl 490) (some (AllocBody555_184, 555, 9))

def AllocBody555_186 : StackLang.HolProg 64 :=
.seq AllocBody555_172 AllocBody555_185

def AllocBody555_187 : StackLang.HolProg 64 :=
.seq AllocBody555_171 AllocBody555_186

def AllocBody555_188 : StackLang.HolProg 64 :=
.seq AllocBody555_170 AllocBody555_187

def AllocBody555_189 : StackLang.HolProg 64 :=
.seq AllocBody555_151 AllocBody555_188

def AllocBody555_190 : StackLang.HolProg 64 :=
.seq AllocBody555_148 AllocBody555_189

def AllocBody555_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody555_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody555_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody555_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody555_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody555_196 : StackLang.HolProg 64 :=
.seq AllocBody555_194 AllocBody555_195

def AllocBody555_197 : StackLang.HolProg 64 :=
.seq AllocBody555_193 AllocBody555_196

def AllocBody555_198 : StackLang.HolProg 64 :=
.seq AllocBody555_192 AllocBody555_197

def AllocBody555_199 : StackLang.HolProg 64 :=
.seq AllocBody555_191 AllocBody555_198

def AllocBody555_200 : StackLang.HolProg 64 :=
.seq AllocBody555_190 AllocBody555_199

def AllocBody555_201 : StackLang.HolProg 64 :=
.seq AllocBody555_147 AllocBody555_200

def AllocBody555_202 : StackLang.HolProg 64 :=
.seq AllocBody555_146 AllocBody555_201

def AllocBody555_203 : StackLang.HolProg 64 :=
.seq AllocBody555_145 AllocBody555_202

def AllocBody555_204 : StackLang.HolProg 64 :=
.seq AllocBody555_144 AllocBody555_203

def AllocBody555_205 : StackLang.HolProg 64 :=
.seq AllocBody555_101 AllocBody555_204

def AllocBody555_206 : StackLang.HolProg 64 :=
.seq AllocBody555_100 AllocBody555_205

def AllocBody555_207 : StackLang.HolProg 64 :=
.seq AllocBody555_99 AllocBody555_206

def AllocBody555_208 : StackLang.HolProg 64 :=
.seq AllocBody555_56 AllocBody555_207

def AllocBody555_209 : StackLang.HolProg 64 :=
.seq AllocBody555_55 AllocBody555_208

def AllocBody555_210 : StackLang.HolProg 64 :=
.seq AllocBody555_54 AllocBody555_209

def AllocBody555_211 : StackLang.HolProg 64 :=
.seq AllocBody555_53 AllocBody555_210

def AllocBody555_212 : StackLang.HolProg 64 :=
.seq AllocBody555_52 AllocBody555_211

def AllocBody555_213 : StackLang.HolProg 64 :=
.seq AllocBody555_51 AllocBody555_212

def AllocBody555_214 : StackLang.HolProg 64 :=
.seq AllocBody555_50 AllocBody555_213

def AllocBody555_215 : StackLang.HolProg 64 :=
.seq AllocBody555_49 AllocBody555_214

def AllocBody555_216 : StackLang.HolProg 64 :=
.seq AllocBody555_48 AllocBody555_215

def AllocBody555_217 : StackLang.HolProg 64 :=
.seq AllocBody555_47 AllocBody555_216

def AllocBody555_218 : StackLang.HolProg 64 :=
.seq AllocBody555_46 AllocBody555_217

def AllocBody555_219 : StackLang.HolProg 64 :=
.seq AllocBody555_3 AllocBody555_218

def AllocBody555_220 : StackLang.HolProg 64 :=
.seq AllocBody555_2 AllocBody555_219

def AllocBody555_221 : StackLang.HolProg 64 :=
.seq AllocBody555_1 AllocBody555_220

def AllocBody555_222 : StackLang.HolProg 64 :=
.seq AllocBody555_0 AllocBody555_221

def Alloc555 : Nat × StackLang.HolProg 64 := (555, AllocBody555_222)
theorem Alloc555_eq : StackAlloc.progComp (555, raw555) = Alloc555 := by
  kernel_rfl
#print axioms Alloc555_eq
end InitECandidate.Proofs.BackendStages
