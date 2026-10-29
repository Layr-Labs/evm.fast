import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw827
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody827_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody827_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody827_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody827_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody827_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody827_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody827_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def AllocBody827_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 128#64)

def AllocBody827_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody827_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody827_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody827_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody827_18 : StackLang.HolProg 64 :=
.seq AllocBody827_16 AllocBody827_17

def AllocBody827_19 : StackLang.HolProg 64 :=
.seq AllocBody827_15 AllocBody827_18

def AllocBody827_20 : StackLang.HolProg 64 :=
.seq AllocBody827_14 AllocBody827_19

def AllocBody827_21 : StackLang.HolProg 64 :=
.seq AllocBody827_13 AllocBody827_20

def AllocBody827_22 : StackLang.HolProg 64 :=
.seq AllocBody827_12 AllocBody827_21

def AllocBody827_23 : StackLang.HolProg 64 :=
.seq AllocBody827_11 AllocBody827_22

def AllocBody827_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody827_23 AllocBody827_24

def AllocBody827_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 23800#64)

def AllocBody827_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody827_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody827_31 : StackLang.HolProg 64 :=
.seq AllocBody827_29 AllocBody827_30

def AllocBody827_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4115#64)

def AllocBody827_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody827_35 : StackLang.HolProg 64 :=
.seq AllocBody827_33 AllocBody827_34

def AllocBody827_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody827_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody827_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody827_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 827 3

def AllocBody827_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody827_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody827_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody827_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody827_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody827_46 : StackLang.HolProg 64 :=
.seq AllocBody827_44 AllocBody827_45

def AllocBody827_47 : StackLang.HolProg 64 :=
.seq AllocBody827_43 AllocBody827_46

def AllocBody827_48 : StackLang.HolProg 64 :=
.seq AllocBody827_42 AllocBody827_47

def AllocBody827_49 : StackLang.HolProg 64 :=
.seq AllocBody827_41 AllocBody827_48

def AllocBody827_50 : StackLang.HolProg 64 :=
.seq AllocBody827_40 AllocBody827_49

def AllocBody827_51 : StackLang.HolProg 64 :=
.seq AllocBody827_39 AllocBody827_50

def AllocBody827_52 : StackLang.HolProg 64 :=
.seq AllocBody827_38 AllocBody827_51

def AllocBody827_53 : StackLang.HolProg 64 :=
.seq AllocBody827_37 AllocBody827_52

def AllocBody827_54 : StackLang.HolProg 64 :=
.seq AllocBody827_36 AllocBody827_53

def AllocBody827_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody827_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody827_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody827_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody827_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_62 : StackLang.HolProg 64 :=
.seq AllocBody827_60 AllocBody827_61

def AllocBody827_63 : StackLang.HolProg 64 :=
.seq AllocBody827_59 AllocBody827_62

def AllocBody827_64 : StackLang.HolProg 64 :=
.seq AllocBody827_58 AllocBody827_63

def AllocBody827_65 : StackLang.HolProg 64 :=
.seq AllocBody827_57 AllocBody827_64

def AllocBody827_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody827_68 : StackLang.HolProg 64 :=
.seq AllocBody827_66 AllocBody827_67

def AllocBody827_69 : StackLang.HolProg 64 :=
.call (some (AllocBody827_65, 0, 827, 2)) (Sum.inl 470) (some (AllocBody827_68, 827, 3))

def AllocBody827_70 : StackLang.HolProg 64 :=
.seq AllocBody827_56 AllocBody827_69

def AllocBody827_71 : StackLang.HolProg 64 :=
.seq AllocBody827_55 AllocBody827_70

def AllocBody827_72 : StackLang.HolProg 64 :=
.seq AllocBody827_54 AllocBody827_71

def AllocBody827_73 : StackLang.HolProg 64 :=
.seq AllocBody827_35 AllocBody827_72

def AllocBody827_74 : StackLang.HolProg 64 :=
.seq AllocBody827_32 AllocBody827_73

def AllocBody827_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody827_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4116#64)

def AllocBody827_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody827_81 : StackLang.HolProg 64 :=
.seq AllocBody827_79 AllocBody827_80

def AllocBody827_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody827_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody827_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody827_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 827 5

