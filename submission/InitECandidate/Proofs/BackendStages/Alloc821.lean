import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw821
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody821_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody821_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody821_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody821_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody821_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody821_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody821_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody821_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 256#64)

def AllocBody821_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody821_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody821_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody821_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody821_18 : StackLang.HolProg 64 :=
.seq AllocBody821_16 AllocBody821_17

def AllocBody821_19 : StackLang.HolProg 64 :=
.seq AllocBody821_15 AllocBody821_18

def AllocBody821_20 : StackLang.HolProg 64 :=
.seq AllocBody821_14 AllocBody821_19

def AllocBody821_21 : StackLang.HolProg 64 :=
.seq AllocBody821_13 AllocBody821_20

def AllocBody821_22 : StackLang.HolProg 64 :=
.seq AllocBody821_12 AllocBody821_21

def AllocBody821_23 : StackLang.HolProg 64 :=
.seq AllocBody821_11 AllocBody821_22

def AllocBody821_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody821_23 AllocBody821_24

def AllocBody821_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 375#64)

def AllocBody821_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody821_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody821_31 : StackLang.HolProg 64 :=
.seq AllocBody821_29 AllocBody821_30

def AllocBody821_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4090#64)

def AllocBody821_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody821_35 : StackLang.HolProg 64 :=
.seq AllocBody821_33 AllocBody821_34

def AllocBody821_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody821_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody821_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody821_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 821 3

def AllocBody821_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody821_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody821_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody821_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody821_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody821_46 : StackLang.HolProg 64 :=
.seq AllocBody821_44 AllocBody821_45

def AllocBody821_47 : StackLang.HolProg 64 :=
.seq AllocBody821_43 AllocBody821_46

def AllocBody821_48 : StackLang.HolProg 64 :=
.seq AllocBody821_42 AllocBody821_47

def AllocBody821_49 : StackLang.HolProg 64 :=
.seq AllocBody821_41 AllocBody821_48

def AllocBody821_50 : StackLang.HolProg 64 :=
.seq AllocBody821_40 AllocBody821_49

def AllocBody821_51 : StackLang.HolProg 64 :=
.seq AllocBody821_39 AllocBody821_50

def AllocBody821_52 : StackLang.HolProg 64 :=
.seq AllocBody821_38 AllocBody821_51

def AllocBody821_53 : StackLang.HolProg 64 :=
.seq AllocBody821_37 AllocBody821_52

def AllocBody821_54 : StackLang.HolProg 64 :=
.seq AllocBody821_36 AllocBody821_53

def AllocBody821_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody821_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody821_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody821_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody821_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_62 : StackLang.HolProg 64 :=
.seq AllocBody821_60 AllocBody821_61

def AllocBody821_63 : StackLang.HolProg 64 :=
.seq AllocBody821_59 AllocBody821_62

def AllocBody821_64 : StackLang.HolProg 64 :=
.seq AllocBody821_58 AllocBody821_63

def AllocBody821_65 : StackLang.HolProg 64 :=
.seq AllocBody821_57 AllocBody821_64

def AllocBody821_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody821_68 : StackLang.HolProg 64 :=
.seq AllocBody821_66 AllocBody821_67

def AllocBody821_69 : StackLang.HolProg 64 :=
.call (some (AllocBody821_65, 0, 821, 2)) (Sum.inl 470) (some (AllocBody821_68, 821, 3))

def AllocBody821_70 : StackLang.HolProg 64 :=
.seq AllocBody821_56 AllocBody821_69

def AllocBody821_71 : StackLang.HolProg 64 :=
.seq AllocBody821_55 AllocBody821_70

def AllocBody821_72 : StackLang.HolProg 64 :=
.seq AllocBody821_54 AllocBody821_71

def AllocBody821_73 : StackLang.HolProg 64 :=
.seq AllocBody821_35 AllocBody821_72

def AllocBody821_74 : StackLang.HolProg 64 :=
.seq AllocBody821_32 AllocBody821_73

def AllocBody821_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody821_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4091#64)

def AllocBody821_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody821_81 : StackLang.HolProg 64 :=
.seq AllocBody821_79 AllocBody821_80

def AllocBody821_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody821_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody821_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody821_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 821 5

