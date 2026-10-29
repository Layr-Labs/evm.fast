import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw703
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody703_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody703_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody703_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody703_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody703_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody703_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody703_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 96#64))

def AllocBody703_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def AllocBody703_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody703_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody703_13 : StackLang.HolProg 64 :=
.seq AllocBody703_11 AllocBody703_12

def AllocBody703_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3146#64)

def AllocBody703_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_17 : StackLang.HolProg 64 :=
.seq AllocBody703_15 AllocBody703_16

def AllocBody703_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody703_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody703_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 3

def AllocBody703_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody703_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody703_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody703_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody703_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_28 : StackLang.HolProg 64 :=
.seq AllocBody703_26 AllocBody703_27

def AllocBody703_29 : StackLang.HolProg 64 :=
.seq AllocBody703_25 AllocBody703_28

def AllocBody703_30 : StackLang.HolProg 64 :=
.seq AllocBody703_24 AllocBody703_29

def AllocBody703_31 : StackLang.HolProg 64 :=
.seq AllocBody703_23 AllocBody703_30

def AllocBody703_32 : StackLang.HolProg 64 :=
.seq AllocBody703_22 AllocBody703_31

def AllocBody703_33 : StackLang.HolProg 64 :=
.seq AllocBody703_21 AllocBody703_32

def AllocBody703_34 : StackLang.HolProg 64 :=
.seq AllocBody703_20 AllocBody703_33

def AllocBody703_35 : StackLang.HolProg 64 :=
.seq AllocBody703_19 AllocBody703_34

def AllocBody703_36 : StackLang.HolProg 64 :=
.seq AllocBody703_18 AllocBody703_35

def AllocBody703_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody703_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody703_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody703_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody703_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody703_45 : StackLang.HolProg 64 :=
.seq AllocBody703_43 AllocBody703_44

def AllocBody703_46 : StackLang.HolProg 64 :=
.seq AllocBody703_42 AllocBody703_45

def AllocBody703_47 : StackLang.HolProg 64 :=
.seq AllocBody703_41 AllocBody703_46

def AllocBody703_48 : StackLang.HolProg 64 :=
.seq AllocBody703_40 AllocBody703_47

def AllocBody703_49 : StackLang.HolProg 64 :=
.seq AllocBody703_39 AllocBody703_48

def AllocBody703_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody703_52 : StackLang.HolProg 64 :=
.seq AllocBody703_50 AllocBody703_51

def AllocBody703_53 : StackLang.HolProg 64 :=
.call (some (AllocBody703_49, 0, 703, 2)) (Sum.inl 94) (some (AllocBody703_52, 703, 3))

def AllocBody703_54 : StackLang.HolProg 64 :=
.seq AllocBody703_38 AllocBody703_53

def AllocBody703_55 : StackLang.HolProg 64 :=
.seq AllocBody703_37 AllocBody703_54

def AllocBody703_56 : StackLang.HolProg 64 :=
.seq AllocBody703_36 AllocBody703_55

def AllocBody703_57 : StackLang.HolProg 64 :=
.seq AllocBody703_17 AllocBody703_56

def AllocBody703_58 : StackLang.HolProg 64 :=
.seq AllocBody703_14 AllocBody703_57

def AllocBody703_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 34000#64)

def AllocBody703_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody703_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody703_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 45000#64)

def AllocBody703_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody703_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody703_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody703_69 : StackLang.HolProg 64 :=
.seq AllocBody703_67 AllocBody703_68

def AllocBody703_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3147#64)

def AllocBody703_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_73 : StackLang.HolProg 64 :=
.seq AllocBody703_71 AllocBody703_72

def AllocBody703_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody703_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody703_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 5

def AllocBody703_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody703_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody703_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody703_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody703_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_84 : StackLang.HolProg 64 :=
.seq AllocBody703_82 AllocBody703_83

def AllocBody703_85 : StackLang.HolProg 64 :=
.seq AllocBody703_81 AllocBody703_84

def AllocBody703_86 : StackLang.HolProg 64 :=
.seq AllocBody703_80 AllocBody703_85

def AllocBody703_87 : StackLang.HolProg 64 :=
.seq AllocBody703_79 AllocBody703_86

def AllocBody703_88 : StackLang.HolProg 64 :=
.seq AllocBody703_78 AllocBody703_87

