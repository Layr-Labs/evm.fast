import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw128
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody128_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 12

def AllocBody128_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody128_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody128_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody128_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody128_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551576#64))

def AllocBody128_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 216#64)))

def AllocBody128_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 352#64)))

def AllocBody128_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 560#64)))

def AllocBody128_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody128_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody128_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody128_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody128_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def AllocBody128_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody128_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody128_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody128_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody128_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 10

def AllocBody128_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 7

def AllocBody128_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody128_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody128_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody128_25 : StackLang.HolProg 64 :=
.seq AllocBody128_23 AllocBody128_24

def AllocBody128_26 : StackLang.HolProg 64 :=
.seq AllocBody128_22 AllocBody128_25

def AllocBody128_27 : StackLang.HolProg 64 :=
.seq AllocBody128_21 AllocBody128_26

def AllocBody128_28 : StackLang.HolProg 64 :=
.seq AllocBody128_20 AllocBody128_27

def AllocBody128_29 : StackLang.HolProg 64 :=
.seq AllocBody128_19 AllocBody128_28

def AllocBody128_30 : StackLang.HolProg 64 :=
.seq AllocBody128_18 AllocBody128_29

def AllocBody128_31 : StackLang.HolProg 64 :=
.seq AllocBody128_17 AllocBody128_30

def AllocBody128_32 : StackLang.HolProg 64 :=
.seq AllocBody128_16 AllocBody128_31

def AllocBody128_33 : StackLang.HolProg 64 :=
.seq AllocBody128_15 AllocBody128_32

def AllocBody128_34 : StackLang.HolProg 64 :=
.seq AllocBody128_14 AllocBody128_33

def AllocBody128_35 : StackLang.HolProg 64 :=
.seq AllocBody128_13 AllocBody128_34

def AllocBody128_36 : StackLang.HolProg 64 :=
.seq AllocBody128_12 AllocBody128_35

def AllocBody128_37 : StackLang.HolProg 64 :=
.seq AllocBody128_11 AllocBody128_36

def AllocBody128_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 73#64)

def AllocBody128_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_41 : StackLang.HolProg 64 :=
.seq AllocBody128_39 AllocBody128_40

def AllocBody128_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody128_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody128_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 128 3

def AllocBody128_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody128_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody128_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody128_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody128_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_52 : StackLang.HolProg 64 :=
.seq AllocBody128_50 AllocBody128_51

def AllocBody128_53 : StackLang.HolProg 64 :=
.seq AllocBody128_49 AllocBody128_52

def AllocBody128_54 : StackLang.HolProg 64 :=
.seq AllocBody128_48 AllocBody128_53

def AllocBody128_55 : StackLang.HolProg 64 :=
.seq AllocBody128_47 AllocBody128_54

def AllocBody128_56 : StackLang.HolProg 64 :=
.seq AllocBody128_46 AllocBody128_55

def AllocBody128_57 : StackLang.HolProg 64 :=
.seq AllocBody128_45 AllocBody128_56

def AllocBody128_58 : StackLang.HolProg 64 :=
.seq AllocBody128_44 AllocBody128_57

def AllocBody128_59 : StackLang.HolProg 64 :=
.seq AllocBody128_43 AllocBody128_58

def AllocBody128_60 : StackLang.HolProg 64 :=
.seq AllocBody128_42 AllocBody128_59

def AllocBody128_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody128_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody128_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody128_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody128_68 : StackLang.HolProg 64 :=
.seq AllocBody128_66 AllocBody128_67

def AllocBody128_69 : StackLang.HolProg 64 :=
.seq AllocBody128_65 AllocBody128_68

def AllocBody128_70 : StackLang.HolProg 64 :=
.seq AllocBody128_64 AllocBody128_69

def AllocBody128_71 : StackLang.HolProg 64 :=
.seq AllocBody128_63 AllocBody128_70

def AllocBody128_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody128_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody128_74 : StackLang.HolProg 64 :=
.seq AllocBody128_72 AllocBody128_73

