import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function823
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody823_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody823_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody823_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody823_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody823_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody823_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody823_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def rawBody823_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 512#64)

def rawBody823_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def rawBody823_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody823_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody823_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody823_18 : StackLang.HolProg 64 :=
.seq rawBody823_16 rawBody823_17

def rawBody823_19 : StackLang.HolProg 64 :=
.seq rawBody823_15 rawBody823_18

def rawBody823_20 : StackLang.HolProg 64 :=
.seq rawBody823_14 rawBody823_19

def rawBody823_21 : StackLang.HolProg 64 :=
.seq rawBody823_13 rawBody823_20

def rawBody823_22 : StackLang.HolProg 64 :=
.seq rawBody823_12 rawBody823_21

def rawBody823_23 : StackLang.HolProg 64 :=
.seq rawBody823_11 rawBody823_22

def rawBody823_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody823_23 rawBody823_24

def rawBody823_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 600#64)

def rawBody823_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody823_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody823_31 : StackLang.HolProg 64 :=
.seq rawBody823_29 rawBody823_30

def rawBody823_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4099#64)

def rawBody823_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody823_35 : StackLang.HolProg 64 :=
.seq rawBody823_33 rawBody823_34

def rawBody823_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody823_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody823_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody823_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 823 3

def rawBody823_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody823_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody823_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody823_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody823_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody823_46 : StackLang.HolProg 64 :=
.seq rawBody823_44 rawBody823_45

def rawBody823_47 : StackLang.HolProg 64 :=
.seq rawBody823_43 rawBody823_46

def rawBody823_48 : StackLang.HolProg 64 :=
.seq rawBody823_42 rawBody823_47

def rawBody823_49 : StackLang.HolProg 64 :=
.seq rawBody823_41 rawBody823_48

def rawBody823_50 : StackLang.HolProg 64 :=
.seq rawBody823_40 rawBody823_49

def rawBody823_51 : StackLang.HolProg 64 :=
.seq rawBody823_39 rawBody823_50

def rawBody823_52 : StackLang.HolProg 64 :=
.seq rawBody823_38 rawBody823_51

def rawBody823_53 : StackLang.HolProg 64 :=
.seq rawBody823_37 rawBody823_52

def rawBody823_54 : StackLang.HolProg 64 :=
.seq rawBody823_36 rawBody823_53

def rawBody823_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody823_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody823_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody823_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody823_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_62 : StackLang.HolProg 64 :=
.seq rawBody823_60 rawBody823_61

def rawBody823_63 : StackLang.HolProg 64 :=
.seq rawBody823_59 rawBody823_62

def rawBody823_64 : StackLang.HolProg 64 :=
.seq rawBody823_58 rawBody823_63

def rawBody823_65 : StackLang.HolProg 64 :=
.seq rawBody823_57 rawBody823_64

def rawBody823_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody823_68 : StackLang.HolProg 64 :=
.seq rawBody823_66 rawBody823_67

def rawBody823_69 : StackLang.HolProg 64 :=
.call (some (rawBody823_65, 0, 823, 2)) (Sum.inl 470) (some (rawBody823_68, 823, 3))

def rawBody823_70 : StackLang.HolProg 64 :=
.seq rawBody823_56 rawBody823_69

def rawBody823_71 : StackLang.HolProg 64 :=
.seq rawBody823_55 rawBody823_70

def rawBody823_72 : StackLang.HolProg 64 :=
.seq rawBody823_54 rawBody823_71

def rawBody823_73 : StackLang.HolProg 64 :=
.seq rawBody823_35 rawBody823_72

def rawBody823_74 : StackLang.HolProg 64 :=
.seq rawBody823_32 rawBody823_73

def rawBody823_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody823_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4100#64)

def rawBody823_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody823_81 : StackLang.HolProg 64 :=
.seq rawBody823_79 rawBody823_80

def rawBody823_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody823_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody823_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody823_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 823 5

