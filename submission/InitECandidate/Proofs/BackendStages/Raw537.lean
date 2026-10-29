import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function537
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody537_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody537_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody537_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody537_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody537_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody537_5 : StackLang.HolProg 64 :=
.seq rawBody537_3 rawBody537_4

def rawBody537_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1784#64)

def rawBody537_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody537_9 : StackLang.HolProg 64 :=
.seq rawBody537_7 rawBody537_8

def rawBody537_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody537_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody537_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody537_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 3

def rawBody537_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody537_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody537_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody537_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody537_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody537_20 : StackLang.HolProg 64 :=
.seq rawBody537_18 rawBody537_19

def rawBody537_21 : StackLang.HolProg 64 :=
.seq rawBody537_17 rawBody537_20

def rawBody537_22 : StackLang.HolProg 64 :=
.seq rawBody537_16 rawBody537_21

def rawBody537_23 : StackLang.HolProg 64 :=
.seq rawBody537_15 rawBody537_22

def rawBody537_24 : StackLang.HolProg 64 :=
.seq rawBody537_14 rawBody537_23

def rawBody537_25 : StackLang.HolProg 64 :=
.seq rawBody537_13 rawBody537_24

def rawBody537_26 : StackLang.HolProg 64 :=
.seq rawBody537_12 rawBody537_25

def rawBody537_27 : StackLang.HolProg 64 :=
.seq rawBody537_11 rawBody537_26

def rawBody537_28 : StackLang.HolProg 64 :=
.seq rawBody537_10 rawBody537_27

def rawBody537_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody537_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody537_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody537_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody537_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody537_36 : StackLang.HolProg 64 :=
.seq rawBody537_34 rawBody537_35

def rawBody537_37 : StackLang.HolProg 64 :=
.seq rawBody537_33 rawBody537_36

def rawBody537_38 : StackLang.HolProg 64 :=
.seq rawBody537_32 rawBody537_37

def rawBody537_39 : StackLang.HolProg 64 :=
.seq rawBody537_31 rawBody537_38

def rawBody537_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody537_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody537_42 : StackLang.HolProg 64 :=
.seq rawBody537_40 rawBody537_41

def rawBody537_43 : StackLang.HolProg 64 :=
.call (some (rawBody537_39, 0, 537, 2)) (Sum.inl 470) (some (rawBody537_42, 537, 3))

def rawBody537_44 : StackLang.HolProg 64 :=
.seq rawBody537_30 rawBody537_43

def rawBody537_45 : StackLang.HolProg 64 :=
.seq rawBody537_29 rawBody537_44

def rawBody537_46 : StackLang.HolProg 64 :=
.seq rawBody537_28 rawBody537_45

def rawBody537_47 : StackLang.HolProg 64 :=
.seq rawBody537_9 rawBody537_46

def rawBody537_48 : StackLang.HolProg 64 :=
.seq rawBody537_6 rawBody537_47

def rawBody537_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody537_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody537_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody537_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody537_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody537_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody537_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody537_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody537_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody537_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody537_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody537_63 : StackLang.HolProg 64 :=
.seq rawBody537_61 rawBody537_62

def rawBody537_64 : StackLang.HolProg 64 :=
.seq rawBody537_60 rawBody537_63

def rawBody537_65 : StackLang.HolProg 64 :=
.seq rawBody537_59 rawBody537_64

def rawBody537_66 : StackLang.HolProg 64 :=
.seq rawBody537_58 rawBody537_65

def rawBody537_67 : StackLang.HolProg 64 :=
.seq rawBody537_57 rawBody537_66

def rawBody537_68 : StackLang.HolProg 64 :=
.seq rawBody537_56 rawBody537_67

def rawBody537_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody537_68 rawBody537_69

def rawBody537_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody537_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody537_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody537_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody537_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody537_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody537_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody537_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody537_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody537_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody537_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody537_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody537_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1785#64)

def rawBody537_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody537_93 : StackLang.HolProg 64 :=
.seq rawBody537_91 rawBody537_92

def rawBody537_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody537_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody537_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody537_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 5

def rawBody537_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody537_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody537_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody537_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody537_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody537_104 : StackLang.HolProg 64 :=
.seq rawBody537_102 rawBody537_103

def rawBody537_105 : StackLang.HolProg 64 :=
.seq rawBody537_101 rawBody537_104

def rawBody537_106 : StackLang.HolProg 64 :=
.seq rawBody537_100 rawBody537_105

def rawBody537_107 : StackLang.HolProg 64 :=
.seq rawBody537_99 rawBody537_106

