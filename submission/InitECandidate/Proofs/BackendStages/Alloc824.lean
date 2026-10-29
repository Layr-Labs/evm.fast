import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw824
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody824_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody824_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody824_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody824_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody824_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody824_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody824_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 96#64))

def AllocBody824_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody824_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody824_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody824_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody824_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_17 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_18 : StackLang.HolProg 64 :=
.seq AllocBody824_16 AllocBody824_17

def AllocBody824_19 : StackLang.HolProg 64 :=
.seq AllocBody824_15 AllocBody824_18

def AllocBody824_20 : StackLang.HolProg 64 :=
.seq AllocBody824_14 AllocBody824_19

def AllocBody824_21 : StackLang.HolProg 64 :=
.seq AllocBody824_13 AllocBody824_20

def AllocBody824_22 : StackLang.HolProg 64 :=
.seq AllocBody824_12 AllocBody824_21

def AllocBody824_23 : StackLang.HolProg 64 :=
.seq AllocBody824_11 AllocBody824_22

def AllocBody824_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody824_23 AllocBody824_24

def AllocBody824_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody824_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 288#64)

def AllocBody824_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody824_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody824_32 : StackLang.HolProg 64 :=
.seq AllocBody824_30 AllocBody824_31

def AllocBody824_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4102#64)

def AllocBody824_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_36 : StackLang.HolProg 64 :=
.seq AllocBody824_34 AllocBody824_35

def AllocBody824_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody824_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody824_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 3

def AllocBody824_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody824_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody824_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody824_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody824_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_47 : StackLang.HolProg 64 :=
.seq AllocBody824_45 AllocBody824_46

def AllocBody824_48 : StackLang.HolProg 64 :=
.seq AllocBody824_44 AllocBody824_47

def AllocBody824_49 : StackLang.HolProg 64 :=
.seq AllocBody824_43 AllocBody824_48

def AllocBody824_50 : StackLang.HolProg 64 :=
.seq AllocBody824_42 AllocBody824_49

def AllocBody824_51 : StackLang.HolProg 64 :=
.seq AllocBody824_41 AllocBody824_50

def AllocBody824_52 : StackLang.HolProg 64 :=
.seq AllocBody824_40 AllocBody824_51

def AllocBody824_53 : StackLang.HolProg 64 :=
.seq AllocBody824_39 AllocBody824_52

def AllocBody824_54 : StackLang.HolProg 64 :=
.seq AllocBody824_38 AllocBody824_53

def AllocBody824_55 : StackLang.HolProg 64 :=
.seq AllocBody824_37 AllocBody824_54

def AllocBody824_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody824_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody824_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody824_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody824_63 : StackLang.HolProg 64 :=
.seq AllocBody824_61 AllocBody824_62

def AllocBody824_64 : StackLang.HolProg 64 :=
.seq AllocBody824_60 AllocBody824_63

def AllocBody824_65 : StackLang.HolProg 64 :=
.seq AllocBody824_59 AllocBody824_64

def AllocBody824_66 : StackLang.HolProg 64 :=
.seq AllocBody824_58 AllocBody824_65

def AllocBody824_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_68 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_69 : StackLang.HolProg 64 :=
.seq AllocBody824_67 AllocBody824_68

def AllocBody824_70 : StackLang.HolProg 64 :=
.call (some (AllocBody824_66, 0, 824, 2)) (Sum.inl 94) (some (AllocBody824_69, 824, 3))

def AllocBody824_71 : StackLang.HolProg 64 :=
.seq AllocBody824_57 AllocBody824_70

def AllocBody824_72 : StackLang.HolProg 64 :=
.seq AllocBody824_56 AllocBody824_71

def AllocBody824_73 : StackLang.HolProg 64 :=
.seq AllocBody824_55 AllocBody824_72

def AllocBody824_74 : StackLang.HolProg 64 :=
.seq AllocBody824_36 AllocBody824_73

def AllocBody824_75 : StackLang.HolProg 64 :=
.seq AllocBody824_33 AllocBody824_74

def AllocBody824_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody824_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody824_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody824_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody824_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_86 : StackLang.HolProg 64 :=
.seq AllocBody824_84 AllocBody824_85