def AllocBody821_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody821_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody821_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody821_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody821_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody821_92 : StackLang.HolProg 64 :=
.seq AllocBody821_90 AllocBody821_91

def AllocBody821_93 : StackLang.HolProg 64 :=
.seq AllocBody821_89 AllocBody821_92

def AllocBody821_94 : StackLang.HolProg 64 :=
.seq AllocBody821_88 AllocBody821_93

def AllocBody821_95 : StackLang.HolProg 64 :=
.seq AllocBody821_87 AllocBody821_94

def AllocBody821_96 : StackLang.HolProg 64 :=
.seq AllocBody821_86 AllocBody821_95

def AllocBody821_97 : StackLang.HolProg 64 :=
.seq AllocBody821_85 AllocBody821_96

def AllocBody821_98 : StackLang.HolProg 64 :=
.seq AllocBody821_84 AllocBody821_97

def AllocBody821_99 : StackLang.HolProg 64 :=
.seq AllocBody821_83 AllocBody821_98

def AllocBody821_100 : StackLang.HolProg 64 :=
.seq AllocBody821_82 AllocBody821_99

def AllocBody821_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody821_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody821_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody821_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody821_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody821_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody821_109 : StackLang.HolProg 64 :=
.seq AllocBody821_107 AllocBody821_108

def AllocBody821_110 : StackLang.HolProg 64 :=
.seq AllocBody821_106 AllocBody821_109

def AllocBody821_111 : StackLang.HolProg 64 :=
.seq AllocBody821_105 AllocBody821_110

def AllocBody821_112 : StackLang.HolProg 64 :=
.seq AllocBody821_104 AllocBody821_111

def AllocBody821_113 : StackLang.HolProg 64 :=
.seq AllocBody821_103 AllocBody821_112

def AllocBody821_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody821_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody821_116 : StackLang.HolProg 64 :=
.seq AllocBody821_114 AllocBody821_115

def AllocBody821_117 : StackLang.HolProg 64 :=
.call (some (AllocBody821_113, 0, 821, 4)) (Sum.inl 68) (some (AllocBody821_116, 821, 5))

def AllocBody821_118 : StackLang.HolProg 64 :=
.seq AllocBody821_102 AllocBody821_117

def AllocBody821_119 : StackLang.HolProg 64 :=
.seq AllocBody821_101 AllocBody821_118

def AllocBody821_120 : StackLang.HolProg 64 :=
.seq AllocBody821_100 AllocBody821_119

def AllocBody821_121 : StackLang.HolProg 64 :=
.seq AllocBody821_81 AllocBody821_120

def AllocBody821_122 : StackLang.HolProg 64 :=
.seq AllocBody821_78 AllocBody821_121

def AllocBody821_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody821_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody821_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4092#64)

def AllocBody821_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody821_130 : StackLang.HolProg 64 :=
.seq AllocBody821_128 AllocBody821_129

def AllocBody821_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody821_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody821_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody821_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 821 7

def AllocBody821_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody821_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody821_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody821_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody821_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody821_141 : StackLang.HolProg 64 :=
.seq AllocBody821_139 AllocBody821_140

def AllocBody821_142 : StackLang.HolProg 64 :=
.seq AllocBody821_138 AllocBody821_141

def AllocBody821_143 : StackLang.HolProg 64 :=
.seq AllocBody821_137 AllocBody821_142

def AllocBody821_144 : StackLang.HolProg 64 :=
.seq AllocBody821_136 AllocBody821_143

def AllocBody821_145 : StackLang.HolProg 64 :=
.seq AllocBody821_135 AllocBody821_144

def AllocBody821_146 : StackLang.HolProg 64 :=
.seq AllocBody821_134 AllocBody821_145

def AllocBody821_147 : StackLang.HolProg 64 :=
.seq AllocBody821_133 AllocBody821_146

def AllocBody821_148 : StackLang.HolProg 64 :=
.seq AllocBody821_132 AllocBody821_147

def AllocBody821_149 : StackLang.HolProg 64 :=
.seq AllocBody821_131 AllocBody821_148

def AllocBody821_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody821_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody821_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody821_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody821_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody821_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody821_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody821_159 : StackLang.HolProg 64 :=
.seq AllocBody821_157 AllocBody821_158