def rawBody823_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody823_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody823_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody823_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody823_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody823_92 : StackLang.HolProg 64 :=
.seq rawBody823_90 rawBody823_91

def rawBody823_93 : StackLang.HolProg 64 :=
.seq rawBody823_89 rawBody823_92

def rawBody823_94 : StackLang.HolProg 64 :=
.seq rawBody823_88 rawBody823_93

def rawBody823_95 : StackLang.HolProg 64 :=
.seq rawBody823_87 rawBody823_94

def rawBody823_96 : StackLang.HolProg 64 :=
.seq rawBody823_86 rawBody823_95

def rawBody823_97 : StackLang.HolProg 64 :=
.seq rawBody823_85 rawBody823_96

def rawBody823_98 : StackLang.HolProg 64 :=
.seq rawBody823_84 rawBody823_97

def rawBody823_99 : StackLang.HolProg 64 :=
.seq rawBody823_83 rawBody823_98

def rawBody823_100 : StackLang.HolProg 64 :=
.seq rawBody823_82 rawBody823_99

def rawBody823_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody823_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody823_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody823_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody823_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody823_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody823_109 : StackLang.HolProg 64 :=
.seq rawBody823_107 rawBody823_108

def rawBody823_110 : StackLang.HolProg 64 :=
.seq rawBody823_106 rawBody823_109

def rawBody823_111 : StackLang.HolProg 64 :=
.seq rawBody823_105 rawBody823_110

def rawBody823_112 : StackLang.HolProg 64 :=
.seq rawBody823_104 rawBody823_111

def rawBody823_113 : StackLang.HolProg 64 :=
.seq rawBody823_103 rawBody823_112

def rawBody823_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody823_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody823_116 : StackLang.HolProg 64 :=
.seq rawBody823_114 rawBody823_115

def rawBody823_117 : StackLang.HolProg 64 :=
.call (some (rawBody823_113, 0, 823, 4)) (Sum.inl 68) (some (rawBody823_116, 823, 5))

def rawBody823_118 : StackLang.HolProg 64 :=
.seq rawBody823_102 rawBody823_117

def rawBody823_119 : StackLang.HolProg 64 :=
.seq rawBody823_101 rawBody823_118

def rawBody823_120 : StackLang.HolProg 64 :=
.seq rawBody823_100 rawBody823_119

def rawBody823_121 : StackLang.HolProg 64 :=
.seq rawBody823_81 rawBody823_120

def rawBody823_122 : StackLang.HolProg 64 :=
.seq rawBody823_78 rawBody823_121

def rawBody823_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody823_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody823_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4101#64)

def rawBody823_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody823_130 : StackLang.HolProg 64 :=
.seq rawBody823_128 rawBody823_129

def rawBody823_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody823_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody823_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody823_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 823 7

def rawBody823_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody823_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody823_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody823_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody823_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody823_141 : StackLang.HolProg 64 :=
.seq rawBody823_139 rawBody823_140

def rawBody823_142 : StackLang.HolProg 64 :=
.seq rawBody823_138 rawBody823_141

def rawBody823_143 : StackLang.HolProg 64 :=
.seq rawBody823_137 rawBody823_142

def rawBody823_144 : StackLang.HolProg 64 :=
.seq rawBody823_136 rawBody823_143

def rawBody823_145 : StackLang.HolProg 64 :=
.seq rawBody823_135 rawBody823_144

def rawBody823_146 : StackLang.HolProg 64 :=
.seq rawBody823_134 rawBody823_145

def rawBody823_147 : StackLang.HolProg 64 :=
.seq rawBody823_133 rawBody823_146

def rawBody823_148 : StackLang.HolProg 64 :=
.seq rawBody823_132 rawBody823_147

def rawBody823_149 : StackLang.HolProg 64 :=
.seq rawBody823_131 rawBody823_148

def rawBody823_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody823_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody823_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody823_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody823_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody823_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody823_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody823_159 : StackLang.HolProg 64 :=
.seq rawBody823_157 rawBody823_158

