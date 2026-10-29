import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw823
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody823_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody823_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody823_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody823_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody823_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody823_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody823_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody823_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 512#64)

def AllocBody823_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody823_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody823_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody823_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody823_18 : StackLang.HolProg 64 :=
.seq AllocBody823_16 AllocBody823_17

def AllocBody823_19 : StackLang.HolProg 64 :=
.seq AllocBody823_15 AllocBody823_18

def AllocBody823_20 : StackLang.HolProg 64 :=
.seq AllocBody823_14 AllocBody823_19

def AllocBody823_21 : StackLang.HolProg 64 :=
.seq AllocBody823_13 AllocBody823_20

def AllocBody823_22 : StackLang.HolProg 64 :=
.seq AllocBody823_12 AllocBody823_21

def AllocBody823_23 : StackLang.HolProg 64 :=
.seq AllocBody823_11 AllocBody823_22

def AllocBody823_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody823_23 AllocBody823_24

def AllocBody823_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 600#64)

def AllocBody823_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody823_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody823_31 : StackLang.HolProg 64 :=
.seq AllocBody823_29 AllocBody823_30

def AllocBody823_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4099#64)

def AllocBody823_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody823_35 : StackLang.HolProg 64 :=
.seq AllocBody823_33 AllocBody823_34

def AllocBody823_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody823_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody823_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody823_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 823 3

def AllocBody823_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody823_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody823_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody823_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody823_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody823_46 : StackLang.HolProg 64 :=
.seq AllocBody823_44 AllocBody823_45

def AllocBody823_47 : StackLang.HolProg 64 :=
.seq AllocBody823_43 AllocBody823_46

def AllocBody823_48 : StackLang.HolProg 64 :=
.seq AllocBody823_42 AllocBody823_47

def AllocBody823_49 : StackLang.HolProg 64 :=
.seq AllocBody823_41 AllocBody823_48

def AllocBody823_50 : StackLang.HolProg 64 :=
.seq AllocBody823_40 AllocBody823_49

def AllocBody823_51 : StackLang.HolProg 64 :=
.seq AllocBody823_39 AllocBody823_50

def AllocBody823_52 : StackLang.HolProg 64 :=
.seq AllocBody823_38 AllocBody823_51

def AllocBody823_53 : StackLang.HolProg 64 :=
.seq AllocBody823_37 AllocBody823_52

def AllocBody823_54 : StackLang.HolProg 64 :=
.seq AllocBody823_36 AllocBody823_53

def AllocBody823_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody823_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody823_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody823_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody823_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_62 : StackLang.HolProg 64 :=
.seq AllocBody823_60 AllocBody823_61

def AllocBody823_63 : StackLang.HolProg 64 :=
.seq AllocBody823_59 AllocBody823_62

def AllocBody823_64 : StackLang.HolProg 64 :=
.seq AllocBody823_58 AllocBody823_63

def AllocBody823_65 : StackLang.HolProg 64 :=
.seq AllocBody823_57 AllocBody823_64

def AllocBody823_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody823_68 : StackLang.HolProg 64 :=
.seq AllocBody823_66 AllocBody823_67

def AllocBody823_69 : StackLang.HolProg 64 :=
.call (some (AllocBody823_65, 0, 823, 2)) (Sum.inl 470) (some (AllocBody823_68, 823, 3))

def AllocBody823_70 : StackLang.HolProg 64 :=
.seq AllocBody823_56 AllocBody823_69

def AllocBody823_71 : StackLang.HolProg 64 :=
.seq AllocBody823_55 AllocBody823_70

def AllocBody823_72 : StackLang.HolProg 64 :=
.seq AllocBody823_54 AllocBody823_71

def AllocBody823_73 : StackLang.HolProg 64 :=
.seq AllocBody823_35 AllocBody823_72

def AllocBody823_74 : StackLang.HolProg 64 :=
.seq AllocBody823_32 AllocBody823_73

def AllocBody823_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody823_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4100#64)

def AllocBody823_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody823_81 : StackLang.HolProg 64 :=
.seq AllocBody823_79 AllocBody823_80

def AllocBody823_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody823_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody823_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody823_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 823 5

