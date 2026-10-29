import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function827
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody827_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody827_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody827_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody827_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody827_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody827_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody827_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def rawBody827_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def rawBody827_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def rawBody827_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody827_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody827_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody827_18 : StackLang.HolProg 64 :=
.seq rawBody827_16 rawBody827_17

def rawBody827_19 : StackLang.HolProg 64 :=
.seq rawBody827_15 rawBody827_18

def rawBody827_20 : StackLang.HolProg 64 :=
.seq rawBody827_14 rawBody827_19

def rawBody827_21 : StackLang.HolProg 64 :=
.seq rawBody827_13 rawBody827_20

def rawBody827_22 : StackLang.HolProg 64 :=
.seq rawBody827_12 rawBody827_21

def rawBody827_23 : StackLang.HolProg 64 :=
.seq rawBody827_11 rawBody827_22

def rawBody827_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody827_23 rawBody827_24

def rawBody827_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 23800#64)

def rawBody827_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody827_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody827_31 : StackLang.HolProg 64 :=
.seq rawBody827_29 rawBody827_30

def rawBody827_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4115#64)

def rawBody827_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody827_35 : StackLang.HolProg 64 :=
.seq rawBody827_33 rawBody827_34

def rawBody827_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody827_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody827_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody827_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 827 3

def rawBody827_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody827_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody827_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody827_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody827_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody827_46 : StackLang.HolProg 64 :=
.seq rawBody827_44 rawBody827_45

def rawBody827_47 : StackLang.HolProg 64 :=
.seq rawBody827_43 rawBody827_46

def rawBody827_48 : StackLang.HolProg 64 :=
.seq rawBody827_42 rawBody827_47

def rawBody827_49 : StackLang.HolProg 64 :=
.seq rawBody827_41 rawBody827_48

def rawBody827_50 : StackLang.HolProg 64 :=
.seq rawBody827_40 rawBody827_49

def rawBody827_51 : StackLang.HolProg 64 :=
.seq rawBody827_39 rawBody827_50

def rawBody827_52 : StackLang.HolProg 64 :=
.seq rawBody827_38 rawBody827_51

def rawBody827_53 : StackLang.HolProg 64 :=
.seq rawBody827_37 rawBody827_52

def rawBody827_54 : StackLang.HolProg 64 :=
.seq rawBody827_36 rawBody827_53

def rawBody827_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody827_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody827_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody827_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody827_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_62 : StackLang.HolProg 64 :=
.seq rawBody827_60 rawBody827_61

def rawBody827_63 : StackLang.HolProg 64 :=
.seq rawBody827_59 rawBody827_62

def rawBody827_64 : StackLang.HolProg 64 :=
.seq rawBody827_58 rawBody827_63

def rawBody827_65 : StackLang.HolProg 64 :=
.seq rawBody827_57 rawBody827_64

def rawBody827_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody827_68 : StackLang.HolProg 64 :=
.seq rawBody827_66 rawBody827_67

def rawBody827_69 : StackLang.HolProg 64 :=
.call (some (rawBody827_65, 0, 827, 2)) (Sum.inl 470) (some (rawBody827_68, 827, 3))

def rawBody827_70 : StackLang.HolProg 64 :=
.seq rawBody827_56 rawBody827_69

def rawBody827_71 : StackLang.HolProg 64 :=
.seq rawBody827_55 rawBody827_70

def rawBody827_72 : StackLang.HolProg 64 :=
.seq rawBody827_54 rawBody827_71

def rawBody827_73 : StackLang.HolProg 64 :=
.seq rawBody827_35 rawBody827_72

def rawBody827_74 : StackLang.HolProg 64 :=
.seq rawBody827_32 rawBody827_73

def rawBody827_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody827_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4116#64)

def rawBody827_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody827_81 : StackLang.HolProg 64 :=
.seq rawBody827_79 rawBody827_80

def rawBody827_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody827_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody827_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody827_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 827 5

