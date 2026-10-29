import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw305
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody305_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody305_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody305_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody305_3 : StackLang.HolProg 64 :=
.seq AllocBody305_1 AllocBody305_2

def AllocBody305_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody305_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody305_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody305_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551488#64))

def AllocBody305_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody305_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody305_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody305_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody305_12 : StackLang.HolProg 64 :=
.seq AllocBody305_10 AllocBody305_11

def AllocBody305_13 : StackLang.HolProg 64 :=
.seq AllocBody305_9 AllocBody305_12

def AllocBody305_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 839#64)

def AllocBody305_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_17 : StackLang.HolProg 64 :=
.seq AllocBody305_15 AllocBody305_16

def AllocBody305_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody305_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody305_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 3

def AllocBody305_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody305_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody305_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody305_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody305_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_28 : StackLang.HolProg 64 :=
.seq AllocBody305_26 AllocBody305_27

def AllocBody305_29 : StackLang.HolProg 64 :=
.seq AllocBody305_25 AllocBody305_28

def AllocBody305_30 : StackLang.HolProg 64 :=
.seq AllocBody305_24 AllocBody305_29

def AllocBody305_31 : StackLang.HolProg 64 :=
.seq AllocBody305_23 AllocBody305_30

def AllocBody305_32 : StackLang.HolProg 64 :=
.seq AllocBody305_22 AllocBody305_31

def AllocBody305_33 : StackLang.HolProg 64 :=
.seq AllocBody305_21 AllocBody305_32

def AllocBody305_34 : StackLang.HolProg 64 :=
.seq AllocBody305_20 AllocBody305_33

def AllocBody305_35 : StackLang.HolProg 64 :=
.seq AllocBody305_19 AllocBody305_34

def AllocBody305_36 : StackLang.HolProg 64 :=
.seq AllocBody305_18 AllocBody305_35

def AllocBody305_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody305_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody305_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody305_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody305_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody305_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody305_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody305_47 : StackLang.HolProg 64 :=
.seq AllocBody305_45 AllocBody305_46

def AllocBody305_48 : StackLang.HolProg 64 :=
.seq AllocBody305_44 AllocBody305_47

def AllocBody305_49 : StackLang.HolProg 64 :=
.seq AllocBody305_43 AllocBody305_48

def AllocBody305_50 : StackLang.HolProg 64 :=
.seq AllocBody305_42 AllocBody305_49

def AllocBody305_51 : StackLang.HolProg 64 :=
.seq AllocBody305_41 AllocBody305_50

def AllocBody305_52 : StackLang.HolProg 64 :=
.seq AllocBody305_40 AllocBody305_51

def AllocBody305_53 : StackLang.HolProg 64 :=
.seq AllocBody305_39 AllocBody305_52

def AllocBody305_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def AllocBody305_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody305_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody305_57 : StackLang.HolProg 64 :=
.seq AllocBody305_55 AllocBody305_56

def AllocBody305_58 : StackLang.HolProg 64 :=
.seq AllocBody305_54 AllocBody305_57

def AllocBody305_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody305_60 : StackLang.HolProg 64 :=
.seq AllocBody305_58 AllocBody305_59

def AllocBody305_61 : StackLang.HolProg 64 :=
.call (some (AllocBody305_53, 0, 305, 2)) (Sum.inl 79) (some (AllocBody305_60, 305, 3))

def AllocBody305_62 : StackLang.HolProg 64 :=
.seq AllocBody305_38 AllocBody305_61

def AllocBody305_63 : StackLang.HolProg 64 :=
.seq AllocBody305_37 AllocBody305_62

def AllocBody305_64 : StackLang.HolProg 64 :=
.seq AllocBody305_36 AllocBody305_63

def AllocBody305_65 : StackLang.HolProg 64 :=
.seq AllocBody305_17 AllocBody305_64

def AllocBody305_66 : StackLang.HolProg 64 :=
.seq AllocBody305_14 AllocBody305_65

def AllocBody305_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody305_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody305_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody305_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody305_75 : StackLang.HolProg 64 :=
.seq AllocBody305_73 AllocBody305_74

def AllocBody305_76 : StackLang.HolProg 64 :=
.seq AllocBody305_72 AllocBody305_75

def AllocBody305_77 : StackLang.HolProg 64 :=
.seq AllocBody305_71 AllocBody305_76

def AllocBody305_78 : StackLang.HolProg 64 :=
.seq AllocBody305_70 AllocBody305_77

