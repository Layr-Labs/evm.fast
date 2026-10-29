import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw411
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody411_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody411_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody411_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody411_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody411_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody411_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def AllocBody411_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def AllocBody411_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody411_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody411_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody411_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody411_11 : StackLang.HolProg 64 :=
.seq AllocBody411_9 AllocBody411_10

def AllocBody411_12 : StackLang.HolProg 64 :=
.seq AllocBody411_8 AllocBody411_11

def AllocBody411_13 : StackLang.HolProg 64 :=
.seq AllocBody411_7 AllocBody411_12

def AllocBody411_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1227#64)

def AllocBody411_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_17 : StackLang.HolProg 64 :=
.seq AllocBody411_15 AllocBody411_16

def AllocBody411_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody411_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody411_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 3

def AllocBody411_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody411_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody411_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody411_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody411_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_28 : StackLang.HolProg 64 :=
.seq AllocBody411_26 AllocBody411_27

def AllocBody411_29 : StackLang.HolProg 64 :=
.seq AllocBody411_25 AllocBody411_28

def AllocBody411_30 : StackLang.HolProg 64 :=
.seq AllocBody411_24 AllocBody411_29

def AllocBody411_31 : StackLang.HolProg 64 :=
.seq AllocBody411_23 AllocBody411_30

def AllocBody411_32 : StackLang.HolProg 64 :=
.seq AllocBody411_22 AllocBody411_31

def AllocBody411_33 : StackLang.HolProg 64 :=
.seq AllocBody411_21 AllocBody411_32

def AllocBody411_34 : StackLang.HolProg 64 :=
.seq AllocBody411_20 AllocBody411_33

def AllocBody411_35 : StackLang.HolProg 64 :=
.seq AllocBody411_19 AllocBody411_34

def AllocBody411_36 : StackLang.HolProg 64 :=
.seq AllocBody411_18 AllocBody411_35

def AllocBody411_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody411_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody411_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody411_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody411_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody411_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody411_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody411_47 : StackLang.HolProg 64 :=
.seq AllocBody411_45 AllocBody411_46

def AllocBody411_48 : StackLang.HolProg 64 :=
.seq AllocBody411_44 AllocBody411_47

def AllocBody411_49 : StackLang.HolProg 64 :=
.seq AllocBody411_43 AllocBody411_48

def AllocBody411_50 : StackLang.HolProg 64 :=
.seq AllocBody411_42 AllocBody411_49

def AllocBody411_51 : StackLang.HolProg 64 :=
.seq AllocBody411_41 AllocBody411_50

def AllocBody411_52 : StackLang.HolProg 64 :=
.seq AllocBody411_40 AllocBody411_51

def AllocBody411_53 : StackLang.HolProg 64 :=
.seq AllocBody411_39 AllocBody411_52

def AllocBody411_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody411_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody411_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody411_57 : StackLang.HolProg 64 :=
.seq AllocBody411_55 AllocBody411_56

def AllocBody411_58 : StackLang.HolProg 64 :=
.seq AllocBody411_54 AllocBody411_57

def AllocBody411_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody411_60 : StackLang.HolProg 64 :=
.seq AllocBody411_58 AllocBody411_59

def AllocBody411_61 : StackLang.HolProg 64 :=
.call (some (AllocBody411_53, 0, 411, 2)) (Sum.inl 187) (some (AllocBody411_60, 411, 3))

def AllocBody411_62 : StackLang.HolProg 64 :=
.seq AllocBody411_38 AllocBody411_61

def AllocBody411_63 : StackLang.HolProg 64 :=
.seq AllocBody411_37 AllocBody411_62

def AllocBody411_64 : StackLang.HolProg 64 :=
.seq AllocBody411_36 AllocBody411_63

def AllocBody411_65 : StackLang.HolProg 64 :=
.seq AllocBody411_17 AllocBody411_64

def AllocBody411_66 : StackLang.HolProg 64 :=
.seq AllocBody411_14 AllocBody411_65

def AllocBody411_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody411_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody411_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody411_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody411_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody411_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody411_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody411_78 : StackLang.HolProg 64 :=
.seq AllocBody411_76 AllocBody411_77