def AllocBody823_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody823_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody823_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody823_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody823_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody823_92 : StackLang.HolProg 64 :=
.seq AllocBody823_90 AllocBody823_91

def AllocBody823_93 : StackLang.HolProg 64 :=
.seq AllocBody823_89 AllocBody823_92

def AllocBody823_94 : StackLang.HolProg 64 :=
.seq AllocBody823_88 AllocBody823_93

def AllocBody823_95 : StackLang.HolProg 64 :=
.seq AllocBody823_87 AllocBody823_94

def AllocBody823_96 : StackLang.HolProg 64 :=
.seq AllocBody823_86 AllocBody823_95

def AllocBody823_97 : StackLang.HolProg 64 :=
.seq AllocBody823_85 AllocBody823_96

def AllocBody823_98 : StackLang.HolProg 64 :=
.seq AllocBody823_84 AllocBody823_97

def AllocBody823_99 : StackLang.HolProg 64 :=
.seq AllocBody823_83 AllocBody823_98

def AllocBody823_100 : StackLang.HolProg 64 :=
.seq AllocBody823_82 AllocBody823_99

def AllocBody823_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody823_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody823_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody823_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody823_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody823_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody823_109 : StackLang.HolProg 64 :=
.seq AllocBody823_107 AllocBody823_108

def AllocBody823_110 : StackLang.HolProg 64 :=
.seq AllocBody823_106 AllocBody823_109

def AllocBody823_111 : StackLang.HolProg 64 :=
.seq AllocBody823_105 AllocBody823_110

def AllocBody823_112 : StackLang.HolProg 64 :=
.seq AllocBody823_104 AllocBody823_111

def AllocBody823_113 : StackLang.HolProg 64 :=
.seq AllocBody823_103 AllocBody823_112

def AllocBody823_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody823_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody823_116 : StackLang.HolProg 64 :=
.seq AllocBody823_114 AllocBody823_115

def AllocBody823_117 : StackLang.HolProg 64 :=
.call (some (AllocBody823_113, 0, 823, 4)) (Sum.inl 68) (some (AllocBody823_116, 823, 5))

def AllocBody823_118 : StackLang.HolProg 64 :=
.seq AllocBody823_102 AllocBody823_117

def AllocBody823_119 : StackLang.HolProg 64 :=
.seq AllocBody823_101 AllocBody823_118

def AllocBody823_120 : StackLang.HolProg 64 :=
.seq AllocBody823_100 AllocBody823_119

def AllocBody823_121 : StackLang.HolProg 64 :=
.seq AllocBody823_81 AllocBody823_120

def AllocBody823_122 : StackLang.HolProg 64 :=
.seq AllocBody823_78 AllocBody823_121

def AllocBody823_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody823_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody823_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4101#64)

def AllocBody823_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody823_130 : StackLang.HolProg 64 :=
.seq AllocBody823_128 AllocBody823_129

def AllocBody823_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody823_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody823_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody823_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 823 7

def AllocBody823_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody823_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody823_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody823_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody823_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody823_141 : StackLang.HolProg 64 :=
.seq AllocBody823_139 AllocBody823_140

def AllocBody823_142 : StackLang.HolProg 64 :=
.seq AllocBody823_138 AllocBody823_141

def AllocBody823_143 : StackLang.HolProg 64 :=
.seq AllocBody823_137 AllocBody823_142

def AllocBody823_144 : StackLang.HolProg 64 :=
.seq AllocBody823_136 AllocBody823_143

def AllocBody823_145 : StackLang.HolProg 64 :=
.seq AllocBody823_135 AllocBody823_144

def AllocBody823_146 : StackLang.HolProg 64 :=
.seq AllocBody823_134 AllocBody823_145

def AllocBody823_147 : StackLang.HolProg 64 :=
.seq AllocBody823_133 AllocBody823_146

def AllocBody823_148 : StackLang.HolProg 64 :=
.seq AllocBody823_132 AllocBody823_147

def AllocBody823_149 : StackLang.HolProg 64 :=
.seq AllocBody823_131 AllocBody823_148

def AllocBody823_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody823_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody823_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody823_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody823_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody823_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody823_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody823_159 : StackLang.HolProg 64 :=
.seq AllocBody823_157 AllocBody823_158