def AllocBody305_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody305_78 AllocBody305_79

def AllocBody305_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody305_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody305_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody305_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody305_87 : StackLang.HolProg 64 :=
.seq AllocBody305_85 AllocBody305_86

def AllocBody305_88 : StackLang.HolProg 64 :=
.seq AllocBody305_84 AllocBody305_87

def AllocBody305_89 : StackLang.HolProg 64 :=
.seq AllocBody305_83 AllocBody305_88

def AllocBody305_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 840#64)

def AllocBody305_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_93 : StackLang.HolProg 64 :=
.seq AllocBody305_91 AllocBody305_92

def AllocBody305_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody305_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody305_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 5

def AllocBody305_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody305_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody305_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody305_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody305_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_104 : StackLang.HolProg 64 :=
.seq AllocBody305_102 AllocBody305_103

def AllocBody305_105 : StackLang.HolProg 64 :=
.seq AllocBody305_101 AllocBody305_104

def AllocBody305_106 : StackLang.HolProg 64 :=
.seq AllocBody305_100 AllocBody305_105

def AllocBody305_107 : StackLang.HolProg 64 :=
.seq AllocBody305_99 AllocBody305_106

def AllocBody305_108 : StackLang.HolProg 64 :=
.seq AllocBody305_98 AllocBody305_107

def AllocBody305_109 : StackLang.HolProg 64 :=
.seq AllocBody305_97 AllocBody305_108

def AllocBody305_110 : StackLang.HolProg 64 :=
.seq AllocBody305_96 AllocBody305_109

def AllocBody305_111 : StackLang.HolProg 64 :=
.seq AllocBody305_95 AllocBody305_110

def AllocBody305_112 : StackLang.HolProg 64 :=
.seq AllocBody305_94 AllocBody305_111

def AllocBody305_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody305_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody305_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody305_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody305_120 : StackLang.HolProg 64 :=
.seq AllocBody305_118 AllocBody305_119

def AllocBody305_121 : StackLang.HolProg 64 :=
.seq AllocBody305_117 AllocBody305_120

def AllocBody305_122 : StackLang.HolProg 64 :=
.seq AllocBody305_116 AllocBody305_121

def AllocBody305_123 : StackLang.HolProg 64 :=
.seq AllocBody305_115 AllocBody305_122

def AllocBody305_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody305_126 : StackLang.HolProg 64 :=
.seq AllocBody305_124 AllocBody305_125

def AllocBody305_127 : StackLang.HolProg 64 :=
.call (some (AllocBody305_123, 0, 305, 4)) (Sum.inl 294) (some (AllocBody305_126, 305, 5))

def AllocBody305_128 : StackLang.HolProg 64 :=
.seq AllocBody305_114 AllocBody305_127

def AllocBody305_129 : StackLang.HolProg 64 :=
.seq AllocBody305_113 AllocBody305_128

def AllocBody305_130 : StackLang.HolProg 64 :=
.seq AllocBody305_112 AllocBody305_129

def AllocBody305_131 : StackLang.HolProg 64 :=
.seq AllocBody305_93 AllocBody305_130

def AllocBody305_132 : StackLang.HolProg 64 :=
.seq AllocBody305_90 AllocBody305_131

def AllocBody305_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody305_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody305_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody305_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody305_140 : StackLang.HolProg 64 :=
.seq AllocBody305_138 AllocBody305_139

def AllocBody305_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 841#64)

def AllocBody305_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_144 : StackLang.HolProg 64 :=
.seq AllocBody305_142 AllocBody305_143

def AllocBody305_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody305_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody305_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 7

def AllocBody305_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody305_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody305_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody305_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody305_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_155 : StackLang.HolProg 64 :=
.seq AllocBody305_153 AllocBody305_154

def AllocBody305_156 : StackLang.HolProg 64 :=
.seq AllocBody305_152 AllocBody305_155

def AllocBody305_157 : StackLang.HolProg 64 :=
.seq AllocBody305_151 AllocBody305_156

def AllocBody305_158 : StackLang.HolProg 64 :=
.seq AllocBody305_150 AllocBody305_157

def AllocBody305_159 : StackLang.HolProg 64 :=
.seq AllocBody305_149 AllocBody305_158

def AllocBody305_160 : StackLang.HolProg 64 :=
.seq AllocBody305_148 AllocBody305_159

def AllocBody305_161 : StackLang.HolProg 64 :=
.seq AllocBody305_147 AllocBody305_160

