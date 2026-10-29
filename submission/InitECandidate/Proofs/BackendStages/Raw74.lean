import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function74
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody74_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody74_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody74_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody74_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 2

def rawBody74_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551592#64))

def rawBody74_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551584#64))

def rawBody74_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody74_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody74_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def rawBody74_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody74_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody74_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody74_15 : StackLang.HolProg 64 :=
.seq rawBody74_13 rawBody74_14

def rawBody74_16 : StackLang.HolProg 64 :=
.seq rawBody74_12 rawBody74_15

def rawBody74_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 31#64)

def rawBody74_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody74_20 : StackLang.HolProg 64 :=
.seq rawBody74_18 rawBody74_19

def rawBody74_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody74_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody74_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody74_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 3

def rawBody74_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody74_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody74_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody74_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody74_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody74_31 : StackLang.HolProg 64 :=
.seq rawBody74_29 rawBody74_30

def rawBody74_32 : StackLang.HolProg 64 :=
.seq rawBody74_28 rawBody74_31

def rawBody74_33 : StackLang.HolProg 64 :=
.seq rawBody74_27 rawBody74_32

def rawBody74_34 : StackLang.HolProg 64 :=
.seq rawBody74_26 rawBody74_33

def rawBody74_35 : StackLang.HolProg 64 :=
.seq rawBody74_25 rawBody74_34

def rawBody74_36 : StackLang.HolProg 64 :=
.seq rawBody74_24 rawBody74_35

def rawBody74_37 : StackLang.HolProg 64 :=
.seq rawBody74_23 rawBody74_36

def rawBody74_38 : StackLang.HolProg 64 :=
.seq rawBody74_22 rawBody74_37

def rawBody74_39 : StackLang.HolProg 64 :=
.seq rawBody74_21 rawBody74_38

def rawBody74_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody74_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody74_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody74_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody74_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody74_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody74_48 : StackLang.HolProg 64 :=
.seq rawBody74_46 rawBody74_47

def rawBody74_49 : StackLang.HolProg 64 :=
.seq rawBody74_45 rawBody74_48

def rawBody74_50 : StackLang.HolProg 64 :=
.seq rawBody74_44 rawBody74_49

def rawBody74_51 : StackLang.HolProg 64 :=
.seq rawBody74_43 rawBody74_50

def rawBody74_52 : StackLang.HolProg 64 :=
.seq rawBody74_42 rawBody74_51

def rawBody74_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody74_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody74_55 : StackLang.HolProg 64 :=
.seq rawBody74_53 rawBody74_54

def rawBody74_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody74_57 : StackLang.HolProg 64 :=
.seq rawBody74_55 rawBody74_56

def rawBody74_58 : StackLang.HolProg 64 :=
.call (some (rawBody74_52, 0, 74, 2)) (Sum.inl 66) (some (rawBody74_57, 74, 3))

def rawBody74_59 : StackLang.HolProg 64 :=
.seq rawBody74_41 rawBody74_58

def rawBody74_60 : StackLang.HolProg 64 :=
.seq rawBody74_40 rawBody74_59

def rawBody74_61 : StackLang.HolProg 64 :=
.seq rawBody74_39 rawBody74_60

def rawBody74_62 : StackLang.HolProg 64 :=
.seq rawBody74_20 rawBody74_61

def rawBody74_63 : StackLang.HolProg 64 :=
.seq rawBody74_17 rawBody74_62

def rawBody74_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_66 : StackLang.HolProg 64 :=
.seq rawBody74_64 rawBody74_65

def rawBody74_67 : StackLang.HolProg 64 :=
.seq rawBody74_63 rawBody74_66

def rawBody74_68 : StackLang.HolProg 64 :=
.seq rawBody74_16 rawBody74_67

def rawBody74_69 : StackLang.HolProg 64 :=
.seq rawBody74_11 rawBody74_68