def rawBody823_160 : StackLang.HolProg 64 :=
.seq rawBody823_156 rawBody823_159

def rawBody823_161 : StackLang.HolProg 64 :=
.seq rawBody823_155 rawBody823_160

def rawBody823_162 : StackLang.HolProg 64 :=
.seq rawBody823_154 rawBody823_161

def rawBody823_163 : StackLang.HolProg 64 :=
.seq rawBody823_153 rawBody823_162

def rawBody823_164 : StackLang.HolProg 64 :=
.seq rawBody823_152 rawBody823_163

def rawBody823_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody823_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody823_167 : StackLang.HolProg 64 :=
.seq rawBody823_165 rawBody823_166

def rawBody823_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody823_169 : StackLang.HolProg 64 :=
.seq rawBody823_167 rawBody823_168

def rawBody823_170 : StackLang.HolProg 64 :=
.call (some (rawBody823_164, 0, 823, 6)) (Sum.inl 812) (some (rawBody823_169, 823, 7))

def rawBody823_171 : StackLang.HolProg 64 :=
.seq rawBody823_151 rawBody823_170

def rawBody823_172 : StackLang.HolProg 64 :=
.seq rawBody823_150 rawBody823_171

def rawBody823_173 : StackLang.HolProg 64 :=
.seq rawBody823_149 rawBody823_172

def rawBody823_174 : StackLang.HolProg 64 :=
.seq rawBody823_130 rawBody823_173

def rawBody823_175 : StackLang.HolProg 64 :=
.seq rawBody823_127 rawBody823_174

def rawBody823_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody823_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def rawBody823_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody823_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody823_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody823_186 : StackLang.HolProg 64 :=
.seq rawBody823_184 rawBody823_185

def rawBody823_187 : StackLang.HolProg 64 :=
.seq rawBody823_183 rawBody823_186

def rawBody823_188 : StackLang.HolProg 64 :=
.seq rawBody823_182 rawBody823_187

def rawBody823_189 : StackLang.HolProg 64 :=
.seq rawBody823_181 rawBody823_188

def rawBody823_190 : StackLang.HolProg 64 :=
.seq rawBody823_180 rawBody823_189

def rawBody823_191 : StackLang.HolProg 64 :=
.seq rawBody823_179 rawBody823_190

def rawBody823_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody823_191 rawBody823_192

def rawBody823_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody823_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody823_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody823_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody823_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody823_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody823_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody823_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody823_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody823_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody823_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody823_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody823_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody823_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody823_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody823_213 : StackLang.HolProg 64 :=
.seq rawBody823_211 rawBody823_212

def rawBody823_214 : StackLang.HolProg 64 :=
.seq rawBody823_210 rawBody823_213

def rawBody823_215 : StackLang.HolProg 64 :=
.seq rawBody823_209 rawBody823_214

def rawBody823_216 : StackLang.HolProg 64 :=
.seq rawBody823_208 rawBody823_215

def rawBody823_217 : StackLang.HolProg 64 :=
.seq rawBody823_207 rawBody823_216

def rawBody823_218 : StackLang.HolProg 64 :=
.seq rawBody823_206 rawBody823_217

def rawBody823_219 : StackLang.HolProg 64 :=
.seq rawBody823_205 rawBody823_218

def rawBody823_220 : StackLang.HolProg 64 :=
.seq rawBody823_204 rawBody823_219

def rawBody823_221 : StackLang.HolProg 64 :=
.seq rawBody823_203 rawBody823_220

def rawBody823_222 : StackLang.HolProg 64 :=
.seq rawBody823_202 rawBody823_221

def rawBody823_223 : StackLang.HolProg 64 :=
.seq rawBody823_201 rawBody823_222

def rawBody823_224 : StackLang.HolProg 64 :=
.seq rawBody823_200 rawBody823_223

def rawBody823_225 : StackLang.HolProg 64 :=
.seq rawBody823_199 rawBody823_224

def rawBody823_226 : StackLang.HolProg 64 :=
.seq rawBody823_198 rawBody823_225