def AllocBody827_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody827_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody827_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody827_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody827_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody827_92 : StackLang.HolProg 64 :=
.seq AllocBody827_90 AllocBody827_91

def AllocBody827_93 : StackLang.HolProg 64 :=
.seq AllocBody827_89 AllocBody827_92

def AllocBody827_94 : StackLang.HolProg 64 :=
.seq AllocBody827_88 AllocBody827_93

def AllocBody827_95 : StackLang.HolProg 64 :=
.seq AllocBody827_87 AllocBody827_94

def AllocBody827_96 : StackLang.HolProg 64 :=
.seq AllocBody827_86 AllocBody827_95

def AllocBody827_97 : StackLang.HolProg 64 :=
.seq AllocBody827_85 AllocBody827_96

def AllocBody827_98 : StackLang.HolProg 64 :=
.seq AllocBody827_84 AllocBody827_97

def AllocBody827_99 : StackLang.HolProg 64 :=
.seq AllocBody827_83 AllocBody827_98

def AllocBody827_100 : StackLang.HolProg 64 :=
.seq AllocBody827_82 AllocBody827_99

def AllocBody827_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody827_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody827_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody827_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody827_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody827_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody827_109 : StackLang.HolProg 64 :=
.seq AllocBody827_107 AllocBody827_108

def AllocBody827_110 : StackLang.HolProg 64 :=
.seq AllocBody827_106 AllocBody827_109

def AllocBody827_111 : StackLang.HolProg 64 :=
.seq AllocBody827_105 AllocBody827_110

def AllocBody827_112 : StackLang.HolProg 64 :=
.seq AllocBody827_104 AllocBody827_111

def AllocBody827_113 : StackLang.HolProg 64 :=
.seq AllocBody827_103 AllocBody827_112

def AllocBody827_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody827_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody827_116 : StackLang.HolProg 64 :=
.seq AllocBody827_114 AllocBody827_115

def AllocBody827_117 : StackLang.HolProg 64 :=
.call (some (AllocBody827_113, 0, 827, 4)) (Sum.inl 68) (some (AllocBody827_116, 827, 5))

def AllocBody827_118 : StackLang.HolProg 64 :=
.seq AllocBody827_102 AllocBody827_117

def AllocBody827_119 : StackLang.HolProg 64 :=
.seq AllocBody827_101 AllocBody827_118

def AllocBody827_120 : StackLang.HolProg 64 :=
.seq AllocBody827_100 AllocBody827_119

def AllocBody827_121 : StackLang.HolProg 64 :=
.seq AllocBody827_81 AllocBody827_120

def AllocBody827_122 : StackLang.HolProg 64 :=
.seq AllocBody827_78 AllocBody827_121

def AllocBody827_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody827_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody827_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4117#64)

def AllocBody827_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody827_130 : StackLang.HolProg 64 :=
.seq AllocBody827_128 AllocBody827_129

def AllocBody827_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody827_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody827_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody827_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 827 7

def AllocBody827_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody827_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody827_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody827_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody827_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody827_141 : StackLang.HolProg 64 :=
.seq AllocBody827_139 AllocBody827_140

def AllocBody827_142 : StackLang.HolProg 64 :=
.seq AllocBody827_138 AllocBody827_141

def AllocBody827_143 : StackLang.HolProg 64 :=
.seq AllocBody827_137 AllocBody827_142

def AllocBody827_144 : StackLang.HolProg 64 :=
.seq AllocBody827_136 AllocBody827_143

def AllocBody827_145 : StackLang.HolProg 64 :=
.seq AllocBody827_135 AllocBody827_144

def AllocBody827_146 : StackLang.HolProg 64 :=
.seq AllocBody827_134 AllocBody827_145

def AllocBody827_147 : StackLang.HolProg 64 :=
.seq AllocBody827_133 AllocBody827_146

def AllocBody827_148 : StackLang.HolProg 64 :=
.seq AllocBody827_132 AllocBody827_147

def AllocBody827_149 : StackLang.HolProg 64 :=
.seq AllocBody827_131 AllocBody827_148

def AllocBody827_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody827_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody827_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody827_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody827_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody827_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody827_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody827_159 : StackLang.HolProg 64 :=
.seq AllocBody827_157 AllocBody827_158

