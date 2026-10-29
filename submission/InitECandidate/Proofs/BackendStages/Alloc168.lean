import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw168
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody168_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody168_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody168_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody168_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody168_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody168_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody168_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody168_10 : StackLang.HolProg 64 :=
.seq AllocBody168_8 AllocBody168_9

def AllocBody168_11 : StackLang.HolProg 64 :=
.seq AllocBody168_7 AllocBody168_10

def AllocBody168_12 : StackLang.HolProg 64 :=
.seq AllocBody168_6 AllocBody168_11

def AllocBody168_13 : StackLang.HolProg 64 :=
.seq AllocBody168_5 AllocBody168_12

def AllocBody168_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_15 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody168_13 AllocBody168_14

def AllocBody168_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 183#64)

def AllocBody168_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody168_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551488#64)))

def AllocBody168_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody168_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody168_27 : StackLang.HolProg 64 :=
.seq AllocBody168_25 AllocBody168_26

def AllocBody168_28 : StackLang.HolProg 64 :=
.seq AllocBody168_24 AllocBody168_27

def AllocBody168_29 : StackLang.HolProg 64 :=
.seq AllocBody168_23 AllocBody168_28

def AllocBody168_30 : StackLang.HolProg 64 :=
.seq AllocBody168_22 AllocBody168_29

def AllocBody168_31 : StackLang.HolProg 64 :=
.seq AllocBody168_21 AllocBody168_30

def AllocBody168_32 : StackLang.HolProg 64 :=
.seq AllocBody168_20 AllocBody168_31

def AllocBody168_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody168_34 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody168_32 AllocBody168_33

def AllocBody168_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 191#64)

def AllocBody168_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551433#64)))

def AllocBody168_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody168_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody168_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody168_46 : StackLang.HolProg 64 :=
.seq AllocBody168_44 AllocBody168_45

def AllocBody168_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 185#64)

def AllocBody168_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody168_50 : StackLang.HolProg 64 :=
.seq AllocBody168_48 AllocBody168_49

def AllocBody168_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody168_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody168_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody168_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 3

def AllocBody168_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody168_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody168_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody168_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody168_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody168_61 : StackLang.HolProg 64 :=
.seq AllocBody168_59 AllocBody168_60

def AllocBody168_62 : StackLang.HolProg 64 :=
.seq AllocBody168_58 AllocBody168_61

def AllocBody168_63 : StackLang.HolProg 64 :=
.seq AllocBody168_57 AllocBody168_62

def AllocBody168_64 : StackLang.HolProg 64 :=
.seq AllocBody168_56 AllocBody168_63

def AllocBody168_65 : StackLang.HolProg 64 :=
.seq AllocBody168_55 AllocBody168_64

def AllocBody168_66 : StackLang.HolProg 64 :=
.seq AllocBody168_54 AllocBody168_65

def AllocBody168_67 : StackLang.HolProg 64 :=
.seq AllocBody168_53 AllocBody168_66

def AllocBody168_68 : StackLang.HolProg 64 :=
.seq AllocBody168_52 AllocBody168_67

def AllocBody168_69 : StackLang.HolProg 64 :=
.seq AllocBody168_51 AllocBody168_68

def AllocBody168_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody168_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody168_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody168_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody168_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody168_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody168_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody168_79 : StackLang.HolProg 64 :=
.seq AllocBody168_77 AllocBody168_78

def AllocBody168_80 : StackLang.HolProg 64 :=
.seq AllocBody168_76 AllocBody168_79

def AllocBody168_81 : StackLang.HolProg 64 :=
.seq AllocBody168_75 AllocBody168_80

def AllocBody168_82 : StackLang.HolProg 64 :=
.seq AllocBody168_74 AllocBody168_81

def AllocBody168_83 : StackLang.HolProg 64 :=
.seq AllocBody168_73 AllocBody168_82

def AllocBody168_84 : StackLang.HolProg 64 :=
.seq AllocBody168_72 AllocBody168_83

def AllocBody168_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody168_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody168_87 : StackLang.HolProg 64 :=
.seq AllocBody168_85 AllocBody168_86

def AllocBody168_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody168_89 : StackLang.HolProg 64 :=
.seq AllocBody168_87 AllocBody168_88

def AllocBody168_90 : StackLang.HolProg 64 :=
.call (some (AllocBody168_84, 0, 168, 2)) (Sum.inl 160) (some (AllocBody168_89, 168, 3))

def AllocBody168_91 : StackLang.HolProg 64 :=
.seq AllocBody168_71 AllocBody168_90

def AllocBody168_92 : StackLang.HolProg 64 :=
.seq AllocBody168_70 AllocBody168_91

def AllocBody168_93 : StackLang.HolProg 64 :=
.seq AllocBody168_69 AllocBody168_92

def AllocBody168_94 : StackLang.HolProg 64 :=
.seq AllocBody168_50 AllocBody168_93

def AllocBody168_95 : StackLang.HolProg 64 :=
.seq AllocBody168_47 AllocBody168_94

def AllocBody168_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody168_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody168_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody168_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody168_103 : StackLang.HolProg 64 :=
.seq AllocBody168_101 AllocBody168_102