def AllocBody128_75 : StackLang.HolProg 64 :=
.call (some (AllocBody128_71, 0, 128, 2)) (Sum.inl 124) (some (AllocBody128_74, 128, 3))

def AllocBody128_76 : StackLang.HolProg 64 :=
.seq AllocBody128_62 AllocBody128_75

def AllocBody128_77 : StackLang.HolProg 64 :=
.seq AllocBody128_61 AllocBody128_76

def AllocBody128_78 : StackLang.HolProg 64 :=
.seq AllocBody128_60 AllocBody128_77

def AllocBody128_79 : StackLang.HolProg 64 :=
.seq AllocBody128_41 AllocBody128_78

def AllocBody128_80 : StackLang.HolProg 64 :=
.seq AllocBody128_38 AllocBody128_79

def AllocBody128_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody128_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def AllocBody128_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody128_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 74#64)

def AllocBody128_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_88 : StackLang.HolProg 64 :=
.seq AllocBody128_86 AllocBody128_87

def AllocBody128_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody128_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody128_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 128 5

def AllocBody128_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody128_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody128_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody128_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody128_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_99 : StackLang.HolProg 64 :=
.seq AllocBody128_97 AllocBody128_98

def AllocBody128_100 : StackLang.HolProg 64 :=
.seq AllocBody128_96 AllocBody128_99

def AllocBody128_101 : StackLang.HolProg 64 :=
.seq AllocBody128_95 AllocBody128_100

def AllocBody128_102 : StackLang.HolProg 64 :=
.seq AllocBody128_94 AllocBody128_101

def AllocBody128_103 : StackLang.HolProg 64 :=
.seq AllocBody128_93 AllocBody128_102

def AllocBody128_104 : StackLang.HolProg 64 :=
.seq AllocBody128_92 AllocBody128_103

def AllocBody128_105 : StackLang.HolProg 64 :=
.seq AllocBody128_91 AllocBody128_104

def AllocBody128_106 : StackLang.HolProg 64 :=
.seq AllocBody128_90 AllocBody128_105

def AllocBody128_107 : StackLang.HolProg 64 :=
.seq AllocBody128_89 AllocBody128_106

def AllocBody128_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody128_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody128_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody128_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody128_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody128_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody128_117 : StackLang.HolProg 64 :=
.seq AllocBody128_115 AllocBody128_116

def AllocBody128_118 : StackLang.HolProg 64 :=
.seq AllocBody128_114 AllocBody128_117

def AllocBody128_119 : StackLang.HolProg 64 :=
.seq AllocBody128_113 AllocBody128_118

def AllocBody128_120 : StackLang.HolProg 64 :=
.seq AllocBody128_112 AllocBody128_119

def AllocBody128_121 : StackLang.HolProg 64 :=
.seq AllocBody128_111 AllocBody128_120

def AllocBody128_122 : StackLang.HolProg 64 :=
.seq AllocBody128_110 AllocBody128_121

def AllocBody128_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody128_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody128_125 : StackLang.HolProg 64 :=
.seq AllocBody128_123 AllocBody128_124

def AllocBody128_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody128_127 : StackLang.HolProg 64 :=
.seq AllocBody128_125 AllocBody128_126

def AllocBody128_128 : StackLang.HolProg 64 :=
.call (some (AllocBody128_122, 0, 128, 4)) (Sum.inl 126) (some (AllocBody128_127, 128, 5))

def AllocBody128_129 : StackLang.HolProg 64 :=
.seq AllocBody128_109 AllocBody128_128

def AllocBody128_130 : StackLang.HolProg 64 :=
.seq AllocBody128_108 AllocBody128_129

def AllocBody128_131 : StackLang.HolProg 64 :=
.seq AllocBody128_107 AllocBody128_130

def AllocBody128_132 : StackLang.HolProg 64 :=
.seq AllocBody128_88 AllocBody128_131

