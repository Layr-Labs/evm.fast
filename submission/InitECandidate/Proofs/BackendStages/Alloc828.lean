import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw828
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody828_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody828_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody828_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody828_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody828_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody828_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody828_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody828_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 192#64)

def AllocBody828_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def AllocBody828_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody828_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody828_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody828_18 : StackLang.HolProg 64 :=
.seq AllocBody828_16 AllocBody828_17

def AllocBody828_19 : StackLang.HolProg 64 :=
.seq AllocBody828_15 AllocBody828_18

def AllocBody828_20 : StackLang.HolProg 64 :=
.seq AllocBody828_14 AllocBody828_19

def AllocBody828_21 : StackLang.HolProg 64 :=
.seq AllocBody828_13 AllocBody828_20

def AllocBody828_22 : StackLang.HolProg 64 :=
.seq AllocBody828_12 AllocBody828_21

def AllocBody828_23 : StackLang.HolProg 64 :=
.seq AllocBody828_11 AllocBody828_22

def AllocBody828_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody828_23 AllocBody828_24

def AllocBody828_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 50000#64)

def AllocBody828_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody828_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody828_31 : StackLang.HolProg 64 :=
.seq AllocBody828_29 AllocBody828_30

def AllocBody828_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4118#64)

def AllocBody828_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody828_35 : StackLang.HolProg 64 :=
.seq AllocBody828_33 AllocBody828_34

def AllocBody828_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody828_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody828_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody828_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 3

def AllocBody828_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody828_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody828_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody828_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody828_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody828_46 : StackLang.HolProg 64 :=
.seq AllocBody828_44 AllocBody828_45

def AllocBody828_47 : StackLang.HolProg 64 :=
.seq AllocBody828_43 AllocBody828_46

def AllocBody828_48 : StackLang.HolProg 64 :=
.seq AllocBody828_42 AllocBody828_47

def AllocBody828_49 : StackLang.HolProg 64 :=
.seq AllocBody828_41 AllocBody828_48

def AllocBody828_50 : StackLang.HolProg 64 :=
.seq AllocBody828_40 AllocBody828_49

def AllocBody828_51 : StackLang.HolProg 64 :=
.seq AllocBody828_39 AllocBody828_50

def AllocBody828_52 : StackLang.HolProg 64 :=
.seq AllocBody828_38 AllocBody828_51

def AllocBody828_53 : StackLang.HolProg 64 :=
.seq AllocBody828_37 AllocBody828_52

def AllocBody828_54 : StackLang.HolProg 64 :=
.seq AllocBody828_36 AllocBody828_53

def AllocBody828_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody828_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody828_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody828_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody828_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_62 : StackLang.HolProg 64 :=
.seq AllocBody828_60 AllocBody828_61

def AllocBody828_63 : StackLang.HolProg 64 :=
.seq AllocBody828_59 AllocBody828_62

def AllocBody828_64 : StackLang.HolProg 64 :=
.seq AllocBody828_58 AllocBody828_63

def AllocBody828_65 : StackLang.HolProg 64 :=
.seq AllocBody828_57 AllocBody828_64

def AllocBody828_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody828_68 : StackLang.HolProg 64 :=
.seq AllocBody828_66 AllocBody828_67

def AllocBody828_69 : StackLang.HolProg 64 :=
.call (some (AllocBody828_65, 0, 828, 2)) (Sum.inl 470) (some (AllocBody828_68, 828, 3))

def AllocBody828_70 : StackLang.HolProg 64 :=
.seq AllocBody828_56 AllocBody828_69

def AllocBody828_71 : StackLang.HolProg 64 :=
.seq AllocBody828_55 AllocBody828_70

def AllocBody828_72 : StackLang.HolProg 64 :=
.seq AllocBody828_54 AllocBody828_71

def AllocBody828_73 : StackLang.HolProg 64 :=
.seq AllocBody828_35 AllocBody828_72

def AllocBody828_74 : StackLang.HolProg 64 :=
.seq AllocBody828_32 AllocBody828_73

def AllocBody828_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody828_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4119#64)

def AllocBody828_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody828_81 : StackLang.HolProg 64 :=
.seq AllocBody828_79 AllocBody828_80

def AllocBody828_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody828_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody828_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody828_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 5