def AllocBody824_87 : StackLang.HolProg 64 :=
.seq AllocBody824_83 AllocBody824_86

def AllocBody824_88 : StackLang.HolProg 64 :=
.seq AllocBody824_82 AllocBody824_87

def AllocBody824_89 : StackLang.HolProg 64 :=
.seq AllocBody824_81 AllocBody824_88

def AllocBody824_90 : StackLang.HolProg 64 :=
.seq AllocBody824_80 AllocBody824_89

def AllocBody824_91 : StackLang.HolProg 64 :=
.seq AllocBody824_79 AllocBody824_90

def AllocBody824_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody824_91 AllocBody824_92

def AllocBody824_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody824_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody824_98 : StackLang.HolProg 64 :=
.seq AllocBody824_96 AllocBody824_97

def AllocBody824_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4103#64)

def AllocBody824_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_102 : StackLang.HolProg 64 :=
.seq AllocBody824_100 AllocBody824_101

def AllocBody824_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody824_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody824_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 5

def AllocBody824_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody824_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody824_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody824_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody824_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_113 : StackLang.HolProg 64 :=
.seq AllocBody824_111 AllocBody824_112

def AllocBody824_114 : StackLang.HolProg 64 :=
.seq AllocBody824_110 AllocBody824_113

def AllocBody824_115 : StackLang.HolProg 64 :=
.seq AllocBody824_109 AllocBody824_114

def AllocBody824_116 : StackLang.HolProg 64 :=
.seq AllocBody824_108 AllocBody824_115

def AllocBody824_117 : StackLang.HolProg 64 :=
.seq AllocBody824_107 AllocBody824_116

def AllocBody824_118 : StackLang.HolProg 64 :=
.seq AllocBody824_106 AllocBody824_117

def AllocBody824_119 : StackLang.HolProg 64 :=
.seq AllocBody824_105 AllocBody824_118

def AllocBody824_120 : StackLang.HolProg 64 :=
.seq AllocBody824_104 AllocBody824_119

def AllocBody824_121 : StackLang.HolProg 64 :=
.seq AllocBody824_103 AllocBody824_120

def AllocBody824_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody824_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody824_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody824_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody824_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody824_130 : StackLang.HolProg 64 :=
.seq AllocBody824_128 AllocBody824_129

def AllocBody824_131 : StackLang.HolProg 64 :=
.seq AllocBody824_127 AllocBody824_130

def AllocBody824_132 : StackLang.HolProg 64 :=
.seq AllocBody824_126 AllocBody824_131

def AllocBody824_133 : StackLang.HolProg 64 :=
.seq AllocBody824_125 AllocBody824_132

def AllocBody824_134 : StackLang.HolProg 64 :=
.seq AllocBody824_124 AllocBody824_133

def AllocBody824_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody824_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_137 : StackLang.HolProg 64 :=
.seq AllocBody824_135 AllocBody824_136

def AllocBody824_138 : StackLang.HolProg 64 :=
.call (some (AllocBody824_134, 0, 824, 4)) (Sum.inl 820) (some (AllocBody824_137, 824, 5))

def AllocBody824_139 : StackLang.HolProg 64 :=
.seq AllocBody824_123 AllocBody824_138

def AllocBody824_140 : StackLang.HolProg 64 :=
.seq AllocBody824_122 AllocBody824_139

def AllocBody824_141 : StackLang.HolProg 64 :=
.seq AllocBody824_121 AllocBody824_140

def AllocBody824_142 : StackLang.HolProg 64 :=
.seq AllocBody824_102 AllocBody824_141

def AllocBody824_143 : StackLang.HolProg 64 :=
.seq AllocBody824_99 AllocBody824_142

def AllocBody824_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 22500#64)

def AllocBody824_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody824_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody824_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody824_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody824_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody824_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1000#64)

def AllocBody824_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody824_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4104#64)

def AllocBody824_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_157 : StackLang.HolProg 64 :=
.seq AllocBody824_155 AllocBody824_156

def AllocBody824_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody824_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody824_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 7

def AllocBody824_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody824_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody824_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody824_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody824_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_168 : StackLang.HolProg 64 :=
.seq AllocBody824_166 AllocBody824_167