def AllocBody305_162 : StackLang.HolProg 64 :=
.seq AllocBody305_146 AllocBody305_161

def AllocBody305_163 : StackLang.HolProg 64 :=
.seq AllocBody305_145 AllocBody305_162

def AllocBody305_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody305_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody305_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody305_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody305_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody305_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody305_173 : StackLang.HolProg 64 :=
.seq AllocBody305_171 AllocBody305_172

def AllocBody305_174 : StackLang.HolProg 64 :=
.seq AllocBody305_170 AllocBody305_173

def AllocBody305_175 : StackLang.HolProg 64 :=
.seq AllocBody305_169 AllocBody305_174

def AllocBody305_176 : StackLang.HolProg 64 :=
.seq AllocBody305_168 AllocBody305_175

def AllocBody305_177 : StackLang.HolProg 64 :=
.seq AllocBody305_167 AllocBody305_176

def AllocBody305_178 : StackLang.HolProg 64 :=
.seq AllocBody305_166 AllocBody305_177

def AllocBody305_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody305_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody305_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody305_182 : StackLang.HolProg 64 :=
.seq AllocBody305_180 AllocBody305_181

def AllocBody305_183 : StackLang.HolProg 64 :=
.seq AllocBody305_179 AllocBody305_182

def AllocBody305_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody305_185 : StackLang.HolProg 64 :=
.seq AllocBody305_183 AllocBody305_184

def AllocBody305_186 : StackLang.HolProg 64 :=
.call (some (AllocBody305_178, 0, 305, 6)) (Sum.inl 286) (some (AllocBody305_185, 305, 7))

def AllocBody305_187 : StackLang.HolProg 64 :=
.seq AllocBody305_165 AllocBody305_186

def AllocBody305_188 : StackLang.HolProg 64 :=
.seq AllocBody305_164 AllocBody305_187

def AllocBody305_189 : StackLang.HolProg 64 :=
.seq AllocBody305_163 AllocBody305_188

def AllocBody305_190 : StackLang.HolProg 64 :=
.seq AllocBody305_144 AllocBody305_189

def AllocBody305_191 : StackLang.HolProg 64 :=
.seq AllocBody305_141 AllocBody305_190

def AllocBody305_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_194 : StackLang.HolProg 64 :=
.seq AllocBody305_192 AllocBody305_193

def AllocBody305_195 : StackLang.HolProg 64 :=
.seq AllocBody305_191 AllocBody305_194

def AllocBody305_196 : StackLang.HolProg 64 :=
.seq AllocBody305_140 AllocBody305_195

def AllocBody305_197 : StackLang.HolProg 64 :=
.seq AllocBody305_137 AllocBody305_196

def AllocBody305_198 : StackLang.HolProg 64 :=
.seq AllocBody305_136 AllocBody305_197

def AllocBody305_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody305_201 : StackLang.HolProg 64 :=
.seq AllocBody305_199 AllocBody305_200

def AllocBody305_202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody305_198 AllocBody305_201

def AllocBody305_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody305_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 842#64)

def AllocBody305_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_208 : StackLang.HolProg 64 :=
.seq AllocBody305_206 AllocBody305_207

def AllocBody305_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody305_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody305_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 9

def AllocBody305_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody305_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody305_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody305_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody305_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_219 : StackLang.HolProg 64 :=
.seq AllocBody305_217 AllocBody305_218

def AllocBody305_220 : StackLang.HolProg 64 :=
.seq AllocBody305_216 AllocBody305_219

def AllocBody305_221 : StackLang.HolProg 64 :=
.seq AllocBody305_215 AllocBody305_220

def AllocBody305_222 : StackLang.HolProg 64 :=
.seq AllocBody305_214 AllocBody305_221

def AllocBody305_223 : StackLang.HolProg 64 :=
.seq AllocBody305_213 AllocBody305_222

def AllocBody305_224 : StackLang.HolProg 64 :=
.seq AllocBody305_212 AllocBody305_223

def AllocBody305_225 : StackLang.HolProg 64 :=
.seq AllocBody305_211 AllocBody305_224

def AllocBody305_226 : StackLang.HolProg 64 :=
.seq AllocBody305_210 AllocBody305_225

def AllocBody305_227 : StackLang.HolProg 64 :=
.seq AllocBody305_209 AllocBody305_226

def AllocBody305_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody305_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody305_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody305_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody305_235 : StackLang.HolProg 64 :=
.seq AllocBody305_233 AllocBody305_234

