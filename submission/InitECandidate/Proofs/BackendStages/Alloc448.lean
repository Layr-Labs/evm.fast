import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw448
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody448_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody448_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody448_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody448_3 : StackLang.HolProg 64 :=
.seq AllocBody448_1 AllocBody448_2

def AllocBody448_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody448_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody448_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody448_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def AllocBody448_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody448_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody448_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody448_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody448_12 : StackLang.HolProg 64 :=
.seq AllocBody448_10 AllocBody448_11

def AllocBody448_13 : StackLang.HolProg 64 :=
.seq AllocBody448_9 AllocBody448_12

def AllocBody448_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1349#64)

def AllocBody448_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody448_17 : StackLang.HolProg 64 :=
.seq AllocBody448_15 AllocBody448_16

def AllocBody448_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody448_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody448_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody448_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 448 3

def AllocBody448_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody448_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody448_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody448_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody448_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody448_28 : StackLang.HolProg 64 :=
.seq AllocBody448_26 AllocBody448_27

def AllocBody448_29 : StackLang.HolProg 64 :=
.seq AllocBody448_25 AllocBody448_28

def AllocBody448_30 : StackLang.HolProg 64 :=
.seq AllocBody448_24 AllocBody448_29

def AllocBody448_31 : StackLang.HolProg 64 :=
.seq AllocBody448_23 AllocBody448_30

def AllocBody448_32 : StackLang.HolProg 64 :=
.seq AllocBody448_22 AllocBody448_31

def AllocBody448_33 : StackLang.HolProg 64 :=
.seq AllocBody448_21 AllocBody448_32

def AllocBody448_34 : StackLang.HolProg 64 :=
.seq AllocBody448_20 AllocBody448_33

def AllocBody448_35 : StackLang.HolProg 64 :=
.seq AllocBody448_19 AllocBody448_34

def AllocBody448_36 : StackLang.HolProg 64 :=
.seq AllocBody448_18 AllocBody448_35

def AllocBody448_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody448_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody448_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody448_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody448_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody448_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody448_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody448_46 : StackLang.HolProg 64 :=
.seq AllocBody448_44 AllocBody448_45

def AllocBody448_47 : StackLang.HolProg 64 :=
.seq AllocBody448_43 AllocBody448_46

def AllocBody448_48 : StackLang.HolProg 64 :=
.seq AllocBody448_42 AllocBody448_47

def AllocBody448_49 : StackLang.HolProg 64 :=
.seq AllocBody448_41 AllocBody448_48

def AllocBody448_50 : StackLang.HolProg 64 :=
.seq AllocBody448_40 AllocBody448_49

def AllocBody448_51 : StackLang.HolProg 64 :=
.seq AllocBody448_39 AllocBody448_50

def AllocBody448_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody448_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody448_54 : StackLang.HolProg 64 :=
.seq AllocBody448_52 AllocBody448_53

def AllocBody448_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody448_56 : StackLang.HolProg 64 :=
.seq AllocBody448_54 AllocBody448_55

def AllocBody448_57 : StackLang.HolProg 64 :=
.call (some (AllocBody448_51, 0, 448, 2)) (Sum.inl 409) (some (AllocBody448_56, 448, 3))

def AllocBody448_58 : StackLang.HolProg 64 :=
.seq AllocBody448_38 AllocBody448_57

def AllocBody448_59 : StackLang.HolProg 64 :=
.seq AllocBody448_37 AllocBody448_58

def AllocBody448_60 : StackLang.HolProg 64 :=
.seq AllocBody448_36 AllocBody448_59

def AllocBody448_61 : StackLang.HolProg 64 :=
.seq AllocBody448_17 AllocBody448_60

def AllocBody448_62 : StackLang.HolProg 64 :=
.seq AllocBody448_14 AllocBody448_61

def AllocBody448_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody448_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody448_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody448_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody448_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody448_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody448_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody448_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody448_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody448_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody448_78 : StackLang.HolProg 64 :=
.seq AllocBody448_76 AllocBody448_77

def AllocBody448_79 : StackLang.HolProg 64 :=
.seq AllocBody448_75 AllocBody448_78

def AllocBody448_80 : StackLang.HolProg 64 :=
.seq AllocBody448_74 AllocBody448_79

def AllocBody448_81 : StackLang.HolProg 64 :=
.seq AllocBody448_73 AllocBody448_80

def AllocBody448_82 : StackLang.HolProg 64 :=
.seq AllocBody448_72 AllocBody448_81

def AllocBody448_83 : StackLang.HolProg 64 :=
.seq AllocBody448_71 AllocBody448_82

def AllocBody448_84 : StackLang.HolProg 64 :=
.seq AllocBody448_70 AllocBody448_83

def AllocBody448_85 : StackLang.HolProg 64 :=
.seq AllocBody448_69 AllocBody448_84

