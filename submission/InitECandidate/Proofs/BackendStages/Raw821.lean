import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function821
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody821_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody821_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody821_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody821_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody821_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody821_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody821_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def rawBody821_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 256#64)

def rawBody821_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def rawBody821_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody821_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody821_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody821_18 : StackLang.HolProg 64 :=
.seq rawBody821_16 rawBody821_17

def rawBody821_19 : StackLang.HolProg 64 :=
.seq rawBody821_15 rawBody821_18

def rawBody821_20 : StackLang.HolProg 64 :=
.seq rawBody821_14 rawBody821_19

def rawBody821_21 : StackLang.HolProg 64 :=
.seq rawBody821_13 rawBody821_20

def rawBody821_22 : StackLang.HolProg 64 :=
.seq rawBody821_12 rawBody821_21

def rawBody821_23 : StackLang.HolProg 64 :=
.seq rawBody821_11 rawBody821_22

def rawBody821_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody821_23 rawBody821_24

def rawBody821_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 375#64)

def rawBody821_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody821_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody821_31 : StackLang.HolProg 64 :=
.seq rawBody821_29 rawBody821_30

def rawBody821_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4090#64)

def rawBody821_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody821_35 : StackLang.HolProg 64 :=
.seq rawBody821_33 rawBody821_34

def rawBody821_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody821_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody821_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody821_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 821 3

def rawBody821_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody821_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody821_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody821_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody821_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody821_46 : StackLang.HolProg 64 :=
.seq rawBody821_44 rawBody821_45

def rawBody821_47 : StackLang.HolProg 64 :=
.seq rawBody821_43 rawBody821_46

def rawBody821_48 : StackLang.HolProg 64 :=
.seq rawBody821_42 rawBody821_47

def rawBody821_49 : StackLang.HolProg 64 :=
.seq rawBody821_41 rawBody821_48

def rawBody821_50 : StackLang.HolProg 64 :=
.seq rawBody821_40 rawBody821_49

def rawBody821_51 : StackLang.HolProg 64 :=
.seq rawBody821_39 rawBody821_50

def rawBody821_52 : StackLang.HolProg 64 :=
.seq rawBody821_38 rawBody821_51

def rawBody821_53 : StackLang.HolProg 64 :=
.seq rawBody821_37 rawBody821_52

def rawBody821_54 : StackLang.HolProg 64 :=
.seq rawBody821_36 rawBody821_53

def rawBody821_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody821_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody821_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody821_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody821_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_62 : StackLang.HolProg 64 :=
.seq rawBody821_60 rawBody821_61

def rawBody821_63 : StackLang.HolProg 64 :=
.seq rawBody821_59 rawBody821_62

def rawBody821_64 : StackLang.HolProg 64 :=
.seq rawBody821_58 rawBody821_63

def rawBody821_65 : StackLang.HolProg 64 :=
.seq rawBody821_57 rawBody821_64

def rawBody821_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody821_68 : StackLang.HolProg 64 :=
.seq rawBody821_66 rawBody821_67

def rawBody821_69 : StackLang.HolProg 64 :=
.call (some (rawBody821_65, 0, 821, 2)) (Sum.inl 470) (some (rawBody821_68, 821, 3))

def rawBody821_70 : StackLang.HolProg 64 :=
.seq rawBody821_56 rawBody821_69

def rawBody821_71 : StackLang.HolProg 64 :=
.seq rawBody821_55 rawBody821_70

def rawBody821_72 : StackLang.HolProg 64 :=
.seq rawBody821_54 rawBody821_71

def rawBody821_73 : StackLang.HolProg 64 :=
.seq rawBody821_35 rawBody821_72

def rawBody821_74 : StackLang.HolProg 64 :=
.seq rawBody821_32 rawBody821_73

def rawBody821_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody821_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4091#64)

def rawBody821_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody821_81 : StackLang.HolProg 64 :=
.seq rawBody821_79 rawBody821_80

def rawBody821_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody821_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody821_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody821_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 821 5