def AllocBody824_169 : StackLang.HolProg 64 :=
.seq AllocBody824_165 AllocBody824_168

def AllocBody824_170 : StackLang.HolProg 64 :=
.seq AllocBody824_164 AllocBody824_169

def AllocBody824_171 : StackLang.HolProg 64 :=
.seq AllocBody824_163 AllocBody824_170

def AllocBody824_172 : StackLang.HolProg 64 :=
.seq AllocBody824_162 AllocBody824_171

def AllocBody824_173 : StackLang.HolProg 64 :=
.seq AllocBody824_161 AllocBody824_172

def AllocBody824_174 : StackLang.HolProg 64 :=
.seq AllocBody824_160 AllocBody824_173

def AllocBody824_175 : StackLang.HolProg 64 :=
.seq AllocBody824_159 AllocBody824_174

def AllocBody824_176 : StackLang.HolProg 64 :=
.seq AllocBody824_158 AllocBody824_175

def AllocBody824_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody824_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody824_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody824_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody824_184 : StackLang.HolProg 64 :=
.seq AllocBody824_182 AllocBody824_183

def AllocBody824_185 : StackLang.HolProg 64 :=
.seq AllocBody824_181 AllocBody824_184

def AllocBody824_186 : StackLang.HolProg 64 :=
.seq AllocBody824_180 AllocBody824_185

def AllocBody824_187 : StackLang.HolProg 64 :=
.seq AllocBody824_179 AllocBody824_186

def AllocBody824_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_190 : StackLang.HolProg 64 :=
.seq AllocBody824_188 AllocBody824_189

def AllocBody824_191 : StackLang.HolProg 64 :=
.call (some (AllocBody824_187, 0, 824, 6)) (Sum.inl 94) (some (AllocBody824_190, 824, 7))

def AllocBody824_192 : StackLang.HolProg 64 :=
.seq AllocBody824_178 AllocBody824_191

def AllocBody824_193 : StackLang.HolProg 64 :=
.seq AllocBody824_177 AllocBody824_192

def AllocBody824_194 : StackLang.HolProg 64 :=
.seq AllocBody824_176 AllocBody824_193

def AllocBody824_195 : StackLang.HolProg 64 :=
.seq AllocBody824_157 AllocBody824_194

def AllocBody824_196 : StackLang.HolProg 64 :=
.seq AllocBody824_154 AllocBody824_195

def AllocBody824_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody824_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4105#64)

def AllocBody824_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_202 : StackLang.HolProg 64 :=
.seq AllocBody824_200 AllocBody824_201

def AllocBody824_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody824_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody824_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 9

def AllocBody824_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody824_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody824_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody824_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody824_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_213 : StackLang.HolProg 64 :=
.seq AllocBody824_211 AllocBody824_212

def AllocBody824_214 : StackLang.HolProg 64 :=
.seq AllocBody824_210 AllocBody824_213

def AllocBody824_215 : StackLang.HolProg 64 :=
.seq AllocBody824_209 AllocBody824_214

def AllocBody824_216 : StackLang.HolProg 64 :=
.seq AllocBody824_208 AllocBody824_215

def AllocBody824_217 : StackLang.HolProg 64 :=
.seq AllocBody824_207 AllocBody824_216

def AllocBody824_218 : StackLang.HolProg 64 :=
.seq AllocBody824_206 AllocBody824_217

def AllocBody824_219 : StackLang.HolProg 64 :=
.seq AllocBody824_205 AllocBody824_218

def AllocBody824_220 : StackLang.HolProg 64 :=
.seq AllocBody824_204 AllocBody824_219

def AllocBody824_221 : StackLang.HolProg 64 :=
.seq AllocBody824_203 AllocBody824_220

def AllocBody824_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody824_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody824_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody824_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_229 : StackLang.HolProg 64 :=
.seq AllocBody824_227 AllocBody824_228

def AllocBody824_230 : StackLang.HolProg 64 :=
.seq AllocBody824_226 AllocBody824_229

def AllocBody824_231 : StackLang.HolProg 64 :=
.seq AllocBody824_225 AllocBody824_230

def AllocBody824_232 : StackLang.HolProg 64 :=
.seq AllocBody824_224 AllocBody824_231

