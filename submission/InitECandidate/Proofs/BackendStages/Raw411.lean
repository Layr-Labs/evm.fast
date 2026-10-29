import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function411
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody411_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody411_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody411_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody411_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody411_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody411_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody411_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def rawBody411_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody411_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody411_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody411_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody411_11 : StackLang.HolProg 64 :=
.seq rawBody411_9 rawBody411_10

def rawBody411_12 : StackLang.HolProg 64 :=
.seq rawBody411_8 rawBody411_11

def rawBody411_13 : StackLang.HolProg 64 :=
.seq rawBody411_7 rawBody411_12

def rawBody411_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1227#64)

def rawBody411_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_17 : StackLang.HolProg 64 :=
.seq rawBody411_15 rawBody411_16

def rawBody411_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody411_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody411_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 3

def rawBody411_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody411_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody411_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody411_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody411_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_28 : StackLang.HolProg 64 :=
.seq rawBody411_26 rawBody411_27

def rawBody411_29 : StackLang.HolProg 64 :=
.seq rawBody411_25 rawBody411_28

def rawBody411_30 : StackLang.HolProg 64 :=
.seq rawBody411_24 rawBody411_29

def rawBody411_31 : StackLang.HolProg 64 :=
.seq rawBody411_23 rawBody411_30

def rawBody411_32 : StackLang.HolProg 64 :=
.seq rawBody411_22 rawBody411_31

def rawBody411_33 : StackLang.HolProg 64 :=
.seq rawBody411_21 rawBody411_32

def rawBody411_34 : StackLang.HolProg 64 :=
.seq rawBody411_20 rawBody411_33

def rawBody411_35 : StackLang.HolProg 64 :=
.seq rawBody411_19 rawBody411_34

def rawBody411_36 : StackLang.HolProg 64 :=
.seq rawBody411_18 rawBody411_35

def rawBody411_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody411_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody411_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody411_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody411_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody411_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody411_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody411_47 : StackLang.HolProg 64 :=
.seq rawBody411_45 rawBody411_46

def rawBody411_48 : StackLang.HolProg 64 :=
.seq rawBody411_44 rawBody411_47

def rawBody411_49 : StackLang.HolProg 64 :=
.seq rawBody411_43 rawBody411_48

def rawBody411_50 : StackLang.HolProg 64 :=
.seq rawBody411_42 rawBody411_49

def rawBody411_51 : StackLang.HolProg 64 :=
.seq rawBody411_41 rawBody411_50

def rawBody411_52 : StackLang.HolProg 64 :=
.seq rawBody411_40 rawBody411_51

def rawBody411_53 : StackLang.HolProg 64 :=
.seq rawBody411_39 rawBody411_52

def rawBody411_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody411_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody411_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody411_57 : StackLang.HolProg 64 :=
.seq rawBody411_55 rawBody411_56

def rawBody411_58 : StackLang.HolProg 64 :=
.seq rawBody411_54 rawBody411_57

def rawBody411_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody411_60 : StackLang.HolProg 64 :=
.seq rawBody411_58 rawBody411_59

def rawBody411_61 : StackLang.HolProg 64 :=
.call (some (rawBody411_53, 0, 411, 2)) (Sum.inl 187) (some (rawBody411_60, 411, 3))

def rawBody411_62 : StackLang.HolProg 64 :=
.seq rawBody411_38 rawBody411_61

def rawBody411_63 : StackLang.HolProg 64 :=
.seq rawBody411_37 rawBody411_62

def rawBody411_64 : StackLang.HolProg 64 :=
.seq rawBody411_36 rawBody411_63

def rawBody411_65 : StackLang.HolProg 64 :=
.seq rawBody411_17 rawBody411_64

def rawBody411_66 : StackLang.HolProg 64 :=
.seq rawBody411_14 rawBody411_65

def rawBody411_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody411_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody411_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody411_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody411_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody411_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody411_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody411_78 : StackLang.HolProg 64 :=
.seq rawBody411_76 rawBody411_77