def AllocBody703_89 : StackLang.HolProg 64 :=
.seq AllocBody703_77 AllocBody703_88

def AllocBody703_90 : StackLang.HolProg 64 :=
.seq AllocBody703_76 AllocBody703_89

def AllocBody703_91 : StackLang.HolProg 64 :=
.seq AllocBody703_75 AllocBody703_90

def AllocBody703_92 : StackLang.HolProg 64 :=
.seq AllocBody703_74 AllocBody703_91

def AllocBody703_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody703_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody703_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody703_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody703_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody703_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody703_102 : StackLang.HolProg 64 :=
.seq AllocBody703_100 AllocBody703_101

def AllocBody703_103 : StackLang.HolProg 64 :=
.seq AllocBody703_99 AllocBody703_102

def AllocBody703_104 : StackLang.HolProg 64 :=
.seq AllocBody703_98 AllocBody703_103

def AllocBody703_105 : StackLang.HolProg 64 :=
.seq AllocBody703_97 AllocBody703_104

def AllocBody703_106 : StackLang.HolProg 64 :=
.seq AllocBody703_96 AllocBody703_105

def AllocBody703_107 : StackLang.HolProg 64 :=
.seq AllocBody703_95 AllocBody703_106

def AllocBody703_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody703_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody703_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody703_111 : StackLang.HolProg 64 :=
.seq AllocBody703_109 AllocBody703_110

def AllocBody703_112 : StackLang.HolProg 64 :=
.seq AllocBody703_108 AllocBody703_111

def AllocBody703_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody703_114 : StackLang.HolProg 64 :=
.seq AllocBody703_112 AllocBody703_113

def AllocBody703_115 : StackLang.HolProg 64 :=
.call (some (AllocBody703_107, 0, 703, 4)) (Sum.inl 470) (some (AllocBody703_114, 703, 5))

def AllocBody703_116 : StackLang.HolProg 64 :=
.seq AllocBody703_94 AllocBody703_115

def AllocBody703_117 : StackLang.HolProg 64 :=
.seq AllocBody703_93 AllocBody703_116

def AllocBody703_118 : StackLang.HolProg 64 :=
.seq AllocBody703_92 AllocBody703_117

def AllocBody703_119 : StackLang.HolProg 64 :=
.seq AllocBody703_73 AllocBody703_118

def AllocBody703_120 : StackLang.HolProg 64 :=
.seq AllocBody703_70 AllocBody703_119

def AllocBody703_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody703_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody703_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody703_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody703_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_130 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody703_131 : StackLang.HolProg 64 :=
.seq AllocBody703_129 AllocBody703_130

def AllocBody703_132 : StackLang.HolProg 64 :=
.seq AllocBody703_128 AllocBody703_131

def AllocBody703_133 : StackLang.HolProg 64 :=
.seq AllocBody703_127 AllocBody703_132

def AllocBody703_134 : StackLang.HolProg 64 :=
.seq AllocBody703_126 AllocBody703_133

def AllocBody703_135 : StackLang.HolProg 64 :=
.seq AllocBody703_125 AllocBody703_134

def AllocBody703_136 : StackLang.HolProg 64 :=
.seq AllocBody703_124 AllocBody703_135

def AllocBody703_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody703_136 AllocBody703_137

def AllocBody703_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody703_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3148#64)

def AllocBody703_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_147 : StackLang.HolProg 64 :=
.seq AllocBody703_145 AllocBody703_146

def AllocBody703_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody703_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody703_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 7

def AllocBody703_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody703_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody703_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody703_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody703_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_158 : StackLang.HolProg 64 :=
.seq AllocBody703_156 AllocBody703_157

def AllocBody703_159 : StackLang.HolProg 64 :=
.seq AllocBody703_155 AllocBody703_158

def AllocBody703_160 : StackLang.HolProg 64 :=
.seq AllocBody703_154 AllocBody703_159

def AllocBody703_161 : StackLang.HolProg 64 :=
.seq AllocBody703_153 AllocBody703_160

def AllocBody703_162 : StackLang.HolProg 64 :=
.seq AllocBody703_152 AllocBody703_161

def AllocBody703_163 : StackLang.HolProg 64 :=
.seq AllocBody703_151 AllocBody703_162