def AllocBody824_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_234 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_235 : StackLang.HolProg 64 :=
.seq AllocBody824_233 AllocBody824_234

def AllocBody824_236 : StackLang.HolProg 64 :=
.call (some (AllocBody824_232, 0, 824, 8)) (Sum.inl 470) (some (AllocBody824_235, 824, 9))

def AllocBody824_237 : StackLang.HolProg 64 :=
.seq AllocBody824_223 AllocBody824_236

def AllocBody824_238 : StackLang.HolProg 64 :=
.seq AllocBody824_222 AllocBody824_237

def AllocBody824_239 : StackLang.HolProg 64 :=
.seq AllocBody824_221 AllocBody824_238

def AllocBody824_240 : StackLang.HolProg 64 :=
.seq AllocBody824_202 AllocBody824_239

def AllocBody824_241 : StackLang.HolProg 64 :=
.seq AllocBody824_199 AllocBody824_240

def AllocBody824_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody824_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4106#64)

def AllocBody824_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_248 : StackLang.HolProg 64 :=
.seq AllocBody824_246 AllocBody824_247

def AllocBody824_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody824_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody824_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 11

def AllocBody824_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody824_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody824_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody824_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody824_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_259 : StackLang.HolProg 64 :=
.seq AllocBody824_257 AllocBody824_258

def AllocBody824_260 : StackLang.HolProg 64 :=
.seq AllocBody824_256 AllocBody824_259

def AllocBody824_261 : StackLang.HolProg 64 :=
.seq AllocBody824_255 AllocBody824_260

def AllocBody824_262 : StackLang.HolProg 64 :=
.seq AllocBody824_254 AllocBody824_261

def AllocBody824_263 : StackLang.HolProg 64 :=
.seq AllocBody824_253 AllocBody824_262

def AllocBody824_264 : StackLang.HolProg 64 :=
.seq AllocBody824_252 AllocBody824_263

def AllocBody824_265 : StackLang.HolProg 64 :=
.seq AllocBody824_251 AllocBody824_264

def AllocBody824_266 : StackLang.HolProg 64 :=
.seq AllocBody824_250 AllocBody824_265

def AllocBody824_267 : StackLang.HolProg 64 :=
.seq AllocBody824_249 AllocBody824_266

def AllocBody824_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody824_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody824_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody824_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody824_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody824_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody824_277 : StackLang.HolProg 64 :=
.seq AllocBody824_275 AllocBody824_276

def AllocBody824_278 : StackLang.HolProg 64 :=
.seq AllocBody824_274 AllocBody824_277

def AllocBody824_279 : StackLang.HolProg 64 :=
.seq AllocBody824_273 AllocBody824_278

def AllocBody824_280 : StackLang.HolProg 64 :=
.seq AllocBody824_272 AllocBody824_279

def AllocBody824_281 : StackLang.HolProg 64 :=
.seq AllocBody824_271 AllocBody824_280

def AllocBody824_282 : StackLang.HolProg 64 :=
.seq AllocBody824_270 AllocBody824_281

def AllocBody824_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody824_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody824_285 : StackLang.HolProg 64 :=
.seq AllocBody824_283 AllocBody824_284

def AllocBody824_286 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_287 : StackLang.HolProg 64 :=
.seq AllocBody824_285 AllocBody824_286

def AllocBody824_288 : StackLang.HolProg 64 :=
.call (some (AllocBody824_282, 0, 824, 10)) (Sum.inl 68) (some (AllocBody824_287, 824, 11))

def AllocBody824_289 : StackLang.HolProg 64 :=
.seq AllocBody824_269 AllocBody824_288

def AllocBody824_290 : StackLang.HolProg 64 :=
.seq AllocBody824_268 AllocBody824_289

def AllocBody824_291 : StackLang.HolProg 64 :=
.seq AllocBody824_267 AllocBody824_290

def AllocBody824_292 : StackLang.HolProg 64 :=
.seq AllocBody824_248 AllocBody824_291

def AllocBody824_293 : StackLang.HolProg 64 :=
.seq AllocBody824_245 AllocBody824_292

def AllocBody824_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody824_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody824_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4107#64)

def AllocBody824_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_301 : StackLang.HolProg 64 :=
.seq AllocBody824_299 AllocBody824_300