def AllocBody305_236 : StackLang.HolProg 64 :=
.seq AllocBody305_232 AllocBody305_235

def AllocBody305_237 : StackLang.HolProg 64 :=
.seq AllocBody305_231 AllocBody305_236

def AllocBody305_238 : StackLang.HolProg 64 :=
.seq AllocBody305_230 AllocBody305_237

def AllocBody305_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody305_241 : StackLang.HolProg 64 :=
.seq AllocBody305_239 AllocBody305_240

def AllocBody305_242 : StackLang.HolProg 64 :=
.call (some (AllocBody305_238, 0, 305, 8)) (Sum.inl 304) (some (AllocBody305_241, 305, 9))

def AllocBody305_243 : StackLang.HolProg 64 :=
.seq AllocBody305_229 AllocBody305_242

def AllocBody305_244 : StackLang.HolProg 64 :=
.seq AllocBody305_228 AllocBody305_243

def AllocBody305_245 : StackLang.HolProg 64 :=
.seq AllocBody305_227 AllocBody305_244

def AllocBody305_246 : StackLang.HolProg 64 :=
.seq AllocBody305_208 AllocBody305_245

def AllocBody305_247 : StackLang.HolProg 64 :=
.seq AllocBody305_205 AllocBody305_246

def AllocBody305_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody305_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody305_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody305_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 843#64)

def AllocBody305_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_257 : StackLang.HolProg 64 :=
.seq AllocBody305_255 AllocBody305_256

def AllocBody305_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody305_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody305_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 11

def AllocBody305_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody305_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody305_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody305_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody305_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_268 : StackLang.HolProg 64 :=
.seq AllocBody305_266 AllocBody305_267

def AllocBody305_269 : StackLang.HolProg 64 :=
.seq AllocBody305_265 AllocBody305_268

def AllocBody305_270 : StackLang.HolProg 64 :=
.seq AllocBody305_264 AllocBody305_269

def AllocBody305_271 : StackLang.HolProg 64 :=
.seq AllocBody305_263 AllocBody305_270

def AllocBody305_272 : StackLang.HolProg 64 :=
.seq AllocBody305_262 AllocBody305_271

def AllocBody305_273 : StackLang.HolProg 64 :=
.seq AllocBody305_261 AllocBody305_272

def AllocBody305_274 : StackLang.HolProg 64 :=
.seq AllocBody305_260 AllocBody305_273

def AllocBody305_275 : StackLang.HolProg 64 :=
.seq AllocBody305_259 AllocBody305_274

def AllocBody305_276 : StackLang.HolProg 64 :=
.seq AllocBody305_258 AllocBody305_275

def AllocBody305_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody305_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody305_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody305_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody305_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody305_285 : StackLang.HolProg 64 :=
.seq AllocBody305_283 AllocBody305_284

def AllocBody305_286 : StackLang.HolProg 64 :=
.seq AllocBody305_282 AllocBody305_285

def AllocBody305_287 : StackLang.HolProg 64 :=
.seq AllocBody305_281 AllocBody305_286

def AllocBody305_288 : StackLang.HolProg 64 :=
.seq AllocBody305_280 AllocBody305_287

def AllocBody305_289 : StackLang.HolProg 64 :=
.seq AllocBody305_279 AllocBody305_288

def AllocBody305_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody305_291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody305_292 : StackLang.HolProg 64 :=
.seq AllocBody305_290 AllocBody305_291

def AllocBody305_293 : StackLang.HolProg 64 :=
.call (some (AllocBody305_289, 0, 305, 10)) (Sum.inl 68) (some (AllocBody305_292, 305, 11))

def AllocBody305_294 : StackLang.HolProg 64 :=
.seq AllocBody305_278 AllocBody305_293

def AllocBody305_295 : StackLang.HolProg 64 :=
.seq AllocBody305_277 AllocBody305_294

def AllocBody305_296 : StackLang.HolProg 64 :=
.seq AllocBody305_276 AllocBody305_295

def AllocBody305_297 : StackLang.HolProg 64 :=
.seq AllocBody305_257 AllocBody305_296

def AllocBody305_298 : StackLang.HolProg 64 :=
.seq AllocBody305_254 AllocBody305_297

def AllocBody305_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody305_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody305_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody305_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 844#64)

def AllocBody305_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_306 : StackLang.HolProg 64 :=
.seq AllocBody305_304 AllocBody305_305

def AllocBody305_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody305_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody305_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody305_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 13