def AllocBody821_160 : StackLang.HolProg 64 :=
.seq AllocBody821_156 AllocBody821_159

def AllocBody821_161 : StackLang.HolProg 64 :=
.seq AllocBody821_155 AllocBody821_160

def AllocBody821_162 : StackLang.HolProg 64 :=
.seq AllocBody821_154 AllocBody821_161

def AllocBody821_163 : StackLang.HolProg 64 :=
.seq AllocBody821_153 AllocBody821_162

def AllocBody821_164 : StackLang.HolProg 64 :=
.seq AllocBody821_152 AllocBody821_163

def AllocBody821_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody821_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody821_167 : StackLang.HolProg 64 :=
.seq AllocBody821_165 AllocBody821_166

def AllocBody821_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody821_169 : StackLang.HolProg 64 :=
.seq AllocBody821_167 AllocBody821_168

def AllocBody821_170 : StackLang.HolProg 64 :=
.call (some (AllocBody821_164, 0, 821, 6)) (Sum.inl 810) (some (AllocBody821_169, 821, 7))

def AllocBody821_171 : StackLang.HolProg 64 :=
.seq AllocBody821_151 AllocBody821_170

def AllocBody821_172 : StackLang.HolProg 64 :=
.seq AllocBody821_150 AllocBody821_171

def AllocBody821_173 : StackLang.HolProg 64 :=
.seq AllocBody821_149 AllocBody821_172

def AllocBody821_174 : StackLang.HolProg 64 :=
.seq AllocBody821_130 AllocBody821_173

def AllocBody821_175 : StackLang.HolProg 64 :=
.seq AllocBody821_127 AllocBody821_174

def AllocBody821_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody821_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody821_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody821_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody821_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody821_186 : StackLang.HolProg 64 :=
.seq AllocBody821_184 AllocBody821_185

def AllocBody821_187 : StackLang.HolProg 64 :=
.seq AllocBody821_183 AllocBody821_186

def AllocBody821_188 : StackLang.HolProg 64 :=
.seq AllocBody821_182 AllocBody821_187

def AllocBody821_189 : StackLang.HolProg 64 :=
.seq AllocBody821_181 AllocBody821_188

def AllocBody821_190 : StackLang.HolProg 64 :=
.seq AllocBody821_180 AllocBody821_189

def AllocBody821_191 : StackLang.HolProg 64 :=
.seq AllocBody821_179 AllocBody821_190

def AllocBody821_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody821_191 AllocBody821_192

def AllocBody821_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody821_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody821_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody821_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody821_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody821_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody821_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody821_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody821_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody821_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody821_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody821_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody821_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody821_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody821_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody821_213 : StackLang.HolProg 64 :=
.seq AllocBody821_211 AllocBody821_212

def AllocBody821_214 : StackLang.HolProg 64 :=
.seq AllocBody821_210 AllocBody821_213

def AllocBody821_215 : StackLang.HolProg 64 :=
.seq AllocBody821_209 AllocBody821_214

def AllocBody821_216 : StackLang.HolProg 64 :=
.seq AllocBody821_208 AllocBody821_215

def AllocBody821_217 : StackLang.HolProg 64 :=
.seq AllocBody821_207 AllocBody821_216

def AllocBody821_218 : StackLang.HolProg 64 :=
.seq AllocBody821_206 AllocBody821_217

def AllocBody821_219 : StackLang.HolProg 64 :=
.seq AllocBody821_205 AllocBody821_218

def AllocBody821_220 : StackLang.HolProg 64 :=
.seq AllocBody821_204 AllocBody821_219

def AllocBody821_221 : StackLang.HolProg 64 :=
.seq AllocBody821_203 AllocBody821_220

def AllocBody821_222 : StackLang.HolProg 64 :=
.seq AllocBody821_202 AllocBody821_221

def AllocBody821_223 : StackLang.HolProg 64 :=
.seq AllocBody821_201 AllocBody821_222

def AllocBody821_224 : StackLang.HolProg 64 :=
.seq AllocBody821_200 AllocBody821_223

def AllocBody821_225 : StackLang.HolProg 64 :=
.seq AllocBody821_199 AllocBody821_224

def AllocBody821_226 : StackLang.HolProg 64 :=
.seq AllocBody821_198 AllocBody821_225