def rawBody411_79 : StackLang.HolProg 64 :=
.seq rawBody411_75 rawBody411_78

def rawBody411_80 : StackLang.HolProg 64 :=
.seq rawBody411_74 rawBody411_79

def rawBody411_81 : StackLang.HolProg 64 :=
.seq rawBody411_73 rawBody411_80

def rawBody411_82 : StackLang.HolProg 64 :=
.seq rawBody411_72 rawBody411_81

def rawBody411_83 : StackLang.HolProg 64 :=
.seq rawBody411_71 rawBody411_82

def rawBody411_84 : StackLang.HolProg 64 :=
.seq rawBody411_70 rawBody411_83

def rawBody411_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody411_84 rawBody411_85

def rawBody411_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody411_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody411_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody411_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def rawBody411_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody411_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody411_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody411_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody411_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def rawBody411_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody411_99 : StackLang.HolProg 64 :=
.seq rawBody411_97 rawBody411_98

def rawBody411_100 : StackLang.HolProg 64 :=
.seq rawBody411_96 rawBody411_99

def rawBody411_101 : StackLang.HolProg 64 :=
.seq rawBody411_95 rawBody411_100

def rawBody411_102 : StackLang.HolProg 64 :=
.seq rawBody411_94 rawBody411_101

def rawBody411_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1228#64)

def rawBody411_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_106 : StackLang.HolProg 64 :=
.seq rawBody411_104 rawBody411_105

def rawBody411_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody411_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody411_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 5

def rawBody411_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody411_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody411_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody411_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody411_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_117 : StackLang.HolProg 64 :=
.seq rawBody411_115 rawBody411_116

def rawBody411_118 : StackLang.HolProg 64 :=
.seq rawBody411_114 rawBody411_117

def rawBody411_119 : StackLang.HolProg 64 :=
.seq rawBody411_113 rawBody411_118

def rawBody411_120 : StackLang.HolProg 64 :=
.seq rawBody411_112 rawBody411_119

def rawBody411_121 : StackLang.HolProg 64 :=
.seq rawBody411_111 rawBody411_120

def rawBody411_122 : StackLang.HolProg 64 :=
.seq rawBody411_110 rawBody411_121

def rawBody411_123 : StackLang.HolProg 64 :=
.seq rawBody411_109 rawBody411_122

def rawBody411_124 : StackLang.HolProg 64 :=
.seq rawBody411_108 rawBody411_123

def rawBody411_125 : StackLang.HolProg 64 :=
.seq rawBody411_107 rawBody411_124

def rawBody411_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody411_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody411_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody411_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody411_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody411_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody411_135 : StackLang.HolProg 64 :=
.seq rawBody411_133 rawBody411_134

def rawBody411_136 : StackLang.HolProg 64 :=
.seq rawBody411_132 rawBody411_135

def rawBody411_137 : StackLang.HolProg 64 :=
.seq rawBody411_131 rawBody411_136

def rawBody411_138 : StackLang.HolProg 64 :=
.seq rawBody411_130 rawBody411_137

def rawBody411_139 : StackLang.HolProg 64 :=
.seq rawBody411_129 rawBody411_138

def rawBody411_140 : StackLang.HolProg 64 :=
.seq rawBody411_128 rawBody411_139

def rawBody411_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody411_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody411_143 : StackLang.HolProg 64 :=
.seq rawBody411_141 rawBody411_142

def rawBody411_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody411_145 : StackLang.HolProg 64 :=
.seq rawBody411_143 rawBody411_144

def rawBody411_146 : StackLang.HolProg 64 :=
.call (some (rawBody411_140, 0, 411, 4)) (Sum.inl 409) (some (rawBody411_145, 411, 5))

def rawBody411_147 : StackLang.HolProg 64 :=
.seq rawBody411_127 rawBody411_146

def rawBody411_148 : StackLang.HolProg 64 :=
.seq rawBody411_126 rawBody411_147

