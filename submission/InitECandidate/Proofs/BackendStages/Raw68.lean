import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function68
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody68_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody68_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody68_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody68_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody68_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551608#64))

def rawBody68_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2952790016#64)

def rawBody68_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody68_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody68_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody68_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody68_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody68_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody68_15 : StackLang.HolProg 64 :=
.seq rawBody68_13 rawBody68_14

def rawBody68_16 : StackLang.HolProg 64 :=
.seq rawBody68_12 rawBody68_15

def rawBody68_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 27#64)

def rawBody68_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody68_20 : StackLang.HolProg 64 :=
.seq rawBody68_18 rawBody68_19

def rawBody68_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody68_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody68_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody68_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 3

def rawBody68_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody68_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody68_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody68_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody68_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody68_31 : StackLang.HolProg 64 :=
.seq rawBody68_29 rawBody68_30

def rawBody68_32 : StackLang.HolProg 64 :=
.seq rawBody68_28 rawBody68_31

def rawBody68_33 : StackLang.HolProg 64 :=
.seq rawBody68_27 rawBody68_32

def rawBody68_34 : StackLang.HolProg 64 :=
.seq rawBody68_26 rawBody68_33

def rawBody68_35 : StackLang.HolProg 64 :=
.seq rawBody68_25 rawBody68_34

def rawBody68_36 : StackLang.HolProg 64 :=
.seq rawBody68_24 rawBody68_35

def rawBody68_37 : StackLang.HolProg 64 :=
.seq rawBody68_23 rawBody68_36

def rawBody68_38 : StackLang.HolProg 64 :=
.seq rawBody68_22 rawBody68_37

def rawBody68_39 : StackLang.HolProg 64 :=
.seq rawBody68_21 rawBody68_38

def rawBody68_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody68_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody68_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody68_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody68_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody68_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody68_48 : StackLang.HolProg 64 :=
.seq rawBody68_46 rawBody68_47

def rawBody68_49 : StackLang.HolProg 64 :=
.seq rawBody68_45 rawBody68_48

def rawBody68_50 : StackLang.HolProg 64 :=
.seq rawBody68_44 rawBody68_49

def rawBody68_51 : StackLang.HolProg 64 :=
.seq rawBody68_43 rawBody68_50

def rawBody68_52 : StackLang.HolProg 64 :=
.seq rawBody68_42 rawBody68_51

def rawBody68_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody68_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody68_55 : StackLang.HolProg 64 :=
.seq rawBody68_53 rawBody68_54

def rawBody68_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody68_57 : StackLang.HolProg 64 :=
.seq rawBody68_55 rawBody68_56

def rawBody68_58 : StackLang.HolProg 64 :=
.call (some (rawBody68_52, 0, 68, 2)) (Sum.inl 66) (some (rawBody68_57, 68, 3))

def rawBody68_59 : StackLang.HolProg 64 :=
.seq rawBody68_41 rawBody68_58

def rawBody68_60 : StackLang.HolProg 64 :=
.seq rawBody68_40 rawBody68_59

def rawBody68_61 : StackLang.HolProg 64 :=
.seq rawBody68_39 rawBody68_60

def rawBody68_62 : StackLang.HolProg 64 :=
.seq rawBody68_20 rawBody68_61

def rawBody68_63 : StackLang.HolProg 64 :=
.seq rawBody68_17 rawBody68_62

def rawBody68_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_66 : StackLang.HolProg 64 :=
.seq rawBody68_64 rawBody68_65

def rawBody68_67 : StackLang.HolProg 64 :=
.seq rawBody68_63 rawBody68_66

def rawBody68_68 : StackLang.HolProg 64 :=
.seq rawBody68_16 rawBody68_67

def rawBody68_69 : StackLang.HolProg 64 :=
.seq rawBody68_11 rawBody68_68

def rawBody68_70 : StackLang.HolProg 64 :=
.seq rawBody68_10 rawBody68_69

