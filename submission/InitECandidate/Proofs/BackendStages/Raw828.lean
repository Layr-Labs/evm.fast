import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function828
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody828_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody828_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody828_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody828_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody828_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody828_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody828_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def rawBody828_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 192#64)

def rawBody828_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def rawBody828_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody828_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody828_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody828_18 : StackLang.HolProg 64 :=
.seq rawBody828_16 rawBody828_17

def rawBody828_19 : StackLang.HolProg 64 :=
.seq rawBody828_15 rawBody828_18

def rawBody828_20 : StackLang.HolProg 64 :=
.seq rawBody828_14 rawBody828_19

def rawBody828_21 : StackLang.HolProg 64 :=
.seq rawBody828_13 rawBody828_20

def rawBody828_22 : StackLang.HolProg 64 :=
.seq rawBody828_12 rawBody828_21

def rawBody828_23 : StackLang.HolProg 64 :=
.seq rawBody828_11 rawBody828_22

def rawBody828_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody828_23 rawBody828_24

def rawBody828_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 50000#64)

def rawBody828_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody828_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody828_31 : StackLang.HolProg 64 :=
.seq rawBody828_29 rawBody828_30

def rawBody828_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4118#64)

def rawBody828_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody828_35 : StackLang.HolProg 64 :=
.seq rawBody828_33 rawBody828_34

def rawBody828_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody828_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody828_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody828_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 3

def rawBody828_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody828_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody828_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody828_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody828_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody828_46 : StackLang.HolProg 64 :=
.seq rawBody828_44 rawBody828_45

def rawBody828_47 : StackLang.HolProg 64 :=
.seq rawBody828_43 rawBody828_46

def rawBody828_48 : StackLang.HolProg 64 :=
.seq rawBody828_42 rawBody828_47

def rawBody828_49 : StackLang.HolProg 64 :=
.seq rawBody828_41 rawBody828_48

def rawBody828_50 : StackLang.HolProg 64 :=
.seq rawBody828_40 rawBody828_49

def rawBody828_51 : StackLang.HolProg 64 :=
.seq rawBody828_39 rawBody828_50

def rawBody828_52 : StackLang.HolProg 64 :=
.seq rawBody828_38 rawBody828_51

def rawBody828_53 : StackLang.HolProg 64 :=
.seq rawBody828_37 rawBody828_52

def rawBody828_54 : StackLang.HolProg 64 :=
.seq rawBody828_36 rawBody828_53

def rawBody828_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody828_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody828_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody828_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody828_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_62 : StackLang.HolProg 64 :=
.seq rawBody828_60 rawBody828_61

def rawBody828_63 : StackLang.HolProg 64 :=
.seq rawBody828_59 rawBody828_62

def rawBody828_64 : StackLang.HolProg 64 :=
.seq rawBody828_58 rawBody828_63

def rawBody828_65 : StackLang.HolProg 64 :=
.seq rawBody828_57 rawBody828_64

def rawBody828_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody828_68 : StackLang.HolProg 64 :=
.seq rawBody828_66 rawBody828_67

def rawBody828_69 : StackLang.HolProg 64 :=
.call (some (rawBody828_65, 0, 828, 2)) (Sum.inl 470) (some (rawBody828_68, 828, 3))

def rawBody828_70 : StackLang.HolProg 64 :=
.seq rawBody828_56 rawBody828_69

def rawBody828_71 : StackLang.HolProg 64 :=
.seq rawBody828_55 rawBody828_70

def rawBody828_72 : StackLang.HolProg 64 :=
.seq rawBody828_54 rawBody828_71

def rawBody828_73 : StackLang.HolProg 64 :=
.seq rawBody828_35 rawBody828_72

def rawBody828_74 : StackLang.HolProg 64 :=
.seq rawBody828_32 rawBody828_73

def rawBody828_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody828_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4119#64)

def rawBody828_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody828_81 : StackLang.HolProg 64 :=
.seq rawBody828_79 rawBody828_80

def rawBody828_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody828_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody828_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody828_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 5