def rawBody821_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody821_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody821_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody821_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody821_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody821_92 : StackLang.HolProg 64 :=
.seq rawBody821_90 rawBody821_91

def rawBody821_93 : StackLang.HolProg 64 :=
.seq rawBody821_89 rawBody821_92

def rawBody821_94 : StackLang.HolProg 64 :=
.seq rawBody821_88 rawBody821_93

def rawBody821_95 : StackLang.HolProg 64 :=
.seq rawBody821_87 rawBody821_94

def rawBody821_96 : StackLang.HolProg 64 :=
.seq rawBody821_86 rawBody821_95

def rawBody821_97 : StackLang.HolProg 64 :=
.seq rawBody821_85 rawBody821_96

def rawBody821_98 : StackLang.HolProg 64 :=
.seq rawBody821_84 rawBody821_97

def rawBody821_99 : StackLang.HolProg 64 :=
.seq rawBody821_83 rawBody821_98

def rawBody821_100 : StackLang.HolProg 64 :=
.seq rawBody821_82 rawBody821_99

def rawBody821_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody821_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody821_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody821_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody821_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody821_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody821_109 : StackLang.HolProg 64 :=
.seq rawBody821_107 rawBody821_108

def rawBody821_110 : StackLang.HolProg 64 :=
.seq rawBody821_106 rawBody821_109

def rawBody821_111 : StackLang.HolProg 64 :=
.seq rawBody821_105 rawBody821_110

def rawBody821_112 : StackLang.HolProg 64 :=
.seq rawBody821_104 rawBody821_111

def rawBody821_113 : StackLang.HolProg 64 :=
.seq rawBody821_103 rawBody821_112

def rawBody821_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody821_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody821_116 : StackLang.HolProg 64 :=
.seq rawBody821_114 rawBody821_115

def rawBody821_117 : StackLang.HolProg 64 :=
.call (some (rawBody821_113, 0, 821, 4)) (Sum.inl 68) (some (rawBody821_116, 821, 5))

def rawBody821_118 : StackLang.HolProg 64 :=
.seq rawBody821_102 rawBody821_117

def rawBody821_119 : StackLang.HolProg 64 :=
.seq rawBody821_101 rawBody821_118

def rawBody821_120 : StackLang.HolProg 64 :=
.seq rawBody821_100 rawBody821_119

def rawBody821_121 : StackLang.HolProg 64 :=
.seq rawBody821_81 rawBody821_120

def rawBody821_122 : StackLang.HolProg 64 :=
.seq rawBody821_78 rawBody821_121

def rawBody821_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody821_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody821_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4092#64)

def rawBody821_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody821_130 : StackLang.HolProg 64 :=
.seq rawBody821_128 rawBody821_129

def rawBody821_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody821_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody821_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody821_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 821 7

def rawBody821_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody821_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody821_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody821_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody821_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody821_141 : StackLang.HolProg 64 :=
.seq rawBody821_139 rawBody821_140

def rawBody821_142 : StackLang.HolProg 64 :=
.seq rawBody821_138 rawBody821_141

def rawBody821_143 : StackLang.HolProg 64 :=
.seq rawBody821_137 rawBody821_142

def rawBody821_144 : StackLang.HolProg 64 :=
.seq rawBody821_136 rawBody821_143

def rawBody821_145 : StackLang.HolProg 64 :=
.seq rawBody821_135 rawBody821_144

def rawBody821_146 : StackLang.HolProg 64 :=
.seq rawBody821_134 rawBody821_145

def rawBody821_147 : StackLang.HolProg 64 :=
.seq rawBody821_133 rawBody821_146

def rawBody821_148 : StackLang.HolProg 64 :=
.seq rawBody821_132 rawBody821_147

def rawBody821_149 : StackLang.HolProg 64 :=
.seq rawBody821_131 rawBody821_148

def rawBody821_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody821_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody821_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody821_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody821_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody821_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody821_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody821_159 : StackLang.HolProg 64 :=
.seq rawBody821_157 rawBody821_158