def rawBody68_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody68_73 : StackLang.HolProg 64 :=
.seq rawBody68_71 rawBody68_72

def rawBody68_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody68_70 rawBody68_73

def rawBody68_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody68_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody68_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def rawBody68_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2952790016#64)

def rawBody68_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody68_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody68_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody68_86 : StackLang.HolProg 64 :=
.seq rawBody68_84 rawBody68_85

def rawBody68_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 28#64)

def rawBody68_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody68_90 : StackLang.HolProg 64 :=
.seq rawBody68_88 rawBody68_89

def rawBody68_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody68_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody68_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody68_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 68 5

def rawBody68_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody68_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody68_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody68_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody68_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody68_101 : StackLang.HolProg 64 :=
.seq rawBody68_99 rawBody68_100

def rawBody68_102 : StackLang.HolProg 64 :=
.seq rawBody68_98 rawBody68_101

def rawBody68_103 : StackLang.HolProg 64 :=
.seq rawBody68_97 rawBody68_102

def rawBody68_104 : StackLang.HolProg 64 :=
.seq rawBody68_96 rawBody68_103

def rawBody68_105 : StackLang.HolProg 64 :=
.seq rawBody68_95 rawBody68_104

def rawBody68_106 : StackLang.HolProg 64 :=
.seq rawBody68_94 rawBody68_105

def rawBody68_107 : StackLang.HolProg 64 :=
.seq rawBody68_93 rawBody68_106

def rawBody68_108 : StackLang.HolProg 64 :=
.seq rawBody68_92 rawBody68_107

def rawBody68_109 : StackLang.HolProg 64 :=
.seq rawBody68_91 rawBody68_108

def rawBody68_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody68_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody68_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody68_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody68_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody68_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody68_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody68_119 : StackLang.HolProg 64 :=
.seq rawBody68_117 rawBody68_118

def rawBody68_120 : StackLang.HolProg 64 :=
.seq rawBody68_116 rawBody68_119

def rawBody68_121 : StackLang.HolProg 64 :=
.seq rawBody68_115 rawBody68_120

def rawBody68_122 : StackLang.HolProg 64 :=
.seq rawBody68_114 rawBody68_121

def rawBody68_123 : StackLang.HolProg 64 :=
.seq rawBody68_113 rawBody68_122

def rawBody68_124 : StackLang.HolProg 64 :=
.seq rawBody68_112 rawBody68_123

def rawBody68_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody68_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody68_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody68_128 : StackLang.HolProg 64 :=
.seq rawBody68_126 rawBody68_127

def rawBody68_129 : StackLang.HolProg 64 :=
.seq rawBody68_125 rawBody68_128

def rawBody68_130 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody68_131 : StackLang.HolProg 64 :=
.seq rawBody68_129 rawBody68_130

def rawBody68_132 : StackLang.HolProg 64 :=
.call (some (rawBody68_124, 0, 68, 4)) (Sum.inl 66) (some (rawBody68_131, 68, 5))

def rawBody68_133 : StackLang.HolProg 64 :=
.seq rawBody68_111 rawBody68_132

def rawBody68_134 : StackLang.HolProg 64 :=
.seq rawBody68_110 rawBody68_133

def rawBody68_135 : StackLang.HolProg 64 :=
.seq rawBody68_109 rawBody68_134

def rawBody68_136 : StackLang.HolProg 64 :=
.seq rawBody68_90 rawBody68_135

def rawBody68_137 : StackLang.HolProg 64 :=
.seq rawBody68_87 rawBody68_136

def rawBody68_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_140 : StackLang.HolProg 64 :=
.seq rawBody68_138 rawBody68_139

def rawBody68_141 : StackLang.HolProg 64 :=
.seq rawBody68_137 rawBody68_140

def rawBody68_142 : StackLang.HolProg 64 :=
.seq rawBody68_86 rawBody68_141