def rawBody828_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody828_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody828_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody828_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody828_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody828_92 : StackLang.HolProg 64 :=
.seq rawBody828_90 rawBody828_91

def rawBody828_93 : StackLang.HolProg 64 :=
.seq rawBody828_89 rawBody828_92

def rawBody828_94 : StackLang.HolProg 64 :=
.seq rawBody828_88 rawBody828_93

def rawBody828_95 : StackLang.HolProg 64 :=
.seq rawBody828_87 rawBody828_94

def rawBody828_96 : StackLang.HolProg 64 :=
.seq rawBody828_86 rawBody828_95

def rawBody828_97 : StackLang.HolProg 64 :=
.seq rawBody828_85 rawBody828_96

def rawBody828_98 : StackLang.HolProg 64 :=
.seq rawBody828_84 rawBody828_97

def rawBody828_99 : StackLang.HolProg 64 :=
.seq rawBody828_83 rawBody828_98

def rawBody828_100 : StackLang.HolProg 64 :=
.seq rawBody828_82 rawBody828_99

def rawBody828_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody828_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody828_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody828_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody828_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody828_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody828_109 : StackLang.HolProg 64 :=
.seq rawBody828_107 rawBody828_108

def rawBody828_110 : StackLang.HolProg 64 :=
.seq rawBody828_106 rawBody828_109

def rawBody828_111 : StackLang.HolProg 64 :=
.seq rawBody828_105 rawBody828_110

def rawBody828_112 : StackLang.HolProg 64 :=
.seq rawBody828_104 rawBody828_111

def rawBody828_113 : StackLang.HolProg 64 :=
.seq rawBody828_103 rawBody828_112

def rawBody828_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody828_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody828_116 : StackLang.HolProg 64 :=
.seq rawBody828_114 rawBody828_115

def rawBody828_117 : StackLang.HolProg 64 :=
.call (some (rawBody828_113, 0, 828, 4)) (Sum.inl 68) (some (rawBody828_116, 828, 5))

def rawBody828_118 : StackLang.HolProg 64 :=
.seq rawBody828_102 rawBody828_117

def rawBody828_119 : StackLang.HolProg 64 :=
.seq rawBody828_101 rawBody828_118

def rawBody828_120 : StackLang.HolProg 64 :=
.seq rawBody828_100 rawBody828_119

def rawBody828_121 : StackLang.HolProg 64 :=
.seq rawBody828_81 rawBody828_120

def rawBody828_122 : StackLang.HolProg 64 :=
.seq rawBody828_78 rawBody828_121

def rawBody828_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody828_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody828_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4120#64)

def rawBody828_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody828_130 : StackLang.HolProg 64 :=
.seq rawBody828_128 rawBody828_129

def rawBody828_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody828_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody828_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody828_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 7

def rawBody828_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody828_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody828_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody828_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody828_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody828_141 : StackLang.HolProg 64 :=
.seq rawBody828_139 rawBody828_140

def rawBody828_142 : StackLang.HolProg 64 :=
.seq rawBody828_138 rawBody828_141

def rawBody828_143 : StackLang.HolProg 64 :=
.seq rawBody828_137 rawBody828_142

def rawBody828_144 : StackLang.HolProg 64 :=
.seq rawBody828_136 rawBody828_143

def rawBody828_145 : StackLang.HolProg 64 :=
.seq rawBody828_135 rawBody828_144

def rawBody828_146 : StackLang.HolProg 64 :=
.seq rawBody828_134 rawBody828_145

def rawBody828_147 : StackLang.HolProg 64 :=
.seq rawBody828_133 rawBody828_146

def rawBody828_148 : StackLang.HolProg 64 :=
.seq rawBody828_132 rawBody828_147

def rawBody828_149 : StackLang.HolProg 64 :=
.seq rawBody828_131 rawBody828_148

def rawBody828_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody828_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody828_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody828_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody828_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody828_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody828_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody828_159 : StackLang.HolProg 64 :=
.seq rawBody828_157 rawBody828_158