def AllocBody703_164 : StackLang.HolProg 64 :=
.seq AllocBody703_150 AllocBody703_163

def AllocBody703_165 : StackLang.HolProg 64 :=
.seq AllocBody703_149 AllocBody703_164

def AllocBody703_166 : StackLang.HolProg 64 :=
.seq AllocBody703_148 AllocBody703_165

def AllocBody703_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody703_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody703_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody703_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody703_174 : StackLang.HolProg 64 :=
.seq AllocBody703_172 AllocBody703_173

def AllocBody703_175 : StackLang.HolProg 64 :=
.seq AllocBody703_171 AllocBody703_174

def AllocBody703_176 : StackLang.HolProg 64 :=
.seq AllocBody703_170 AllocBody703_175

def AllocBody703_177 : StackLang.HolProg 64 :=
.seq AllocBody703_169 AllocBody703_176

def AllocBody703_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody703_180 : StackLang.HolProg 64 :=
.seq AllocBody703_178 AllocBody703_179

def AllocBody703_181 : StackLang.HolProg 64 :=
.call (some (AllocBody703_177, 0, 703, 6)) (Sum.inl 700) (some (AllocBody703_180, 703, 7))

def AllocBody703_182 : StackLang.HolProg 64 :=
.seq AllocBody703_168 AllocBody703_181

def AllocBody703_183 : StackLang.HolProg 64 :=
.seq AllocBody703_167 AllocBody703_182

def AllocBody703_184 : StackLang.HolProg 64 :=
.seq AllocBody703_166 AllocBody703_183

def AllocBody703_185 : StackLang.HolProg 64 :=
.seq AllocBody703_147 AllocBody703_184

def AllocBody703_186 : StackLang.HolProg 64 :=
.seq AllocBody703_144 AllocBody703_185

def AllocBody703_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody703_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody703_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody703_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody703_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody703_197 : StackLang.HolProg 64 :=
.seq AllocBody703_195 AllocBody703_196

def AllocBody703_198 : StackLang.HolProg 64 :=
.seq AllocBody703_194 AllocBody703_197

def AllocBody703_199 : StackLang.HolProg 64 :=
.seq AllocBody703_193 AllocBody703_198

def AllocBody703_200 : StackLang.HolProg 64 :=
.seq AllocBody703_192 AllocBody703_199

def AllocBody703_201 : StackLang.HolProg 64 :=
.seq AllocBody703_191 AllocBody703_200

def AllocBody703_202 : StackLang.HolProg 64 :=
.seq AllocBody703_190 AllocBody703_201

def AllocBody703_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody703_202 AllocBody703_203

def AllocBody703_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody703_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody703_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3149#64)

def AllocBody703_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_212 : StackLang.HolProg 64 :=
.seq AllocBody703_210 AllocBody703_211

def AllocBody703_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody703_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody703_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 9

def AllocBody703_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody703_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody703_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody703_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody703_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_223 : StackLang.HolProg 64 :=
.seq AllocBody703_221 AllocBody703_222

def AllocBody703_224 : StackLang.HolProg 64 :=
.seq AllocBody703_220 AllocBody703_223

def AllocBody703_225 : StackLang.HolProg 64 :=
.seq AllocBody703_219 AllocBody703_224

def AllocBody703_226 : StackLang.HolProg 64 :=
.seq AllocBody703_218 AllocBody703_225

def AllocBody703_227 : StackLang.HolProg 64 :=
.seq AllocBody703_217 AllocBody703_226

def AllocBody703_228 : StackLang.HolProg 64 :=
.seq AllocBody703_216 AllocBody703_227

def AllocBody703_229 : StackLang.HolProg 64 :=
.seq AllocBody703_215 AllocBody703_228

def AllocBody703_230 : StackLang.HolProg 64 :=
.seq AllocBody703_214 AllocBody703_229

def AllocBody703_231 : StackLang.HolProg 64 :=
.seq AllocBody703_213 AllocBody703_230

def AllocBody703_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody703_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody703_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody703_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody703_239 : StackLang.HolProg 64 :=
.seq AllocBody703_237 AllocBody703_238

def AllocBody703_240 : StackLang.HolProg 64 :=
.seq AllocBody703_236 AllocBody703_239

def AllocBody703_241 : StackLang.HolProg 64 :=
.seq AllocBody703_235 AllocBody703_240