def AllocBody411_79 : StackLang.HolProg 64 :=
.seq AllocBody411_75 AllocBody411_78

def AllocBody411_80 : StackLang.HolProg 64 :=
.seq AllocBody411_74 AllocBody411_79

def AllocBody411_81 : StackLang.HolProg 64 :=
.seq AllocBody411_73 AllocBody411_80

def AllocBody411_82 : StackLang.HolProg 64 :=
.seq AllocBody411_72 AllocBody411_81

def AllocBody411_83 : StackLang.HolProg 64 :=
.seq AllocBody411_71 AllocBody411_82

def AllocBody411_84 : StackLang.HolProg 64 :=
.seq AllocBody411_70 AllocBody411_83

def AllocBody411_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody411_84 AllocBody411_85

def AllocBody411_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody411_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody411_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody411_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def AllocBody411_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody411_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody411_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody411_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody411_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody411_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody411_99 : StackLang.HolProg 64 :=
.seq AllocBody411_97 AllocBody411_98

def AllocBody411_100 : StackLang.HolProg 64 :=
.seq AllocBody411_96 AllocBody411_99

def AllocBody411_101 : StackLang.HolProg 64 :=
.seq AllocBody411_95 AllocBody411_100

def AllocBody411_102 : StackLang.HolProg 64 :=
.seq AllocBody411_94 AllocBody411_101

def AllocBody411_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1228#64)

def AllocBody411_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_106 : StackLang.HolProg 64 :=
.seq AllocBody411_104 AllocBody411_105

def AllocBody411_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody411_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody411_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 5

def AllocBody411_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody411_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody411_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody411_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody411_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_117 : StackLang.HolProg 64 :=
.seq AllocBody411_115 AllocBody411_116

def AllocBody411_118 : StackLang.HolProg 64 :=
.seq AllocBody411_114 AllocBody411_117

def AllocBody411_119 : StackLang.HolProg 64 :=
.seq AllocBody411_113 AllocBody411_118

def AllocBody411_120 : StackLang.HolProg 64 :=
.seq AllocBody411_112 AllocBody411_119

def AllocBody411_121 : StackLang.HolProg 64 :=
.seq AllocBody411_111 AllocBody411_120

def AllocBody411_122 : StackLang.HolProg 64 :=
.seq AllocBody411_110 AllocBody411_121

def AllocBody411_123 : StackLang.HolProg 64 :=
.seq AllocBody411_109 AllocBody411_122

def AllocBody411_124 : StackLang.HolProg 64 :=
.seq AllocBody411_108 AllocBody411_123

def AllocBody411_125 : StackLang.HolProg 64 :=
.seq AllocBody411_107 AllocBody411_124

def AllocBody411_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody411_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody411_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody411_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody411_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody411_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody411_135 : StackLang.HolProg 64 :=
.seq AllocBody411_133 AllocBody411_134

def AllocBody411_136 : StackLang.HolProg 64 :=
.seq AllocBody411_132 AllocBody411_135

def AllocBody411_137 : StackLang.HolProg 64 :=
.seq AllocBody411_131 AllocBody411_136

def AllocBody411_138 : StackLang.HolProg 64 :=
.seq AllocBody411_130 AllocBody411_137

def AllocBody411_139 : StackLang.HolProg 64 :=
.seq AllocBody411_129 AllocBody411_138

def AllocBody411_140 : StackLang.HolProg 64 :=
.seq AllocBody411_128 AllocBody411_139

def AllocBody411_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody411_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody411_143 : StackLang.HolProg 64 :=
.seq AllocBody411_141 AllocBody411_142

def AllocBody411_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody411_145 : StackLang.HolProg 64 :=
.seq AllocBody411_143 AllocBody411_144

def AllocBody411_146 : StackLang.HolProg 64 :=
.call (some (AllocBody411_140, 0, 411, 4)) (Sum.inl 409) (some (AllocBody411_145, 411, 5))

def AllocBody411_147 : StackLang.HolProg 64 :=
.seq AllocBody411_127 AllocBody411_146

def AllocBody411_148 : StackLang.HolProg 64 :=
.seq AllocBody411_126 AllocBody411_147