def AllocBody823_160 : StackLang.HolProg 64 :=
.seq AllocBody823_156 AllocBody823_159

def AllocBody823_161 : StackLang.HolProg 64 :=
.seq AllocBody823_155 AllocBody823_160

def AllocBody823_162 : StackLang.HolProg 64 :=
.seq AllocBody823_154 AllocBody823_161

def AllocBody823_163 : StackLang.HolProg 64 :=
.seq AllocBody823_153 AllocBody823_162

def AllocBody823_164 : StackLang.HolProg 64 :=
.seq AllocBody823_152 AllocBody823_163

def AllocBody823_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody823_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody823_167 : StackLang.HolProg 64 :=
.seq AllocBody823_165 AllocBody823_166

def AllocBody823_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody823_169 : StackLang.HolProg 64 :=
.seq AllocBody823_167 AllocBody823_168

def AllocBody823_170 : StackLang.HolProg 64 :=
.call (some (AllocBody823_164, 0, 823, 6)) (Sum.inl 812) (some (AllocBody823_169, 823, 7))

def AllocBody823_171 : StackLang.HolProg 64 :=
.seq AllocBody823_151 AllocBody823_170

def AllocBody823_172 : StackLang.HolProg 64 :=
.seq AllocBody823_150 AllocBody823_171

def AllocBody823_173 : StackLang.HolProg 64 :=
.seq AllocBody823_149 AllocBody823_172

def AllocBody823_174 : StackLang.HolProg 64 :=
.seq AllocBody823_130 AllocBody823_173

def AllocBody823_175 : StackLang.HolProg 64 :=
.seq AllocBody823_127 AllocBody823_174

def AllocBody823_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody823_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody823_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody823_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody823_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody823_186 : StackLang.HolProg 64 :=
.seq AllocBody823_184 AllocBody823_185

def AllocBody823_187 : StackLang.HolProg 64 :=
.seq AllocBody823_183 AllocBody823_186

def AllocBody823_188 : StackLang.HolProg 64 :=
.seq AllocBody823_182 AllocBody823_187

def AllocBody823_189 : StackLang.HolProg 64 :=
.seq AllocBody823_181 AllocBody823_188

def AllocBody823_190 : StackLang.HolProg 64 :=
.seq AllocBody823_180 AllocBody823_189

def AllocBody823_191 : StackLang.HolProg 64 :=
.seq AllocBody823_179 AllocBody823_190

def AllocBody823_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody823_191 AllocBody823_192

def AllocBody823_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody823_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody823_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody823_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody823_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody823_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody823_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody823_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody823_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody823_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody823_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody823_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody823_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody823_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody823_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody823_213 : StackLang.HolProg 64 :=
.seq AllocBody823_211 AllocBody823_212

def AllocBody823_214 : StackLang.HolProg 64 :=
.seq AllocBody823_210 AllocBody823_213

def AllocBody823_215 : StackLang.HolProg 64 :=
.seq AllocBody823_209 AllocBody823_214

def AllocBody823_216 : StackLang.HolProg 64 :=
.seq AllocBody823_208 AllocBody823_215

def AllocBody823_217 : StackLang.HolProg 64 :=
.seq AllocBody823_207 AllocBody823_216

def AllocBody823_218 : StackLang.HolProg 64 :=
.seq AllocBody823_206 AllocBody823_217

def AllocBody823_219 : StackLang.HolProg 64 :=
.seq AllocBody823_205 AllocBody823_218

def AllocBody823_220 : StackLang.HolProg 64 :=
.seq AllocBody823_204 AllocBody823_219

def AllocBody823_221 : StackLang.HolProg 64 :=
.seq AllocBody823_203 AllocBody823_220

def AllocBody823_222 : StackLang.HolProg 64 :=
.seq AllocBody823_202 AllocBody823_221

def AllocBody823_223 : StackLang.HolProg 64 :=
.seq AllocBody823_201 AllocBody823_222

def AllocBody823_224 : StackLang.HolProg 64 :=
.seq AllocBody823_200 AllocBody823_223

def AllocBody823_225 : StackLang.HolProg 64 :=
.seq AllocBody823_199 AllocBody823_224

def AllocBody823_226 : StackLang.HolProg 64 :=
.seq AllocBody823_198 AllocBody823_225