def rawBody411_149 : StackLang.HolProg 64 :=
.seq rawBody411_125 rawBody411_148

def rawBody411_150 : StackLang.HolProg 64 :=
.seq rawBody411_106 rawBody411_149

def rawBody411_151 : StackLang.HolProg 64 :=
.seq rawBody411_103 rawBody411_150

def rawBody411_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody411_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody411_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody411_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody411_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody411_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody411_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody411_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody411_167 : StackLang.HolProg 64 :=
.seq rawBody411_165 rawBody411_166

def rawBody411_168 : StackLang.HolProg 64 :=
.seq rawBody411_164 rawBody411_167

def rawBody411_169 : StackLang.HolProg 64 :=
.seq rawBody411_163 rawBody411_168

def rawBody411_170 : StackLang.HolProg 64 :=
.seq rawBody411_162 rawBody411_169

def rawBody411_171 : StackLang.HolProg 64 :=
.seq rawBody411_161 rawBody411_170

def rawBody411_172 : StackLang.HolProg 64 :=
.seq rawBody411_160 rawBody411_171

def rawBody411_173 : StackLang.HolProg 64 :=
.seq rawBody411_159 rawBody411_172

def rawBody411_174 : StackLang.HolProg 64 :=
.seq rawBody411_158 rawBody411_173

def rawBody411_175 : StackLang.HolProg 64 :=
.seq rawBody411_157 rawBody411_174

def rawBody411_176 : StackLang.HolProg 64 :=
.seq rawBody411_156 rawBody411_175

def rawBody411_177 : StackLang.HolProg 64 :=
.seq rawBody411_155 rawBody411_176

def rawBody411_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody411_177 rawBody411_178

def rawBody411_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody411_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody411_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody411_185 : StackLang.HolProg 64 :=
.seq rawBody411_183 rawBody411_184

def rawBody411_186 : StackLang.HolProg 64 :=
.seq rawBody411_182 rawBody411_185

def rawBody411_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1229#64)

def rawBody411_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_190 : StackLang.HolProg 64 :=
.seq rawBody411_188 rawBody411_189

def rawBody411_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody411_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody411_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 7

def rawBody411_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody411_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody411_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody411_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody411_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_201 : StackLang.HolProg 64 :=
.seq rawBody411_199 rawBody411_200

def rawBody411_202 : StackLang.HolProg 64 :=
.seq rawBody411_198 rawBody411_201

def rawBody411_203 : StackLang.HolProg 64 :=
.seq rawBody411_197 rawBody411_202

def rawBody411_204 : StackLang.HolProg 64 :=
.seq rawBody411_196 rawBody411_203

def rawBody411_205 : StackLang.HolProg 64 :=
.seq rawBody411_195 rawBody411_204

def rawBody411_206 : StackLang.HolProg 64 :=
.seq rawBody411_194 rawBody411_205

def rawBody411_207 : StackLang.HolProg 64 :=
.seq rawBody411_193 rawBody411_206

def rawBody411_208 : StackLang.HolProg 64 :=
.seq rawBody411_192 rawBody411_207

def rawBody411_209 : StackLang.HolProg 64 :=
.seq rawBody411_191 rawBody411_208

def rawBody411_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody411_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody411_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody411_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody411_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody411_218 : StackLang.HolProg 64 :=
.seq rawBody411_216 rawBody411_217

def rawBody411_219 : StackLang.HolProg 64 :=
.seq rawBody411_215 rawBody411_218

def rawBody411_220 : StackLang.HolProg 64 :=
.seq rawBody411_214 rawBody411_219

def rawBody411_221 : StackLang.HolProg 64 :=
.seq rawBody411_213 rawBody411_220

def rawBody411_222 : StackLang.HolProg 64 :=
.seq rawBody411_212 rawBody411_221

def rawBody411_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody411_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody411_225 : StackLang.HolProg 64 :=
.seq rawBody411_223 rawBody411_224