def AllocBody128_133 : StackLang.HolProg 64 :=
.seq AllocBody128_85 AllocBody128_132

def AllocBody128_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody128_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody128_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody128_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody128_139 : StackLang.HolProg 64 :=
.seq AllocBody128_137 AllocBody128_138

def AllocBody128_140 : StackLang.HolProg 64 :=
.seq AllocBody128_136 AllocBody128_139

def AllocBody128_141 : StackLang.HolProg 64 :=
.seq AllocBody128_135 AllocBody128_140

def AllocBody128_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 75#64)

def AllocBody128_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_145 : StackLang.HolProg 64 :=
.seq AllocBody128_143 AllocBody128_144

def AllocBody128_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody128_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody128_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 128 7

def AllocBody128_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody128_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody128_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody128_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody128_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_156 : StackLang.HolProg 64 :=
.seq AllocBody128_154 AllocBody128_155

def AllocBody128_157 : StackLang.HolProg 64 :=
.seq AllocBody128_153 AllocBody128_156

def AllocBody128_158 : StackLang.HolProg 64 :=
.seq AllocBody128_152 AllocBody128_157

def AllocBody128_159 : StackLang.HolProg 64 :=
.seq AllocBody128_151 AllocBody128_158

def AllocBody128_160 : StackLang.HolProg 64 :=
.seq AllocBody128_150 AllocBody128_159

def AllocBody128_161 : StackLang.HolProg 64 :=
.seq AllocBody128_149 AllocBody128_160

def AllocBody128_162 : StackLang.HolProg 64 :=
.seq AllocBody128_148 AllocBody128_161

def AllocBody128_163 : StackLang.HolProg 64 :=
.seq AllocBody128_147 AllocBody128_162

def AllocBody128_164 : StackLang.HolProg 64 :=
.seq AllocBody128_146 AllocBody128_163

def AllocBody128_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody128_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody128_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody128_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody128_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody128_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody128_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def AllocBody128_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody128_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody128_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody128_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody128_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody128_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody128_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def AllocBody128_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody128_183 : StackLang.HolProg 64 :=
.seq AllocBody128_181 AllocBody128_182

def AllocBody128_184 : StackLang.HolProg 64 :=
.seq AllocBody128_180 AllocBody128_183

def AllocBody128_185 : StackLang.HolProg 64 :=
.seq AllocBody128_179 AllocBody128_184

def AllocBody128_186 : StackLang.HolProg 64 :=
.seq AllocBody128_178 AllocBody128_185

def AllocBody128_187 : StackLang.HolProg 64 :=
.seq AllocBody128_177 AllocBody128_186

def AllocBody128_188 : StackLang.HolProg 64 :=
.seq AllocBody128_176 AllocBody128_187

def AllocBody128_189 : StackLang.HolProg 64 :=
.seq AllocBody128_175 AllocBody128_188

def AllocBody128_190 : StackLang.HolProg 64 :=
.seq AllocBody128_174 AllocBody128_189

def AllocBody128_191 : StackLang.HolProg 64 :=
.seq AllocBody128_173 AllocBody128_190

def AllocBody128_192 : StackLang.HolProg 64 :=
.seq AllocBody128_172 AllocBody128_191

def AllocBody128_193 : StackLang.HolProg 64 :=
.seq AllocBody128_171 AllocBody128_192

def AllocBody128_194 : StackLang.HolProg 64 :=
.seq AllocBody128_170 AllocBody128_193

def AllocBody128_195 : StackLang.HolProg 64 :=
.seq AllocBody128_169 AllocBody128_194

def AllocBody128_196 : StackLang.HolProg 64 :=
.seq AllocBody128_168 AllocBody128_195

def AllocBody128_197 : StackLang.HolProg 64 :=
.seq AllocBody128_167 AllocBody128_196

def AllocBody128_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody128_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody128_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def AllocBody128_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def AllocBody128_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def AllocBody128_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody128_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody128_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody128_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody128_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def AllocBody128_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody128_209 : StackLang.HolProg 64 :=
.seq AllocBody128_207 AllocBody128_208