def AllocBody168_104 : StackLang.HolProg 64 :=
.seq AllocBody168_100 AllocBody168_103

def AllocBody168_105 : StackLang.HolProg 64 :=
.seq AllocBody168_99 AllocBody168_104

def AllocBody168_106 : StackLang.HolProg 64 :=
.seq AllocBody168_98 AllocBody168_105

def AllocBody168_107 : StackLang.HolProg 64 :=
.seq AllocBody168_97 AllocBody168_106

def AllocBody168_108 : StackLang.HolProg 64 :=
.seq AllocBody168_96 AllocBody168_107

def AllocBody168_109 : StackLang.HolProg 64 :=
.seq AllocBody168_95 AllocBody168_108

def AllocBody168_110 : StackLang.HolProg 64 :=
.seq AllocBody168_46 AllocBody168_109

def AllocBody168_111 : StackLang.HolProg 64 :=
.seq AllocBody168_43 AllocBody168_110

def AllocBody168_112 : StackLang.HolProg 64 :=
.seq AllocBody168_42 AllocBody168_111

def AllocBody168_113 : StackLang.HolProg 64 :=
.seq AllocBody168_41 AllocBody168_112

def AllocBody168_114 : StackLang.HolProg 64 :=
.seq AllocBody168_40 AllocBody168_113

def AllocBody168_115 : StackLang.HolProg 64 :=
.seq AllocBody168_39 AllocBody168_114

def AllocBody168_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_117 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody168_115 AllocBody168_116

def AllocBody168_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 247#64)

def AllocBody168_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody168_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551424#64)))

def AllocBody168_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody168_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody168_129 : StackLang.HolProg 64 :=
.seq AllocBody168_127 AllocBody168_128

def AllocBody168_130 : StackLang.HolProg 64 :=
.seq AllocBody168_126 AllocBody168_129

def AllocBody168_131 : StackLang.HolProg 64 :=
.seq AllocBody168_125 AllocBody168_130

def AllocBody168_132 : StackLang.HolProg 64 :=
.seq AllocBody168_124 AllocBody168_131

def AllocBody168_133 : StackLang.HolProg 64 :=
.seq AllocBody168_123 AllocBody168_132

def AllocBody168_134 : StackLang.HolProg 64 :=
.seq AllocBody168_122 AllocBody168_133

def AllocBody168_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody168_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody168_134 AllocBody168_135

def AllocBody168_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551369#64)))

def AllocBody168_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody168_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody168_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody168_145 : StackLang.HolProg 64 :=
.seq AllocBody168_143 AllocBody168_144

def AllocBody168_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 186#64)

def AllocBody168_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody168_149 : StackLang.HolProg 64 :=
.seq AllocBody168_147 AllocBody168_148

def AllocBody168_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody168_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody168_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody168_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 168 5

def AllocBody168_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody168_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody168_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody168_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody168_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody168_160 : StackLang.HolProg 64 :=
.seq AllocBody168_158 AllocBody168_159

def AllocBody168_161 : StackLang.HolProg 64 :=
.seq AllocBody168_157 AllocBody168_160

def AllocBody168_162 : StackLang.HolProg 64 :=
.seq AllocBody168_156 AllocBody168_161

def AllocBody168_163 : StackLang.HolProg 64 :=
.seq AllocBody168_155 AllocBody168_162

def AllocBody168_164 : StackLang.HolProg 64 :=
.seq AllocBody168_154 AllocBody168_163

def AllocBody168_165 : StackLang.HolProg 64 :=
.seq AllocBody168_153 AllocBody168_164

def AllocBody168_166 : StackLang.HolProg 64 :=
.seq AllocBody168_152 AllocBody168_165

def AllocBody168_167 : StackLang.HolProg 64 :=
.seq AllocBody168_151 AllocBody168_166

def AllocBody168_168 : StackLang.HolProg 64 :=
.seq AllocBody168_150 AllocBody168_167

def AllocBody168_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody168_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody168_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody168_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody168_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody168_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody168_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody168_178 : StackLang.HolProg 64 :=
.seq AllocBody168_176 AllocBody168_177

def AllocBody168_179 : StackLang.HolProg 64 :=
.seq AllocBody168_175 AllocBody168_178

def AllocBody168_180 : StackLang.HolProg 64 :=
.seq AllocBody168_174 AllocBody168_179

def AllocBody168_181 : StackLang.HolProg 64 :=
.seq AllocBody168_173 AllocBody168_180

def AllocBody168_182 : StackLang.HolProg 64 :=
.seq AllocBody168_172 AllocBody168_181

def AllocBody168_183 : StackLang.HolProg 64 :=
.seq AllocBody168_171 AllocBody168_182

def AllocBody168_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody168_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody168_186 : StackLang.HolProg 64 :=
.seq AllocBody168_184 AllocBody168_185

def AllocBody168_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody168_188 : StackLang.HolProg 64 :=
.seq AllocBody168_186 AllocBody168_187

def AllocBody168_189 : StackLang.HolProg 64 :=
.call (some (AllocBody168_183, 0, 168, 4)) (Sum.inl 160) (some (AllocBody168_188, 168, 5))