def rawBody411_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody411_227 : StackLang.HolProg 64 :=
.seq rawBody411_225 rawBody411_226

def rawBody411_228 : StackLang.HolProg 64 :=
.call (some (rawBody411_222, 0, 411, 6)) (Sum.inl 396) (some (rawBody411_227, 411, 7))

def rawBody411_229 : StackLang.HolProg 64 :=
.seq rawBody411_211 rawBody411_228

def rawBody411_230 : StackLang.HolProg 64 :=
.seq rawBody411_210 rawBody411_229

def rawBody411_231 : StackLang.HolProg 64 :=
.seq rawBody411_209 rawBody411_230

def rawBody411_232 : StackLang.HolProg 64 :=
.seq rawBody411_190 rawBody411_231

def rawBody411_233 : StackLang.HolProg 64 :=
.seq rawBody411_187 rawBody411_232

def rawBody411_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody411_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1230#64)

def rawBody411_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_239 : StackLang.HolProg 64 :=
.seq rawBody411_237 rawBody411_238

def rawBody411_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody411_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody411_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody411_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 9

def rawBody411_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody411_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody411_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody411_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody411_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_250 : StackLang.HolProg 64 :=
.seq rawBody411_248 rawBody411_249

def rawBody411_251 : StackLang.HolProg 64 :=
.seq rawBody411_247 rawBody411_250

def rawBody411_252 : StackLang.HolProg 64 :=
.seq rawBody411_246 rawBody411_251

def rawBody411_253 : StackLang.HolProg 64 :=
.seq rawBody411_245 rawBody411_252

def rawBody411_254 : StackLang.HolProg 64 :=
.seq rawBody411_244 rawBody411_253

def rawBody411_255 : StackLang.HolProg 64 :=
.seq rawBody411_243 rawBody411_254

def rawBody411_256 : StackLang.HolProg 64 :=
.seq rawBody411_242 rawBody411_255

def rawBody411_257 : StackLang.HolProg 64 :=
.seq rawBody411_241 rawBody411_256

def rawBody411_258 : StackLang.HolProg 64 :=
.seq rawBody411_240 rawBody411_257

def rawBody411_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody411_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody411_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody411_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody411_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody411_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody411_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody411_267 : StackLang.HolProg 64 :=
.seq rawBody411_265 rawBody411_266

def rawBody411_268 : StackLang.HolProg 64 :=
.seq rawBody411_264 rawBody411_267

def rawBody411_269 : StackLang.HolProg 64 :=
.seq rawBody411_263 rawBody411_268

def rawBody411_270 : StackLang.HolProg 64 :=
.seq rawBody411_262 rawBody411_269

def rawBody411_271 : StackLang.HolProg 64 :=
.seq rawBody411_261 rawBody411_270

def rawBody411_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody411_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody411_274 : StackLang.HolProg 64 :=
.seq rawBody411_272 rawBody411_273

def rawBody411_275 : StackLang.HolProg 64 :=
.call (some (rawBody411_271, 0, 411, 8)) (Sum.inl 401) (some (rawBody411_274, 411, 9))

def rawBody411_276 : StackLang.HolProg 64 :=
.seq rawBody411_260 rawBody411_275

def rawBody411_277 : StackLang.HolProg 64 :=
.seq rawBody411_259 rawBody411_276

def rawBody411_278 : StackLang.HolProg 64 :=
.seq rawBody411_258 rawBody411_277

def rawBody411_279 : StackLang.HolProg 64 :=
.seq rawBody411_239 rawBody411_278

def rawBody411_280 : StackLang.HolProg 64 :=
.seq rawBody411_236 rawBody411_279

def rawBody411_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody411_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody411_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody411_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody411_285 : StackLang.HolProg 64 :=
.seq rawBody411_283 rawBody411_284

def rawBody411_286 : StackLang.HolProg 64 :=
.seq rawBody411_282 rawBody411_285

def rawBody411_287 : StackLang.HolProg 64 :=
.seq rawBody411_281 rawBody411_286