def rawBody821_160 : StackLang.HolProg 64 :=
.seq rawBody821_156 rawBody821_159

def rawBody821_161 : StackLang.HolProg 64 :=
.seq rawBody821_155 rawBody821_160

def rawBody821_162 : StackLang.HolProg 64 :=
.seq rawBody821_154 rawBody821_161

def rawBody821_163 : StackLang.HolProg 64 :=
.seq rawBody821_153 rawBody821_162

def rawBody821_164 : StackLang.HolProg 64 :=
.seq rawBody821_152 rawBody821_163

def rawBody821_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody821_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody821_167 : StackLang.HolProg 64 :=
.seq rawBody821_165 rawBody821_166

def rawBody821_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody821_169 : StackLang.HolProg 64 :=
.seq rawBody821_167 rawBody821_168

def rawBody821_170 : StackLang.HolProg 64 :=
.call (some (rawBody821_164, 0, 821, 6)) (Sum.inl 810) (some (rawBody821_169, 821, 7))

def rawBody821_171 : StackLang.HolProg 64 :=
.seq rawBody821_151 rawBody821_170

def rawBody821_172 : StackLang.HolProg 64 :=
.seq rawBody821_150 rawBody821_171

def rawBody821_173 : StackLang.HolProg 64 :=
.seq rawBody821_149 rawBody821_172

def rawBody821_174 : StackLang.HolProg 64 :=
.seq rawBody821_130 rawBody821_173

def rawBody821_175 : StackLang.HolProg 64 :=
.seq rawBody821_127 rawBody821_174

def rawBody821_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody821_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def rawBody821_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody821_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody821_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody821_186 : StackLang.HolProg 64 :=
.seq rawBody821_184 rawBody821_185

def rawBody821_187 : StackLang.HolProg 64 :=
.seq rawBody821_183 rawBody821_186

def rawBody821_188 : StackLang.HolProg 64 :=
.seq rawBody821_182 rawBody821_187

def rawBody821_189 : StackLang.HolProg 64 :=
.seq rawBody821_181 rawBody821_188

def rawBody821_190 : StackLang.HolProg 64 :=
.seq rawBody821_180 rawBody821_189

def rawBody821_191 : StackLang.HolProg 64 :=
.seq rawBody821_179 rawBody821_190

def rawBody821_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody821_191 rawBody821_192

def rawBody821_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody821_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody821_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody821_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody821_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody821_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody821_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody821_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody821_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody821_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody821_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody821_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody821_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody821_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody821_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody821_213 : StackLang.HolProg 64 :=
.seq rawBody821_211 rawBody821_212

def rawBody821_214 : StackLang.HolProg 64 :=
.seq rawBody821_210 rawBody821_213

def rawBody821_215 : StackLang.HolProg 64 :=
.seq rawBody821_209 rawBody821_214

def rawBody821_216 : StackLang.HolProg 64 :=
.seq rawBody821_208 rawBody821_215

def rawBody821_217 : StackLang.HolProg 64 :=
.seq rawBody821_207 rawBody821_216

def rawBody821_218 : StackLang.HolProg 64 :=
.seq rawBody821_206 rawBody821_217

def rawBody821_219 : StackLang.HolProg 64 :=
.seq rawBody821_205 rawBody821_218

def rawBody821_220 : StackLang.HolProg 64 :=
.seq rawBody821_204 rawBody821_219

def rawBody821_221 : StackLang.HolProg 64 :=
.seq rawBody821_203 rawBody821_220

def rawBody821_222 : StackLang.HolProg 64 :=
.seq rawBody821_202 rawBody821_221

def rawBody821_223 : StackLang.HolProg 64 :=
.seq rawBody821_201 rawBody821_222

def rawBody821_224 : StackLang.HolProg 64 :=
.seq rawBody821_200 rawBody821_223

def rawBody821_225 : StackLang.HolProg 64 :=
.seq rawBody821_199 rawBody821_224

def rawBody821_226 : StackLang.HolProg 64 :=
.seq rawBody821_198 rawBody821_225

