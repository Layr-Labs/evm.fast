import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw826
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody826_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody826_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody826_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody826_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody826_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody826_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody826_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody826_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 64#64)

def AllocBody826_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody826_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody826_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody826_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody826_18 : StackLang.HolProg 64 :=
.seq AllocBody826_16 AllocBody826_17

def AllocBody826_19 : StackLang.HolProg 64 :=
.seq AllocBody826_15 AllocBody826_18

def AllocBody826_20 : StackLang.HolProg 64 :=
.seq AllocBody826_14 AllocBody826_19

def AllocBody826_21 : StackLang.HolProg 64 :=
.seq AllocBody826_13 AllocBody826_20

def AllocBody826_22 : StackLang.HolProg 64 :=
.seq AllocBody826_12 AllocBody826_21

def AllocBody826_23 : StackLang.HolProg 64 :=
.seq AllocBody826_11 AllocBody826_22

def AllocBody826_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody826_23 AllocBody826_24

def AllocBody826_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5500#64)

def AllocBody826_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody826_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody826_31 : StackLang.HolProg 64 :=
.seq AllocBody826_29 AllocBody826_30

def AllocBody826_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4112#64)

def AllocBody826_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody826_35 : StackLang.HolProg 64 :=
.seq AllocBody826_33 AllocBody826_34

def AllocBody826_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody826_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody826_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody826_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 3

def AllocBody826_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody826_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody826_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody826_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody826_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody826_46 : StackLang.HolProg 64 :=
.seq AllocBody826_44 AllocBody826_45

def AllocBody826_47 : StackLang.HolProg 64 :=
.seq AllocBody826_43 AllocBody826_46

def AllocBody826_48 : StackLang.HolProg 64 :=
.seq AllocBody826_42 AllocBody826_47

def AllocBody826_49 : StackLang.HolProg 64 :=
.seq AllocBody826_41 AllocBody826_48

def AllocBody826_50 : StackLang.HolProg 64 :=
.seq AllocBody826_40 AllocBody826_49

def AllocBody826_51 : StackLang.HolProg 64 :=
.seq AllocBody826_39 AllocBody826_50

def AllocBody826_52 : StackLang.HolProg 64 :=
.seq AllocBody826_38 AllocBody826_51

def AllocBody826_53 : StackLang.HolProg 64 :=
.seq AllocBody826_37 AllocBody826_52

def AllocBody826_54 : StackLang.HolProg 64 :=
.seq AllocBody826_36 AllocBody826_53

def AllocBody826_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody826_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody826_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody826_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody826_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_62 : StackLang.HolProg 64 :=
.seq AllocBody826_60 AllocBody826_61

def AllocBody826_63 : StackLang.HolProg 64 :=
.seq AllocBody826_59 AllocBody826_62

def AllocBody826_64 : StackLang.HolProg 64 :=
.seq AllocBody826_58 AllocBody826_63

def AllocBody826_65 : StackLang.HolProg 64 :=
.seq AllocBody826_57 AllocBody826_64

def AllocBody826_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody826_68 : StackLang.HolProg 64 :=
.seq AllocBody826_66 AllocBody826_67

def AllocBody826_69 : StackLang.HolProg 64 :=
.call (some (AllocBody826_65, 0, 826, 2)) (Sum.inl 470) (some (AllocBody826_68, 826, 3))

def AllocBody826_70 : StackLang.HolProg 64 :=
.seq AllocBody826_56 AllocBody826_69

def AllocBody826_71 : StackLang.HolProg 64 :=
.seq AllocBody826_55 AllocBody826_70

def AllocBody826_72 : StackLang.HolProg 64 :=
.seq AllocBody826_54 AllocBody826_71

def AllocBody826_73 : StackLang.HolProg 64 :=
.seq AllocBody826_35 AllocBody826_72

def AllocBody826_74 : StackLang.HolProg 64 :=
.seq AllocBody826_32 AllocBody826_73

def AllocBody826_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody826_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4113#64)

def AllocBody826_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody826_81 : StackLang.HolProg 64 :=
.seq AllocBody826_79 AllocBody826_80

def AllocBody826_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody826_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody826_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody826_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 5