def AllocBody703_242 : StackLang.HolProg 64 :=
.seq AllocBody703_234 AllocBody703_241

def AllocBody703_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody703_245 : StackLang.HolProg 64 :=
.seq AllocBody703_243 AllocBody703_244

def AllocBody703_246 : StackLang.HolProg 64 :=
.call (some (AllocBody703_242, 0, 703, 8)) (Sum.inl 68) (some (AllocBody703_245, 703, 9))

def AllocBody703_247 : StackLang.HolProg 64 :=
.seq AllocBody703_233 AllocBody703_246

def AllocBody703_248 : StackLang.HolProg 64 :=
.seq AllocBody703_232 AllocBody703_247

def AllocBody703_249 : StackLang.HolProg 64 :=
.seq AllocBody703_231 AllocBody703_248

def AllocBody703_250 : StackLang.HolProg 64 :=
.seq AllocBody703_212 AllocBody703_249

def AllocBody703_251 : StackLang.HolProg 64 :=
.seq AllocBody703_209 AllocBody703_250

def AllocBody703_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody703_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody703_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody703_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3150#64)

def AllocBody703_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_259 : StackLang.HolProg 64 :=
.seq AllocBody703_257 AllocBody703_258

def AllocBody703_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody703_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody703_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody703_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 703 11

def AllocBody703_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody703_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody703_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody703_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody703_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_270 : StackLang.HolProg 64 :=
.seq AllocBody703_268 AllocBody703_269

def AllocBody703_271 : StackLang.HolProg 64 :=
.seq AllocBody703_267 AllocBody703_270

def AllocBody703_272 : StackLang.HolProg 64 :=
.seq AllocBody703_266 AllocBody703_271

def AllocBody703_273 : StackLang.HolProg 64 :=
.seq AllocBody703_265 AllocBody703_272

def AllocBody703_274 : StackLang.HolProg 64 :=
.seq AllocBody703_264 AllocBody703_273

def AllocBody703_275 : StackLang.HolProg 64 :=
.seq AllocBody703_263 AllocBody703_274

def AllocBody703_276 : StackLang.HolProg 64 :=
.seq AllocBody703_262 AllocBody703_275

def AllocBody703_277 : StackLang.HolProg 64 :=
.seq AllocBody703_261 AllocBody703_276

def AllocBody703_278 : StackLang.HolProg 64 :=
.seq AllocBody703_260 AllocBody703_277

def AllocBody703_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody703_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody703_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody703_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody703_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody703_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody703_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody703_288 : StackLang.HolProg 64 :=
.seq AllocBody703_286 AllocBody703_287

def AllocBody703_289 : StackLang.HolProg 64 :=
.seq AllocBody703_285 AllocBody703_288

def AllocBody703_290 : StackLang.HolProg 64 :=
.seq AllocBody703_284 AllocBody703_289

def AllocBody703_291 : StackLang.HolProg 64 :=
.seq AllocBody703_283 AllocBody703_290

def AllocBody703_292 : StackLang.HolProg 64 :=
.seq AllocBody703_282 AllocBody703_291

def AllocBody703_293 : StackLang.HolProg 64 :=
.seq AllocBody703_281 AllocBody703_292

def AllocBody703_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody703_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody703_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody703_297 : StackLang.HolProg 64 :=
.seq AllocBody703_295 AllocBody703_296

def AllocBody703_298 : StackLang.HolProg 64 :=
.seq AllocBody703_294 AllocBody703_297

def AllocBody703_299 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody703_300 : StackLang.HolProg 64 :=
.seq AllocBody703_298 AllocBody703_299

def AllocBody703_301 : StackLang.HolProg 64 :=
.call (some (AllocBody703_293, 0, 703, 10)) (Sum.inl 78) (some (AllocBody703_300, 703, 11))

def AllocBody703_302 : StackLang.HolProg 64 :=
.seq AllocBody703_280 AllocBody703_301

def AllocBody703_303 : StackLang.HolProg 64 :=
.seq AllocBody703_279 AllocBody703_302

def AllocBody703_304 : StackLang.HolProg 64 :=
.seq AllocBody703_278 AllocBody703_303

def AllocBody703_305 : StackLang.HolProg 64 :=
.seq AllocBody703_259 AllocBody703_304