def AllocBody823_227 : StackLang.HolProg 64 :=
.seq AllocBody823_197 AllocBody823_226

def AllocBody823_228 : StackLang.HolProg 64 :=
.seq AllocBody823_196 AllocBody823_227

def AllocBody823_229 : StackLang.HolProg 64 :=
.seq AllocBody823_195 AllocBody823_228

def AllocBody823_230 : StackLang.HolProg 64 :=
.seq AllocBody823_194 AllocBody823_229

def AllocBody823_231 : StackLang.HolProg 64 :=
.seq AllocBody823_193 AllocBody823_230

def AllocBody823_232 : StackLang.HolProg 64 :=
.seq AllocBody823_178 AllocBody823_231

def AllocBody823_233 : StackLang.HolProg 64 :=
.seq AllocBody823_177 AllocBody823_232

def AllocBody823_234 : StackLang.HolProg 64 :=
.seq AllocBody823_176 AllocBody823_233

def AllocBody823_235 : StackLang.HolProg 64 :=
.seq AllocBody823_175 AllocBody823_234

def AllocBody823_236 : StackLang.HolProg 64 :=
.seq AllocBody823_126 AllocBody823_235

def AllocBody823_237 : StackLang.HolProg 64 :=
.seq AllocBody823_125 AllocBody823_236

def AllocBody823_238 : StackLang.HolProg 64 :=
.seq AllocBody823_124 AllocBody823_237

def AllocBody823_239 : StackLang.HolProg 64 :=
.seq AllocBody823_123 AllocBody823_238

def AllocBody823_240 : StackLang.HolProg 64 :=
.seq AllocBody823_122 AllocBody823_239

def AllocBody823_241 : StackLang.HolProg 64 :=
.seq AllocBody823_77 AllocBody823_240

def AllocBody823_242 : StackLang.HolProg 64 :=
.seq AllocBody823_76 AllocBody823_241

def AllocBody823_243 : StackLang.HolProg 64 :=
.seq AllocBody823_75 AllocBody823_242

def AllocBody823_244 : StackLang.HolProg 64 :=
.seq AllocBody823_74 AllocBody823_243

def AllocBody823_245 : StackLang.HolProg 64 :=
.seq AllocBody823_31 AllocBody823_244

def AllocBody823_246 : StackLang.HolProg 64 :=
.seq AllocBody823_28 AllocBody823_245

def AllocBody823_247 : StackLang.HolProg 64 :=
.seq AllocBody823_27 AllocBody823_246

def AllocBody823_248 : StackLang.HolProg 64 :=
.seq AllocBody823_26 AllocBody823_247

def AllocBody823_249 : StackLang.HolProg 64 :=
.seq AllocBody823_25 AllocBody823_248

def AllocBody823_250 : StackLang.HolProg 64 :=
.seq AllocBody823_10 AllocBody823_249

def AllocBody823_251 : StackLang.HolProg 64 :=
.seq AllocBody823_9 AllocBody823_250

def AllocBody823_252 : StackLang.HolProg 64 :=
.seq AllocBody823_8 AllocBody823_251

def AllocBody823_253 : StackLang.HolProg 64 :=
.seq AllocBody823_7 AllocBody823_252

def AllocBody823_254 : StackLang.HolProg 64 :=
.seq AllocBody823_6 AllocBody823_253

def AllocBody823_255 : StackLang.HolProg 64 :=
.seq AllocBody823_5 AllocBody823_254

def AllocBody823_256 : StackLang.HolProg 64 :=
.seq AllocBody823_4 AllocBody823_255

def AllocBody823_257 : StackLang.HolProg 64 :=
.seq AllocBody823_3 AllocBody823_256

def AllocBody823_258 : StackLang.HolProg 64 :=
.seq AllocBody823_2 AllocBody823_257

def AllocBody823_259 : StackLang.HolProg 64 :=
.seq AllocBody823_1 AllocBody823_258

def AllocBody823_260 : StackLang.HolProg 64 :=
.seq AllocBody823_0 AllocBody823_259

def Alloc823 : Nat × StackLang.HolProg 64 := (823, AllocBody823_260)
theorem Alloc823_eq : StackAlloc.progComp (823, raw823) = Alloc823 := by
  kernel_rfl
#print axioms Alloc823_eq
end InitECandidate.Proofs.BackendStages