def AllocBody128_210 : StackLang.HolProg 64 :=
.seq AllocBody128_206 AllocBody128_209

def AllocBody128_211 : StackLang.HolProg 64 :=
.seq AllocBody128_205 AllocBody128_210

def AllocBody128_212 : StackLang.HolProg 64 :=
.seq AllocBody128_204 AllocBody128_211

def AllocBody128_213 : StackLang.HolProg 64 :=
.seq AllocBody128_203 AllocBody128_212

def AllocBody128_214 : StackLang.HolProg 64 :=
.seq AllocBody128_202 AllocBody128_213

def AllocBody128_215 : StackLang.HolProg 64 :=
.seq AllocBody128_201 AllocBody128_214

def AllocBody128_216 : StackLang.HolProg 64 :=
.seq AllocBody128_200 AllocBody128_215

def AllocBody128_217 : StackLang.HolProg 64 :=
.seq AllocBody128_199 AllocBody128_216

def AllocBody128_218 : StackLang.HolProg 64 :=
.seq AllocBody128_198 AllocBody128_217

def AllocBody128_219 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody128_220 : StackLang.HolProg 64 :=
.seq AllocBody128_218 AllocBody128_219

def AllocBody128_221 : StackLang.HolProg 64 :=
.call (some (AllocBody128_197, 0, 128, 6)) (Sum.inl 126) (some (AllocBody128_220, 128, 7))

def AllocBody128_222 : StackLang.HolProg 64 :=
.seq AllocBody128_166 AllocBody128_221

def AllocBody128_223 : StackLang.HolProg 64 :=
.seq AllocBody128_165 AllocBody128_222

def AllocBody128_224 : StackLang.HolProg 64 :=
.seq AllocBody128_164 AllocBody128_223

def AllocBody128_225 : StackLang.HolProg 64 :=
.seq AllocBody128_145 AllocBody128_224

def AllocBody128_226 : StackLang.HolProg 64 :=
.seq AllocBody128_142 AllocBody128_225

def AllocBody128_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def AllocBody128_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody128_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 16#64)

def AllocBody128_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody128_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody128_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 14 0#64)

def AllocBody128_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def AllocBody128_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody128_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody128_245 : StackLang.HolProg 64 :=
.seq AllocBody128_243 AllocBody128_244

def AllocBody128_246 : StackLang.HolProg 64 :=
.seq AllocBody128_242 AllocBody128_245

def AllocBody128_247 : StackLang.HolProg 64 :=
.seq AllocBody128_241 AllocBody128_246

def AllocBody128_248 : StackLang.HolProg 64 :=
.seq AllocBody128_240 AllocBody128_247

def AllocBody128_249 : StackLang.HolProg 64 :=
.seq AllocBody128_239 AllocBody128_248

def AllocBody128_250 : StackLang.HolProg 64 :=
.seq AllocBody128_238 AllocBody128_249

def AllocBody128_251 : StackLang.HolProg 64 :=
.seq AllocBody128_237 AllocBody128_250

def AllocBody128_252 : StackLang.HolProg 64 :=
.seq AllocBody128_236 AllocBody128_251

def AllocBody128_253 : StackLang.HolProg 64 :=
.seq AllocBody128_235 AllocBody128_252

def AllocBody128_254 : StackLang.HolProg 64 :=
.seq AllocBody128_234 AllocBody128_253

def AllocBody128_255 : StackLang.HolProg 64 :=
.seq AllocBody128_233 AllocBody128_254

def AllocBody128_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody128_258 : StackLang.HolProg 64 :=
.seq AllocBody128_256 AllocBody128_257

def AllocBody128_259 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) AllocBody128_255 AllocBody128_258

def AllocBody128_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_262 : StackLang.HolProg 64 :=
.seq AllocBody128_260 AllocBody128_261

def AllocBody128_263 : StackLang.HolProg 64 :=
.seq AllocBody128_259 AllocBody128_262