def AllocBody824_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody824_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody824_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody824_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 824 13

def AllocBody824_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody824_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody824_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody824_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody824_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_312 : StackLang.HolProg 64 :=
.seq AllocBody824_310 AllocBody824_311

def AllocBody824_313 : StackLang.HolProg 64 :=
.seq AllocBody824_309 AllocBody824_312

def AllocBody824_314 : StackLang.HolProg 64 :=
.seq AllocBody824_308 AllocBody824_313

def AllocBody824_315 : StackLang.HolProg 64 :=
.seq AllocBody824_307 AllocBody824_314

def AllocBody824_316 : StackLang.HolProg 64 :=
.seq AllocBody824_306 AllocBody824_315

def AllocBody824_317 : StackLang.HolProg 64 :=
.seq AllocBody824_305 AllocBody824_316

def AllocBody824_318 : StackLang.HolProg 64 :=
.seq AllocBody824_304 AllocBody824_317

def AllocBody824_319 : StackLang.HolProg 64 :=
.seq AllocBody824_303 AllocBody824_318

def AllocBody824_320 : StackLang.HolProg 64 :=
.seq AllocBody824_302 AllocBody824_319

def AllocBody824_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody824_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody824_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody824_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody824_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody824_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody824_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody824_330 : StackLang.HolProg 64 :=
.seq AllocBody824_328 AllocBody824_329

def AllocBody824_331 : StackLang.HolProg 64 :=
.seq AllocBody824_327 AllocBody824_330

def AllocBody824_332 : StackLang.HolProg 64 :=
.seq AllocBody824_326 AllocBody824_331

def AllocBody824_333 : StackLang.HolProg 64 :=
.seq AllocBody824_325 AllocBody824_332

def AllocBody824_334 : StackLang.HolProg 64 :=
.seq AllocBody824_324 AllocBody824_333

def AllocBody824_335 : StackLang.HolProg 64 :=
.seq AllocBody824_323 AllocBody824_334

def AllocBody824_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody824_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody824_338 : StackLang.HolProg 64 :=
.seq AllocBody824_336 AllocBody824_337

def AllocBody824_339 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_340 : StackLang.HolProg 64 :=
.seq AllocBody824_338 AllocBody824_339

def AllocBody824_341 : StackLang.HolProg 64 :=
.call (some (AllocBody824_335, 0, 824, 12)) (Sum.inl 813) (some (AllocBody824_340, 824, 13))

def AllocBody824_342 : StackLang.HolProg 64 :=
.seq AllocBody824_322 AllocBody824_341

def AllocBody824_343 : StackLang.HolProg 64 :=
.seq AllocBody824_321 AllocBody824_342

def AllocBody824_344 : StackLang.HolProg 64 :=
.seq AllocBody824_320 AllocBody824_343

def AllocBody824_345 : StackLang.HolProg 64 :=
.seq AllocBody824_301 AllocBody824_344

def AllocBody824_346 : StackLang.HolProg 64 :=
.seq AllocBody824_298 AllocBody824_345

def AllocBody824_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody824_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 10#64)

def AllocBody824_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody824_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody824_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_356 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody824_357 : StackLang.HolProg 64 :=
.seq AllocBody824_355 AllocBody824_356

def AllocBody824_358 : StackLang.HolProg 64 :=
.seq AllocBody824_354 AllocBody824_357

def AllocBody824_359 : StackLang.HolProg 64 :=
.seq AllocBody824_353 AllocBody824_358

def AllocBody824_360 : StackLang.HolProg 64 :=
.seq AllocBody824_352 AllocBody824_359

def AllocBody824_361 : StackLang.HolProg 64 :=
.seq AllocBody824_351 AllocBody824_360

def AllocBody824_362 : StackLang.HolProg 64 :=
.seq AllocBody824_350 AllocBody824_361

def AllocBody824_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_364 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody824_362 AllocBody824_363

def AllocBody824_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody824_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody824_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody824_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody824_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody824_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody824_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody824_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody824_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody824_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody824_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody824_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody824_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody824_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody824_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody824_384 : StackLang.HolProg 64 :=
.seq AllocBody824_382 AllocBody824_383