def AllocBody827_160 : StackLang.HolProg 64 :=
.seq AllocBody827_156 AllocBody827_159

def AllocBody827_161 : StackLang.HolProg 64 :=
.seq AllocBody827_155 AllocBody827_160

def AllocBody827_162 : StackLang.HolProg 64 :=
.seq AllocBody827_154 AllocBody827_161

def AllocBody827_163 : StackLang.HolProg 64 :=
.seq AllocBody827_153 AllocBody827_162

def AllocBody827_164 : StackLang.HolProg 64 :=
.seq AllocBody827_152 AllocBody827_163

def AllocBody827_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody827_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody827_167 : StackLang.HolProg 64 :=
.seq AllocBody827_165 AllocBody827_166

def AllocBody827_168 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody827_169 : StackLang.HolProg 64 :=
.seq AllocBody827_167 AllocBody827_168

def AllocBody827_170 : StackLang.HolProg 64 :=
.call (some (AllocBody827_164, 0, 827, 6)) (Sum.inl 816) (some (AllocBody827_169, 827, 7))

def AllocBody827_171 : StackLang.HolProg 64 :=
.seq AllocBody827_151 AllocBody827_170

def AllocBody827_172 : StackLang.HolProg 64 :=
.seq AllocBody827_150 AllocBody827_171

def AllocBody827_173 : StackLang.HolProg 64 :=
.seq AllocBody827_149 AllocBody827_172

def AllocBody827_174 : StackLang.HolProg 64 :=
.seq AllocBody827_130 AllocBody827_173

def AllocBody827_175 : StackLang.HolProg 64 :=
.seq AllocBody827_127 AllocBody827_174

def AllocBody827_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody827_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody827_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody827_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody827_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody827_186 : StackLang.HolProg 64 :=
.seq AllocBody827_184 AllocBody827_185

def AllocBody827_187 : StackLang.HolProg 64 :=
.seq AllocBody827_183 AllocBody827_186

def AllocBody827_188 : StackLang.HolProg 64 :=
.seq AllocBody827_182 AllocBody827_187

def AllocBody827_189 : StackLang.HolProg 64 :=
.seq AllocBody827_181 AllocBody827_188

def AllocBody827_190 : StackLang.HolProg 64 :=
.seq AllocBody827_180 AllocBody827_189

def AllocBody827_191 : StackLang.HolProg 64 :=
.seq AllocBody827_179 AllocBody827_190

def AllocBody827_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody827_191 AllocBody827_192

def AllocBody827_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody827_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody827_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody827_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody827_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody827_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody827_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody827_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody827_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody827_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody827_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody827_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody827_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody827_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody827_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody827_213 : StackLang.HolProg 64 :=
.seq AllocBody827_211 AllocBody827_212

def AllocBody827_214 : StackLang.HolProg 64 :=
.seq AllocBody827_210 AllocBody827_213

def AllocBody827_215 : StackLang.HolProg 64 :=
.seq AllocBody827_209 AllocBody827_214

def AllocBody827_216 : StackLang.HolProg 64 :=
.seq AllocBody827_208 AllocBody827_215

def AllocBody827_217 : StackLang.HolProg 64 :=
.seq AllocBody827_207 AllocBody827_216

def AllocBody827_218 : StackLang.HolProg 64 :=
.seq AllocBody827_206 AllocBody827_217

def AllocBody827_219 : StackLang.HolProg 64 :=
.seq AllocBody827_205 AllocBody827_218

def AllocBody827_220 : StackLang.HolProg 64 :=
.seq AllocBody827_204 AllocBody827_219

def AllocBody827_221 : StackLang.HolProg 64 :=
.seq AllocBody827_203 AllocBody827_220

def AllocBody827_222 : StackLang.HolProg 64 :=
.seq AllocBody827_202 AllocBody827_221

def AllocBody827_223 : StackLang.HolProg 64 :=
.seq AllocBody827_201 AllocBody827_222

def AllocBody827_224 : StackLang.HolProg 64 :=
.seq AllocBody827_200 AllocBody827_223

def AllocBody827_225 : StackLang.HolProg 64 :=
.seq AllocBody827_199 AllocBody827_224

def AllocBody827_226 : StackLang.HolProg 64 :=
.seq AllocBody827_198 AllocBody827_225