def AllocBody128_264 : StackLang.HolProg 64 :=
.seq AllocBody128_232 AllocBody128_263

def AllocBody128_265 : StackLang.HolProg 64 :=
.seq AllocBody128_231 AllocBody128_264

def AllocBody128_266 : StackLang.HolProg 64 :=
.loop AllocBody128_265

def AllocBody128_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody128_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 125

def AllocBody128_274 : StackLang.HolProg 64 :=
.seq AllocBody128_272 AllocBody128_273

def AllocBody128_275 : StackLang.HolProg 64 :=
.seq AllocBody128_271 AllocBody128_274

def AllocBody128_276 : StackLang.HolProg 64 :=
.seq AllocBody128_270 AllocBody128_275

def AllocBody128_277 : StackLang.HolProg 64 :=
.seq AllocBody128_269 AllocBody128_276

def AllocBody128_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_279 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody128_277 AllocBody128_278

def AllocBody128_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def AllocBody128_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody128_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody128_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody128_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody128_288 : StackLang.HolProg 64 :=
.seq AllocBody128_286 AllocBody128_287

def AllocBody128_289 : StackLang.HolProg 64 :=
.seq AllocBody128_285 AllocBody128_288

def AllocBody128_290 : StackLang.HolProg 64 :=
.seq AllocBody128_284 AllocBody128_289

def AllocBody128_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def AllocBody128_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody128_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody128_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def AllocBody128_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody128_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody128_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody128_305 : StackLang.HolProg 64 :=
.seq AllocBody128_303 AllocBody128_304

def AllocBody128_306 : StackLang.HolProg 64 :=
.seq AllocBody128_302 AllocBody128_305

def AllocBody128_307 : StackLang.HolProg 64 :=
.seq AllocBody128_301 AllocBody128_306

def AllocBody128_308 : StackLang.HolProg 64 :=
.seq AllocBody128_300 AllocBody128_307

def AllocBody128_309 : StackLang.HolProg 64 :=
.seq AllocBody128_299 AllocBody128_308

def AllocBody128_310 : StackLang.HolProg 64 :=
.seq AllocBody128_298 AllocBody128_309

def AllocBody128_311 : StackLang.HolProg 64 :=
.seq AllocBody128_297 AllocBody128_310

def AllocBody128_312 : StackLang.HolProg 64 :=
.seq AllocBody128_296 AllocBody128_311

def AllocBody128_313 : StackLang.HolProg 64 :=
.seq AllocBody128_295 AllocBody128_312

def AllocBody128_314 : StackLang.HolProg 64 :=
.seq AllocBody128_294 AllocBody128_313

def AllocBody128_315 : StackLang.HolProg 64 :=
.seq AllocBody128_293 AllocBody128_314

def AllocBody128_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody128_318 : StackLang.HolProg 64 :=
.seq AllocBody128_316 AllocBody128_317

def AllocBody128_319 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody128_315 AllocBody128_318

def AllocBody128_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_322 : StackLang.HolProg 64 :=
.seq AllocBody128_320 AllocBody128_321

def AllocBody128_323 : StackLang.HolProg 64 :=
.seq AllocBody128_319 AllocBody128_322

def AllocBody128_324 : StackLang.HolProg 64 :=
.seq AllocBody128_292 AllocBody128_323

def AllocBody128_325 : StackLang.HolProg 64 :=
.seq AllocBody128_291 AllocBody128_324

def AllocBody128_326 : StackLang.HolProg 64 :=
.loop AllocBody128_325

def AllocBody128_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 10

def AllocBody128_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 76#64)

def AllocBody128_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_332 : StackLang.HolProg 64 :=
.seq AllocBody128_330 AllocBody128_331

def AllocBody128_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody128_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody128_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody128_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 128 9

def AllocBody128_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody128_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody128_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody128_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody128_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_343 : StackLang.HolProg 64 :=
.seq AllocBody128_341 AllocBody128_342

