import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw437
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody437_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody437_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody437_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody437_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody437_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody437_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody437_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody437_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody437_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody437_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody437_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody437_12 : StackLang.HolProg 64 :=
.seq AllocBody437_10 AllocBody437_11

def AllocBody437_13 : StackLang.HolProg 64 :=
.seq AllocBody437_9 AllocBody437_12

def AllocBody437_14 : StackLang.HolProg 64 :=
.seq AllocBody437_8 AllocBody437_13

def AllocBody437_15 : StackLang.HolProg 64 :=
.seq AllocBody437_7 AllocBody437_14

def AllocBody437_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody437_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody437_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody437_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody437_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody437_22 : StackLang.HolProg 64 :=
.seq AllocBody437_20 AllocBody437_21

def AllocBody437_23 : StackLang.HolProg 64 :=
.seq AllocBody437_19 AllocBody437_22

def AllocBody437_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1317#64)

def AllocBody437_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody437_27 : StackLang.HolProg 64 :=
.seq AllocBody437_25 AllocBody437_26

def AllocBody437_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody437_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody437_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody437_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 437 3

def AllocBody437_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody437_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody437_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody437_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody437_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody437_38 : StackLang.HolProg 64 :=
.seq AllocBody437_36 AllocBody437_37

def AllocBody437_39 : StackLang.HolProg 64 :=
.seq AllocBody437_35 AllocBody437_38

def AllocBody437_40 : StackLang.HolProg 64 :=
.seq AllocBody437_34 AllocBody437_39

def AllocBody437_41 : StackLang.HolProg 64 :=
.seq AllocBody437_33 AllocBody437_40

def AllocBody437_42 : StackLang.HolProg 64 :=
.seq AllocBody437_32 AllocBody437_41

def AllocBody437_43 : StackLang.HolProg 64 :=
.seq AllocBody437_31 AllocBody437_42

def AllocBody437_44 : StackLang.HolProg 64 :=
.seq AllocBody437_30 AllocBody437_43

def AllocBody437_45 : StackLang.HolProg 64 :=
.seq AllocBody437_29 AllocBody437_44

def AllocBody437_46 : StackLang.HolProg 64 :=
.seq AllocBody437_28 AllocBody437_45

def AllocBody437_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody437_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody437_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody437_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody437_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody437_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody437_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody437_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody437_57 : StackLang.HolProg 64 :=
.seq AllocBody437_55 AllocBody437_56

def AllocBody437_58 : StackLang.HolProg 64 :=
.seq AllocBody437_54 AllocBody437_57

def AllocBody437_59 : StackLang.HolProg 64 :=
.seq AllocBody437_53 AllocBody437_58

def AllocBody437_60 : StackLang.HolProg 64 :=
.seq AllocBody437_52 AllocBody437_59

def AllocBody437_61 : StackLang.HolProg 64 :=
.seq AllocBody437_51 AllocBody437_60

def AllocBody437_62 : StackLang.HolProg 64 :=
.seq AllocBody437_50 AllocBody437_61

def AllocBody437_63 : StackLang.HolProg 64 :=
.seq AllocBody437_49 AllocBody437_62

def AllocBody437_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody437_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody437_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody437_67 : StackLang.HolProg 64 :=
.seq AllocBody437_65 AllocBody437_66

def AllocBody437_68 : StackLang.HolProg 64 :=
.seq AllocBody437_64 AllocBody437_67

def AllocBody437_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody437_70 : StackLang.HolProg 64 :=
.seq AllocBody437_68 AllocBody437_69

def AllocBody437_71 : StackLang.HolProg 64 :=
.call (some (AllocBody437_63, 0, 437, 2)) (Sum.inl 68) (some (AllocBody437_70, 437, 3))

def AllocBody437_72 : StackLang.HolProg 64 :=
.seq AllocBody437_48 AllocBody437_71

def AllocBody437_73 : StackLang.HolProg 64 :=
.seq AllocBody437_47 AllocBody437_72

def AllocBody437_74 : StackLang.HolProg 64 :=
.seq AllocBody437_46 AllocBody437_73

def AllocBody437_75 : StackLang.HolProg 64 :=
.seq AllocBody437_27 AllocBody437_74

def AllocBody437_76 : StackLang.HolProg 64 :=
.seq AllocBody437_24 AllocBody437_75

def AllocBody437_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody437_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody437_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody437_80 : StackLang.HolProg 64 :=
.seq AllocBody437_78 AllocBody437_79

def AllocBody437_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody437_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody437_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody437_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody437_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody437_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody437_87 : StackLang.HolProg 64 :=
.seq AllocBody437_85 AllocBody437_86

def AllocBody437_88 : StackLang.HolProg 64 :=
.seq AllocBody437_84 AllocBody437_87

def AllocBody437_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1318#64)