def AllocBody168_190 : StackLang.HolProg 64 :=
.seq AllocBody168_170 AllocBody168_189

def AllocBody168_191 : StackLang.HolProg 64 :=
.seq AllocBody168_169 AllocBody168_190

def AllocBody168_192 : StackLang.HolProg 64 :=
.seq AllocBody168_168 AllocBody168_191

def AllocBody168_193 : StackLang.HolProg 64 :=
.seq AllocBody168_149 AllocBody168_192

def AllocBody168_194 : StackLang.HolProg 64 :=
.seq AllocBody168_146 AllocBody168_193

def AllocBody168_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody168_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody168_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody168_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody168_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody168_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody168_202 : StackLang.HolProg 64 :=
.seq AllocBody168_200 AllocBody168_201

def AllocBody168_203 : StackLang.HolProg 64 :=
.seq AllocBody168_199 AllocBody168_202

def AllocBody168_204 : StackLang.HolProg 64 :=
.seq AllocBody168_198 AllocBody168_203

def AllocBody168_205 : StackLang.HolProg 64 :=
.seq AllocBody168_197 AllocBody168_204

def AllocBody168_206 : StackLang.HolProg 64 :=
.seq AllocBody168_196 AllocBody168_205

def AllocBody168_207 : StackLang.HolProg 64 :=
.seq AllocBody168_195 AllocBody168_206

def AllocBody168_208 : StackLang.HolProg 64 :=
.seq AllocBody168_194 AllocBody168_207

def AllocBody168_209 : StackLang.HolProg 64 :=
.seq AllocBody168_145 AllocBody168_208

def AllocBody168_210 : StackLang.HolProg 64 :=
.seq AllocBody168_142 AllocBody168_209

def AllocBody168_211 : StackLang.HolProg 64 :=
.seq AllocBody168_141 AllocBody168_210

def AllocBody168_212 : StackLang.HolProg 64 :=
.seq AllocBody168_140 AllocBody168_211

def AllocBody168_213 : StackLang.HolProg 64 :=
.seq AllocBody168_139 AllocBody168_212

def AllocBody168_214 : StackLang.HolProg 64 :=
.seq AllocBody168_138 AllocBody168_213

def AllocBody168_215 : StackLang.HolProg 64 :=
.seq AllocBody168_137 AllocBody168_214

def AllocBody168_216 : StackLang.HolProg 64 :=
.seq AllocBody168_136 AllocBody168_215

def AllocBody168_217 : StackLang.HolProg 64 :=
.seq AllocBody168_121 AllocBody168_216

def AllocBody168_218 : StackLang.HolProg 64 :=
.seq AllocBody168_120 AllocBody168_217

def AllocBody168_219 : StackLang.HolProg 64 :=
.seq AllocBody168_119 AllocBody168_218

def AllocBody168_220 : StackLang.HolProg 64 :=
.seq AllocBody168_118 AllocBody168_219

def AllocBody168_221 : StackLang.HolProg 64 :=
.seq AllocBody168_117 AllocBody168_220

def AllocBody168_222 : StackLang.HolProg 64 :=
.seq AllocBody168_38 AllocBody168_221

def AllocBody168_223 : StackLang.HolProg 64 :=
.seq AllocBody168_37 AllocBody168_222

def AllocBody168_224 : StackLang.HolProg 64 :=
.seq AllocBody168_36 AllocBody168_223

def AllocBody168_225 : StackLang.HolProg 64 :=
.seq AllocBody168_35 AllocBody168_224

def AllocBody168_226 : StackLang.HolProg 64 :=
.seq AllocBody168_34 AllocBody168_225

def AllocBody168_227 : StackLang.HolProg 64 :=
.seq AllocBody168_19 AllocBody168_226

def AllocBody168_228 : StackLang.HolProg 64 :=
.seq AllocBody168_18 AllocBody168_227

def AllocBody168_229 : StackLang.HolProg 64 :=
.seq AllocBody168_17 AllocBody168_228

def AllocBody168_230 : StackLang.HolProg 64 :=
.seq AllocBody168_16 AllocBody168_229

def AllocBody168_231 : StackLang.HolProg 64 :=
.seq AllocBody168_15 AllocBody168_230

def AllocBody168_232 : StackLang.HolProg 64 :=
.seq AllocBody168_4 AllocBody168_231

def AllocBody168_233 : StackLang.HolProg 64 :=
.seq AllocBody168_3 AllocBody168_232

def AllocBody168_234 : StackLang.HolProg 64 :=
.seq AllocBody168_2 AllocBody168_233

def AllocBody168_235 : StackLang.HolProg 64 :=
.seq AllocBody168_1 AllocBody168_234

def AllocBody168_236 : StackLang.HolProg 64 :=
.seq AllocBody168_0 AllocBody168_235

def Alloc168 : Nat × StackLang.HolProg 64 := (168, AllocBody168_236)
theorem Alloc168_eq : StackAlloc.progComp (168, raw168) = Alloc168 := by
  kernel_rfl
#print axioms Alloc168_eq
end InitECandidate.Proofs.BackendStages