def AllocBody448_86 : StackLang.HolProg 64 :=
.seq AllocBody448_68 AllocBody448_85

def AllocBody448_87 : StackLang.HolProg 64 :=
.seq AllocBody448_67 AllocBody448_86

def AllocBody448_88 : StackLang.HolProg 64 :=
.seq AllocBody448_66 AllocBody448_87

def AllocBody448_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_90 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody448_88 AllocBody448_89

def AllocBody448_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody448_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody448_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody448_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody448_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody448_96 : StackLang.HolProg 64 :=
.seq AllocBody448_94 AllocBody448_95

def AllocBody448_97 : StackLang.HolProg 64 :=
.seq AllocBody448_93 AllocBody448_96

def AllocBody448_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1350#64)

def AllocBody448_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody448_101 : StackLang.HolProg 64 :=
.seq AllocBody448_99 AllocBody448_100

def AllocBody448_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody448_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody448_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody448_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 448 5

def AllocBody448_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody448_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody448_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody448_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody448_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody448_112 : StackLang.HolProg 64 :=
.seq AllocBody448_110 AllocBody448_111

def AllocBody448_113 : StackLang.HolProg 64 :=
.seq AllocBody448_109 AllocBody448_112

def AllocBody448_114 : StackLang.HolProg 64 :=
.seq AllocBody448_108 AllocBody448_113

def AllocBody448_115 : StackLang.HolProg 64 :=
.seq AllocBody448_107 AllocBody448_114

def AllocBody448_116 : StackLang.HolProg 64 :=
.seq AllocBody448_106 AllocBody448_115

def AllocBody448_117 : StackLang.HolProg 64 :=
.seq AllocBody448_105 AllocBody448_116

def AllocBody448_118 : StackLang.HolProg 64 :=
.seq AllocBody448_104 AllocBody448_117

def AllocBody448_119 : StackLang.HolProg 64 :=
.seq AllocBody448_103 AllocBody448_118

def AllocBody448_120 : StackLang.HolProg 64 :=
.seq AllocBody448_102 AllocBody448_119

def AllocBody448_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody448_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody448_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody448_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody448_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody448_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody448_129 : StackLang.HolProg 64 :=
.seq AllocBody448_127 AllocBody448_128

def AllocBody448_130 : StackLang.HolProg 64 :=
.seq AllocBody448_126 AllocBody448_129

def AllocBody448_131 : StackLang.HolProg 64 :=
.seq AllocBody448_125 AllocBody448_130

def AllocBody448_132 : StackLang.HolProg 64 :=
.seq AllocBody448_124 AllocBody448_131

def AllocBody448_133 : StackLang.HolProg 64 :=
.seq AllocBody448_123 AllocBody448_132

def AllocBody448_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody448_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody448_136 : StackLang.HolProg 64 :=
.seq AllocBody448_134 AllocBody448_135

def AllocBody448_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody448_138 : StackLang.HolProg 64 :=
.seq AllocBody448_136 AllocBody448_137

def AllocBody448_139 : StackLang.HolProg 64 :=
.call (some (AllocBody448_133, 0, 448, 4)) (Sum.inl 396) (some (AllocBody448_138, 448, 5))

def AllocBody448_140 : StackLang.HolProg 64 :=
.seq AllocBody448_122 AllocBody448_139

def AllocBody448_141 : StackLang.HolProg 64 :=
.seq AllocBody448_121 AllocBody448_140

def AllocBody448_142 : StackLang.HolProg 64 :=
.seq AllocBody448_120 AllocBody448_141

def AllocBody448_143 : StackLang.HolProg 64 :=
.seq AllocBody448_101 AllocBody448_142

def AllocBody448_144 : StackLang.HolProg 64 :=
.seq AllocBody448_98 AllocBody448_143

def AllocBody448_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody448_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody448_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1351#64)

def AllocBody448_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody448_150 : StackLang.HolProg 64 :=
.seq AllocBody448_148 AllocBody448_149

def AllocBody448_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody448_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody448_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody448_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 448 7

def AllocBody448_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody448_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody448_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody448_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody448_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody448_161 : StackLang.HolProg 64 :=
.seq AllocBody448_159 AllocBody448_160

def AllocBody448_162 : StackLang.HolProg 64 :=
.seq AllocBody448_158 AllocBody448_161

def AllocBody448_163 : StackLang.HolProg 64 :=
.seq AllocBody448_157 AllocBody448_162

def AllocBody448_164 : StackLang.HolProg 64 :=
.seq AllocBody448_156 AllocBody448_163

def AllocBody448_165 : StackLang.HolProg 64 :=
.seq AllocBody448_155 AllocBody448_164

def AllocBody448_166 : StackLang.HolProg 64 :=
.seq AllocBody448_154 AllocBody448_165

def AllocBody448_167 : StackLang.HolProg 64 :=
.seq AllocBody448_153 AllocBody448_166

