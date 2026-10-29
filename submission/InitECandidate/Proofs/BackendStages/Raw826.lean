import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function826
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody826_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody826_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody826_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody826_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody826_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody826_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody826_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def rawBody826_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 64#64)

def rawBody826_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def rawBody826_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody826_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody826_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody826_18 : StackLang.HolProg 64 :=
.seq rawBody826_16 rawBody826_17

def rawBody826_19 : StackLang.HolProg 64 :=
.seq rawBody826_15 rawBody826_18

def rawBody826_20 : StackLang.HolProg 64 :=
.seq rawBody826_14 rawBody826_19

def rawBody826_21 : StackLang.HolProg 64 :=
.seq rawBody826_13 rawBody826_20

def rawBody826_22 : StackLang.HolProg 64 :=
.seq rawBody826_12 rawBody826_21

def rawBody826_23 : StackLang.HolProg 64 :=
.seq rawBody826_11 rawBody826_22

def rawBody826_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody826_23 rawBody826_24

def rawBody826_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5500#64)

def rawBody826_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody826_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody826_31 : StackLang.HolProg 64 :=
.seq rawBody826_29 rawBody826_30

def rawBody826_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4112#64)

def rawBody826_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody826_35 : StackLang.HolProg 64 :=
.seq rawBody826_33 rawBody826_34

def rawBody826_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody826_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody826_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody826_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 3

def rawBody826_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody826_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody826_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody826_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody826_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody826_46 : StackLang.HolProg 64 :=
.seq rawBody826_44 rawBody826_45

def rawBody826_47 : StackLang.HolProg 64 :=
.seq rawBody826_43 rawBody826_46

def rawBody826_48 : StackLang.HolProg 64 :=
.seq rawBody826_42 rawBody826_47

def rawBody826_49 : StackLang.HolProg 64 :=
.seq rawBody826_41 rawBody826_48

def rawBody826_50 : StackLang.HolProg 64 :=
.seq rawBody826_40 rawBody826_49

def rawBody826_51 : StackLang.HolProg 64 :=
.seq rawBody826_39 rawBody826_50

def rawBody826_52 : StackLang.HolProg 64 :=
.seq rawBody826_38 rawBody826_51

def rawBody826_53 : StackLang.HolProg 64 :=
.seq rawBody826_37 rawBody826_52

def rawBody826_54 : StackLang.HolProg 64 :=
.seq rawBody826_36 rawBody826_53

def rawBody826_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody826_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody826_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody826_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody826_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_62 : StackLang.HolProg 64 :=
.seq rawBody826_60 rawBody826_61

def rawBody826_63 : StackLang.HolProg 64 :=
.seq rawBody826_59 rawBody826_62

def rawBody826_64 : StackLang.HolProg 64 :=
.seq rawBody826_58 rawBody826_63

def rawBody826_65 : StackLang.HolProg 64 :=
.seq rawBody826_57 rawBody826_64

def rawBody826_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody826_68 : StackLang.HolProg 64 :=
.seq rawBody826_66 rawBody826_67

def rawBody826_69 : StackLang.HolProg 64 :=
.call (some (rawBody826_65, 0, 826, 2)) (Sum.inl 470) (some (rawBody826_68, 826, 3))

def rawBody826_70 : StackLang.HolProg 64 :=
.seq rawBody826_56 rawBody826_69

def rawBody826_71 : StackLang.HolProg 64 :=
.seq rawBody826_55 rawBody826_70

def rawBody826_72 : StackLang.HolProg 64 :=
.seq rawBody826_54 rawBody826_71

def rawBody826_73 : StackLang.HolProg 64 :=
.seq rawBody826_35 rawBody826_72

def rawBody826_74 : StackLang.HolProg 64 :=
.seq rawBody826_32 rawBody826_73

def rawBody826_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody826_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4113#64)

def rawBody826_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody826_81 : StackLang.HolProg 64 :=
.seq rawBody826_79 rawBody826_80

def rawBody826_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody826_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody826_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody826_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 5