def AllocBody128_344 : StackLang.HolProg 64 :=
.seq AllocBody128_340 AllocBody128_343

def AllocBody128_345 : StackLang.HolProg 64 :=
.seq AllocBody128_339 AllocBody128_344

def AllocBody128_346 : StackLang.HolProg 64 :=
.seq AllocBody128_338 AllocBody128_345

def AllocBody128_347 : StackLang.HolProg 64 :=
.seq AllocBody128_337 AllocBody128_346

def AllocBody128_348 : StackLang.HolProg 64 :=
.seq AllocBody128_336 AllocBody128_347

def AllocBody128_349 : StackLang.HolProg 64 :=
.seq AllocBody128_335 AllocBody128_348

def AllocBody128_350 : StackLang.HolProg 64 :=
.seq AllocBody128_334 AllocBody128_349

def AllocBody128_351 : StackLang.HolProg 64 :=
.seq AllocBody128_333 AllocBody128_350

def AllocBody128_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody128_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody128_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody128_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody128_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody128_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody128_360 : StackLang.HolProg 64 :=
.seq AllocBody128_358 AllocBody128_359

def AllocBody128_361 : StackLang.HolProg 64 :=
.seq AllocBody128_357 AllocBody128_360

def AllocBody128_362 : StackLang.HolProg 64 :=
.seq AllocBody128_356 AllocBody128_361

def AllocBody128_363 : StackLang.HolProg 64 :=
.seq AllocBody128_355 AllocBody128_362

def AllocBody128_364 : StackLang.HolProg 64 :=
.seq AllocBody128_354 AllocBody128_363

def AllocBody128_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody128_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 10

def AllocBody128_367 : StackLang.HolProg 64 :=
.seq AllocBody128_365 AllocBody128_366

def AllocBody128_368 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody128_369 : StackLang.HolProg 64 :=
.seq AllocBody128_367 AllocBody128_368

def AllocBody128_370 : StackLang.HolProg 64 :=
.call (some (AllocBody128_364, 0, 128, 8)) (Sum.inl 127) (some (AllocBody128_369, 128, 9))

def AllocBody128_371 : StackLang.HolProg 64 :=
.seq AllocBody128_353 AllocBody128_370

def AllocBody128_372 : StackLang.HolProg 64 :=
.seq AllocBody128_352 AllocBody128_371

def AllocBody128_373 : StackLang.HolProg 64 :=
.seq AllocBody128_351 AllocBody128_372

def AllocBody128_374 : StackLang.HolProg 64 :=
.seq AllocBody128_332 AllocBody128_373

def AllocBody128_375 : StackLang.HolProg 64 :=
.seq AllocBody128_329 AllocBody128_374

def AllocBody128_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody128_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody128_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody128_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody128_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 125

def AllocBody128_381 : StackLang.HolProg 64 :=
.seq AllocBody128_379 AllocBody128_380

def AllocBody128_382 : StackLang.HolProg 64 :=
.seq AllocBody128_378 AllocBody128_381

def AllocBody128_383 : StackLang.HolProg 64 :=
.seq AllocBody128_377 AllocBody128_382

def AllocBody128_384 : StackLang.HolProg 64 :=
.seq AllocBody128_376 AllocBody128_383

def AllocBody128_385 : StackLang.HolProg 64 :=
.seq AllocBody128_375 AllocBody128_384

def AllocBody128_386 : StackLang.HolProg 64 :=
.seq AllocBody128_328 AllocBody128_385

def AllocBody128_387 : StackLang.HolProg 64 :=
.seq AllocBody128_327 AllocBody128_386

def AllocBody128_388 : StackLang.HolProg 64 :=
.seq AllocBody128_326 AllocBody128_387

def AllocBody128_389 : StackLang.HolProg 64 :=
.seq AllocBody128_290 AllocBody128_388

def AllocBody128_390 : StackLang.HolProg 64 :=
.seq AllocBody128_283 AllocBody128_389

def AllocBody128_391 : StackLang.HolProg 64 :=
.seq AllocBody128_282 AllocBody128_390