def AllocBody821_227 : StackLang.HolProg 64 :=
.seq AllocBody821_197 AllocBody821_226

def AllocBody821_228 : StackLang.HolProg 64 :=
.seq AllocBody821_196 AllocBody821_227

def AllocBody821_229 : StackLang.HolProg 64 :=
.seq AllocBody821_195 AllocBody821_228

def AllocBody821_230 : StackLang.HolProg 64 :=
.seq AllocBody821_194 AllocBody821_229

def AllocBody821_231 : StackLang.HolProg 64 :=
.seq AllocBody821_193 AllocBody821_230

def AllocBody821_232 : StackLang.HolProg 64 :=
.seq AllocBody821_178 AllocBody821_231

def AllocBody821_233 : StackLang.HolProg 64 :=
.seq AllocBody821_177 AllocBody821_232

def AllocBody821_234 : StackLang.HolProg 64 :=
.seq AllocBody821_176 AllocBody821_233

def AllocBody821_235 : StackLang.HolProg 64 :=
.seq AllocBody821_175 AllocBody821_234

def AllocBody821_236 : StackLang.HolProg 64 :=
.seq AllocBody821_126 AllocBody821_235

def AllocBody821_237 : StackLang.HolProg 64 :=
.seq AllocBody821_125 AllocBody821_236

def AllocBody821_238 : StackLang.HolProg 64 :=
.seq AllocBody821_124 AllocBody821_237

def AllocBody821_239 : StackLang.HolProg 64 :=
.seq AllocBody821_123 AllocBody821_238

def AllocBody821_240 : StackLang.HolProg 64 :=
.seq AllocBody821_122 AllocBody821_239

def AllocBody821_241 : StackLang.HolProg 64 :=
.seq AllocBody821_77 AllocBody821_240

def AllocBody821_242 : StackLang.HolProg 64 :=
.seq AllocBody821_76 AllocBody821_241

def AllocBody821_243 : StackLang.HolProg 64 :=
.seq AllocBody821_75 AllocBody821_242

def AllocBody821_244 : StackLang.HolProg 64 :=
.seq AllocBody821_74 AllocBody821_243

def AllocBody821_245 : StackLang.HolProg 64 :=
.seq AllocBody821_31 AllocBody821_244

def AllocBody821_246 : StackLang.HolProg 64 :=
.seq AllocBody821_28 AllocBody821_245

def AllocBody821_247 : StackLang.HolProg 64 :=
.seq AllocBody821_27 AllocBody821_246

def AllocBody821_248 : StackLang.HolProg 64 :=
.seq AllocBody821_26 AllocBody821_247

def AllocBody821_249 : StackLang.HolProg 64 :=
.seq AllocBody821_25 AllocBody821_248

def AllocBody821_250 : StackLang.HolProg 64 :=
.seq AllocBody821_10 AllocBody821_249

def AllocBody821_251 : StackLang.HolProg 64 :=
.seq AllocBody821_9 AllocBody821_250

def AllocBody821_252 : StackLang.HolProg 64 :=
.seq AllocBody821_8 AllocBody821_251

def AllocBody821_253 : StackLang.HolProg 64 :=
.seq AllocBody821_7 AllocBody821_252

def AllocBody821_254 : StackLang.HolProg 64 :=
.seq AllocBody821_6 AllocBody821_253

def AllocBody821_255 : StackLang.HolProg 64 :=
.seq AllocBody821_5 AllocBody821_254

def AllocBody821_256 : StackLang.HolProg 64 :=
.seq AllocBody821_4 AllocBody821_255

def AllocBody821_257 : StackLang.HolProg 64 :=
.seq AllocBody821_3 AllocBody821_256

def AllocBody821_258 : StackLang.HolProg 64 :=
.seq AllocBody821_2 AllocBody821_257

def AllocBody821_259 : StackLang.HolProg 64 :=
.seq AllocBody821_1 AllocBody821_258

def AllocBody821_260 : StackLang.HolProg 64 :=
.seq AllocBody821_0 AllocBody821_259

def Alloc821 : Nat × StackLang.HolProg 64 := (821, AllocBody821_260)
theorem Alloc821_eq : StackAlloc.progComp (821, raw821) = Alloc821 := by
  kernel_rfl
#print axioms Alloc821_eq
end InitECandidate.Proofs.BackendStages