def AllocBody305_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody305_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody305_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody305_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody305_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_317 : StackLang.HolProg 64 :=
.seq AllocBody305_315 AllocBody305_316

def AllocBody305_318 : StackLang.HolProg 64 :=
.seq AllocBody305_314 AllocBody305_317

def AllocBody305_319 : StackLang.HolProg 64 :=
.seq AllocBody305_313 AllocBody305_318

def AllocBody305_320 : StackLang.HolProg 64 :=
.seq AllocBody305_312 AllocBody305_319

def AllocBody305_321 : StackLang.HolProg 64 :=
.seq AllocBody305_311 AllocBody305_320

def AllocBody305_322 : StackLang.HolProg 64 :=
.seq AllocBody305_310 AllocBody305_321

def AllocBody305_323 : StackLang.HolProg 64 :=
.seq AllocBody305_309 AllocBody305_322

def AllocBody305_324 : StackLang.HolProg 64 :=
.seq AllocBody305_308 AllocBody305_323

def AllocBody305_325 : StackLang.HolProg 64 :=
.seq AllocBody305_307 AllocBody305_324

def AllocBody305_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody305_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody305_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody305_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody305_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody305_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody305_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody305_335 : StackLang.HolProg 64 :=
.seq AllocBody305_333 AllocBody305_334

def AllocBody305_336 : StackLang.HolProg 64 :=
.seq AllocBody305_332 AllocBody305_335

def AllocBody305_337 : StackLang.HolProg 64 :=
.seq AllocBody305_331 AllocBody305_336

def AllocBody305_338 : StackLang.HolProg 64 :=
.seq AllocBody305_330 AllocBody305_337

def AllocBody305_339 : StackLang.HolProg 64 :=
.seq AllocBody305_329 AllocBody305_338

def AllocBody305_340 : StackLang.HolProg 64 :=
.seq AllocBody305_328 AllocBody305_339

def AllocBody305_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody305_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody305_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody305_344 : StackLang.HolProg 64 :=
.seq AllocBody305_342 AllocBody305_343

def AllocBody305_345 : StackLang.HolProg 64 :=
.seq AllocBody305_341 AllocBody305_344

def AllocBody305_346 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody305_347 : StackLang.HolProg 64 :=
.seq AllocBody305_345 AllocBody305_346

def AllocBody305_348 : StackLang.HolProg 64 :=
.call (some (AllocBody305_340, 0, 305, 12)) (Sum.inl 77) (some (AllocBody305_347, 305, 13))

def AllocBody305_349 : StackLang.HolProg 64 :=
.seq AllocBody305_327 AllocBody305_348

def AllocBody305_350 : StackLang.HolProg 64 :=
.seq AllocBody305_326 AllocBody305_349

def AllocBody305_351 : StackLang.HolProg 64 :=
.seq AllocBody305_325 AllocBody305_350

def AllocBody305_352 : StackLang.HolProg 64 :=
.seq AllocBody305_306 AllocBody305_351

def AllocBody305_353 : StackLang.HolProg 64 :=
.seq AllocBody305_303 AllocBody305_352

def AllocBody305_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody305_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody305_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody305_360 : StackLang.HolProg 64 :=
.seq AllocBody305_358 AllocBody305_359

def AllocBody305_361 : StackLang.HolProg 64 :=
.seq AllocBody305_357 AllocBody305_360

def AllocBody305_362 : StackLang.HolProg 64 :=
.seq AllocBody305_356 AllocBody305_361

def AllocBody305_363 : StackLang.HolProg 64 :=
.seq AllocBody305_355 AllocBody305_362

def AllocBody305_364 : StackLang.HolProg 64 :=
.seq AllocBody305_354 AllocBody305_363

def AllocBody305_365 : StackLang.HolProg 64 :=
.seq AllocBody305_353 AllocBody305_364

def AllocBody305_366 : StackLang.HolProg 64 :=
.seq AllocBody305_302 AllocBody305_365

def AllocBody305_367 : StackLang.HolProg 64 :=
.seq AllocBody305_301 AllocBody305_366

def AllocBody305_368 : StackLang.HolProg 64 :=
.seq AllocBody305_300 AllocBody305_367

def AllocBody305_369 : StackLang.HolProg 64 :=
.seq AllocBody305_299 AllocBody305_368

def AllocBody305_370 : StackLang.HolProg 64 :=
.seq AllocBody305_298 AllocBody305_369