def rawBody411_288 : StackLang.HolProg 64 :=
.seq rawBody411_280 rawBody411_287

def rawBody411_289 : StackLang.HolProg 64 :=
.seq rawBody411_235 rawBody411_288

def rawBody411_290 : StackLang.HolProg 64 :=
.seq rawBody411_234 rawBody411_289

def rawBody411_291 : StackLang.HolProg 64 :=
.seq rawBody411_233 rawBody411_290

def rawBody411_292 : StackLang.HolProg 64 :=
.seq rawBody411_186 rawBody411_291

def rawBody411_293 : StackLang.HolProg 64 :=
.seq rawBody411_181 rawBody411_292

def rawBody411_294 : StackLang.HolProg 64 :=
.seq rawBody411_180 rawBody411_293

def rawBody411_295 : StackLang.HolProg 64 :=
.seq rawBody411_179 rawBody411_294

def rawBody411_296 : StackLang.HolProg 64 :=
.seq rawBody411_154 rawBody411_295

def rawBody411_297 : StackLang.HolProg 64 :=
.seq rawBody411_153 rawBody411_296

def rawBody411_298 : StackLang.HolProg 64 :=
.seq rawBody411_152 rawBody411_297

def rawBody411_299 : StackLang.HolProg 64 :=
.seq rawBody411_151 rawBody411_298

def rawBody411_300 : StackLang.HolProg 64 :=
.seq rawBody411_102 rawBody411_299

def rawBody411_301 : StackLang.HolProg 64 :=
.seq rawBody411_93 rawBody411_300

def rawBody411_302 : StackLang.HolProg 64 :=
.seq rawBody411_92 rawBody411_301

def rawBody411_303 : StackLang.HolProg 64 :=
.seq rawBody411_91 rawBody411_302

def rawBody411_304 : StackLang.HolProg 64 :=
.seq rawBody411_90 rawBody411_303

def rawBody411_305 : StackLang.HolProg 64 :=
.seq rawBody411_89 rawBody411_304

def rawBody411_306 : StackLang.HolProg 64 :=
.seq rawBody411_88 rawBody411_305

def rawBody411_307 : StackLang.HolProg 64 :=
.seq rawBody411_87 rawBody411_306

def rawBody411_308 : StackLang.HolProg 64 :=
.seq rawBody411_86 rawBody411_307

def rawBody411_309 : StackLang.HolProg 64 :=
.seq rawBody411_69 rawBody411_308

def rawBody411_310 : StackLang.HolProg 64 :=
.seq rawBody411_68 rawBody411_309

def rawBody411_311 : StackLang.HolProg 64 :=
.seq rawBody411_67 rawBody411_310

def rawBody411_312 : StackLang.HolProg 64 :=
.seq rawBody411_66 rawBody411_311

def rawBody411_313 : StackLang.HolProg 64 :=
.seq rawBody411_13 rawBody411_312

def rawBody411_314 : StackLang.HolProg 64 :=
.seq rawBody411_6 rawBody411_313

def rawBody411_315 : StackLang.HolProg 64 :=
.seq rawBody411_5 rawBody411_314

def rawBody411_316 : StackLang.HolProg 64 :=
.seq rawBody411_4 rawBody411_315

def rawBody411_317 : StackLang.HolProg 64 :=
.seq rawBody411_3 rawBody411_316

def rawBody411_318 : StackLang.HolProg 64 :=
.seq rawBody411_2 rawBody411_317

def rawBody411_319 : StackLang.HolProg 64 :=
.seq rawBody411_1 rawBody411_318

def rawBody411_320 : StackLang.HolProg 64 :=
.seq rawBody411_0 rawBody411_319

def raw411 : StackLang.HolProg 64 := rawBody411_320
theorem raw411_eq : StackRawCall.compTop RawInfo.rawInfo (function411 (.list [])).1 = raw411 := by
  kernel_rfl
#print axioms raw411_eq
end InitECandidate.Proofs.BackendStages