def AllocBody703_306 : StackLang.HolProg 64 :=
.seq AllocBody703_256 AllocBody703_305

def AllocBody703_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody703_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def AllocBody703_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody703_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody703_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody703_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody703_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody703_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody703_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody703_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody703_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody703_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody703_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody703_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody703_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody703_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody703_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody703_329 : StackLang.HolProg 64 :=
.seq AllocBody703_327 AllocBody703_328

def AllocBody703_330 : StackLang.HolProg 64 :=
.seq AllocBody703_326 AllocBody703_329

def AllocBody703_331 : StackLang.HolProg 64 :=
.seq AllocBody703_325 AllocBody703_330

def AllocBody703_332 : StackLang.HolProg 64 :=
.seq AllocBody703_324 AllocBody703_331

def AllocBody703_333 : StackLang.HolProg 64 :=
.seq AllocBody703_323 AllocBody703_332

def AllocBody703_334 : StackLang.HolProg 64 :=
.seq AllocBody703_322 AllocBody703_333

def AllocBody703_335 : StackLang.HolProg 64 :=
.seq AllocBody703_321 AllocBody703_334

def AllocBody703_336 : StackLang.HolProg 64 :=
.seq AllocBody703_320 AllocBody703_335

def AllocBody703_337 : StackLang.HolProg 64 :=
.seq AllocBody703_319 AllocBody703_336

def AllocBody703_338 : StackLang.HolProg 64 :=
.seq AllocBody703_318 AllocBody703_337

def AllocBody703_339 : StackLang.HolProg 64 :=
.seq AllocBody703_317 AllocBody703_338

def AllocBody703_340 : StackLang.HolProg 64 :=
.seq AllocBody703_316 AllocBody703_339

def AllocBody703_341 : StackLang.HolProg 64 :=
.seq AllocBody703_315 AllocBody703_340

def AllocBody703_342 : StackLang.HolProg 64 :=
.seq AllocBody703_314 AllocBody703_341

def AllocBody703_343 : StackLang.HolProg 64 :=
.seq AllocBody703_313 AllocBody703_342

def AllocBody703_344 : StackLang.HolProg 64 :=
.seq AllocBody703_312 AllocBody703_343

def AllocBody703_345 : StackLang.HolProg 64 :=
.seq AllocBody703_311 AllocBody703_344

def AllocBody703_346 : StackLang.HolProg 64 :=
.seq AllocBody703_310 AllocBody703_345

def AllocBody703_347 : StackLang.HolProg 64 :=
.seq AllocBody703_309 AllocBody703_346

def AllocBody703_348 : StackLang.HolProg 64 :=
.seq AllocBody703_308 AllocBody703_347

def AllocBody703_349 : StackLang.HolProg 64 :=
.seq AllocBody703_307 AllocBody703_348

def AllocBody703_350 : StackLang.HolProg 64 :=
.seq AllocBody703_306 AllocBody703_349

def AllocBody703_351 : StackLang.HolProg 64 :=
.seq AllocBody703_255 AllocBody703_350

def AllocBody703_352 : StackLang.HolProg 64 :=
.seq AllocBody703_254 AllocBody703_351

def AllocBody703_353 : StackLang.HolProg 64 :=
.seq AllocBody703_253 AllocBody703_352

def AllocBody703_354 : StackLang.HolProg 64 :=
.seq AllocBody703_252 AllocBody703_353

def AllocBody703_355 : StackLang.HolProg 64 :=
.seq AllocBody703_251 AllocBody703_354

def AllocBody703_356 : StackLang.HolProg 64 :=
.seq AllocBody703_208 AllocBody703_355

def AllocBody703_357 : StackLang.HolProg 64 :=
.seq AllocBody703_207 AllocBody703_356

def AllocBody703_358 : StackLang.HolProg 64 :=
.seq AllocBody703_206 AllocBody703_357

def AllocBody703_359 : StackLang.HolProg 64 :=
.seq AllocBody703_205 AllocBody703_358

def AllocBody703_360 : StackLang.HolProg 64 :=
.seq AllocBody703_204 AllocBody703_359

def AllocBody703_361 : StackLang.HolProg 64 :=
.seq AllocBody703_189 AllocBody703_360

def AllocBody703_362 : StackLang.HolProg 64 :=
.seq AllocBody703_188 AllocBody703_361