def rawBody826_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody826_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody826_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody826_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody826_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody826_92 : StackLang.HolProg 64 :=
.seq rawBody826_90 rawBody826_91

def rawBody826_93 : StackLang.HolProg 64 :=
.seq rawBody826_89 rawBody826_92

def rawBody826_94 : StackLang.HolProg 64 :=
.seq rawBody826_88 rawBody826_93

def rawBody826_95 : StackLang.HolProg 64 :=
.seq rawBody826_87 rawBody826_94

def rawBody826_96 : StackLang.HolProg 64 :=
.seq rawBody826_86 rawBody826_95

def rawBody826_97 : StackLang.HolProg 64 :=
.seq rawBody826_85 rawBody826_96

def rawBody826_98 : StackLang.HolProg 64 :=
.seq rawBody826_84 rawBody826_97

def rawBody826_99 : StackLang.HolProg 64 :=
.seq rawBody826_83 rawBody826_98

def rawBody826_100 : StackLang.HolProg 64 :=
.seq rawBody826_82 rawBody826_99

def rawBody826_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody826_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody826_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody826_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody826_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody826_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody826_109 : StackLang.HolProg 64 :=
.seq rawBody826_107 rawBody826_108

def rawBody826_110 : StackLang.HolProg 64 :=
.seq rawBody826_106 rawBody826_109

def rawBody826_111 : StackLang.HolProg 64 :=
.seq rawBody826_105 rawBody826_110

def rawBody826_112 : StackLang.HolProg 64 :=
.seq rawBody826_104 rawBody826_111

def rawBody826_113 : StackLang.HolProg 64 :=
.seq rawBody826_103 rawBody826_112

def rawBody826_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody826_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody826_116 : StackLang.HolProg 64 :=
.seq rawBody826_114 rawBody826_115

def rawBody826_117 : StackLang.HolProg 64 :=
.call (some (rawBody826_113, 0, 826, 4)) (Sum.inl 68) (some (rawBody826_116, 826, 5))

def rawBody826_118 : StackLang.HolProg 64 :=
.seq rawBody826_102 rawBody826_117

def rawBody826_119 : StackLang.HolProg 64 :=
.seq rawBody826_101 rawBody826_118

def rawBody826_120 : StackLang.HolProg 64 :=
.seq rawBody826_100 rawBody826_119

def rawBody826_121 : StackLang.HolProg 64 :=
.seq rawBody826_81 rawBody826_120

def rawBody826_122 : StackLang.HolProg 64 :=
.seq rawBody826_78 rawBody826_121

def rawBody826_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody826_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody826_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4114#64)

def rawBody826_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody826_130 : StackLang.HolProg 64 :=
.seq rawBody826_128 rawBody826_129

def rawBody826_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody826_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody826_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody826_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 7

def rawBody826_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody826_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody826_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody826_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody826_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody826_141 : StackLang.HolProg 64 :=
.seq rawBody826_139 rawBody826_140

def rawBody826_142 : StackLang.HolProg 64 :=
.seq rawBody826_138 rawBody826_141

def rawBody826_143 : StackLang.HolProg 64 :=
.seq rawBody826_137 rawBody826_142

def rawBody826_144 : StackLang.HolProg 64 :=
.seq rawBody826_136 rawBody826_143

def rawBody826_145 : StackLang.HolProg 64 :=
.seq rawBody826_135 rawBody826_144

def rawBody826_146 : StackLang.HolProg 64 :=
.seq rawBody826_134 rawBody826_145

def rawBody826_147 : StackLang.HolProg 64 :=
.seq rawBody826_133 rawBody826_146

def rawBody826_148 : StackLang.HolProg 64 :=
.seq rawBody826_132 rawBody826_147

def rawBody826_149 : StackLang.HolProg 64 :=
.seq rawBody826_131 rawBody826_148

def rawBody826_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody826_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody826_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody826_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody826_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody826_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody826_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody826_159 : StackLang.HolProg 64 :=
.seq rawBody826_157 rawBody826_158