def AllocBody411_149 : StackLang.HolProg 64 :=
.seq AllocBody411_125 AllocBody411_148

def AllocBody411_150 : StackLang.HolProg 64 :=
.seq AllocBody411_106 AllocBody411_149

def AllocBody411_151 : StackLang.HolProg 64 :=
.seq AllocBody411_103 AllocBody411_150

def AllocBody411_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody411_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody411_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody411_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody411_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody411_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody411_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody411_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody411_167 : StackLang.HolProg 64 :=
.seq AllocBody411_165 AllocBody411_166

def AllocBody411_168 : StackLang.HolProg 64 :=
.seq AllocBody411_164 AllocBody411_167

def AllocBody411_169 : StackLang.HolProg 64 :=
.seq AllocBody411_163 AllocBody411_168

def AllocBody411_170 : StackLang.HolProg 64 :=
.seq AllocBody411_162 AllocBody411_169

def AllocBody411_171 : StackLang.HolProg 64 :=
.seq AllocBody411_161 AllocBody411_170

def AllocBody411_172 : StackLang.HolProg 64 :=
.seq AllocBody411_160 AllocBody411_171

def AllocBody411_173 : StackLang.HolProg 64 :=
.seq AllocBody411_159 AllocBody411_172

def AllocBody411_174 : StackLang.HolProg 64 :=
.seq AllocBody411_158 AllocBody411_173

def AllocBody411_175 : StackLang.HolProg 64 :=
.seq AllocBody411_157 AllocBody411_174

def AllocBody411_176 : StackLang.HolProg 64 :=
.seq AllocBody411_156 AllocBody411_175

def AllocBody411_177 : StackLang.HolProg 64 :=
.seq AllocBody411_155 AllocBody411_176

def AllocBody411_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody411_177 AllocBody411_178

def AllocBody411_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody411_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody411_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody411_185 : StackLang.HolProg 64 :=
.seq AllocBody411_183 AllocBody411_184

def AllocBody411_186 : StackLang.HolProg 64 :=
.seq AllocBody411_182 AllocBody411_185

def AllocBody411_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1229#64)

def AllocBody411_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_190 : StackLang.HolProg 64 :=
.seq AllocBody411_188 AllocBody411_189

def AllocBody411_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody411_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody411_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 7

def AllocBody411_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody411_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody411_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody411_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody411_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_201 : StackLang.HolProg 64 :=
.seq AllocBody411_199 AllocBody411_200

def AllocBody411_202 : StackLang.HolProg 64 :=
.seq AllocBody411_198 AllocBody411_201

def AllocBody411_203 : StackLang.HolProg 64 :=
.seq AllocBody411_197 AllocBody411_202

def AllocBody411_204 : StackLang.HolProg 64 :=
.seq AllocBody411_196 AllocBody411_203

def AllocBody411_205 : StackLang.HolProg 64 :=
.seq AllocBody411_195 AllocBody411_204

def AllocBody411_206 : StackLang.HolProg 64 :=
.seq AllocBody411_194 AllocBody411_205

def AllocBody411_207 : StackLang.HolProg 64 :=
.seq AllocBody411_193 AllocBody411_206

def AllocBody411_208 : StackLang.HolProg 64 :=
.seq AllocBody411_192 AllocBody411_207

def AllocBody411_209 : StackLang.HolProg 64 :=
.seq AllocBody411_191 AllocBody411_208

def AllocBody411_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody411_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody411_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody411_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody411_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody411_218 : StackLang.HolProg 64 :=
.seq AllocBody411_216 AllocBody411_217

def AllocBody411_219 : StackLang.HolProg 64 :=
.seq AllocBody411_215 AllocBody411_218

def AllocBody411_220 : StackLang.HolProg 64 :=
.seq AllocBody411_214 AllocBody411_219

def AllocBody411_221 : StackLang.HolProg 64 :=
.seq AllocBody411_213 AllocBody411_220

def AllocBody411_222 : StackLang.HolProg 64 :=
.seq AllocBody411_212 AllocBody411_221

def AllocBody411_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody411_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody411_225 : StackLang.HolProg 64 :=
.seq AllocBody411_223 AllocBody411_224

