import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw711
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody711_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody711_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody711_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3154#64)

def AllocBody711_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody711_5 : StackLang.HolProg 64 :=
.seq AllocBody711_3 AllocBody711_4

def AllocBody711_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody711_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody711_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody711_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 3

def AllocBody711_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody711_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody711_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody711_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody711_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody711_16 : StackLang.HolProg 64 :=
.seq AllocBody711_14 AllocBody711_15

def AllocBody711_17 : StackLang.HolProg 64 :=
.seq AllocBody711_13 AllocBody711_16

def AllocBody711_18 : StackLang.HolProg 64 :=
.seq AllocBody711_12 AllocBody711_17

def AllocBody711_19 : StackLang.HolProg 64 :=
.seq AllocBody711_11 AllocBody711_18

def AllocBody711_20 : StackLang.HolProg 64 :=
.seq AllocBody711_10 AllocBody711_19

def AllocBody711_21 : StackLang.HolProg 64 :=
.seq AllocBody711_9 AllocBody711_20

def AllocBody711_22 : StackLang.HolProg 64 :=
.seq AllocBody711_8 AllocBody711_21

def AllocBody711_23 : StackLang.HolProg 64 :=
.seq AllocBody711_7 AllocBody711_22

def AllocBody711_24 : StackLang.HolProg 64 :=
.seq AllocBody711_6 AllocBody711_23

def AllocBody711_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody711_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody711_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody711_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody711_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody711_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 1

def AllocBody711_33 : StackLang.HolProg 64 :=
.seq AllocBody711_31 AllocBody711_32

def AllocBody711_34 : StackLang.HolProg 64 :=
.seq AllocBody711_30 AllocBody711_33

def AllocBody711_35 : StackLang.HolProg 64 :=
.seq AllocBody711_29 AllocBody711_34

def AllocBody711_36 : StackLang.HolProg 64 :=
.seq AllocBody711_28 AllocBody711_35

def AllocBody711_37 : StackLang.HolProg 64 :=
.seq AllocBody711_27 AllocBody711_36

def AllocBody711_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 1

def AllocBody711_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody711_40 : StackLang.HolProg 64 :=
.seq AllocBody711_38 AllocBody711_39

def AllocBody711_41 : StackLang.HolProg 64 :=
.call (some (AllocBody711_37, 0, 711, 2)) (Sum.inl 709) (some (AllocBody711_40, 711, 3))

def AllocBody711_42 : StackLang.HolProg 64 :=
.seq AllocBody711_26 AllocBody711_41

def AllocBody711_43 : StackLang.HolProg 64 :=
.seq AllocBody711_25 AllocBody711_42

def AllocBody711_44 : StackLang.HolProg 64 :=
.seq AllocBody711_24 AllocBody711_43

def AllocBody711_45 : StackLang.HolProg 64 :=
.seq AllocBody711_5 AllocBody711_44

def AllocBody711_46 : StackLang.HolProg 64 :=
.seq AllocBody711_2 AllocBody711_45

def AllocBody711_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody711_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody711_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody711_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody711_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody711_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def AllocBody711_54 : StackLang.HolProg 64 :=
.seq AllocBody711_52 AllocBody711_53

def AllocBody711_55 : StackLang.HolProg 64 :=
.seq AllocBody711_51 AllocBody711_54

def AllocBody711_56 : StackLang.HolProg 64 :=
.seq AllocBody711_50 AllocBody711_55

def AllocBody711_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody711_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody711_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody711_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody711_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody711_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody711_63 : StackLang.HolProg 64 :=
.seq AllocBody711_61 AllocBody711_62

def AllocBody711_64 : StackLang.HolProg 64 :=
.seq AllocBody711_60 AllocBody711_63

def AllocBody711_65 : StackLang.HolProg 64 :=
.seq AllocBody711_59 AllocBody711_64

def AllocBody711_66 : StackLang.HolProg 64 :=
.seq AllocBody711_58 AllocBody711_65

def AllocBody711_67 : StackLang.HolProg 64 :=
.seq AllocBody711_57 AllocBody711_66

def AllocBody711_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody711_56 AllocBody711_67

def AllocBody711_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody711_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody711_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody711_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody711_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody711_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody711_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody711_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody711_77 : StackLang.HolProg 64 :=
.seq AllocBody711_75 AllocBody711_76

def AllocBody711_78 : StackLang.HolProg 64 :=
.seq AllocBody711_74 AllocBody711_77

def AllocBody711_79 : StackLang.HolProg 64 :=
.seq AllocBody711_73 AllocBody711_78

def AllocBody711_80 : StackLang.HolProg 64 :=
.seq AllocBody711_72 AllocBody711_79

def AllocBody711_81 : StackLang.HolProg 64 :=
.seq AllocBody711_71 AllocBody711_80

def AllocBody711_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def AllocBody711_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def AllocBody711_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def AllocBody711_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def AllocBody711_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def AllocBody711_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def AllocBody711_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 14 1

def AllocBody711_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3155#64)

def AllocBody711_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody711_92 : StackLang.HolProg 64 :=
.seq AllocBody711_90 AllocBody711_91

def AllocBody711_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody711_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody711_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody711_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 5

def AllocBody711_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody711_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody711_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody711_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody711_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody711_103 : StackLang.HolProg 64 :=
.seq AllocBody711_101 AllocBody711_102