def rawBody828_160 : StackLang.HolProg 64 :=
.seq rawBody828_156 rawBody828_159

def rawBody828_161 : StackLang.HolProg 64 :=
.seq rawBody828_155 rawBody828_160

def rawBody828_162 : StackLang.HolProg 64 :=
.seq rawBody828_154 rawBody828_161

def rawBody828_163 : StackLang.HolProg 64 :=
.seq rawBody828_153 rawBody828_162

def rawBody828_164 : StackLang.HolProg 64 :=
.seq rawBody828_152 rawBody828_163

def rawBody828_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody828_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody828_167 : StackLang.HolProg 64 :=
.seq rawBody828_165 rawBody828_166

def rawBody828_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody828_169 : StackLang.HolProg 64 :=
.seq rawBody828_167 rawBody828_168

def rawBody828_170 : StackLang.HolProg 64 :=
.call (some (rawBody828_164, 0, 828, 6)) (Sum.inl 817) (some (rawBody828_169, 828, 7))

def rawBody828_171 : StackLang.HolProg 64 :=
.seq rawBody828_151 rawBody828_170

def rawBody828_172 : StackLang.HolProg 64 :=
.seq rawBody828_150 rawBody828_171

def rawBody828_173 : StackLang.HolProg 64 :=
.seq rawBody828_149 rawBody828_172

def rawBody828_174 : StackLang.HolProg 64 :=
.seq rawBody828_130 rawBody828_173

def rawBody828_175 : StackLang.HolProg 64 :=
.seq rawBody828_127 rawBody828_174

def rawBody828_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody828_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 13#64)

def rawBody828_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody828_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody828_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody828_186 : StackLang.HolProg 64 :=
.seq rawBody828_184 rawBody828_185

def rawBody828_187 : StackLang.HolProg 64 :=
.seq rawBody828_183 rawBody828_186

def rawBody828_188 : StackLang.HolProg 64 :=
.seq rawBody828_182 rawBody828_187

def rawBody828_189 : StackLang.HolProg 64 :=
.seq rawBody828_181 rawBody828_188

def rawBody828_190 : StackLang.HolProg 64 :=
.seq rawBody828_180 rawBody828_189

def rawBody828_191 : StackLang.HolProg 64 :=
.seq rawBody828_179 rawBody828_190

def rawBody828_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody828_191 rawBody828_192

def rawBody828_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody828_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody828_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody828_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody828_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody828_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody828_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody828_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody828_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody828_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody828_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody828_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody828_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody828_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody828_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody828_213 : StackLang.HolProg 64 :=
.seq rawBody828_211 rawBody828_212

def rawBody828_214 : StackLang.HolProg 64 :=
.seq rawBody828_210 rawBody828_213

def rawBody828_215 : StackLang.HolProg 64 :=
.seq rawBody828_209 rawBody828_214

def rawBody828_216 : StackLang.HolProg 64 :=
.seq rawBody828_208 rawBody828_215

def rawBody828_217 : StackLang.HolProg 64 :=
.seq rawBody828_207 rawBody828_216

def rawBody828_218 : StackLang.HolProg 64 :=
.seq rawBody828_206 rawBody828_217

def rawBody828_219 : StackLang.HolProg 64 :=
.seq rawBody828_205 rawBody828_218

def rawBody828_220 : StackLang.HolProg 64 :=
.seq rawBody828_204 rawBody828_219

def rawBody828_221 : StackLang.HolProg 64 :=
.seq rawBody828_203 rawBody828_220

def rawBody828_222 : StackLang.HolProg 64 :=
.seq rawBody828_202 rawBody828_221

def rawBody828_223 : StackLang.HolProg 64 :=
.seq rawBody828_201 rawBody828_222

def rawBody828_224 : StackLang.HolProg 64 :=
.seq rawBody828_200 rawBody828_223

def rawBody828_225 : StackLang.HolProg 64 :=
.seq rawBody828_199 rawBody828_224

def rawBody828_226 : StackLang.HolProg 64 :=
.seq rawBody828_198 rawBody828_225

