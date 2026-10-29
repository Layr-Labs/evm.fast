import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw74
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody74_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody74_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody74_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody74_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 2

def AllocBody74_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551592#64))

def AllocBody74_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551584#64))

def AllocBody74_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody74_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody74_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def AllocBody74_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody74_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody74_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody74_15 : StackLang.HolProg 64 :=
.seq AllocBody74_13 AllocBody74_14

def AllocBody74_16 : StackLang.HolProg 64 :=
.seq AllocBody74_12 AllocBody74_15

def AllocBody74_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 31#64)

def AllocBody74_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody74_20 : StackLang.HolProg 64 :=
.seq AllocBody74_18 AllocBody74_19

def AllocBody74_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody74_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody74_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody74_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 3

def AllocBody74_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody74_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody74_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody74_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody74_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody74_31 : StackLang.HolProg 64 :=
.seq AllocBody74_29 AllocBody74_30

def AllocBody74_32 : StackLang.HolProg 64 :=
.seq AllocBody74_28 AllocBody74_31

def AllocBody74_33 : StackLang.HolProg 64 :=
.seq AllocBody74_27 AllocBody74_32

def AllocBody74_34 : StackLang.HolProg 64 :=
.seq AllocBody74_26 AllocBody74_33

def AllocBody74_35 : StackLang.HolProg 64 :=
.seq AllocBody74_25 AllocBody74_34

def AllocBody74_36 : StackLang.HolProg 64 :=
.seq AllocBody74_24 AllocBody74_35

def AllocBody74_37 : StackLang.HolProg 64 :=
.seq AllocBody74_23 AllocBody74_36

def AllocBody74_38 : StackLang.HolProg 64 :=
.seq AllocBody74_22 AllocBody74_37

def AllocBody74_39 : StackLang.HolProg 64 :=
.seq AllocBody74_21 AllocBody74_38

def AllocBody74_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody74_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody74_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody74_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody74_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody74_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody74_48 : StackLang.HolProg 64 :=
.seq AllocBody74_46 AllocBody74_47

def AllocBody74_49 : StackLang.HolProg 64 :=
.seq AllocBody74_45 AllocBody74_48

def AllocBody74_50 : StackLang.HolProg 64 :=
.seq AllocBody74_44 AllocBody74_49

def AllocBody74_51 : StackLang.HolProg 64 :=
.seq AllocBody74_43 AllocBody74_50

def AllocBody74_52 : StackLang.HolProg 64 :=
.seq AllocBody74_42 AllocBody74_51

def AllocBody74_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody74_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody74_55 : StackLang.HolProg 64 :=
.seq AllocBody74_53 AllocBody74_54

def AllocBody74_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody74_57 : StackLang.HolProg 64 :=
.seq AllocBody74_55 AllocBody74_56

def AllocBody74_58 : StackLang.HolProg 64 :=
.call (some (AllocBody74_52, 0, 74, 2)) (Sum.inl 66) (some (AllocBody74_57, 74, 3))

def AllocBody74_59 : StackLang.HolProg 64 :=
.seq AllocBody74_41 AllocBody74_58

def AllocBody74_60 : StackLang.HolProg 64 :=
.seq AllocBody74_40 AllocBody74_59

def AllocBody74_61 : StackLang.HolProg 64 :=
.seq AllocBody74_39 AllocBody74_60

def AllocBody74_62 : StackLang.HolProg 64 :=
.seq AllocBody74_20 AllocBody74_61

def AllocBody74_63 : StackLang.HolProg 64 :=
.seq AllocBody74_17 AllocBody74_62

def AllocBody74_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_66 : StackLang.HolProg 64 :=
.seq AllocBody74_64 AllocBody74_65

def AllocBody74_67 : StackLang.HolProg 64 :=
.seq AllocBody74_63 AllocBody74_66

def AllocBody74_68 : StackLang.HolProg 64 :=
.seq AllocBody74_16 AllocBody74_67

def AllocBody74_69 : StackLang.HolProg 64 :=
.seq AllocBody74_11 AllocBody74_68