def AllocBody827_227 : StackLang.HolProg 64 :=
.seq AllocBody827_197 AllocBody827_226

def AllocBody827_228 : StackLang.HolProg 64 :=
.seq AllocBody827_196 AllocBody827_227

def AllocBody827_229 : StackLang.HolProg 64 :=
.seq AllocBody827_195 AllocBody827_228

def AllocBody827_230 : StackLang.HolProg 64 :=
.seq AllocBody827_194 AllocBody827_229

def AllocBody827_231 : StackLang.HolProg 64 :=
.seq AllocBody827_193 AllocBody827_230

def AllocBody827_232 : StackLang.HolProg 64 :=
.seq AllocBody827_178 AllocBody827_231

def AllocBody827_233 : StackLang.HolProg 64 :=
.seq AllocBody827_177 AllocBody827_232

def AllocBody827_234 : StackLang.HolProg 64 :=
.seq AllocBody827_176 AllocBody827_233

def AllocBody827_235 : StackLang.HolProg 64 :=
.seq AllocBody827_175 AllocBody827_234

def AllocBody827_236 : StackLang.HolProg 64 :=
.seq AllocBody827_126 AllocBody827_235

def AllocBody827_237 : StackLang.HolProg 64 :=
.seq AllocBody827_125 AllocBody827_236

def AllocBody827_238 : StackLang.HolProg 64 :=
.seq AllocBody827_124 AllocBody827_237

def AllocBody827_239 : StackLang.HolProg 64 :=
.seq AllocBody827_123 AllocBody827_238

def AllocBody827_240 : StackLang.HolProg 64 :=
.seq AllocBody827_122 AllocBody827_239

def AllocBody827_241 : StackLang.HolProg 64 :=
.seq AllocBody827_77 AllocBody827_240

def AllocBody827_242 : StackLang.HolProg 64 :=
.seq AllocBody827_76 AllocBody827_241

def AllocBody827_243 : StackLang.HolProg 64 :=
.seq AllocBody827_75 AllocBody827_242

def AllocBody827_244 : StackLang.HolProg 64 :=
.seq AllocBody827_74 AllocBody827_243

def AllocBody827_245 : StackLang.HolProg 64 :=
.seq AllocBody827_31 AllocBody827_244

def AllocBody827_246 : StackLang.HolProg 64 :=
.seq AllocBody827_28 AllocBody827_245

def AllocBody827_247 : StackLang.HolProg 64 :=
.seq AllocBody827_27 AllocBody827_246

def AllocBody827_248 : StackLang.HolProg 64 :=
.seq AllocBody827_26 AllocBody827_247

def AllocBody827_249 : StackLang.HolProg 64 :=
.seq AllocBody827_25 AllocBody827_248

def AllocBody827_250 : StackLang.HolProg 64 :=
.seq AllocBody827_10 AllocBody827_249

def AllocBody827_251 : StackLang.HolProg 64 :=
.seq AllocBody827_9 AllocBody827_250

def AllocBody827_252 : StackLang.HolProg 64 :=
.seq AllocBody827_8 AllocBody827_251

def AllocBody827_253 : StackLang.HolProg 64 :=
.seq AllocBody827_7 AllocBody827_252

def AllocBody827_254 : StackLang.HolProg 64 :=
.seq AllocBody827_6 AllocBody827_253

def AllocBody827_255 : StackLang.HolProg 64 :=
.seq AllocBody827_5 AllocBody827_254

def AllocBody827_256 : StackLang.HolProg 64 :=
.seq AllocBody827_4 AllocBody827_255

def AllocBody827_257 : StackLang.HolProg 64 :=
.seq AllocBody827_3 AllocBody827_256

def AllocBody827_258 : StackLang.HolProg 64 :=
.seq AllocBody827_2 AllocBody827_257

def AllocBody827_259 : StackLang.HolProg 64 :=
.seq AllocBody827_1 AllocBody827_258

def AllocBody827_260 : StackLang.HolProg 64 :=
.seq AllocBody827_0 AllocBody827_259

def Alloc827 : Nat × StackLang.HolProg 64 := (827, AllocBody827_260)
theorem Alloc827_eq : StackAlloc.progComp (827, raw827) = Alloc827 := by
  kernel_rfl
#print axioms Alloc827_eq
end InitECandidate.Proofs.BackendStages