def AllocBody305_371 : StackLang.HolProg 64 :=
.seq AllocBody305_253 AllocBody305_370

def AllocBody305_372 : StackLang.HolProg 64 :=
.seq AllocBody305_252 AllocBody305_371

def AllocBody305_373 : StackLang.HolProg 64 :=
.seq AllocBody305_251 AllocBody305_372

def AllocBody305_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody305_376 : StackLang.HolProg 64 :=
.seq AllocBody305_374 AllocBody305_375

def AllocBody305_377 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody305_373 AllocBody305_376

def AllocBody305_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody305_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody305_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody305_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody305_382 : StackLang.HolProg 64 :=
.seq AllocBody305_380 AllocBody305_381

def AllocBody305_383 : StackLang.HolProg 64 :=
.seq AllocBody305_379 AllocBody305_382

def AllocBody305_384 : StackLang.HolProg 64 :=
.seq AllocBody305_378 AllocBody305_383

def AllocBody305_385 : StackLang.HolProg 64 :=
.seq AllocBody305_377 AllocBody305_384

def AllocBody305_386 : StackLang.HolProg 64 :=
.seq AllocBody305_250 AllocBody305_385

def AllocBody305_387 : StackLang.HolProg 64 :=
.seq AllocBody305_249 AllocBody305_386

def AllocBody305_388 : StackLang.HolProg 64 :=
.seq AllocBody305_248 AllocBody305_387

def AllocBody305_389 : StackLang.HolProg 64 :=
.seq AllocBody305_247 AllocBody305_388

def AllocBody305_390 : StackLang.HolProg 64 :=
.seq AllocBody305_204 AllocBody305_389

def AllocBody305_391 : StackLang.HolProg 64 :=
.seq AllocBody305_203 AllocBody305_390

def AllocBody305_392 : StackLang.HolProg 64 :=
.seq AllocBody305_202 AllocBody305_391

def AllocBody305_393 : StackLang.HolProg 64 :=
.seq AllocBody305_135 AllocBody305_392

def AllocBody305_394 : StackLang.HolProg 64 :=
.seq AllocBody305_134 AllocBody305_393

def AllocBody305_395 : StackLang.HolProg 64 :=
.seq AllocBody305_133 AllocBody305_394

def AllocBody305_396 : StackLang.HolProg 64 :=
.seq AllocBody305_132 AllocBody305_395

def AllocBody305_397 : StackLang.HolProg 64 :=
.seq AllocBody305_89 AllocBody305_396

def AllocBody305_398 : StackLang.HolProg 64 :=
.seq AllocBody305_82 AllocBody305_397

def AllocBody305_399 : StackLang.HolProg 64 :=
.seq AllocBody305_81 AllocBody305_398

def AllocBody305_400 : StackLang.HolProg 64 :=
.seq AllocBody305_80 AllocBody305_399

def AllocBody305_401 : StackLang.HolProg 64 :=
.seq AllocBody305_69 AllocBody305_400

def AllocBody305_402 : StackLang.HolProg 64 :=
.seq AllocBody305_68 AllocBody305_401

def AllocBody305_403 : StackLang.HolProg 64 :=
.seq AllocBody305_67 AllocBody305_402

def AllocBody305_404 : StackLang.HolProg 64 :=
.seq AllocBody305_66 AllocBody305_403

def AllocBody305_405 : StackLang.HolProg 64 :=
.seq AllocBody305_13 AllocBody305_404

def AllocBody305_406 : StackLang.HolProg 64 :=
.seq AllocBody305_8 AllocBody305_405

def AllocBody305_407 : StackLang.HolProg 64 :=
.seq AllocBody305_7 AllocBody305_406

def AllocBody305_408 : StackLang.HolProg 64 :=
.seq AllocBody305_6 AllocBody305_407

def AllocBody305_409 : StackLang.HolProg 64 :=
.seq AllocBody305_5 AllocBody305_408

def AllocBody305_410 : StackLang.HolProg 64 :=
.seq AllocBody305_4 AllocBody305_409

def AllocBody305_411 : StackLang.HolProg 64 :=
.seq AllocBody305_3 AllocBody305_410

def AllocBody305_412 : StackLang.HolProg 64 :=
.seq AllocBody305_0 AllocBody305_411

def Alloc305 : Nat × StackLang.HolProg 64 := (305, AllocBody305_412)
theorem Alloc305_eq : StackAlloc.progComp (305, raw305) = Alloc305 := by
  kernel_rfl
#print axioms Alloc305_eq
end InitECandidate.Proofs.BackendStages