def AllocBody74_70 : StackLang.HolProg 64 :=
.seq AllocBody74_10 AllocBody74_69

def AllocBody74_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody74_73 : StackLang.HolProg 64 :=
.seq AllocBody74_71 AllocBody74_72

def AllocBody74_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody74_70 AllocBody74_73

def AllocBody74_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody74_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody74_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody74_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody74_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody74_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551584#64))

def AllocBody74_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def AllocBody74_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody74_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 32#64)

def AllocBody74_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody74_90 : StackLang.HolProg 64 :=
.seq AllocBody74_88 AllocBody74_89

def AllocBody74_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody74_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody74_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody74_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 5

def AllocBody74_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody74_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody74_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody74_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody74_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody74_101 : StackLang.HolProg 64 :=
.seq AllocBody74_99 AllocBody74_100

def AllocBody74_102 : StackLang.HolProg 64 :=
.seq AllocBody74_98 AllocBody74_101

def AllocBody74_103 : StackLang.HolProg 64 :=
.seq AllocBody74_97 AllocBody74_102

def AllocBody74_104 : StackLang.HolProg 64 :=
.seq AllocBody74_96 AllocBody74_103

def AllocBody74_105 : StackLang.HolProg 64 :=
.seq AllocBody74_95 AllocBody74_104

def AllocBody74_106 : StackLang.HolProg 64 :=
.seq AllocBody74_94 AllocBody74_105

def AllocBody74_107 : StackLang.HolProg 64 :=
.seq AllocBody74_93 AllocBody74_106

def AllocBody74_108 : StackLang.HolProg 64 :=
.seq AllocBody74_92 AllocBody74_107

def AllocBody74_109 : StackLang.HolProg 64 :=
.seq AllocBody74_91 AllocBody74_108

def AllocBody74_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody74_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody74_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody74_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody74_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody74_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody74_118 : StackLang.HolProg 64 :=
.seq AllocBody74_116 AllocBody74_117

def AllocBody74_119 : StackLang.HolProg 64 :=
.seq AllocBody74_115 AllocBody74_118

def AllocBody74_120 : StackLang.HolProg 64 :=
.seq AllocBody74_114 AllocBody74_119

def AllocBody74_121 : StackLang.HolProg 64 :=
.seq AllocBody74_113 AllocBody74_120

def AllocBody74_122 : StackLang.HolProg 64 :=
.seq AllocBody74_112 AllocBody74_121

def AllocBody74_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody74_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody74_125 : StackLang.HolProg 64 :=
.seq AllocBody74_123 AllocBody74_124

def AllocBody74_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody74_127 : StackLang.HolProg 64 :=
.seq AllocBody74_125 AllocBody74_126

def AllocBody74_128 : StackLang.HolProg 64 :=
.call (some (AllocBody74_122, 0, 74, 4)) (Sum.inl 66) (some (AllocBody74_127, 74, 5))

def AllocBody74_129 : StackLang.HolProg 64 :=
.seq AllocBody74_111 AllocBody74_128

def AllocBody74_130 : StackLang.HolProg 64 :=
.seq AllocBody74_110 AllocBody74_129

def AllocBody74_131 : StackLang.HolProg 64 :=
.seq AllocBody74_109 AllocBody74_130

def AllocBody74_132 : StackLang.HolProg 64 :=
.seq AllocBody74_90 AllocBody74_131

def AllocBody74_133 : StackLang.HolProg 64 :=
.seq AllocBody74_87 AllocBody74_132

def AllocBody74_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_136 : StackLang.HolProg 64 :=
.seq AllocBody74_134 AllocBody74_135

def AllocBody74_137 : StackLang.HolProg 64 :=
.seq AllocBody74_133 AllocBody74_136

def AllocBody74_138 : StackLang.HolProg 64 :=
.seq AllocBody74_86 AllocBody74_137

def AllocBody74_139 : StackLang.HolProg 64 :=
.seq AllocBody74_85 AllocBody74_138

def AllocBody74_140 : StackLang.HolProg 64 :=
.seq AllocBody74_84 AllocBody74_139