def rawBody537_108 : StackLang.HolProg 64 :=
.seq rawBody537_98 rawBody537_107

def rawBody537_109 : StackLang.HolProg 64 :=
.seq rawBody537_97 rawBody537_108

def rawBody537_110 : StackLang.HolProg 64 :=
.seq rawBody537_96 rawBody537_109

def rawBody537_111 : StackLang.HolProg 64 :=
.seq rawBody537_95 rawBody537_110

def rawBody537_112 : StackLang.HolProg 64 :=
.seq rawBody537_94 rawBody537_111

def rawBody537_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody537_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody537_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody537_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody537_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_120 : StackLang.HolProg 64 :=
.seq rawBody537_118 rawBody537_119

def rawBody537_121 : StackLang.HolProg 64 :=
.seq rawBody537_117 rawBody537_120

def rawBody537_122 : StackLang.HolProg 64 :=
.seq rawBody537_116 rawBody537_121

def rawBody537_123 : StackLang.HolProg 64 :=
.seq rawBody537_115 rawBody537_122

def rawBody537_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody537_126 : StackLang.HolProg 64 :=
.seq rawBody537_124 rawBody537_125

def rawBody537_127 : StackLang.HolProg 64 :=
.call (some (rawBody537_123, 0, 537, 4)) (Sum.inl 476) (some (rawBody537_126, 537, 5))

def rawBody537_128 : StackLang.HolProg 64 :=
.seq rawBody537_114 rawBody537_127

def rawBody537_129 : StackLang.HolProg 64 :=
.seq rawBody537_113 rawBody537_128

def rawBody537_130 : StackLang.HolProg 64 :=
.seq rawBody537_112 rawBody537_129

def rawBody537_131 : StackLang.HolProg 64 :=
.seq rawBody537_93 rawBody537_130

def rawBody537_132 : StackLang.HolProg 64 :=
.seq rawBody537_90 rawBody537_131

def rawBody537_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody537_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody537_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1786#64)

def rawBody537_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody537_139 : StackLang.HolProg 64 :=
.seq rawBody537_137 rawBody537_138

def rawBody537_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody537_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody537_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody537_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 537 7

def rawBody537_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody537_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody537_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody537_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody537_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody537_150 : StackLang.HolProg 64 :=
.seq rawBody537_148 rawBody537_149

def rawBody537_151 : StackLang.HolProg 64 :=
.seq rawBody537_147 rawBody537_150

def rawBody537_152 : StackLang.HolProg 64 :=
.seq rawBody537_146 rawBody537_151

def rawBody537_153 : StackLang.HolProg 64 :=
.seq rawBody537_145 rawBody537_152

def rawBody537_154 : StackLang.HolProg 64 :=
.seq rawBody537_144 rawBody537_153

def rawBody537_155 : StackLang.HolProg 64 :=
.seq rawBody537_143 rawBody537_154

def rawBody537_156 : StackLang.HolProg 64 :=
.seq rawBody537_142 rawBody537_155

def rawBody537_157 : StackLang.HolProg 64 :=
.seq rawBody537_141 rawBody537_156

def rawBody537_158 : StackLang.HolProg 64 :=
.seq rawBody537_140 rawBody537_157

def rawBody537_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody537_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody537_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody537_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody537_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody537_166 : StackLang.HolProg 64 :=
.seq rawBody537_164 rawBody537_165

def rawBody537_167 : StackLang.HolProg 64 :=
.seq rawBody537_163 rawBody537_166

def rawBody537_168 : StackLang.HolProg 64 :=
.seq rawBody537_162 rawBody537_167

def rawBody537_169 : StackLang.HolProg 64 :=
.seq rawBody537_161 rawBody537_168

def rawBody537_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody537_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody537_172 : StackLang.HolProg 64 :=
.seq rawBody537_170 rawBody537_171

def rawBody537_173 : StackLang.HolProg 64 :=
.call (some (rawBody537_169, 0, 537, 6)) (Sum.inl 490) (some (rawBody537_172, 537, 7))

def rawBody537_174 : StackLang.HolProg 64 :=
.seq rawBody537_160 rawBody537_173

def rawBody537_175 : StackLang.HolProg 64 :=
.seq rawBody537_159 rawBody537_174

def rawBody537_176 : StackLang.HolProg 64 :=
.seq rawBody537_158 rawBody537_175

def rawBody537_177 : StackLang.HolProg 64 :=
.seq rawBody537_139 rawBody537_176

def rawBody537_178 : StackLang.HolProg 64 :=
.seq rawBody537_136 rawBody537_177

def rawBody537_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody537_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody537_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody537_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody537_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody537_184 : StackLang.HolProg 64 :=
.seq rawBody537_182 rawBody537_183