def AllocBody824_385 : StackLang.HolProg 64 :=
.seq AllocBody824_381 AllocBody824_384

def AllocBody824_386 : StackLang.HolProg 64 :=
.seq AllocBody824_380 AllocBody824_385

def AllocBody824_387 : StackLang.HolProg 64 :=
.seq AllocBody824_379 AllocBody824_386

def AllocBody824_388 : StackLang.HolProg 64 :=
.seq AllocBody824_378 AllocBody824_387

def AllocBody824_389 : StackLang.HolProg 64 :=
.seq AllocBody824_377 AllocBody824_388

def AllocBody824_390 : StackLang.HolProg 64 :=
.seq AllocBody824_376 AllocBody824_389

def AllocBody824_391 : StackLang.HolProg 64 :=
.seq AllocBody824_375 AllocBody824_390

def AllocBody824_392 : StackLang.HolProg 64 :=
.seq AllocBody824_374 AllocBody824_391

def AllocBody824_393 : StackLang.HolProg 64 :=
.seq AllocBody824_373 AllocBody824_392

def AllocBody824_394 : StackLang.HolProg 64 :=
.seq AllocBody824_372 AllocBody824_393

def AllocBody824_395 : StackLang.HolProg 64 :=
.seq AllocBody824_371 AllocBody824_394

def AllocBody824_396 : StackLang.HolProg 64 :=
.seq AllocBody824_370 AllocBody824_395

def AllocBody824_397 : StackLang.HolProg 64 :=
.seq AllocBody824_369 AllocBody824_396

def AllocBody824_398 : StackLang.HolProg 64 :=
.seq AllocBody824_368 AllocBody824_397

def AllocBody824_399 : StackLang.HolProg 64 :=
.seq AllocBody824_367 AllocBody824_398

def AllocBody824_400 : StackLang.HolProg 64 :=
.seq AllocBody824_366 AllocBody824_399

def AllocBody824_401 : StackLang.HolProg 64 :=
.seq AllocBody824_365 AllocBody824_400

def AllocBody824_402 : StackLang.HolProg 64 :=
.seq AllocBody824_364 AllocBody824_401

def AllocBody824_403 : StackLang.HolProg 64 :=
.seq AllocBody824_349 AllocBody824_402

def AllocBody824_404 : StackLang.HolProg 64 :=
.seq AllocBody824_348 AllocBody824_403

def AllocBody824_405 : StackLang.HolProg 64 :=
.seq AllocBody824_347 AllocBody824_404

def AllocBody824_406 : StackLang.HolProg 64 :=
.seq AllocBody824_346 AllocBody824_405

def AllocBody824_407 : StackLang.HolProg 64 :=
.seq AllocBody824_297 AllocBody824_406

def AllocBody824_408 : StackLang.HolProg 64 :=
.seq AllocBody824_296 AllocBody824_407

def AllocBody824_409 : StackLang.HolProg 64 :=
.seq AllocBody824_295 AllocBody824_408

def AllocBody824_410 : StackLang.HolProg 64 :=
.seq AllocBody824_294 AllocBody824_409

def AllocBody824_411 : StackLang.HolProg 64 :=
.seq AllocBody824_293 AllocBody824_410

def AllocBody824_412 : StackLang.HolProg 64 :=
.seq AllocBody824_244 AllocBody824_411

def AllocBody824_413 : StackLang.HolProg 64 :=
.seq AllocBody824_243 AllocBody824_412

def AllocBody824_414 : StackLang.HolProg 64 :=
.seq AllocBody824_242 AllocBody824_413

def AllocBody824_415 : StackLang.HolProg 64 :=
.seq AllocBody824_241 AllocBody824_414

def AllocBody824_416 : StackLang.HolProg 64 :=
.seq AllocBody824_198 AllocBody824_415

def AllocBody824_417 : StackLang.HolProg 64 :=
.seq AllocBody824_197 AllocBody824_416

def AllocBody824_418 : StackLang.HolProg 64 :=
.seq AllocBody824_196 AllocBody824_417

def AllocBody824_419 : StackLang.HolProg 64 :=
.seq AllocBody824_153 AllocBody824_418

def AllocBody824_420 : StackLang.HolProg 64 :=
.seq AllocBody824_152 AllocBody824_419