def AllocBody437_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody437_92 : StackLang.HolProg 64 :=
.seq AllocBody437_90 AllocBody437_91

def AllocBody437_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody437_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody437_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody437_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 437 5

def AllocBody437_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody437_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody437_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody437_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody437_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody437_103 : StackLang.HolProg 64 :=
.seq AllocBody437_101 AllocBody437_102

def AllocBody437_104 : StackLang.HolProg 64 :=
.seq AllocBody437_100 AllocBody437_103

def AllocBody437_105 : StackLang.HolProg 64 :=
.seq AllocBody437_99 AllocBody437_104

def AllocBody437_106 : StackLang.HolProg 64 :=
.seq AllocBody437_98 AllocBody437_105

def AllocBody437_107 : StackLang.HolProg 64 :=
.seq AllocBody437_97 AllocBody437_106

def AllocBody437_108 : StackLang.HolProg 64 :=
.seq AllocBody437_96 AllocBody437_107

def AllocBody437_109 : StackLang.HolProg 64 :=
.seq AllocBody437_95 AllocBody437_108

def AllocBody437_110 : StackLang.HolProg 64 :=
.seq AllocBody437_94 AllocBody437_109

def AllocBody437_111 : StackLang.HolProg 64 :=
.seq AllocBody437_93 AllocBody437_110

def AllocBody437_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody437_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody437_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody437_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody437_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody437_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody437_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody437_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody437_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody437_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody437_124 : StackLang.HolProg 64 :=
.seq AllocBody437_122 AllocBody437_123

def AllocBody437_125 : StackLang.HolProg 64 :=
.seq AllocBody437_121 AllocBody437_124

def AllocBody437_126 : StackLang.HolProg 64 :=
.seq AllocBody437_120 AllocBody437_125

def AllocBody437_127 : StackLang.HolProg 64 :=
.seq AllocBody437_119 AllocBody437_126

def AllocBody437_128 : StackLang.HolProg 64 :=
.seq AllocBody437_118 AllocBody437_127

def AllocBody437_129 : StackLang.HolProg 64 :=
.seq AllocBody437_117 AllocBody437_128

def AllocBody437_130 : StackLang.HolProg 64 :=
.seq AllocBody437_116 AllocBody437_129

def AllocBody437_131 : StackLang.HolProg 64 :=
.seq AllocBody437_115 AllocBody437_130

def AllocBody437_132 : StackLang.HolProg 64 :=
.seq AllocBody437_114 AllocBody437_131

def AllocBody437_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody437_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody437_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody437_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody437_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody437_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody437_139 : StackLang.HolProg 64 :=
.seq AllocBody437_137 AllocBody437_138

def AllocBody437_140 : StackLang.HolProg 64 :=
.seq AllocBody437_136 AllocBody437_139

def AllocBody437_141 : StackLang.HolProg 64 :=
.seq AllocBody437_135 AllocBody437_140

def AllocBody437_142 : StackLang.HolProg 64 :=
.seq AllocBody437_134 AllocBody437_141

def AllocBody437_143 : StackLang.HolProg 64 :=
.seq AllocBody437_133 AllocBody437_142

def AllocBody437_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody437_145 : StackLang.HolProg 64 :=
.seq AllocBody437_143 AllocBody437_144

def AllocBody437_146 : StackLang.HolProg 64 :=
.call (some (AllocBody437_132, 0, 437, 4)) (Sum.inl 77) (some (AllocBody437_145, 437, 5))

def AllocBody437_147 : StackLang.HolProg 64 :=
.seq AllocBody437_113 AllocBody437_146

def AllocBody437_148 : StackLang.HolProg 64 :=
.seq AllocBody437_112 AllocBody437_147

def AllocBody437_149 : StackLang.HolProg 64 :=
.seq AllocBody437_111 AllocBody437_148

def AllocBody437_150 : StackLang.HolProg 64 :=
.seq AllocBody437_92 AllocBody437_149

def AllocBody437_151 : StackLang.HolProg 64 :=
.seq AllocBody437_89 AllocBody437_150

def AllocBody437_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody437_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody437_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody437_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody437_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody437_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_162 : StackLang.HolProg 64 :=
.seq AllocBody437_160 AllocBody437_161

def AllocBody437_163 : StackLang.HolProg 64 :=
.seq AllocBody437_159 AllocBody437_162

def AllocBody437_164 : StackLang.HolProg 64 :=
.seq AllocBody437_158 AllocBody437_163

def AllocBody437_165 : StackLang.HolProg 64 :=
.seq AllocBody437_157 AllocBody437_164

def AllocBody437_166 : StackLang.HolProg 64 :=
.seq AllocBody437_156 AllocBody437_165

def AllocBody437_167 : StackLang.HolProg 64 :=
.seq AllocBody437_155 AllocBody437_166

def AllocBody437_168 : StackLang.HolProg 64 :=
.seq AllocBody437_154 AllocBody437_167