def rawBody828_227 : StackLang.HolProg 64 :=
.seq rawBody828_197 rawBody828_226

def rawBody828_228 : StackLang.HolProg 64 :=
.seq rawBody828_196 rawBody828_227

def rawBody828_229 : StackLang.HolProg 64 :=
.seq rawBody828_195 rawBody828_228

def rawBody828_230 : StackLang.HolProg 64 :=
.seq rawBody828_194 rawBody828_229

def rawBody828_231 : StackLang.HolProg 64 :=
.seq rawBody828_193 rawBody828_230

def rawBody828_232 : StackLang.HolProg 64 :=
.seq rawBody828_178 rawBody828_231

def rawBody828_233 : StackLang.HolProg 64 :=
.seq rawBody828_177 rawBody828_232

def rawBody828_234 : StackLang.HolProg 64 :=
.seq rawBody828_176 rawBody828_233

def rawBody828_235 : StackLang.HolProg 64 :=
.seq rawBody828_175 rawBody828_234

def rawBody828_236 : StackLang.HolProg 64 :=
.seq rawBody828_126 rawBody828_235

def rawBody828_237 : StackLang.HolProg 64 :=
.seq rawBody828_125 rawBody828_236

def rawBody828_238 : StackLang.HolProg 64 :=
.seq rawBody828_124 rawBody828_237

def rawBody828_239 : StackLang.HolProg 64 :=
.seq rawBody828_123 rawBody828_238

def rawBody828_240 : StackLang.HolProg 64 :=
.seq rawBody828_122 rawBody828_239

def rawBody828_241 : StackLang.HolProg 64 :=
.seq rawBody828_77 rawBody828_240

def rawBody828_242 : StackLang.HolProg 64 :=
.seq rawBody828_76 rawBody828_241

def rawBody828_243 : StackLang.HolProg 64 :=
.seq rawBody828_75 rawBody828_242

def rawBody828_244 : StackLang.HolProg 64 :=
.seq rawBody828_74 rawBody828_243

def rawBody828_245 : StackLang.HolProg 64 :=
.seq rawBody828_31 rawBody828_244

def rawBody828_246 : StackLang.HolProg 64 :=
.seq rawBody828_28 rawBody828_245

def rawBody828_247 : StackLang.HolProg 64 :=
.seq rawBody828_27 rawBody828_246

def rawBody828_248 : StackLang.HolProg 64 :=
.seq rawBody828_26 rawBody828_247

def rawBody828_249 : StackLang.HolProg 64 :=
.seq rawBody828_25 rawBody828_248

def rawBody828_250 : StackLang.HolProg 64 :=
.seq rawBody828_10 rawBody828_249

def rawBody828_251 : StackLang.HolProg 64 :=
.seq rawBody828_9 rawBody828_250

def rawBody828_252 : StackLang.HolProg 64 :=
.seq rawBody828_8 rawBody828_251

def rawBody828_253 : StackLang.HolProg 64 :=
.seq rawBody828_7 rawBody828_252

def rawBody828_254 : StackLang.HolProg 64 :=
.seq rawBody828_6 rawBody828_253

def rawBody828_255 : StackLang.HolProg 64 :=
.seq rawBody828_5 rawBody828_254

def rawBody828_256 : StackLang.HolProg 64 :=
.seq rawBody828_4 rawBody828_255

def rawBody828_257 : StackLang.HolProg 64 :=
.seq rawBody828_3 rawBody828_256

def rawBody828_258 : StackLang.HolProg 64 :=
.seq rawBody828_2 rawBody828_257

def rawBody828_259 : StackLang.HolProg 64 :=
.seq rawBody828_1 rawBody828_258

def rawBody828_260 : StackLang.HolProg 64 :=
.seq rawBody828_0 rawBody828_259

def raw828 : StackLang.HolProg 64 := rawBody828_260
theorem raw828_eq : StackRawCall.compTop RawInfo.rawInfo (function828 (.list [])).1 = raw828 := by
  kernel_rfl
#print axioms raw828_eq
end InitECandidate.Proofs.BackendStages