def AllocBody826_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody826_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody826_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody826_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody826_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody826_92 : StackLang.HolProg 64 :=
.seq AllocBody826_90 AllocBody826_91

def AllocBody826_93 : StackLang.HolProg 64 :=
.seq AllocBody826_89 AllocBody826_92

def AllocBody826_94 : StackLang.HolProg 64 :=
.seq AllocBody826_88 AllocBody826_93

def AllocBody826_95 : StackLang.HolProg 64 :=
.seq AllocBody826_87 AllocBody826_94

def AllocBody826_96 : StackLang.HolProg 64 :=
.seq AllocBody826_86 AllocBody826_95

def AllocBody826_97 : StackLang.HolProg 64 :=
.seq AllocBody826_85 AllocBody826_96

def AllocBody826_98 : StackLang.HolProg 64 :=
.seq AllocBody826_84 AllocBody826_97

def AllocBody826_99 : StackLang.HolProg 64 :=
.seq AllocBody826_83 AllocBody826_98

def AllocBody826_100 : StackLang.HolProg 64 :=
.seq AllocBody826_82 AllocBody826_99

def AllocBody826_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody826_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody826_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody826_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody826_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody826_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody826_109 : StackLang.HolProg 64 :=
.seq AllocBody826_107 AllocBody826_108

def AllocBody826_110 : StackLang.HolProg 64 :=
.seq AllocBody826_106 AllocBody826_109

def AllocBody826_111 : StackLang.HolProg 64 :=
.seq AllocBody826_105 AllocBody826_110

def AllocBody826_112 : StackLang.HolProg 64 :=
.seq AllocBody826_104 AllocBody826_111

def AllocBody826_113 : StackLang.HolProg 64 :=
.seq AllocBody826_103 AllocBody826_112

def AllocBody826_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody826_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody826_116 : StackLang.HolProg 64 :=
.seq AllocBody826_114 AllocBody826_115

def AllocBody826_117 : StackLang.HolProg 64 :=
.call (some (AllocBody826_113, 0, 826, 4)) (Sum.inl 68) (some (AllocBody826_116, 826, 5))

def AllocBody826_118 : StackLang.HolProg 64 :=
.seq AllocBody826_102 AllocBody826_117

def AllocBody826_119 : StackLang.HolProg 64 :=
.seq AllocBody826_101 AllocBody826_118

def AllocBody826_120 : StackLang.HolProg 64 :=
.seq AllocBody826_100 AllocBody826_119

def AllocBody826_121 : StackLang.HolProg 64 :=
.seq AllocBody826_81 AllocBody826_120

def AllocBody826_122 : StackLang.HolProg 64 :=
.seq AllocBody826_78 AllocBody826_121

def AllocBody826_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody826_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody826_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4114#64)

def AllocBody826_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody826_130 : StackLang.HolProg 64 :=
.seq AllocBody826_128 AllocBody826_129

def AllocBody826_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody826_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody826_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody826_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 826 7

def AllocBody826_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody826_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody826_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody826_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody826_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody826_141 : StackLang.HolProg 64 :=
.seq AllocBody826_139 AllocBody826_140

def AllocBody826_142 : StackLang.HolProg 64 :=
.seq AllocBody826_138 AllocBody826_141

def AllocBody826_143 : StackLang.HolProg 64 :=
.seq AllocBody826_137 AllocBody826_142

def AllocBody826_144 : StackLang.HolProg 64 :=
.seq AllocBody826_136 AllocBody826_143

def AllocBody826_145 : StackLang.HolProg 64 :=
.seq AllocBody826_135 AllocBody826_144

def AllocBody826_146 : StackLang.HolProg 64 :=
.seq AllocBody826_134 AllocBody826_145

def AllocBody826_147 : StackLang.HolProg 64 :=
.seq AllocBody826_133 AllocBody826_146

def AllocBody826_148 : StackLang.HolProg 64 :=
.seq AllocBody826_132 AllocBody826_147

def AllocBody826_149 : StackLang.HolProg 64 :=
.seq AllocBody826_131 AllocBody826_148

def AllocBody826_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody826_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody826_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody826_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody826_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody826_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody826_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody826_159 : StackLang.HolProg 64 :=
.seq AllocBody826_157 AllocBody826_158