def rawBody74_70 : StackLang.HolProg 64 :=
.seq rawBody74_10 rawBody74_69

def rawBody74_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody74_73 : StackLang.HolProg 64 :=
.seq rawBody74_71 rawBody74_72

def rawBody74_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody74_70 rawBody74_73

def rawBody74_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody74_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def rawBody74_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody74_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody74_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody74_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551584#64))

def rawBody74_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7#64)

def rawBody74_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody74_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 32#64)

def rawBody74_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody74_90 : StackLang.HolProg 64 :=
.seq rawBody74_88 rawBody74_89

def rawBody74_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody74_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody74_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody74_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 74 5

def rawBody74_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody74_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody74_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody74_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody74_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody74_101 : StackLang.HolProg 64 :=
.seq rawBody74_99 rawBody74_100

def rawBody74_102 : StackLang.HolProg 64 :=
.seq rawBody74_98 rawBody74_101

def rawBody74_103 : StackLang.HolProg 64 :=
.seq rawBody74_97 rawBody74_102

def rawBody74_104 : StackLang.HolProg 64 :=
.seq rawBody74_96 rawBody74_103

def rawBody74_105 : StackLang.HolProg 64 :=
.seq rawBody74_95 rawBody74_104

def rawBody74_106 : StackLang.HolProg 64 :=
.seq rawBody74_94 rawBody74_105

def rawBody74_107 : StackLang.HolProg 64 :=
.seq rawBody74_93 rawBody74_106

def rawBody74_108 : StackLang.HolProg 64 :=
.seq rawBody74_92 rawBody74_107

def rawBody74_109 : StackLang.HolProg 64 :=
.seq rawBody74_91 rawBody74_108

def rawBody74_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody74_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody74_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody74_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody74_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody74_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody74_118 : StackLang.HolProg 64 :=
.seq rawBody74_116 rawBody74_117

def rawBody74_119 : StackLang.HolProg 64 :=
.seq rawBody74_115 rawBody74_118

def rawBody74_120 : StackLang.HolProg 64 :=
.seq rawBody74_114 rawBody74_119

def rawBody74_121 : StackLang.HolProg 64 :=
.seq rawBody74_113 rawBody74_120

def rawBody74_122 : StackLang.HolProg 64 :=
.seq rawBody74_112 rawBody74_121

def rawBody74_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody74_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody74_125 : StackLang.HolProg 64 :=
.seq rawBody74_123 rawBody74_124

def rawBody74_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody74_127 : StackLang.HolProg 64 :=
.seq rawBody74_125 rawBody74_126

def rawBody74_128 : StackLang.HolProg 64 :=
.call (some (rawBody74_122, 0, 74, 4)) (Sum.inl 66) (some (rawBody74_127, 74, 5))

def rawBody74_129 : StackLang.HolProg 64 :=
.seq rawBody74_111 rawBody74_128

def rawBody74_130 : StackLang.HolProg 64 :=
.seq rawBody74_110 rawBody74_129

def rawBody74_131 : StackLang.HolProg 64 :=
.seq rawBody74_109 rawBody74_130

def rawBody74_132 : StackLang.HolProg 64 :=
.seq rawBody74_90 rawBody74_131

def rawBody74_133 : StackLang.HolProg 64 :=
.seq rawBody74_87 rawBody74_132

def rawBody74_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_136 : StackLang.HolProg 64 :=
.seq rawBody74_134 rawBody74_135

def rawBody74_137 : StackLang.HolProg 64 :=
.seq rawBody74_133 rawBody74_136

def rawBody74_138 : StackLang.HolProg 64 :=
.seq rawBody74_86 rawBody74_137

def rawBody74_139 : StackLang.HolProg 64 :=
.seq rawBody74_85 rawBody74_138

def rawBody74_140 : StackLang.HolProg 64 :=
.seq rawBody74_84 rawBody74_139