def AllocBody828_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody828_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody828_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody828_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody828_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody828_92 : StackLang.HolProg 64 :=
.seq AllocBody828_90 AllocBody828_91

def AllocBody828_93 : StackLang.HolProg 64 :=
.seq AllocBody828_89 AllocBody828_92

def AllocBody828_94 : StackLang.HolProg 64 :=
.seq AllocBody828_88 AllocBody828_93

def AllocBody828_95 : StackLang.HolProg 64 :=
.seq AllocBody828_87 AllocBody828_94

def AllocBody828_96 : StackLang.HolProg 64 :=
.seq AllocBody828_86 AllocBody828_95

def AllocBody828_97 : StackLang.HolProg 64 :=
.seq AllocBody828_85 AllocBody828_96

def AllocBody828_98 : StackLang.HolProg 64 :=
.seq AllocBody828_84 AllocBody828_97

def AllocBody828_99 : StackLang.HolProg 64 :=
.seq AllocBody828_83 AllocBody828_98

def AllocBody828_100 : StackLang.HolProg 64 :=
.seq AllocBody828_82 AllocBody828_99

def AllocBody828_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody828_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody828_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody828_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody828_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody828_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody828_109 : StackLang.HolProg 64 :=
.seq AllocBody828_107 AllocBody828_108

def AllocBody828_110 : StackLang.HolProg 64 :=
.seq AllocBody828_106 AllocBody828_109

def AllocBody828_111 : StackLang.HolProg 64 :=
.seq AllocBody828_105 AllocBody828_110

def AllocBody828_112 : StackLang.HolProg 64 :=
.seq AllocBody828_104 AllocBody828_111

def AllocBody828_113 : StackLang.HolProg 64 :=
.seq AllocBody828_103 AllocBody828_112

def AllocBody828_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody828_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody828_116 : StackLang.HolProg 64 :=
.seq AllocBody828_114 AllocBody828_115

def AllocBody828_117 : StackLang.HolProg 64 :=
.call (some (AllocBody828_113, 0, 828, 4)) (Sum.inl 68) (some (AllocBody828_116, 828, 5))

def AllocBody828_118 : StackLang.HolProg 64 :=
.seq AllocBody828_102 AllocBody828_117

def AllocBody828_119 : StackLang.HolProg 64 :=
.seq AllocBody828_101 AllocBody828_118

def AllocBody828_120 : StackLang.HolProg 64 :=
.seq AllocBody828_100 AllocBody828_119

def AllocBody828_121 : StackLang.HolProg 64 :=
.seq AllocBody828_81 AllocBody828_120

def AllocBody828_122 : StackLang.HolProg 64 :=
.seq AllocBody828_78 AllocBody828_121

def AllocBody828_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody828_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody828_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4120#64)

def AllocBody828_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody828_130 : StackLang.HolProg 64 :=
.seq AllocBody828_128 AllocBody828_129

def AllocBody828_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody828_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody828_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody828_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 828 7

def AllocBody828_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody828_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody828_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody828_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody828_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody828_141 : StackLang.HolProg 64 :=
.seq AllocBody828_139 AllocBody828_140

def AllocBody828_142 : StackLang.HolProg 64 :=
.seq AllocBody828_138 AllocBody828_141

def AllocBody828_143 : StackLang.HolProg 64 :=
.seq AllocBody828_137 AllocBody828_142

def AllocBody828_144 : StackLang.HolProg 64 :=
.seq AllocBody828_136 AllocBody828_143

def AllocBody828_145 : StackLang.HolProg 64 :=
.seq AllocBody828_135 AllocBody828_144

def AllocBody828_146 : StackLang.HolProg 64 :=
.seq AllocBody828_134 AllocBody828_145

def AllocBody828_147 : StackLang.HolProg 64 :=
.seq AllocBody828_133 AllocBody828_146

def AllocBody828_148 : StackLang.HolProg 64 :=
.seq AllocBody828_132 AllocBody828_147

def AllocBody828_149 : StackLang.HolProg 64 :=
.seq AllocBody828_131 AllocBody828_148

def AllocBody828_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody828_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody828_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody828_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody828_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody828_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody828_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody828_159 : StackLang.HolProg 64 :=
.seq AllocBody828_157 AllocBody828_158