def AllocBody826_160 : StackLang.HolProg 64 :=
.seq AllocBody826_156 AllocBody826_159

def AllocBody826_161 : StackLang.HolProg 64 :=
.seq AllocBody826_155 AllocBody826_160

def AllocBody826_162 : StackLang.HolProg 64 :=
.seq AllocBody826_154 AllocBody826_161

def AllocBody826_163 : StackLang.HolProg 64 :=
.seq AllocBody826_153 AllocBody826_162

def AllocBody826_164 : StackLang.HolProg 64 :=
.seq AllocBody826_152 AllocBody826_163

def AllocBody826_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody826_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody826_167 : StackLang.HolProg 64 :=
.seq AllocBody826_165 AllocBody826_166

def AllocBody826_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody826_169 : StackLang.HolProg 64 :=
.seq AllocBody826_167 AllocBody826_168

def AllocBody826_170 : StackLang.HolProg 64 :=
.call (some (AllocBody826_164, 0, 826, 6)) (Sum.inl 815) (some (AllocBody826_169, 826, 7))

def AllocBody826_171 : StackLang.HolProg 64 :=
.seq AllocBody826_151 AllocBody826_170

def AllocBody826_172 : StackLang.HolProg 64 :=
.seq AllocBody826_150 AllocBody826_171

def AllocBody826_173 : StackLang.HolProg 64 :=
.seq AllocBody826_149 AllocBody826_172

def AllocBody826_174 : StackLang.HolProg 64 :=
.seq AllocBody826_130 AllocBody826_173

def AllocBody826_175 : StackLang.HolProg 64 :=
.seq AllocBody826_127 AllocBody826_174

def AllocBody826_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody826_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody826_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody826_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody826_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody826_186 : StackLang.HolProg 64 :=
.seq AllocBody826_184 AllocBody826_185

def AllocBody826_187 : StackLang.HolProg 64 :=
.seq AllocBody826_183 AllocBody826_186

def AllocBody826_188 : StackLang.HolProg 64 :=
.seq AllocBody826_182 AllocBody826_187

def AllocBody826_189 : StackLang.HolProg 64 :=
.seq AllocBody826_181 AllocBody826_188

def AllocBody826_190 : StackLang.HolProg 64 :=
.seq AllocBody826_180 AllocBody826_189

def AllocBody826_191 : StackLang.HolProg 64 :=
.seq AllocBody826_179 AllocBody826_190

def AllocBody826_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody826_191 AllocBody826_192

def AllocBody826_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody826_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody826_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody826_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody826_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody826_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody826_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody826_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody826_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody826_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody826_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody826_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody826_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody826_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody826_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody826_213 : StackLang.HolProg 64 :=
.seq AllocBody826_211 AllocBody826_212

def AllocBody826_214 : StackLang.HolProg 64 :=
.seq AllocBody826_210 AllocBody826_213

def AllocBody826_215 : StackLang.HolProg 64 :=
.seq AllocBody826_209 AllocBody826_214

def AllocBody826_216 : StackLang.HolProg 64 :=
.seq AllocBody826_208 AllocBody826_215

def AllocBody826_217 : StackLang.HolProg 64 :=
.seq AllocBody826_207 AllocBody826_216

def AllocBody826_218 : StackLang.HolProg 64 :=
.seq AllocBody826_206 AllocBody826_217

def AllocBody826_219 : StackLang.HolProg 64 :=
.seq AllocBody826_205 AllocBody826_218

def AllocBody826_220 : StackLang.HolProg 64 :=
.seq AllocBody826_204 AllocBody826_219

def AllocBody826_221 : StackLang.HolProg 64 :=
.seq AllocBody826_203 AllocBody826_220

def AllocBody826_222 : StackLang.HolProg 64 :=
.seq AllocBody826_202 AllocBody826_221

def AllocBody826_223 : StackLang.HolProg 64 :=
.seq AllocBody826_201 AllocBody826_222

def AllocBody826_224 : StackLang.HolProg 64 :=
.seq AllocBody826_200 AllocBody826_223

def AllocBody826_225 : StackLang.HolProg 64 :=
.seq AllocBody826_199 AllocBody826_224

def AllocBody826_226 : StackLang.HolProg 64 :=
.seq AllocBody826_198 AllocBody826_225