def rawBody68_143 : StackLang.HolProg 64 :=
.seq rawBody68_83 rawBody68_142

def rawBody68_144 : StackLang.HolProg 64 :=
.seq rawBody68_82 rawBody68_143

def rawBody68_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody68_147 : StackLang.HolProg 64 :=
.seq rawBody68_145 rawBody68_146

def rawBody68_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody68_144 rawBody68_147

def rawBody68_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody68_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody68_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody68_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody68_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def rawBody68_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody68_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody68_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody68_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody68_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody68_159 : StackLang.HolProg 64 :=
.seq rawBody68_157 rawBody68_158

def rawBody68_160 : StackLang.HolProg 64 :=
.seq rawBody68_156 rawBody68_159

def rawBody68_161 : StackLang.HolProg 64 :=
.seq rawBody68_155 rawBody68_160

def rawBody68_162 : StackLang.HolProg 64 :=
.seq rawBody68_154 rawBody68_161

def rawBody68_163 : StackLang.HolProg 64 :=
.seq rawBody68_153 rawBody68_162

def rawBody68_164 : StackLang.HolProg 64 :=
.seq rawBody68_152 rawBody68_163

def rawBody68_165 : StackLang.HolProg 64 :=
.seq rawBody68_151 rawBody68_164

def rawBody68_166 : StackLang.HolProg 64 :=
.seq rawBody68_150 rawBody68_165

def rawBody68_167 : StackLang.HolProg 64 :=
.seq rawBody68_149 rawBody68_166

def rawBody68_168 : StackLang.HolProg 64 :=
.seq rawBody68_148 rawBody68_167

def rawBody68_169 : StackLang.HolProg 64 :=
.seq rawBody68_81 rawBody68_168

def rawBody68_170 : StackLang.HolProg 64 :=
.seq rawBody68_80 rawBody68_169

def rawBody68_171 : StackLang.HolProg 64 :=
.seq rawBody68_79 rawBody68_170

def rawBody68_172 : StackLang.HolProg 64 :=
.seq rawBody68_78 rawBody68_171

def rawBody68_173 : StackLang.HolProg 64 :=
.seq rawBody68_77 rawBody68_172

def rawBody68_174 : StackLang.HolProg 64 :=
.seq rawBody68_76 rawBody68_173

def rawBody68_175 : StackLang.HolProg 64 :=
.seq rawBody68_75 rawBody68_174

def rawBody68_176 : StackLang.HolProg 64 :=
.seq rawBody68_74 rawBody68_175

def rawBody68_177 : StackLang.HolProg 64 :=
.seq rawBody68_9 rawBody68_176

def rawBody68_178 : StackLang.HolProg 64 :=
.seq rawBody68_8 rawBody68_177

def rawBody68_179 : StackLang.HolProg 64 :=
.seq rawBody68_7 rawBody68_178

def rawBody68_180 : StackLang.HolProg 64 :=
.seq rawBody68_6 rawBody68_179

def rawBody68_181 : StackLang.HolProg 64 :=
.seq rawBody68_5 rawBody68_180

def rawBody68_182 : StackLang.HolProg 64 :=
.seq rawBody68_4 rawBody68_181

def rawBody68_183 : StackLang.HolProg 64 :=
.seq rawBody68_3 rawBody68_182

def rawBody68_184 : StackLang.HolProg 64 :=
.seq rawBody68_2 rawBody68_183

def rawBody68_185 : StackLang.HolProg 64 :=
.seq rawBody68_1 rawBody68_184

def rawBody68_186 : StackLang.HolProg 64 :=
.seq rawBody68_0 rawBody68_185

def raw68 : StackLang.HolProg 64 := rawBody68_186
theorem raw68_eq : StackRawCall.compTop RawInfo.rawInfo (function68 (.list [])).1 = raw68 := by
  kernel_rfl
#print axioms raw68_eq
end InitECandidate.Proofs.BackendStages