def AllocBody703_363 : StackLang.HolProg 64 :=
.seq AllocBody703_187 AllocBody703_362

def AllocBody703_364 : StackLang.HolProg 64 :=
.seq AllocBody703_186 AllocBody703_363

def AllocBody703_365 : StackLang.HolProg 64 :=
.seq AllocBody703_143 AllocBody703_364

def AllocBody703_366 : StackLang.HolProg 64 :=
.seq AllocBody703_142 AllocBody703_365

def AllocBody703_367 : StackLang.HolProg 64 :=
.seq AllocBody703_141 AllocBody703_366

def AllocBody703_368 : StackLang.HolProg 64 :=
.seq AllocBody703_140 AllocBody703_367

def AllocBody703_369 : StackLang.HolProg 64 :=
.seq AllocBody703_139 AllocBody703_368

def AllocBody703_370 : StackLang.HolProg 64 :=
.seq AllocBody703_138 AllocBody703_369

def AllocBody703_371 : StackLang.HolProg 64 :=
.seq AllocBody703_123 AllocBody703_370

def AllocBody703_372 : StackLang.HolProg 64 :=
.seq AllocBody703_122 AllocBody703_371

def AllocBody703_373 : StackLang.HolProg 64 :=
.seq AllocBody703_121 AllocBody703_372

def AllocBody703_374 : StackLang.HolProg 64 :=
.seq AllocBody703_120 AllocBody703_373

def AllocBody703_375 : StackLang.HolProg 64 :=
.seq AllocBody703_69 AllocBody703_374

def AllocBody703_376 : StackLang.HolProg 64 :=
.seq AllocBody703_66 AllocBody703_375

def AllocBody703_377 : StackLang.HolProg 64 :=
.seq AllocBody703_65 AllocBody703_376

def AllocBody703_378 : StackLang.HolProg 64 :=
.seq AllocBody703_64 AllocBody703_377

def AllocBody703_379 : StackLang.HolProg 64 :=
.seq AllocBody703_63 AllocBody703_378

def AllocBody703_380 : StackLang.HolProg 64 :=
.seq AllocBody703_62 AllocBody703_379

def AllocBody703_381 : StackLang.HolProg 64 :=
.seq AllocBody703_61 AllocBody703_380

def AllocBody703_382 : StackLang.HolProg 64 :=
.seq AllocBody703_60 AllocBody703_381

def AllocBody703_383 : StackLang.HolProg 64 :=
.seq AllocBody703_59 AllocBody703_382

def AllocBody703_384 : StackLang.HolProg 64 :=
.seq AllocBody703_58 AllocBody703_383

def AllocBody703_385 : StackLang.HolProg 64 :=
.seq AllocBody703_13 AllocBody703_384

def AllocBody703_386 : StackLang.HolProg 64 :=
.seq AllocBody703_10 AllocBody703_385

def AllocBody703_387 : StackLang.HolProg 64 :=
.seq AllocBody703_9 AllocBody703_386

def AllocBody703_388 : StackLang.HolProg 64 :=
.seq AllocBody703_8 AllocBody703_387

def AllocBody703_389 : StackLang.HolProg 64 :=
.seq AllocBody703_7 AllocBody703_388

def AllocBody703_390 : StackLang.HolProg 64 :=
.seq AllocBody703_6 AllocBody703_389

def AllocBody703_391 : StackLang.HolProg 64 :=
.seq AllocBody703_5 AllocBody703_390

def AllocBody703_392 : StackLang.HolProg 64 :=
.seq AllocBody703_4 AllocBody703_391

def AllocBody703_393 : StackLang.HolProg 64 :=
.seq AllocBody703_3 AllocBody703_392

def AllocBody703_394 : StackLang.HolProg 64 :=
.seq AllocBody703_2 AllocBody703_393

def AllocBody703_395 : StackLang.HolProg 64 :=
.seq AllocBody703_1 AllocBody703_394

def AllocBody703_396 : StackLang.HolProg 64 :=
.seq AllocBody703_0 AllocBody703_395

def Alloc703 : Nat × StackLang.HolProg 64 := (703, AllocBody703_396)
theorem Alloc703_eq : StackAlloc.progComp (703, raw703) = Alloc703 := by
  kernel_rfl
#print axioms Alloc703_eq
end InitECandidate.Proofs.BackendStages