def AllocBody824_421 : StackLang.HolProg 64 :=
.seq AllocBody824_151 AllocBody824_420

def AllocBody824_422 : StackLang.HolProg 64 :=
.seq AllocBody824_150 AllocBody824_421

def AllocBody824_423 : StackLang.HolProg 64 :=
.seq AllocBody824_149 AllocBody824_422

def AllocBody824_424 : StackLang.HolProg 64 :=
.seq AllocBody824_148 AllocBody824_423

def AllocBody824_425 : StackLang.HolProg 64 :=
.seq AllocBody824_147 AllocBody824_424

def AllocBody824_426 : StackLang.HolProg 64 :=
.seq AllocBody824_146 AllocBody824_425

def AllocBody824_427 : StackLang.HolProg 64 :=
.seq AllocBody824_145 AllocBody824_426

def AllocBody824_428 : StackLang.HolProg 64 :=
.seq AllocBody824_144 AllocBody824_427

def AllocBody824_429 : StackLang.HolProg 64 :=
.seq AllocBody824_143 AllocBody824_428

def AllocBody824_430 : StackLang.HolProg 64 :=
.seq AllocBody824_98 AllocBody824_429

def AllocBody824_431 : StackLang.HolProg 64 :=
.seq AllocBody824_95 AllocBody824_430

def AllocBody824_432 : StackLang.HolProg 64 :=
.seq AllocBody824_94 AllocBody824_431

def AllocBody824_433 : StackLang.HolProg 64 :=
.seq AllocBody824_93 AllocBody824_432

def AllocBody824_434 : StackLang.HolProg 64 :=
.seq AllocBody824_78 AllocBody824_433

def AllocBody824_435 : StackLang.HolProg 64 :=
.seq AllocBody824_77 AllocBody824_434

def AllocBody824_436 : StackLang.HolProg 64 :=
.seq AllocBody824_76 AllocBody824_435

def AllocBody824_437 : StackLang.HolProg 64 :=
.seq AllocBody824_75 AllocBody824_436

def AllocBody824_438 : StackLang.HolProg 64 :=
.seq AllocBody824_32 AllocBody824_437

def AllocBody824_439 : StackLang.HolProg 64 :=
.seq AllocBody824_29 AllocBody824_438

def AllocBody824_440 : StackLang.HolProg 64 :=
.seq AllocBody824_28 AllocBody824_439

def AllocBody824_441 : StackLang.HolProg 64 :=
.seq AllocBody824_27 AllocBody824_440

def AllocBody824_442 : StackLang.HolProg 64 :=
.seq AllocBody824_26 AllocBody824_441

def AllocBody824_443 : StackLang.HolProg 64 :=
.seq AllocBody824_25 AllocBody824_442

def AllocBody824_444 : StackLang.HolProg 64 :=
.seq AllocBody824_10 AllocBody824_443

def AllocBody824_445 : StackLang.HolProg 64 :=
.seq AllocBody824_9 AllocBody824_444

def AllocBody824_446 : StackLang.HolProg 64 :=
.seq AllocBody824_8 AllocBody824_445

def AllocBody824_447 : StackLang.HolProg 64 :=
.seq AllocBody824_7 AllocBody824_446

def AllocBody824_448 : StackLang.HolProg 64 :=
.seq AllocBody824_6 AllocBody824_447

def AllocBody824_449 : StackLang.HolProg 64 :=
.seq AllocBody824_5 AllocBody824_448

def AllocBody824_450 : StackLang.HolProg 64 :=
.seq AllocBody824_4 AllocBody824_449

def AllocBody824_451 : StackLang.HolProg 64 :=
.seq AllocBody824_3 AllocBody824_450

def AllocBody824_452 : StackLang.HolProg 64 :=
.seq AllocBody824_2 AllocBody824_451

def AllocBody824_453 : StackLang.HolProg 64 :=
.seq AllocBody824_1 AllocBody824_452

def AllocBody824_454 : StackLang.HolProg 64 :=
.seq AllocBody824_0 AllocBody824_453

def Alloc824 : Nat × StackLang.HolProg 64 := (824, AllocBody824_454)
theorem Alloc824_eq : StackAlloc.progComp (824, raw824) = Alloc824 := by
  kernel_rfl
#print axioms Alloc824_eq
end InitECandidate.Proofs.BackendStages