def AllocBody437_169 : StackLang.HolProg 64 :=
.seq AllocBody437_153 AllocBody437_168

def AllocBody437_170 : StackLang.HolProg 64 :=
.seq AllocBody437_152 AllocBody437_169

def AllocBody437_171 : StackLang.HolProg 64 :=
.seq AllocBody437_151 AllocBody437_170

def AllocBody437_172 : StackLang.HolProg 64 :=
.seq AllocBody437_88 AllocBody437_171

def AllocBody437_173 : StackLang.HolProg 64 :=
.seq AllocBody437_83 AllocBody437_172

def AllocBody437_174 : StackLang.HolProg 64 :=
.seq AllocBody437_82 AllocBody437_173

def AllocBody437_175 : StackLang.HolProg 64 :=
.seq AllocBody437_81 AllocBody437_174

def AllocBody437_176 : StackLang.HolProg 64 :=
.seq AllocBody437_80 AllocBody437_175

def AllocBody437_177 : StackLang.HolProg 64 :=
.seq AllocBody437_77 AllocBody437_176

def AllocBody437_178 : StackLang.HolProg 64 :=
.seq AllocBody437_76 AllocBody437_177

def AllocBody437_179 : StackLang.HolProg 64 :=
.seq AllocBody437_23 AllocBody437_178

def AllocBody437_180 : StackLang.HolProg 64 :=
.seq AllocBody437_18 AllocBody437_179

def AllocBody437_181 : StackLang.HolProg 64 :=
.seq AllocBody437_17 AllocBody437_180

def AllocBody437_182 : StackLang.HolProg 64 :=
.seq AllocBody437_16 AllocBody437_181

def AllocBody437_183 : StackLang.HolProg 64 :=
.seq AllocBody437_15 AllocBody437_182

def AllocBody437_184 : StackLang.HolProg 64 :=
.seq AllocBody437_6 AllocBody437_183

def AllocBody437_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody437_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_187 : StackLang.HolProg 64 :=
.seq AllocBody437_185 AllocBody437_186

def AllocBody437_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody437_184 AllocBody437_187

def AllocBody437_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody437_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody437_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody437_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody437_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody437_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody437_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody437_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody437_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody437_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody437_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody437_204 : StackLang.HolProg 64 :=
.seq AllocBody437_202 AllocBody437_203

def AllocBody437_205 : StackLang.HolProg 64 :=
.seq AllocBody437_201 AllocBody437_204

def AllocBody437_206 : StackLang.HolProg 64 :=
.seq AllocBody437_200 AllocBody437_205

def AllocBody437_207 : StackLang.HolProg 64 :=
.seq AllocBody437_199 AllocBody437_206

def AllocBody437_208 : StackLang.HolProg 64 :=
.seq AllocBody437_198 AllocBody437_207

def AllocBody437_209 : StackLang.HolProg 64 :=
.seq AllocBody437_197 AllocBody437_208

def AllocBody437_210 : StackLang.HolProg 64 :=
.seq AllocBody437_196 AllocBody437_209

def AllocBody437_211 : StackLang.HolProg 64 :=
.seq AllocBody437_195 AllocBody437_210

def AllocBody437_212 : StackLang.HolProg 64 :=
.seq AllocBody437_194 AllocBody437_211

def AllocBody437_213 : StackLang.HolProg 64 :=
.seq AllocBody437_193 AllocBody437_212

def AllocBody437_214 : StackLang.HolProg 64 :=
.seq AllocBody437_192 AllocBody437_213

def AllocBody437_215 : StackLang.HolProg 64 :=
.seq AllocBody437_191 AllocBody437_214

def AllocBody437_216 : StackLang.HolProg 64 :=
.seq AllocBody437_190 AllocBody437_215

def AllocBody437_217 : StackLang.HolProg 64 :=
.seq AllocBody437_189 AllocBody437_216

def AllocBody437_218 : StackLang.HolProg 64 :=
.seq AllocBody437_188 AllocBody437_217

def AllocBody437_219 : StackLang.HolProg 64 :=
.seq AllocBody437_5 AllocBody437_218

def AllocBody437_220 : StackLang.HolProg 64 :=
.seq AllocBody437_4 AllocBody437_219

def AllocBody437_221 : StackLang.HolProg 64 :=
.seq AllocBody437_3 AllocBody437_220

def AllocBody437_222 : StackLang.HolProg 64 :=
.seq AllocBody437_2 AllocBody437_221

def AllocBody437_223 : StackLang.HolProg 64 :=
.seq AllocBody437_1 AllocBody437_222

def AllocBody437_224 : StackLang.HolProg 64 :=
.seq AllocBody437_0 AllocBody437_223

def Alloc437 : Nat × StackLang.HolProg 64 := (437, AllocBody437_224)
theorem Alloc437_eq : StackAlloc.progComp (437, raw437) = Alloc437 := by
  kernel_rfl
#print axioms Alloc437_eq
end InitECandidate.Proofs.BackendStages