def AllocBody828_160 : StackLang.HolProg 64 :=
.seq AllocBody828_156 AllocBody828_159

def AllocBody828_161 : StackLang.HolProg 64 :=
.seq AllocBody828_155 AllocBody828_160

def AllocBody828_162 : StackLang.HolProg 64 :=
.seq AllocBody828_154 AllocBody828_161

def AllocBody828_163 : StackLang.HolProg 64 :=
.seq AllocBody828_153 AllocBody828_162

def AllocBody828_164 : StackLang.HolProg 64 :=
.seq AllocBody828_152 AllocBody828_163

def AllocBody828_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody828_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody828_167 : StackLang.HolProg 64 :=
.seq AllocBody828_165 AllocBody828_166

def AllocBody828_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody828_169 : StackLang.HolProg 64 :=
.seq AllocBody828_167 AllocBody828_168

def AllocBody828_170 : StackLang.HolProg 64 :=
.call (some (AllocBody828_164, 0, 828, 6)) (Sum.inl 817) (some (AllocBody828_169, 828, 7))

def AllocBody828_171 : StackLang.HolProg 64 :=
.seq AllocBody828_151 AllocBody828_170

def AllocBody828_172 : StackLang.HolProg 64 :=
.seq AllocBody828_150 AllocBody828_171

def AllocBody828_173 : StackLang.HolProg 64 :=
.seq AllocBody828_149 AllocBody828_172

def AllocBody828_174 : StackLang.HolProg 64 :=
.seq AllocBody828_130 AllocBody828_173

def AllocBody828_175 : StackLang.HolProg 64 :=
.seq AllocBody828_127 AllocBody828_174

def AllocBody828_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody828_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 13#64)

def AllocBody828_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody828_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody828_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody828_186 : StackLang.HolProg 64 :=
.seq AllocBody828_184 AllocBody828_185

def AllocBody828_187 : StackLang.HolProg 64 :=
.seq AllocBody828_183 AllocBody828_186

def AllocBody828_188 : StackLang.HolProg 64 :=
.seq AllocBody828_182 AllocBody828_187

def AllocBody828_189 : StackLang.HolProg 64 :=
.seq AllocBody828_181 AllocBody828_188

def AllocBody828_190 : StackLang.HolProg 64 :=
.seq AllocBody828_180 AllocBody828_189

def AllocBody828_191 : StackLang.HolProg 64 :=
.seq AllocBody828_179 AllocBody828_190

def AllocBody828_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody828_191 AllocBody828_192

def AllocBody828_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody828_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody828_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody828_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody828_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody828_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody828_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody828_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody828_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody828_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody828_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody828_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody828_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody828_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody828_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody828_213 : StackLang.HolProg 64 :=
.seq AllocBody828_211 AllocBody828_212

def AllocBody828_214 : StackLang.HolProg 64 :=
.seq AllocBody828_210 AllocBody828_213

def AllocBody828_215 : StackLang.HolProg 64 :=
.seq AllocBody828_209 AllocBody828_214

def AllocBody828_216 : StackLang.HolProg 64 :=
.seq AllocBody828_208 AllocBody828_215

def AllocBody828_217 : StackLang.HolProg 64 :=
.seq AllocBody828_207 AllocBody828_216

def AllocBody828_218 : StackLang.HolProg 64 :=
.seq AllocBody828_206 AllocBody828_217

def AllocBody828_219 : StackLang.HolProg 64 :=
.seq AllocBody828_205 AllocBody828_218

def AllocBody828_220 : StackLang.HolProg 64 :=
.seq AllocBody828_204 AllocBody828_219

def AllocBody828_221 : StackLang.HolProg 64 :=
.seq AllocBody828_203 AllocBody828_220

def AllocBody828_222 : StackLang.HolProg 64 :=
.seq AllocBody828_202 AllocBody828_221

def AllocBody828_223 : StackLang.HolProg 64 :=
.seq AllocBody828_201 AllocBody828_222

def AllocBody828_224 : StackLang.HolProg 64 :=
.seq AllocBody828_200 AllocBody828_223

def AllocBody828_225 : StackLang.HolProg 64 :=
.seq AllocBody828_199 AllocBody828_224

def AllocBody828_226 : StackLang.HolProg 64 :=
.seq AllocBody828_198 AllocBody828_225