def AllocBody826_227 : StackLang.HolProg 64 :=
.seq AllocBody826_197 AllocBody826_226

def AllocBody826_228 : StackLang.HolProg 64 :=
.seq AllocBody826_196 AllocBody826_227

def AllocBody826_229 : StackLang.HolProg 64 :=
.seq AllocBody826_195 AllocBody826_228

def AllocBody826_230 : StackLang.HolProg 64 :=
.seq AllocBody826_194 AllocBody826_229

def AllocBody826_231 : StackLang.HolProg 64 :=
.seq AllocBody826_193 AllocBody826_230

def AllocBody826_232 : StackLang.HolProg 64 :=
.seq AllocBody826_178 AllocBody826_231

def AllocBody826_233 : StackLang.HolProg 64 :=
.seq AllocBody826_177 AllocBody826_232

def AllocBody826_234 : StackLang.HolProg 64 :=
.seq AllocBody826_176 AllocBody826_233

def AllocBody826_235 : StackLang.HolProg 64 :=
.seq AllocBody826_175 AllocBody826_234

def AllocBody826_236 : StackLang.HolProg 64 :=
.seq AllocBody826_126 AllocBody826_235

def AllocBody826_237 : StackLang.HolProg 64 :=
.seq AllocBody826_125 AllocBody826_236

def AllocBody826_238 : StackLang.HolProg 64 :=
.seq AllocBody826_124 AllocBody826_237

def AllocBody826_239 : StackLang.HolProg 64 :=
.seq AllocBody826_123 AllocBody826_238

def AllocBody826_240 : StackLang.HolProg 64 :=
.seq AllocBody826_122 AllocBody826_239

def AllocBody826_241 : StackLang.HolProg 64 :=
.seq AllocBody826_77 AllocBody826_240

def AllocBody826_242 : StackLang.HolProg 64 :=
.seq AllocBody826_76 AllocBody826_241

def AllocBody826_243 : StackLang.HolProg 64 :=
.seq AllocBody826_75 AllocBody826_242

def AllocBody826_244 : StackLang.HolProg 64 :=
.seq AllocBody826_74 AllocBody826_243

def AllocBody826_245 : StackLang.HolProg 64 :=
.seq AllocBody826_31 AllocBody826_244

def AllocBody826_246 : StackLang.HolProg 64 :=
.seq AllocBody826_28 AllocBody826_245

def AllocBody826_247 : StackLang.HolProg 64 :=
.seq AllocBody826_27 AllocBody826_246

def AllocBody826_248 : StackLang.HolProg 64 :=
.seq AllocBody826_26 AllocBody826_247

def AllocBody826_249 : StackLang.HolProg 64 :=
.seq AllocBody826_25 AllocBody826_248

def AllocBody826_250 : StackLang.HolProg 64 :=
.seq AllocBody826_10 AllocBody826_249

def AllocBody826_251 : StackLang.HolProg 64 :=
.seq AllocBody826_9 AllocBody826_250

def AllocBody826_252 : StackLang.HolProg 64 :=
.seq AllocBody826_8 AllocBody826_251

def AllocBody826_253 : StackLang.HolProg 64 :=
.seq AllocBody826_7 AllocBody826_252

def AllocBody826_254 : StackLang.HolProg 64 :=
.seq AllocBody826_6 AllocBody826_253

def AllocBody826_255 : StackLang.HolProg 64 :=
.seq AllocBody826_5 AllocBody826_254

def AllocBody826_256 : StackLang.HolProg 64 :=
.seq AllocBody826_4 AllocBody826_255

def AllocBody826_257 : StackLang.HolProg 64 :=
.seq AllocBody826_3 AllocBody826_256

def AllocBody826_258 : StackLang.HolProg 64 :=
.seq AllocBody826_2 AllocBody826_257

def AllocBody826_259 : StackLang.HolProg 64 :=
.seq AllocBody826_1 AllocBody826_258

def AllocBody826_260 : StackLang.HolProg 64 :=
.seq AllocBody826_0 AllocBody826_259

def Alloc826 : Nat × StackLang.HolProg 64 := (826, AllocBody826_260)
theorem Alloc826_eq : StackAlloc.progComp (826, raw826) = Alloc826 := by
  kernel_rfl
#print axioms Alloc826_eq
end InitECandidate.Proofs.BackendStages