def AllocBody411_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody411_227 : StackLang.HolProg 64 :=
.seq AllocBody411_225 AllocBody411_226

def AllocBody411_228 : StackLang.HolProg 64 :=
.call (some (AllocBody411_222, 0, 411, 6)) (Sum.inl 396) (some (AllocBody411_227, 411, 7))

def AllocBody411_229 : StackLang.HolProg 64 :=
.seq AllocBody411_211 AllocBody411_228

def AllocBody411_230 : StackLang.HolProg 64 :=
.seq AllocBody411_210 AllocBody411_229

def AllocBody411_231 : StackLang.HolProg 64 :=
.seq AllocBody411_209 AllocBody411_230

def AllocBody411_232 : StackLang.HolProg 64 :=
.seq AllocBody411_190 AllocBody411_231

def AllocBody411_233 : StackLang.HolProg 64 :=
.seq AllocBody411_187 AllocBody411_232

def AllocBody411_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody411_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1230#64)

def AllocBody411_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_239 : StackLang.HolProg 64 :=
.seq AllocBody411_237 AllocBody411_238

def AllocBody411_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody411_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody411_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody411_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 411 9

def AllocBody411_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody411_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody411_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody411_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody411_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_250 : StackLang.HolProg 64 :=
.seq AllocBody411_248 AllocBody411_249

def AllocBody411_251 : StackLang.HolProg 64 :=
.seq AllocBody411_247 AllocBody411_250

def AllocBody411_252 : StackLang.HolProg 64 :=
.seq AllocBody411_246 AllocBody411_251

def AllocBody411_253 : StackLang.HolProg 64 :=
.seq AllocBody411_245 AllocBody411_252

def AllocBody411_254 : StackLang.HolProg 64 :=
.seq AllocBody411_244 AllocBody411_253

def AllocBody411_255 : StackLang.HolProg 64 :=
.seq AllocBody411_243 AllocBody411_254

def AllocBody411_256 : StackLang.HolProg 64 :=
.seq AllocBody411_242 AllocBody411_255

def AllocBody411_257 : StackLang.HolProg 64 :=
.seq AllocBody411_241 AllocBody411_256

def AllocBody411_258 : StackLang.HolProg 64 :=
.seq AllocBody411_240 AllocBody411_257

def AllocBody411_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody411_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody411_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody411_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody411_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody411_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody411_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody411_267 : StackLang.HolProg 64 :=
.seq AllocBody411_265 AllocBody411_266

def AllocBody411_268 : StackLang.HolProg 64 :=
.seq AllocBody411_264 AllocBody411_267

def AllocBody411_269 : StackLang.HolProg 64 :=
.seq AllocBody411_263 AllocBody411_268

def AllocBody411_270 : StackLang.HolProg 64 :=
.seq AllocBody411_262 AllocBody411_269

def AllocBody411_271 : StackLang.HolProg 64 :=
.seq AllocBody411_261 AllocBody411_270

def AllocBody411_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody411_273 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody411_274 : StackLang.HolProg 64 :=
.seq AllocBody411_272 AllocBody411_273

def AllocBody411_275 : StackLang.HolProg 64 :=
.call (some (AllocBody411_271, 0, 411, 8)) (Sum.inl 401) (some (AllocBody411_274, 411, 9))

def AllocBody411_276 : StackLang.HolProg 64 :=
.seq AllocBody411_260 AllocBody411_275

def AllocBody411_277 : StackLang.HolProg 64 :=
.seq AllocBody411_259 AllocBody411_276

def AllocBody411_278 : StackLang.HolProg 64 :=
.seq AllocBody411_258 AllocBody411_277

def AllocBody411_279 : StackLang.HolProg 64 :=
.seq AllocBody411_239 AllocBody411_278

def AllocBody411_280 : StackLang.HolProg 64 :=
.seq AllocBody411_236 AllocBody411_279

def AllocBody411_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody411_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody411_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody411_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody411_285 : StackLang.HolProg 64 :=
.seq AllocBody411_283 AllocBody411_284

def AllocBody411_286 : StackLang.HolProg 64 :=
.seq AllocBody411_282 AllocBody411_285

def AllocBody411_287 : StackLang.HolProg 64 :=
.seq AllocBody411_281 AllocBody411_286