def rawBody823_227 : StackLang.HolProg 64 :=
.seq rawBody823_197 rawBody823_226

def rawBody823_228 : StackLang.HolProg 64 :=
.seq rawBody823_196 rawBody823_227

def rawBody823_229 : StackLang.HolProg 64 :=
.seq rawBody823_195 rawBody823_228

def rawBody823_230 : StackLang.HolProg 64 :=
.seq rawBody823_194 rawBody823_229

def rawBody823_231 : StackLang.HolProg 64 :=
.seq rawBody823_193 rawBody823_230

def rawBody823_232 : StackLang.HolProg 64 :=
.seq rawBody823_178 rawBody823_231

def rawBody823_233 : StackLang.HolProg 64 :=
.seq rawBody823_177 rawBody823_232

def rawBody823_234 : StackLang.HolProg 64 :=
.seq rawBody823_176 rawBody823_233

def rawBody823_235 : StackLang.HolProg 64 :=
.seq rawBody823_175 rawBody823_234

def rawBody823_236 : StackLang.HolProg 64 :=
.seq rawBody823_126 rawBody823_235

def rawBody823_237 : StackLang.HolProg 64 :=
.seq rawBody823_125 rawBody823_236

def rawBody823_238 : StackLang.HolProg 64 :=
.seq rawBody823_124 rawBody823_237

def rawBody823_239 : StackLang.HolProg 64 :=
.seq rawBody823_123 rawBody823_238

def rawBody823_240 : StackLang.HolProg 64 :=
.seq rawBody823_122 rawBody823_239

def rawBody823_241 : StackLang.HolProg 64 :=
.seq rawBody823_77 rawBody823_240

def rawBody823_242 : StackLang.HolProg 64 :=
.seq rawBody823_76 rawBody823_241

def rawBody823_243 : StackLang.HolProg 64 :=
.seq rawBody823_75 rawBody823_242

def rawBody823_244 : StackLang.HolProg 64 :=
.seq rawBody823_74 rawBody823_243

def rawBody823_245 : StackLang.HolProg 64 :=
.seq rawBody823_31 rawBody823_244

def rawBody823_246 : StackLang.HolProg 64 :=
.seq rawBody823_28 rawBody823_245

def rawBody823_247 : StackLang.HolProg 64 :=
.seq rawBody823_27 rawBody823_246

def rawBody823_248 : StackLang.HolProg 64 :=
.seq rawBody823_26 rawBody823_247

def rawBody823_249 : StackLang.HolProg 64 :=
.seq rawBody823_25 rawBody823_248

def rawBody823_250 : StackLang.HolProg 64 :=
.seq rawBody823_10 rawBody823_249

def rawBody823_251 : StackLang.HolProg 64 :=
.seq rawBody823_9 rawBody823_250

def rawBody823_252 : StackLang.HolProg 64 :=
.seq rawBody823_8 rawBody823_251

def rawBody823_253 : StackLang.HolProg 64 :=
.seq rawBody823_7 rawBody823_252

def rawBody823_254 : StackLang.HolProg 64 :=
.seq rawBody823_6 rawBody823_253

def rawBody823_255 : StackLang.HolProg 64 :=
.seq rawBody823_5 rawBody823_254

def rawBody823_256 : StackLang.HolProg 64 :=
.seq rawBody823_4 rawBody823_255

def rawBody823_257 : StackLang.HolProg 64 :=
.seq rawBody823_3 rawBody823_256

def rawBody823_258 : StackLang.HolProg 64 :=
.seq rawBody823_2 rawBody823_257

def rawBody823_259 : StackLang.HolProg 64 :=
.seq rawBody823_1 rawBody823_258

def rawBody823_260 : StackLang.HolProg 64 :=
.seq rawBody823_0 rawBody823_259

def raw823 : StackLang.HolProg 64 := rawBody823_260
theorem raw823_eq : StackRawCall.compTop RawInfo.rawInfo (function823 (.list [])).1 = raw823 := by
  kernel_rfl
#print axioms raw823_eq
end InitECandidate.Proofs.BackendStages