def rawBody826_160 : StackLang.HolProg 64 :=
.seq rawBody826_156 rawBody826_159

def rawBody826_161 : StackLang.HolProg 64 :=
.seq rawBody826_155 rawBody826_160

def rawBody826_162 : StackLang.HolProg 64 :=
.seq rawBody826_154 rawBody826_161

def rawBody826_163 : StackLang.HolProg 64 :=
.seq rawBody826_153 rawBody826_162

def rawBody826_164 : StackLang.HolProg 64 :=
.seq rawBody826_152 rawBody826_163

def rawBody826_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody826_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody826_167 : StackLang.HolProg 64 :=
.seq rawBody826_165 rawBody826_166

def rawBody826_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody826_169 : StackLang.HolProg 64 :=
.seq rawBody826_167 rawBody826_168

def rawBody826_170 : StackLang.HolProg 64 :=
.call (some (rawBody826_164, 0, 826, 6)) (Sum.inl 815) (some (rawBody826_169, 826, 7))

def rawBody826_171 : StackLang.HolProg 64 :=
.seq rawBody826_151 rawBody826_170

def rawBody826_172 : StackLang.HolProg 64 :=
.seq rawBody826_150 rawBody826_171

def rawBody826_173 : StackLang.HolProg 64 :=
.seq rawBody826_149 rawBody826_172

def rawBody826_174 : StackLang.HolProg 64 :=
.seq rawBody826_130 rawBody826_173

def rawBody826_175 : StackLang.HolProg 64 :=
.seq rawBody826_127 rawBody826_174

def rawBody826_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody826_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def rawBody826_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody826_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody826_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody826_186 : StackLang.HolProg 64 :=
.seq rawBody826_184 rawBody826_185

def rawBody826_187 : StackLang.HolProg 64 :=
.seq rawBody826_183 rawBody826_186

def rawBody826_188 : StackLang.HolProg 64 :=
.seq rawBody826_182 rawBody826_187

def rawBody826_189 : StackLang.HolProg 64 :=
.seq rawBody826_181 rawBody826_188

def rawBody826_190 : StackLang.HolProg 64 :=
.seq rawBody826_180 rawBody826_189

def rawBody826_191 : StackLang.HolProg 64 :=
.seq rawBody826_179 rawBody826_190

def rawBody826_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody826_191 rawBody826_192

def rawBody826_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody826_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody826_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody826_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody826_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody826_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody826_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody826_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody826_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody826_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody826_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody826_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody826_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody826_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody826_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody826_213 : StackLang.HolProg 64 :=
.seq rawBody826_211 rawBody826_212

def rawBody826_214 : StackLang.HolProg 64 :=
.seq rawBody826_210 rawBody826_213

def rawBody826_215 : StackLang.HolProg 64 :=
.seq rawBody826_209 rawBody826_214

def rawBody826_216 : StackLang.HolProg 64 :=
.seq rawBody826_208 rawBody826_215

def rawBody826_217 : StackLang.HolProg 64 :=
.seq rawBody826_207 rawBody826_216

def rawBody826_218 : StackLang.HolProg 64 :=
.seq rawBody826_206 rawBody826_217

def rawBody826_219 : StackLang.HolProg 64 :=
.seq rawBody826_205 rawBody826_218

def rawBody826_220 : StackLang.HolProg 64 :=
.seq rawBody826_204 rawBody826_219

def rawBody826_221 : StackLang.HolProg 64 :=
.seq rawBody826_203 rawBody826_220

def rawBody826_222 : StackLang.HolProg 64 :=
.seq rawBody826_202 rawBody826_221

def rawBody826_223 : StackLang.HolProg 64 :=
.seq rawBody826_201 rawBody826_222

def rawBody826_224 : StackLang.HolProg 64 :=
.seq rawBody826_200 rawBody826_223

def rawBody826_225 : StackLang.HolProg 64 :=
.seq rawBody826_199 rawBody826_224

def rawBody826_226 : StackLang.HolProg 64 :=
.seq rawBody826_198 rawBody826_225