def rawBody821_227 : StackLang.HolProg 64 :=
.seq rawBody821_197 rawBody821_226

def rawBody821_228 : StackLang.HolProg 64 :=
.seq rawBody821_196 rawBody821_227

def rawBody821_229 : StackLang.HolProg 64 :=
.seq rawBody821_195 rawBody821_228

def rawBody821_230 : StackLang.HolProg 64 :=
.seq rawBody821_194 rawBody821_229

def rawBody821_231 : StackLang.HolProg 64 :=
.seq rawBody821_193 rawBody821_230

def rawBody821_232 : StackLang.HolProg 64 :=
.seq rawBody821_178 rawBody821_231

def rawBody821_233 : StackLang.HolProg 64 :=
.seq rawBody821_177 rawBody821_232

def rawBody821_234 : StackLang.HolProg 64 :=
.seq rawBody821_176 rawBody821_233

def rawBody821_235 : StackLang.HolProg 64 :=
.seq rawBody821_175 rawBody821_234

def rawBody821_236 : StackLang.HolProg 64 :=
.seq rawBody821_126 rawBody821_235

def rawBody821_237 : StackLang.HolProg 64 :=
.seq rawBody821_125 rawBody821_236

def rawBody821_238 : StackLang.HolProg 64 :=
.seq rawBody821_124 rawBody821_237

def rawBody821_239 : StackLang.HolProg 64 :=
.seq rawBody821_123 rawBody821_238

def rawBody821_240 : StackLang.HolProg 64 :=
.seq rawBody821_122 rawBody821_239

def rawBody821_241 : StackLang.HolProg 64 :=
.seq rawBody821_77 rawBody821_240

def rawBody821_242 : StackLang.HolProg 64 :=
.seq rawBody821_76 rawBody821_241

def rawBody821_243 : StackLang.HolProg 64 :=
.seq rawBody821_75 rawBody821_242

def rawBody821_244 : StackLang.HolProg 64 :=
.seq rawBody821_74 rawBody821_243

def rawBody821_245 : StackLang.HolProg 64 :=
.seq rawBody821_31 rawBody821_244

def rawBody821_246 : StackLang.HolProg 64 :=
.seq rawBody821_28 rawBody821_245

def rawBody821_247 : StackLang.HolProg 64 :=
.seq rawBody821_27 rawBody821_246

def rawBody821_248 : StackLang.HolProg 64 :=
.seq rawBody821_26 rawBody821_247

def rawBody821_249 : StackLang.HolProg 64 :=
.seq rawBody821_25 rawBody821_248

def rawBody821_250 : StackLang.HolProg 64 :=
.seq rawBody821_10 rawBody821_249

def rawBody821_251 : StackLang.HolProg 64 :=
.seq rawBody821_9 rawBody821_250

def rawBody821_252 : StackLang.HolProg 64 :=
.seq rawBody821_8 rawBody821_251

def rawBody821_253 : StackLang.HolProg 64 :=
.seq rawBody821_7 rawBody821_252

def rawBody821_254 : StackLang.HolProg 64 :=
.seq rawBody821_6 rawBody821_253

def rawBody821_255 : StackLang.HolProg 64 :=
.seq rawBody821_5 rawBody821_254

def rawBody821_256 : StackLang.HolProg 64 :=
.seq rawBody821_4 rawBody821_255

def rawBody821_257 : StackLang.HolProg 64 :=
.seq rawBody821_3 rawBody821_256

def rawBody821_258 : StackLang.HolProg 64 :=
.seq rawBody821_2 rawBody821_257

def rawBody821_259 : StackLang.HolProg 64 :=
.seq rawBody821_1 rawBody821_258

def rawBody821_260 : StackLang.HolProg 64 :=
.seq rawBody821_0 rawBody821_259

def raw821 : StackLang.HolProg 64 := rawBody821_260
theorem raw821_eq : StackRawCall.compTop RawInfo.rawInfo (function821 (.list [])).1 = raw821 := by
  kernel_rfl
#print axioms raw821_eq
end InitECandidate.Proofs.BackendStages