def AllocBody711_104 : StackLang.HolProg 64 :=
.seq AllocBody711_100 AllocBody711_103

def AllocBody711_105 : StackLang.HolProg 64 :=
.seq AllocBody711_99 AllocBody711_104

def AllocBody711_106 : StackLang.HolProg 64 :=
.seq AllocBody711_98 AllocBody711_105

def AllocBody711_107 : StackLang.HolProg 64 :=
.seq AllocBody711_97 AllocBody711_106

def AllocBody711_108 : StackLang.HolProg 64 :=
.seq AllocBody711_96 AllocBody711_107

def AllocBody711_109 : StackLang.HolProg 64 :=
.seq AllocBody711_95 AllocBody711_108

def AllocBody711_110 : StackLang.HolProg 64 :=
.seq AllocBody711_94 AllocBody711_109

def AllocBody711_111 : StackLang.HolProg 64 :=
.seq AllocBody711_93 AllocBody711_110

def AllocBody711_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody711_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody711_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody711_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody711_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody711_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody711_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody711_120 : StackLang.HolProg 64 :=
.seq AllocBody711_118 AllocBody711_119

def AllocBody711_121 : StackLang.HolProg 64 :=
.seq AllocBody711_117 AllocBody711_120

def AllocBody711_122 : StackLang.HolProg 64 :=
.seq AllocBody711_116 AllocBody711_121

def AllocBody711_123 : StackLang.HolProg 64 :=
.seq AllocBody711_115 AllocBody711_122

def AllocBody711_124 : StackLang.HolProg 64 :=
.seq AllocBody711_114 AllocBody711_123

def AllocBody711_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody711_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody711_127 : StackLang.HolProg 64 :=
.seq AllocBody711_125 AllocBody711_126

def AllocBody711_128 : StackLang.HolProg 64 :=
.call (some (AllocBody711_124, 0, 711, 4)) (Sum.inl 708) (some (AllocBody711_127, 711, 5))

def AllocBody711_129 : StackLang.HolProg 64 :=
.seq AllocBody711_113 AllocBody711_128

def AllocBody711_130 : StackLang.HolProg 64 :=
.seq AllocBody711_112 AllocBody711_129

def AllocBody711_131 : StackLang.HolProg 64 :=
.seq AllocBody711_111 AllocBody711_130

def AllocBody711_132 : StackLang.HolProg 64 :=
.seq AllocBody711_92 AllocBody711_131

def AllocBody711_133 : StackLang.HolProg 64 :=
.seq AllocBody711_89 AllocBody711_132

def AllocBody711_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody711_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody711_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody711_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody711_138 : StackLang.HolProg 64 :=
.seq AllocBody711_136 AllocBody711_137

def AllocBody711_139 : StackLang.HolProg 64 :=
.seq AllocBody711_135 AllocBody711_138

def AllocBody711_140 : StackLang.HolProg 64 :=
.seq AllocBody711_134 AllocBody711_139

def AllocBody711_141 : StackLang.HolProg 64 :=
.seq AllocBody711_133 AllocBody711_140

def AllocBody711_142 : StackLang.HolProg 64 :=
.seq AllocBody711_88 AllocBody711_141

def AllocBody711_143 : StackLang.HolProg 64 :=
.seq AllocBody711_87 AllocBody711_142

def AllocBody711_144 : StackLang.HolProg 64 :=
.seq AllocBody711_86 AllocBody711_143

def AllocBody711_145 : StackLang.HolProg 64 :=
.seq AllocBody711_85 AllocBody711_144

def AllocBody711_146 : StackLang.HolProg 64 :=
.seq AllocBody711_84 AllocBody711_145

def AllocBody711_147 : StackLang.HolProg 64 :=
.seq AllocBody711_83 AllocBody711_146

def AllocBody711_148 : StackLang.HolProg 64 :=
.seq AllocBody711_82 AllocBody711_147

def AllocBody711_149 : StackLang.HolProg 64 :=
.seq AllocBody711_81 AllocBody711_148

def AllocBody711_150 : StackLang.HolProg 64 :=
.seq AllocBody711_70 AllocBody711_149

def AllocBody711_151 : StackLang.HolProg 64 :=
.seq AllocBody711_69 AllocBody711_150

def AllocBody711_152 : StackLang.HolProg 64 :=
.seq AllocBody711_68 AllocBody711_151

def AllocBody711_153 : StackLang.HolProg 64 :=
.seq AllocBody711_49 AllocBody711_152

def AllocBody711_154 : StackLang.HolProg 64 :=
.seq AllocBody711_48 AllocBody711_153

def AllocBody711_155 : StackLang.HolProg 64 :=
.seq AllocBody711_47 AllocBody711_154

def AllocBody711_156 : StackLang.HolProg 64 :=
.seq AllocBody711_46 AllocBody711_155

def AllocBody711_157 : StackLang.HolProg 64 :=
.seq AllocBody711_1 AllocBody711_156

def AllocBody711_158 : StackLang.HolProg 64 :=
.seq AllocBody711_0 AllocBody711_157

def Alloc711 : Nat × StackLang.HolProg 64 := (711, AllocBody711_158)
theorem Alloc711_eq : StackAlloc.progComp (711, raw711) = Alloc711 := by
  kernel_rfl
#print axioms Alloc711_eq
end InitECandidate.Proofs.BackendStages