def rawBody74_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody74_143 : StackLang.HolProg 64 :=
.seq rawBody74_141 rawBody74_142

def rawBody74_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody74_140 rawBody74_143

def rawBody74_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody74_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody74_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody74_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody74_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551592#64)))

def rawBody74_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody74_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody74_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody74_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody74_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody74_155 : StackLang.HolProg 64 :=
.seq rawBody74_153 rawBody74_154

def rawBody74_156 : StackLang.HolProg 64 :=
.seq rawBody74_152 rawBody74_155

def rawBody74_157 : StackLang.HolProg 64 :=
.seq rawBody74_151 rawBody74_156

def rawBody74_158 : StackLang.HolProg 64 :=
.seq rawBody74_150 rawBody74_157

def rawBody74_159 : StackLang.HolProg 64 :=
.seq rawBody74_149 rawBody74_158

def rawBody74_160 : StackLang.HolProg 64 :=
.seq rawBody74_148 rawBody74_159

def rawBody74_161 : StackLang.HolProg 64 :=
.seq rawBody74_147 rawBody74_160

def rawBody74_162 : StackLang.HolProg 64 :=
.seq rawBody74_146 rawBody74_161

def rawBody74_163 : StackLang.HolProg 64 :=
.seq rawBody74_145 rawBody74_162

def rawBody74_164 : StackLang.HolProg 64 :=
.seq rawBody74_144 rawBody74_163

def rawBody74_165 : StackLang.HolProg 64 :=
.seq rawBody74_83 rawBody74_164

def rawBody74_166 : StackLang.HolProg 64 :=
.seq rawBody74_82 rawBody74_165

def rawBody74_167 : StackLang.HolProg 64 :=
.seq rawBody74_81 rawBody74_166

def rawBody74_168 : StackLang.HolProg 64 :=
.seq rawBody74_80 rawBody74_167

def rawBody74_169 : StackLang.HolProg 64 :=
.seq rawBody74_79 rawBody74_168

def rawBody74_170 : StackLang.HolProg 64 :=
.seq rawBody74_78 rawBody74_169

def rawBody74_171 : StackLang.HolProg 64 :=
.seq rawBody74_77 rawBody74_170

def rawBody74_172 : StackLang.HolProg 64 :=
.seq rawBody74_76 rawBody74_171

def rawBody74_173 : StackLang.HolProg 64 :=
.seq rawBody74_75 rawBody74_172

def rawBody74_174 : StackLang.HolProg 64 :=
.seq rawBody74_74 rawBody74_173

def rawBody74_175 : StackLang.HolProg 64 :=
.seq rawBody74_9 rawBody74_174

def rawBody74_176 : StackLang.HolProg 64 :=
.seq rawBody74_8 rawBody74_175

def rawBody74_177 : StackLang.HolProg 64 :=
.seq rawBody74_7 rawBody74_176

def rawBody74_178 : StackLang.HolProg 64 :=
.seq rawBody74_6 rawBody74_177

def rawBody74_179 : StackLang.HolProg 64 :=
.seq rawBody74_5 rawBody74_178

def rawBody74_180 : StackLang.HolProg 64 :=
.seq rawBody74_4 rawBody74_179

def rawBody74_181 : StackLang.HolProg 64 :=
.seq rawBody74_3 rawBody74_180

def rawBody74_182 : StackLang.HolProg 64 :=
.seq rawBody74_2 rawBody74_181

def rawBody74_183 : StackLang.HolProg 64 :=
.seq rawBody74_1 rawBody74_182

def rawBody74_184 : StackLang.HolProg 64 :=
.seq rawBody74_0 rawBody74_183

def raw74 : StackLang.HolProg 64 := rawBody74_184
theorem raw74_eq : StackRawCall.compTop RawInfo.rawInfo (function74 (.list [])).1 = raw74 := by
  kernel_rfl
#print axioms raw74_eq
end InitECandidate.Proofs.BackendStages