def rawBody826_227 : StackLang.HolProg 64 :=
.seq rawBody826_197 rawBody826_226

def rawBody826_228 : StackLang.HolProg 64 :=
.seq rawBody826_196 rawBody826_227

def rawBody826_229 : StackLang.HolProg 64 :=
.seq rawBody826_195 rawBody826_228

def rawBody826_230 : StackLang.HolProg 64 :=
.seq rawBody826_194 rawBody826_229

def rawBody826_231 : StackLang.HolProg 64 :=
.seq rawBody826_193 rawBody826_230

def rawBody826_232 : StackLang.HolProg 64 :=
.seq rawBody826_178 rawBody826_231

def rawBody826_233 : StackLang.HolProg 64 :=
.seq rawBody826_177 rawBody826_232

def rawBody826_234 : StackLang.HolProg 64 :=
.seq rawBody826_176 rawBody826_233

def rawBody826_235 : StackLang.HolProg 64 :=
.seq rawBody826_175 rawBody826_234

def rawBody826_236 : StackLang.HolProg 64 :=
.seq rawBody826_126 rawBody826_235

def rawBody826_237 : StackLang.HolProg 64 :=
.seq rawBody826_125 rawBody826_236

def rawBody826_238 : StackLang.HolProg 64 :=
.seq rawBody826_124 rawBody826_237

def rawBody826_239 : StackLang.HolProg 64 :=
.seq rawBody826_123 rawBody826_238

def rawBody826_240 : StackLang.HolProg 64 :=
.seq rawBody826_122 rawBody826_239

def rawBody826_241 : StackLang.HolProg 64 :=
.seq rawBody826_77 rawBody826_240

def rawBody826_242 : StackLang.HolProg 64 :=
.seq rawBody826_76 rawBody826_241

def rawBody826_243 : StackLang.HolProg 64 :=
.seq rawBody826_75 rawBody826_242

def rawBody826_244 : StackLang.HolProg 64 :=
.seq rawBody826_74 rawBody826_243

def rawBody826_245 : StackLang.HolProg 64 :=
.seq rawBody826_31 rawBody826_244

def rawBody826_246 : StackLang.HolProg 64 :=
.seq rawBody826_28 rawBody826_245

def rawBody826_247 : StackLang.HolProg 64 :=
.seq rawBody826_27 rawBody826_246

def rawBody826_248 : StackLang.HolProg 64 :=
.seq rawBody826_26 rawBody826_247

def rawBody826_249 : StackLang.HolProg 64 :=
.seq rawBody826_25 rawBody826_248

def rawBody826_250 : StackLang.HolProg 64 :=
.seq rawBody826_10 rawBody826_249

def rawBody826_251 : StackLang.HolProg 64 :=
.seq rawBody826_9 rawBody826_250

def rawBody826_252 : StackLang.HolProg 64 :=
.seq rawBody826_8 rawBody826_251

def rawBody826_253 : StackLang.HolProg 64 :=
.seq rawBody826_7 rawBody826_252

def rawBody826_254 : StackLang.HolProg 64 :=
.seq rawBody826_6 rawBody826_253

def rawBody826_255 : StackLang.HolProg 64 :=
.seq rawBody826_5 rawBody826_254

def rawBody826_256 : StackLang.HolProg 64 :=
.seq rawBody826_4 rawBody826_255

def rawBody826_257 : StackLang.HolProg 64 :=
.seq rawBody826_3 rawBody826_256

def rawBody826_258 : StackLang.HolProg 64 :=
.seq rawBody826_2 rawBody826_257

def rawBody826_259 : StackLang.HolProg 64 :=
.seq rawBody826_1 rawBody826_258

def rawBody826_260 : StackLang.HolProg 64 :=
.seq rawBody826_0 rawBody826_259

def raw826 : StackLang.HolProg 64 := rawBody826_260
theorem raw826_eq : StackRawCall.compTop RawInfo.rawInfo (function826 (.list [])).1 = raw826 := by
  kernel_rfl
#print axioms raw826_eq
end InitECandidate.Proofs.BackendStages