def AllocBody74_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody74_143 : StackLang.HolProg 64 :=
.seq AllocBody74_141 AllocBody74_142

def AllocBody74_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody74_140 AllocBody74_143

def AllocBody74_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody74_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody74_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody74_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody74_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def AllocBody74_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody74_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody74_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody74_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody74_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody74_155 : StackLang.HolProg 64 :=
.seq AllocBody74_153 AllocBody74_154

def AllocBody74_156 : StackLang.HolProg 64 :=
.seq AllocBody74_152 AllocBody74_155

def AllocBody74_157 : StackLang.HolProg 64 :=
.seq AllocBody74_151 AllocBody74_156

def AllocBody74_158 : StackLang.HolProg 64 :=
.seq AllocBody74_150 AllocBody74_157

def AllocBody74_159 : StackLang.HolProg 64 :=
.seq AllocBody74_149 AllocBody74_158

def AllocBody74_160 : StackLang.HolProg 64 :=
.seq AllocBody74_148 AllocBody74_159

def AllocBody74_161 : StackLang.HolProg 64 :=
.seq AllocBody74_147 AllocBody74_160

def AllocBody74_162 : StackLang.HolProg 64 :=
.seq AllocBody74_146 AllocBody74_161

def AllocBody74_163 : StackLang.HolProg 64 :=
.seq AllocBody74_145 AllocBody74_162

def AllocBody74_164 : StackLang.HolProg 64 :=
.seq AllocBody74_144 AllocBody74_163

def AllocBody74_165 : StackLang.HolProg 64 :=
.seq AllocBody74_83 AllocBody74_164

def AllocBody74_166 : StackLang.HolProg 64 :=
.seq AllocBody74_82 AllocBody74_165

def AllocBody74_167 : StackLang.HolProg 64 :=
.seq AllocBody74_81 AllocBody74_166

def AllocBody74_168 : StackLang.HolProg 64 :=
.seq AllocBody74_80 AllocBody74_167

def AllocBody74_169 : StackLang.HolProg 64 :=
.seq AllocBody74_79 AllocBody74_168

def AllocBody74_170 : StackLang.HolProg 64 :=
.seq AllocBody74_78 AllocBody74_169

def AllocBody74_171 : StackLang.HolProg 64 :=
.seq AllocBody74_77 AllocBody74_170

def AllocBody74_172 : StackLang.HolProg 64 :=
.seq AllocBody74_76 AllocBody74_171

def AllocBody74_173 : StackLang.HolProg 64 :=
.seq AllocBody74_75 AllocBody74_172

def AllocBody74_174 : StackLang.HolProg 64 :=
.seq AllocBody74_74 AllocBody74_173

def AllocBody74_175 : StackLang.HolProg 64 :=
.seq AllocBody74_9 AllocBody74_174

def AllocBody74_176 : StackLang.HolProg 64 :=
.seq AllocBody74_8 AllocBody74_175

def AllocBody74_177 : StackLang.HolProg 64 :=
.seq AllocBody74_7 AllocBody74_176

def AllocBody74_178 : StackLang.HolProg 64 :=
.seq AllocBody74_6 AllocBody74_177

def AllocBody74_179 : StackLang.HolProg 64 :=
.seq AllocBody74_5 AllocBody74_178

def AllocBody74_180 : StackLang.HolProg 64 :=
.seq AllocBody74_4 AllocBody74_179

def AllocBody74_181 : StackLang.HolProg 64 :=
.seq AllocBody74_3 AllocBody74_180

def AllocBody74_182 : StackLang.HolProg 64 :=
.seq AllocBody74_2 AllocBody74_181

def AllocBody74_183 : StackLang.HolProg 64 :=
.seq AllocBody74_1 AllocBody74_182

def AllocBody74_184 : StackLang.HolProg 64 :=
.seq AllocBody74_0 AllocBody74_183

def Alloc74 : Nat × StackLang.HolProg 64 := (74, AllocBody74_184)
theorem Alloc74_eq : StackAlloc.progComp (74, raw74) = Alloc74 := by
  kernel_rfl
#print axioms Alloc74_eq
end InitECandidate.Proofs.BackendStages