def rawBody537_185 : StackLang.HolProg 64 :=
.seq rawBody537_181 rawBody537_184

def rawBody537_186 : StackLang.HolProg 64 :=
.seq rawBody537_180 rawBody537_185

def rawBody537_187 : StackLang.HolProg 64 :=
.seq rawBody537_179 rawBody537_186

def rawBody537_188 : StackLang.HolProg 64 :=
.seq rawBody537_178 rawBody537_187

def rawBody537_189 : StackLang.HolProg 64 :=
.seq rawBody537_135 rawBody537_188

def rawBody537_190 : StackLang.HolProg 64 :=
.seq rawBody537_134 rawBody537_189

def rawBody537_191 : StackLang.HolProg 64 :=
.seq rawBody537_133 rawBody537_190

def rawBody537_192 : StackLang.HolProg 64 :=
.seq rawBody537_132 rawBody537_191

def rawBody537_193 : StackLang.HolProg 64 :=
.seq rawBody537_89 rawBody537_192

def rawBody537_194 : StackLang.HolProg 64 :=
.seq rawBody537_88 rawBody537_193

def rawBody537_195 : StackLang.HolProg 64 :=
.seq rawBody537_87 rawBody537_194

def rawBody537_196 : StackLang.HolProg 64 :=
.seq rawBody537_86 rawBody537_195

def rawBody537_197 : StackLang.HolProg 64 :=
.seq rawBody537_85 rawBody537_196

def rawBody537_198 : StackLang.HolProg 64 :=
.seq rawBody537_84 rawBody537_197

def rawBody537_199 : StackLang.HolProg 64 :=
.seq rawBody537_83 rawBody537_198

def rawBody537_200 : StackLang.HolProg 64 :=
.seq rawBody537_82 rawBody537_199

def rawBody537_201 : StackLang.HolProg 64 :=
.seq rawBody537_81 rawBody537_200

def rawBody537_202 : StackLang.HolProg 64 :=
.seq rawBody537_80 rawBody537_201

def rawBody537_203 : StackLang.HolProg 64 :=
.seq rawBody537_79 rawBody537_202

def rawBody537_204 : StackLang.HolProg 64 :=
.seq rawBody537_78 rawBody537_203

def rawBody537_205 : StackLang.HolProg 64 :=
.seq rawBody537_77 rawBody537_204

def rawBody537_206 : StackLang.HolProg 64 :=
.seq rawBody537_76 rawBody537_205

def rawBody537_207 : StackLang.HolProg 64 :=
.seq rawBody537_75 rawBody537_206

def rawBody537_208 : StackLang.HolProg 64 :=
.seq rawBody537_74 rawBody537_207

def rawBody537_209 : StackLang.HolProg 64 :=
.seq rawBody537_73 rawBody537_208

def rawBody537_210 : StackLang.HolProg 64 :=
.seq rawBody537_72 rawBody537_209

def rawBody537_211 : StackLang.HolProg 64 :=
.seq rawBody537_71 rawBody537_210

def rawBody537_212 : StackLang.HolProg 64 :=
.seq rawBody537_70 rawBody537_211

def rawBody537_213 : StackLang.HolProg 64 :=
.seq rawBody537_55 rawBody537_212

def rawBody537_214 : StackLang.HolProg 64 :=
.seq rawBody537_54 rawBody537_213

def rawBody537_215 : StackLang.HolProg 64 :=
.seq rawBody537_53 rawBody537_214

def rawBody537_216 : StackLang.HolProg 64 :=
.seq rawBody537_52 rawBody537_215

def rawBody537_217 : StackLang.HolProg 64 :=
.seq rawBody537_51 rawBody537_216

def rawBody537_218 : StackLang.HolProg 64 :=
.seq rawBody537_50 rawBody537_217

def rawBody537_219 : StackLang.HolProg 64 :=
.seq rawBody537_49 rawBody537_218

def rawBody537_220 : StackLang.HolProg 64 :=
.seq rawBody537_48 rawBody537_219

def rawBody537_221 : StackLang.HolProg 64 :=
.seq rawBody537_5 rawBody537_220

def rawBody537_222 : StackLang.HolProg 64 :=
.seq rawBody537_2 rawBody537_221

def rawBody537_223 : StackLang.HolProg 64 :=
.seq rawBody537_1 rawBody537_222

def rawBody537_224 : StackLang.HolProg 64 :=
.seq rawBody537_0 rawBody537_223

def raw537 : StackLang.HolProg 64 := rawBody537_224
theorem raw537_eq : StackRawCall.compTop RawInfo.rawInfo (function537 (.list [])).1 = raw537 := by
  kernel_rfl
#print axioms raw537_eq
end InitECandidate.Proofs.BackendStages