def rawBody827_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody827_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody827_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody827_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody827_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody827_92 : StackLang.HolProg 64 :=
.seq rawBody827_90 rawBody827_91

def rawBody827_93 : StackLang.HolProg 64 :=
.seq rawBody827_89 rawBody827_92

def rawBody827_94 : StackLang.HolProg 64 :=
.seq rawBody827_88 rawBody827_93

def rawBody827_95 : StackLang.HolProg 64 :=
.seq rawBody827_87 rawBody827_94

def rawBody827_96 : StackLang.HolProg 64 :=
.seq rawBody827_86 rawBody827_95

def rawBody827_97 : StackLang.HolProg 64 :=
.seq rawBody827_85 rawBody827_96

def rawBody827_98 : StackLang.HolProg 64 :=
.seq rawBody827_84 rawBody827_97

def rawBody827_99 : StackLang.HolProg 64 :=
.seq rawBody827_83 rawBody827_98

def rawBody827_100 : StackLang.HolProg 64 :=
.seq rawBody827_82 rawBody827_99

def rawBody827_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody827_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody827_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody827_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody827_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody827_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody827_109 : StackLang.HolProg 64 :=
.seq rawBody827_107 rawBody827_108

def rawBody827_110 : StackLang.HolProg 64 :=
.seq rawBody827_106 rawBody827_109

def rawBody827_111 : StackLang.HolProg 64 :=
.seq rawBody827_105 rawBody827_110

def rawBody827_112 : StackLang.HolProg 64 :=
.seq rawBody827_104 rawBody827_111

def rawBody827_113 : StackLang.HolProg 64 :=
.seq rawBody827_103 rawBody827_112

def rawBody827_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody827_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody827_116 : StackLang.HolProg 64 :=
.seq rawBody827_114 rawBody827_115

def rawBody827_117 : StackLang.HolProg 64 :=
.call (some (rawBody827_113, 0, 827, 4)) (Sum.inl 68) (some (rawBody827_116, 827, 5))

def rawBody827_118 : StackLang.HolProg 64 :=
.seq rawBody827_102 rawBody827_117

def rawBody827_119 : StackLang.HolProg 64 :=
.seq rawBody827_101 rawBody827_118

def rawBody827_120 : StackLang.HolProg 64 :=
.seq rawBody827_100 rawBody827_119

def rawBody827_121 : StackLang.HolProg 64 :=
.seq rawBody827_81 rawBody827_120

def rawBody827_122 : StackLang.HolProg 64 :=
.seq rawBody827_78 rawBody827_121

def rawBody827_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody827_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody827_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4117#64)

def rawBody827_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody827_130 : StackLang.HolProg 64 :=
.seq rawBody827_128 rawBody827_129

def rawBody827_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody827_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody827_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody827_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 827 7

def rawBody827_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody827_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody827_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody827_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody827_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody827_141 : StackLang.HolProg 64 :=
.seq rawBody827_139 rawBody827_140

def rawBody827_142 : StackLang.HolProg 64 :=
.seq rawBody827_138 rawBody827_141

def rawBody827_143 : StackLang.HolProg 64 :=
.seq rawBody827_137 rawBody827_142

def rawBody827_144 : StackLang.HolProg 64 :=
.seq rawBody827_136 rawBody827_143

def rawBody827_145 : StackLang.HolProg 64 :=
.seq rawBody827_135 rawBody827_144

def rawBody827_146 : StackLang.HolProg 64 :=
.seq rawBody827_134 rawBody827_145

def rawBody827_147 : StackLang.HolProg 64 :=
.seq rawBody827_133 rawBody827_146

def rawBody827_148 : StackLang.HolProg 64 :=
.seq rawBody827_132 rawBody827_147

def rawBody827_149 : StackLang.HolProg 64 :=
.seq rawBody827_131 rawBody827_148

def rawBody827_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody827_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody827_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody827_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody827_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody827_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody827_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody827_159 : StackLang.HolProg 64 :=
.seq rawBody827_157 rawBody827_158