def AllocBody411_288 : StackLang.HolProg 64 :=
.seq AllocBody411_280 AllocBody411_287

def AllocBody411_289 : StackLang.HolProg 64 :=
.seq AllocBody411_235 AllocBody411_288

def AllocBody411_290 : StackLang.HolProg 64 :=
.seq AllocBody411_234 AllocBody411_289

def AllocBody411_291 : StackLang.HolProg 64 :=
.seq AllocBody411_233 AllocBody411_290

def AllocBody411_292 : StackLang.HolProg 64 :=
.seq AllocBody411_186 AllocBody411_291

def AllocBody411_293 : StackLang.HolProg 64 :=
.seq AllocBody411_181 AllocBody411_292

def AllocBody411_294 : StackLang.HolProg 64 :=
.seq AllocBody411_180 AllocBody411_293

def AllocBody411_295 : StackLang.HolProg 64 :=
.seq AllocBody411_179 AllocBody411_294

def AllocBody411_296 : StackLang.HolProg 64 :=
.seq AllocBody411_154 AllocBody411_295

def AllocBody411_297 : StackLang.HolProg 64 :=
.seq AllocBody411_153 AllocBody411_296

def AllocBody411_298 : StackLang.HolProg 64 :=
.seq AllocBody411_152 AllocBody411_297

def AllocBody411_299 : StackLang.HolProg 64 :=
.seq AllocBody411_151 AllocBody411_298

def AllocBody411_300 : StackLang.HolProg 64 :=
.seq AllocBody411_102 AllocBody411_299

def AllocBody411_301 : StackLang.HolProg 64 :=
.seq AllocBody411_93 AllocBody411_300

def AllocBody411_302 : StackLang.HolProg 64 :=
.seq AllocBody411_92 AllocBody411_301

def AllocBody411_303 : StackLang.HolProg 64 :=
.seq AllocBody411_91 AllocBody411_302

def AllocBody411_304 : StackLang.HolProg 64 :=
.seq AllocBody411_90 AllocBody411_303

def AllocBody411_305 : StackLang.HolProg 64 :=
.seq AllocBody411_89 AllocBody411_304

def AllocBody411_306 : StackLang.HolProg 64 :=
.seq AllocBody411_88 AllocBody411_305

def AllocBody411_307 : StackLang.HolProg 64 :=
.seq AllocBody411_87 AllocBody411_306

def AllocBody411_308 : StackLang.HolProg 64 :=
.seq AllocBody411_86 AllocBody411_307

def AllocBody411_309 : StackLang.HolProg 64 :=
.seq AllocBody411_69 AllocBody411_308

def AllocBody411_310 : StackLang.HolProg 64 :=
.seq AllocBody411_68 AllocBody411_309

def AllocBody411_311 : StackLang.HolProg 64 :=
.seq AllocBody411_67 AllocBody411_310

def AllocBody411_312 : StackLang.HolProg 64 :=
.seq AllocBody411_66 AllocBody411_311

def AllocBody411_313 : StackLang.HolProg 64 :=
.seq AllocBody411_13 AllocBody411_312

def AllocBody411_314 : StackLang.HolProg 64 :=
.seq AllocBody411_6 AllocBody411_313

def AllocBody411_315 : StackLang.HolProg 64 :=
.seq AllocBody411_5 AllocBody411_314

def AllocBody411_316 : StackLang.HolProg 64 :=
.seq AllocBody411_4 AllocBody411_315

def AllocBody411_317 : StackLang.HolProg 64 :=
.seq AllocBody411_3 AllocBody411_316

def AllocBody411_318 : StackLang.HolProg 64 :=
.seq AllocBody411_2 AllocBody411_317

def AllocBody411_319 : StackLang.HolProg 64 :=
.seq AllocBody411_1 AllocBody411_318

def AllocBody411_320 : StackLang.HolProg 64 :=
.seq AllocBody411_0 AllocBody411_319

def Alloc411 : Nat × StackLang.HolProg 64 := (411, AllocBody411_320)
theorem Alloc411_eq : StackAlloc.progComp (411, raw411) = Alloc411 := by
  kernel_rfl
#print axioms Alloc411_eq
end InitECandidate.Proofs.BackendStages