def AllocBody448_168 : StackLang.HolProg 64 :=
.seq AllocBody448_152 AllocBody448_167

def AllocBody448_169 : StackLang.HolProg 64 :=
.seq AllocBody448_151 AllocBody448_168

def AllocBody448_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody448_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody448_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody448_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody448_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody448_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody448_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody448_178 : StackLang.HolProg 64 :=
.seq AllocBody448_176 AllocBody448_177

def AllocBody448_179 : StackLang.HolProg 64 :=
.seq AllocBody448_175 AllocBody448_178

def AllocBody448_180 : StackLang.HolProg 64 :=
.seq AllocBody448_174 AllocBody448_179

def AllocBody448_181 : StackLang.HolProg 64 :=
.seq AllocBody448_173 AllocBody448_180

def AllocBody448_182 : StackLang.HolProg 64 :=
.seq AllocBody448_172 AllocBody448_181

def AllocBody448_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody448_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody448_185 : StackLang.HolProg 64 :=
.seq AllocBody448_183 AllocBody448_184

def AllocBody448_186 : StackLang.HolProg 64 :=
.call (some (AllocBody448_182, 0, 448, 6)) (Sum.inl 401) (some (AllocBody448_185, 448, 7))

def AllocBody448_187 : StackLang.HolProg 64 :=
.seq AllocBody448_171 AllocBody448_186

def AllocBody448_188 : StackLang.HolProg 64 :=
.seq AllocBody448_170 AllocBody448_187

def AllocBody448_189 : StackLang.HolProg 64 :=
.seq AllocBody448_169 AllocBody448_188

def AllocBody448_190 : StackLang.HolProg 64 :=
.seq AllocBody448_150 AllocBody448_189

def AllocBody448_191 : StackLang.HolProg 64 :=
.seq AllocBody448_147 AllocBody448_190

def AllocBody448_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody448_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody448_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody448_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody448_196 : StackLang.HolProg 64 :=
.seq AllocBody448_194 AllocBody448_195

def AllocBody448_197 : StackLang.HolProg 64 :=
.seq AllocBody448_193 AllocBody448_196

def AllocBody448_198 : StackLang.HolProg 64 :=
.seq AllocBody448_192 AllocBody448_197

def AllocBody448_199 : StackLang.HolProg 64 :=
.seq AllocBody448_191 AllocBody448_198

def AllocBody448_200 : StackLang.HolProg 64 :=
.seq AllocBody448_146 AllocBody448_199

def AllocBody448_201 : StackLang.HolProg 64 :=
.seq AllocBody448_145 AllocBody448_200

def AllocBody448_202 : StackLang.HolProg 64 :=
.seq AllocBody448_144 AllocBody448_201

def AllocBody448_203 : StackLang.HolProg 64 :=
.seq AllocBody448_97 AllocBody448_202

def AllocBody448_204 : StackLang.HolProg 64 :=
.seq AllocBody448_92 AllocBody448_203

def AllocBody448_205 : StackLang.HolProg 64 :=
.seq AllocBody448_91 AllocBody448_204

def AllocBody448_206 : StackLang.HolProg 64 :=
.seq AllocBody448_90 AllocBody448_205

def AllocBody448_207 : StackLang.HolProg 64 :=
.seq AllocBody448_65 AllocBody448_206

def AllocBody448_208 : StackLang.HolProg 64 :=
.seq AllocBody448_64 AllocBody448_207

def AllocBody448_209 : StackLang.HolProg 64 :=
.seq AllocBody448_63 AllocBody448_208

def AllocBody448_210 : StackLang.HolProg 64 :=
.seq AllocBody448_62 AllocBody448_209

def AllocBody448_211 : StackLang.HolProg 64 :=
.seq AllocBody448_13 AllocBody448_210

def AllocBody448_212 : StackLang.HolProg 64 :=
.seq AllocBody448_8 AllocBody448_211

def AllocBody448_213 : StackLang.HolProg 64 :=
.seq AllocBody448_7 AllocBody448_212

def AllocBody448_214 : StackLang.HolProg 64 :=
.seq AllocBody448_6 AllocBody448_213

def AllocBody448_215 : StackLang.HolProg 64 :=
.seq AllocBody448_5 AllocBody448_214

def AllocBody448_216 : StackLang.HolProg 64 :=
.seq AllocBody448_4 AllocBody448_215

def AllocBody448_217 : StackLang.HolProg 64 :=
.seq AllocBody448_3 AllocBody448_216

def AllocBody448_218 : StackLang.HolProg 64 :=
.seq AllocBody448_0 AllocBody448_217

def Alloc448 : Nat × StackLang.HolProg 64 := (448, AllocBody448_218)
theorem Alloc448_eq : StackAlloc.progComp (448, raw448) = Alloc448 := by
  kernel_rfl
#print axioms Alloc448_eq
end InitECandidate.Proofs.BackendStages