def rawBody827_160 : StackLang.HolProg 64 :=
.seq rawBody827_156 rawBody827_159

def rawBody827_161 : StackLang.HolProg 64 :=
.seq rawBody827_155 rawBody827_160

def rawBody827_162 : StackLang.HolProg 64 :=
.seq rawBody827_154 rawBody827_161

def rawBody827_163 : StackLang.HolProg 64 :=
.seq rawBody827_153 rawBody827_162

def rawBody827_164 : StackLang.HolProg 64 :=
.seq rawBody827_152 rawBody827_163

def rawBody827_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody827_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody827_167 : StackLang.HolProg 64 :=
.seq rawBody827_165 rawBody827_166

def rawBody827_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody827_169 : StackLang.HolProg 64 :=
.seq rawBody827_167 rawBody827_168

def rawBody827_170 : StackLang.HolProg 64 :=
.call (some (rawBody827_164, 0, 827, 6)) (Sum.inl 816) (some (rawBody827_169, 827, 7))

def rawBody827_171 : StackLang.HolProg 64 :=
.seq rawBody827_151 rawBody827_170

def rawBody827_172 : StackLang.HolProg 64 :=
.seq rawBody827_150 rawBody827_171

def rawBody827_173 : StackLang.HolProg 64 :=
.seq rawBody827_149 rawBody827_172

def rawBody827_174 : StackLang.HolProg 64 :=
.seq rawBody827_130 rawBody827_173

def rawBody827_175 : StackLang.HolProg 64 :=
.seq rawBody827_127 rawBody827_174

def rawBody827_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody827_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def rawBody827_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody827_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody827_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody827_186 : StackLang.HolProg 64 :=
.seq rawBody827_184 rawBody827_185

def rawBody827_187 : StackLang.HolProg 64 :=
.seq rawBody827_183 rawBody827_186

def rawBody827_188 : StackLang.HolProg 64 :=
.seq rawBody827_182 rawBody827_187

def rawBody827_189 : StackLang.HolProg 64 :=
.seq rawBody827_181 rawBody827_188

def rawBody827_190 : StackLang.HolProg 64 :=
.seq rawBody827_180 rawBody827_189

def rawBody827_191 : StackLang.HolProg 64 :=
.seq rawBody827_179 rawBody827_190

def rawBody827_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody827_191 rawBody827_192

def rawBody827_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody827_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody827_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody827_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody827_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody827_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody827_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody827_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody827_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody827_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody827_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody827_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody827_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody827_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody827_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody827_213 : StackLang.HolProg 64 :=
.seq rawBody827_211 rawBody827_212

def rawBody827_214 : StackLang.HolProg 64 :=
.seq rawBody827_210 rawBody827_213

def rawBody827_215 : StackLang.HolProg 64 :=
.seq rawBody827_209 rawBody827_214

def rawBody827_216 : StackLang.HolProg 64 :=
.seq rawBody827_208 rawBody827_215

def rawBody827_217 : StackLang.HolProg 64 :=
.seq rawBody827_207 rawBody827_216

def rawBody827_218 : StackLang.HolProg 64 :=
.seq rawBody827_206 rawBody827_217

def rawBody827_219 : StackLang.HolProg 64 :=
.seq rawBody827_205 rawBody827_218

def rawBody827_220 : StackLang.HolProg 64 :=
.seq rawBody827_204 rawBody827_219

def rawBody827_221 : StackLang.HolProg 64 :=
.seq rawBody827_203 rawBody827_220

def rawBody827_222 : StackLang.HolProg 64 :=
.seq rawBody827_202 rawBody827_221

def rawBody827_223 : StackLang.HolProg 64 :=
.seq rawBody827_201 rawBody827_222

def rawBody827_224 : StackLang.HolProg 64 :=
.seq rawBody827_200 rawBody827_223

def rawBody827_225 : StackLang.HolProg 64 :=
.seq rawBody827_199 rawBody827_224

def rawBody827_226 : StackLang.HolProg 64 :=
.seq rawBody827_198 rawBody827_225