def AllocBody128_392 : StackLang.HolProg 64 :=
.seq AllocBody128_281 AllocBody128_391

def AllocBody128_393 : StackLang.HolProg 64 :=
.seq AllocBody128_280 AllocBody128_392

def AllocBody128_394 : StackLang.HolProg 64 :=
.seq AllocBody128_279 AllocBody128_393

def AllocBody128_395 : StackLang.HolProg 64 :=
.seq AllocBody128_268 AllocBody128_394

def AllocBody128_396 : StackLang.HolProg 64 :=
.seq AllocBody128_267 AllocBody128_395

def AllocBody128_397 : StackLang.HolProg 64 :=
.seq AllocBody128_266 AllocBody128_396

def AllocBody128_398 : StackLang.HolProg 64 :=
.seq AllocBody128_230 AllocBody128_397

def AllocBody128_399 : StackLang.HolProg 64 :=
.seq AllocBody128_229 AllocBody128_398

def AllocBody128_400 : StackLang.HolProg 64 :=
.seq AllocBody128_228 AllocBody128_399

def AllocBody128_401 : StackLang.HolProg 64 :=
.seq AllocBody128_227 AllocBody128_400

def AllocBody128_402 : StackLang.HolProg 64 :=
.seq AllocBody128_226 AllocBody128_401

def AllocBody128_403 : StackLang.HolProg 64 :=
.seq AllocBody128_141 AllocBody128_402

def AllocBody128_404 : StackLang.HolProg 64 :=
.seq AllocBody128_134 AllocBody128_403

def AllocBody128_405 : StackLang.HolProg 64 :=
.seq AllocBody128_133 AllocBody128_404

def AllocBody128_406 : StackLang.HolProg 64 :=
.seq AllocBody128_84 AllocBody128_405

def AllocBody128_407 : StackLang.HolProg 64 :=
.seq AllocBody128_83 AllocBody128_406

def AllocBody128_408 : StackLang.HolProg 64 :=
.seq AllocBody128_82 AllocBody128_407

def AllocBody128_409 : StackLang.HolProg 64 :=
.seq AllocBody128_81 AllocBody128_408

def AllocBody128_410 : StackLang.HolProg 64 :=
.seq AllocBody128_80 AllocBody128_409

def AllocBody128_411 : StackLang.HolProg 64 :=
.seq AllocBody128_37 AllocBody128_410

def AllocBody128_412 : StackLang.HolProg 64 :=
.seq AllocBody128_10 AllocBody128_411

def AllocBody128_413 : StackLang.HolProg 64 :=
.seq AllocBody128_9 AllocBody128_412

def AllocBody128_414 : StackLang.HolProg 64 :=
.seq AllocBody128_8 AllocBody128_413

def AllocBody128_415 : StackLang.HolProg 64 :=
.seq AllocBody128_7 AllocBody128_414

def AllocBody128_416 : StackLang.HolProg 64 :=
.seq AllocBody128_6 AllocBody128_415

def AllocBody128_417 : StackLang.HolProg 64 :=
.seq AllocBody128_5 AllocBody128_416

def AllocBody128_418 : StackLang.HolProg 64 :=
.seq AllocBody128_4 AllocBody128_417

def AllocBody128_419 : StackLang.HolProg 64 :=
.seq AllocBody128_3 AllocBody128_418

def AllocBody128_420 : StackLang.HolProg 64 :=
.seq AllocBody128_2 AllocBody128_419

def AllocBody128_421 : StackLang.HolProg 64 :=
.seq AllocBody128_1 AllocBody128_420

def AllocBody128_422 : StackLang.HolProg 64 :=
.seq AllocBody128_0 AllocBody128_421

def Alloc128 : Nat × StackLang.HolProg 64 := (128, AllocBody128_422)
theorem Alloc128_eq : StackAlloc.progComp (128, raw128) = Alloc128 := by
  kernel_rfl
#print axioms Alloc128_eq
end InitECandidate.Proofs.BackendStages