def AllocBody828_227 : StackLang.HolProg 64 :=
.seq AllocBody828_197 AllocBody828_226

def AllocBody828_228 : StackLang.HolProg 64 :=
.seq AllocBody828_196 AllocBody828_227

def AllocBody828_229 : StackLang.HolProg 64 :=
.seq AllocBody828_195 AllocBody828_228

def AllocBody828_230 : StackLang.HolProg 64 :=
.seq AllocBody828_194 AllocBody828_229

def AllocBody828_231 : StackLang.HolProg 64 :=
.seq AllocBody828_193 AllocBody828_230

def AllocBody828_232 : StackLang.HolProg 64 :=
.seq AllocBody828_178 AllocBody828_231

def AllocBody828_233 : StackLang.HolProg 64 :=
.seq AllocBody828_177 AllocBody828_232

def AllocBody828_234 : StackLang.HolProg 64 :=
.seq AllocBody828_176 AllocBody828_233

def AllocBody828_235 : StackLang.HolProg 64 :=
.seq AllocBody828_175 AllocBody828_234

def AllocBody828_236 : StackLang.HolProg 64 :=
.seq AllocBody828_126 AllocBody828_235

def AllocBody828_237 : StackLang.HolProg 64 :=
.seq AllocBody828_125 AllocBody828_236

def AllocBody828_238 : StackLang.HolProg 64 :=
.seq AllocBody828_124 AllocBody828_237

def AllocBody828_239 : StackLang.HolProg 64 :=
.seq AllocBody828_123 AllocBody828_238

def AllocBody828_240 : StackLang.HolProg 64 :=
.seq AllocBody828_122 AllocBody828_239

def AllocBody828_241 : StackLang.HolProg 64 :=
.seq AllocBody828_77 AllocBody828_240

def AllocBody828_242 : StackLang.HolProg 64 :=
.seq AllocBody828_76 AllocBody828_241

def AllocBody828_243 : StackLang.HolProg 64 :=
.seq AllocBody828_75 AllocBody828_242

def AllocBody828_244 : StackLang.HolProg 64 :=
.seq AllocBody828_74 AllocBody828_243

def AllocBody828_245 : StackLang.HolProg 64 :=
.seq AllocBody828_31 AllocBody828_244

def AllocBody828_246 : StackLang.HolProg 64 :=
.seq AllocBody828_28 AllocBody828_245

def AllocBody828_247 : StackLang.HolProg 64 :=
.seq AllocBody828_27 AllocBody828_246

def AllocBody828_248 : StackLang.HolProg 64 :=
.seq AllocBody828_26 AllocBody828_247

def AllocBody828_249 : StackLang.HolProg 64 :=
.seq AllocBody828_25 AllocBody828_248

def AllocBody828_250 : StackLang.HolProg 64 :=
.seq AllocBody828_10 AllocBody828_249

def AllocBody828_251 : StackLang.HolProg 64 :=
.seq AllocBody828_9 AllocBody828_250

def AllocBody828_252 : StackLang.HolProg 64 :=
.seq AllocBody828_8 AllocBody828_251

def AllocBody828_253 : StackLang.HolProg 64 :=
.seq AllocBody828_7 AllocBody828_252

def AllocBody828_254 : StackLang.HolProg 64 :=
.seq AllocBody828_6 AllocBody828_253

def AllocBody828_255 : StackLang.HolProg 64 :=
.seq AllocBody828_5 AllocBody828_254

def AllocBody828_256 : StackLang.HolProg 64 :=
.seq AllocBody828_4 AllocBody828_255

def AllocBody828_257 : StackLang.HolProg 64 :=
.seq AllocBody828_3 AllocBody828_256

def AllocBody828_258 : StackLang.HolProg 64 :=
.seq AllocBody828_2 AllocBody828_257

def AllocBody828_259 : StackLang.HolProg 64 :=
.seq AllocBody828_1 AllocBody828_258

def AllocBody828_260 : StackLang.HolProg 64 :=
.seq AllocBody828_0 AllocBody828_259

def Alloc828 : Nat × StackLang.HolProg 64 := (828, AllocBody828_260)
theorem Alloc828_eq : StackAlloc.progComp (828, raw828) = Alloc828 := by
  kernel_rfl
#print axioms Alloc828_eq
end InitECandidate.Proofs.BackendStages