def rawBody827_227 : StackLang.HolProg 64 :=
.seq rawBody827_197 rawBody827_226

def rawBody827_228 : StackLang.HolProg 64 :=
.seq rawBody827_196 rawBody827_227

def rawBody827_229 : StackLang.HolProg 64 :=
.seq rawBody827_195 rawBody827_228

def rawBody827_230 : StackLang.HolProg 64 :=
.seq rawBody827_194 rawBody827_229

def rawBody827_231 : StackLang.HolProg 64 :=
.seq rawBody827_193 rawBody827_230

def rawBody827_232 : StackLang.HolProg 64 :=
.seq rawBody827_178 rawBody827_231

def rawBody827_233 : StackLang.HolProg 64 :=
.seq rawBody827_177 rawBody827_232

def rawBody827_234 : StackLang.HolProg 64 :=
.seq rawBody827_176 rawBody827_233

def rawBody827_235 : StackLang.HolProg 64 :=
.seq rawBody827_175 rawBody827_234

def rawBody827_236 : StackLang.HolProg 64 :=
.seq rawBody827_126 rawBody827_235

def rawBody827_237 : StackLang.HolProg 64 :=
.seq rawBody827_125 rawBody827_236

def rawBody827_238 : StackLang.HolProg 64 :=
.seq rawBody827_124 rawBody827_237

def rawBody827_239 : StackLang.HolProg 64 :=
.seq rawBody827_123 rawBody827_238

def rawBody827_240 : StackLang.HolProg 64 :=
.seq rawBody827_122 rawBody827_239

def rawBody827_241 : StackLang.HolProg 64 :=
.seq rawBody827_77 rawBody827_240

def rawBody827_242 : StackLang.HolProg 64 :=
.seq rawBody827_76 rawBody827_241

def rawBody827_243 : StackLang.HolProg 64 :=
.seq rawBody827_75 rawBody827_242

def rawBody827_244 : StackLang.HolProg 64 :=
.seq rawBody827_74 rawBody827_243

def rawBody827_245 : StackLang.HolProg 64 :=
.seq rawBody827_31 rawBody827_244

def rawBody827_246 : StackLang.HolProg 64 :=
.seq rawBody827_28 rawBody827_245

def rawBody827_247 : StackLang.HolProg 64 :=
.seq rawBody827_27 rawBody827_246

def rawBody827_248 : StackLang.HolProg 64 :=
.seq rawBody827_26 rawBody827_247

def rawBody827_249 : StackLang.HolProg 64 :=
.seq rawBody827_25 rawBody827_248

def rawBody827_250 : StackLang.HolProg 64 :=
.seq rawBody827_10 rawBody827_249

def rawBody827_251 : StackLang.HolProg 64 :=
.seq rawBody827_9 rawBody827_250

def rawBody827_252 : StackLang.HolProg 64 :=
.seq rawBody827_8 rawBody827_251

def rawBody827_253 : StackLang.HolProg 64 :=
.seq rawBody827_7 rawBody827_252

def rawBody827_254 : StackLang.HolProg 64 :=
.seq rawBody827_6 rawBody827_253

def rawBody827_255 : StackLang.HolProg 64 :=
.seq rawBody827_5 rawBody827_254

def rawBody827_256 : StackLang.HolProg 64 :=
.seq rawBody827_4 rawBody827_255

def rawBody827_257 : StackLang.HolProg 64 :=
.seq rawBody827_3 rawBody827_256

def rawBody827_258 : StackLang.HolProg 64 :=
.seq rawBody827_2 rawBody827_257

def rawBody827_259 : StackLang.HolProg 64 :=
.seq rawBody827_1 rawBody827_258

def rawBody827_260 : StackLang.HolProg 64 :=
.seq rawBody827_0 rawBody827_259

def raw827 : StackLang.HolProg 64 := rawBody827_260
theorem raw827_eq : StackRawCall.compTop RawInfo.rawInfo (function827 (.list [])).1 = raw827 := by
  kernel_rfl
#print axioms raw827_eq
end InitECandidate.Proofs.BackendStages
