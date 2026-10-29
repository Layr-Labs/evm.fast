import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw144
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody144_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody144_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody144_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def AllocBody144_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody144_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody144_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody144_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody144_8 : StackLang.HolProg 64 :=
.seq AllocBody144_6 AllocBody144_7

def AllocBody144_9 : StackLang.HolProg 64 :=
.seq AllocBody144_5 AllocBody144_8

def AllocBody144_10 : StackLang.HolProg 64 :=
.seq AllocBody144_4 AllocBody144_9

def AllocBody144_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody144_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody144_13 : StackLang.HolProg 64 :=
.seq AllocBody144_11 AllocBody144_12

def AllocBody144_14 : StackLang.HolProg 64 :=
.seq AllocBody144_10 AllocBody144_13

def AllocBody144_15 : StackLang.HolProg 64 :=
.seq AllocBody144_3 AllocBody144_14

def AllocBody144_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody144_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody144_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody144_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody144_20 : StackLang.HolProg 64 :=
.seq AllocBody144_18 AllocBody144_19

def AllocBody144_21 : StackLang.HolProg 64 :=
.seq AllocBody144_17 AllocBody144_20

def AllocBody144_22 : StackLang.HolProg 64 :=
.seq AllocBody144_16 AllocBody144_21

def AllocBody144_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody144_15 AllocBody144_22

def AllocBody144_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody144_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody144_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody144_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody144_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody144_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody144_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody144_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody144_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody144_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody144_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 2

def AllocBody144_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 1

def AllocBody144_39 : StackLang.HolProg 64 :=
.seq AllocBody144_37 AllocBody144_38

def AllocBody144_40 : StackLang.HolProg 64 :=
.seq AllocBody144_36 AllocBody144_39

def AllocBody144_41 : StackLang.HolProg 64 :=
.seq AllocBody144_35 AllocBody144_40

def AllocBody144_42 : StackLang.HolProg 64 :=
.seq AllocBody144_34 AllocBody144_41

def AllocBody144_43 : StackLang.HolProg 64 :=
.seq AllocBody144_33 AllocBody144_42

def AllocBody144_44 : StackLang.HolProg 64 :=
.seq AllocBody144_32 AllocBody144_43

def AllocBody144_45 : StackLang.HolProg 64 :=
.seq AllocBody144_31 AllocBody144_44

def AllocBody144_46 : StackLang.HolProg 64 :=
.seq AllocBody144_30 AllocBody144_45

def AllocBody144_47 : StackLang.HolProg 64 :=
.seq AllocBody144_29 AllocBody144_46

def AllocBody144_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 108#64)

def AllocBody144_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody144_51 : StackLang.HolProg 64 :=
.seq AllocBody144_49 AllocBody144_50

def AllocBody144_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody144_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody144_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody144_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 3

def AllocBody144_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody144_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody144_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody144_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody144_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody144_62 : StackLang.HolProg 64 :=
.seq AllocBody144_60 AllocBody144_61

def AllocBody144_63 : StackLang.HolProg 64 :=
.seq AllocBody144_59 AllocBody144_62

def AllocBody144_64 : StackLang.HolProg 64 :=
.seq AllocBody144_58 AllocBody144_63

def AllocBody144_65 : StackLang.HolProg 64 :=
.seq AllocBody144_57 AllocBody144_64

def AllocBody144_66 : StackLang.HolProg 64 :=
.seq AllocBody144_56 AllocBody144_65

def AllocBody144_67 : StackLang.HolProg 64 :=
.seq AllocBody144_55 AllocBody144_66

def AllocBody144_68 : StackLang.HolProg 64 :=
.seq AllocBody144_54 AllocBody144_67

def AllocBody144_69 : StackLang.HolProg 64 :=
.seq AllocBody144_53 AllocBody144_68

def AllocBody144_70 : StackLang.HolProg 64 :=
.seq AllocBody144_52 AllocBody144_69

def AllocBody144_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody144_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody144_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody144_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody144_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody144_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody144_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody144_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody144_81 : StackLang.HolProg 64 :=
.seq AllocBody144_79 AllocBody144_80

def AllocBody144_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody144_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody144_84 : StackLang.HolProg 64 :=
.seq AllocBody144_82 AllocBody144_83

def AllocBody144_85 : StackLang.HolProg 64 :=
.seq AllocBody144_81 AllocBody144_84

def AllocBody144_86 : StackLang.HolProg 64 :=
.seq AllocBody144_78 AllocBody144_85

def AllocBody144_87 : StackLang.HolProg 64 :=
.seq AllocBody144_77 AllocBody144_86

def AllocBody144_88 : StackLang.HolProg 64 :=
.seq AllocBody144_76 AllocBody144_87

def AllocBody144_89 : StackLang.HolProg 64 :=
.seq AllocBody144_75 AllocBody144_88

def AllocBody144_90 : StackLang.HolProg 64 :=
.seq AllocBody144_74 AllocBody144_89

def AllocBody144_91 : StackLang.HolProg 64 :=
.seq AllocBody144_73 AllocBody144_90

def AllocBody144_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody144_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody144_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody144_95 : StackLang.HolProg 64 :=
.seq AllocBody144_93 AllocBody144_94

def AllocBody144_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody144_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody144_98 : StackLang.HolProg 64 :=
.seq AllocBody144_96 AllocBody144_97

def AllocBody144_99 : StackLang.HolProg 64 :=
.seq AllocBody144_95 AllocBody144_98

def AllocBody144_100 : StackLang.HolProg 64 :=
.seq AllocBody144_92 AllocBody144_99

def AllocBody144_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody144_102 : StackLang.HolProg 64 :=
.seq AllocBody144_100 AllocBody144_101

def AllocBody144_103 : StackLang.HolProg 64 :=
.call (some (AllocBody144_91, 0, 144, 2)) (Sum.inl 104) (some (AllocBody144_102, 144, 3))

def AllocBody144_104 : StackLang.HolProg 64 :=
.seq AllocBody144_72 AllocBody144_103

def AllocBody144_105 : StackLang.HolProg 64 :=
.seq AllocBody144_71 AllocBody144_104

def AllocBody144_106 : StackLang.HolProg 64 :=
.seq AllocBody144_70 AllocBody144_105

def AllocBody144_107 : StackLang.HolProg 64 :=
.seq AllocBody144_51 AllocBody144_106

def AllocBody144_108 : StackLang.HolProg 64 :=
.seq AllocBody144_48 AllocBody144_107

def AllocBody144_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody144_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def AllocBody144_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def AllocBody144_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def AllocBody144_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def AllocBody144_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def AllocBody144_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 109#64)

def AllocBody144_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody144_120 : StackLang.HolProg 64 :=
.seq AllocBody144_118 AllocBody144_119

def AllocBody144_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody144_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody144_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody144_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 5

def AllocBody144_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody144_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody144_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody144_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody144_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody144_131 : StackLang.HolProg 64 :=
.seq AllocBody144_129 AllocBody144_130

def AllocBody144_132 : StackLang.HolProg 64 :=
.seq AllocBody144_128 AllocBody144_131

def AllocBody144_133 : StackLang.HolProg 64 :=
.seq AllocBody144_127 AllocBody144_132

def AllocBody144_134 : StackLang.HolProg 64 :=
.seq AllocBody144_126 AllocBody144_133

def AllocBody144_135 : StackLang.HolProg 64 :=
.seq AllocBody144_125 AllocBody144_134

def AllocBody144_136 : StackLang.HolProg 64 :=
.seq AllocBody144_124 AllocBody144_135

def AllocBody144_137 : StackLang.HolProg 64 :=
.seq AllocBody144_123 AllocBody144_136

def AllocBody144_138 : StackLang.HolProg 64 :=
.seq AllocBody144_122 AllocBody144_137

def AllocBody144_139 : StackLang.HolProg 64 :=
.seq AllocBody144_121 AllocBody144_138

def AllocBody144_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody144_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody144_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody144_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody144_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody144_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody144_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody144_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody144_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody144_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody144_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody144_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody144_154 : StackLang.HolProg 64 :=
.seq AllocBody144_152 AllocBody144_153

def AllocBody144_155 : StackLang.HolProg 64 :=
.seq AllocBody144_151 AllocBody144_154

def AllocBody144_156 : StackLang.HolProg 64 :=
.seq AllocBody144_150 AllocBody144_155

def AllocBody144_157 : StackLang.HolProg 64 :=
.seq AllocBody144_149 AllocBody144_156

def AllocBody144_158 : StackLang.HolProg 64 :=
.seq AllocBody144_148 AllocBody144_157

def AllocBody144_159 : StackLang.HolProg 64 :=
.seq AllocBody144_147 AllocBody144_158

def AllocBody144_160 : StackLang.HolProg 64 :=
.seq AllocBody144_146 AllocBody144_159

def AllocBody144_161 : StackLang.HolProg 64 :=
.seq AllocBody144_145 AllocBody144_160

def AllocBody144_162 : StackLang.HolProg 64 :=
.seq AllocBody144_144 AllocBody144_161

def AllocBody144_163 : StackLang.HolProg 64 :=
.seq AllocBody144_143 AllocBody144_162

def AllocBody144_164 : StackLang.HolProg 64 :=
.seq AllocBody144_142 AllocBody144_163

def AllocBody144_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody144_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody144_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody144_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody144_169 : StackLang.HolProg 64 :=
.seq AllocBody144_167 AllocBody144_168

def AllocBody144_170 : StackLang.HolProg 64 :=
.seq AllocBody144_166 AllocBody144_169

def AllocBody144_171 : StackLang.HolProg 64 :=
.seq AllocBody144_165 AllocBody144_170

def AllocBody144_172 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody144_173 : StackLang.HolProg 64 :=
.seq AllocBody144_171 AllocBody144_172

def AllocBody144_174 : StackLang.HolProg 64 :=
.call (some (AllocBody144_164, 0, 144, 4)) (Sum.inl 141) (some (AllocBody144_173, 144, 5))

def AllocBody144_175 : StackLang.HolProg 64 :=
.seq AllocBody144_141 AllocBody144_174

def AllocBody144_176 : StackLang.HolProg 64 :=
.seq AllocBody144_140 AllocBody144_175

def AllocBody144_177 : StackLang.HolProg 64 :=
.seq AllocBody144_139 AllocBody144_176

def AllocBody144_178 : StackLang.HolProg 64 :=
.seq AllocBody144_120 AllocBody144_177

def AllocBody144_179 : StackLang.HolProg 64 :=
.seq AllocBody144_117 AllocBody144_178

def AllocBody144_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody144_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 4

def AllocBody144_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody144_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody144_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody144_188 : StackLang.HolProg 64 :=
.seq AllocBody144_186 AllocBody144_187

def AllocBody144_189 : StackLang.HolProg 64 :=
.seq AllocBody144_185 AllocBody144_188

def AllocBody144_190 : StackLang.HolProg 64 :=
.seq AllocBody144_184 AllocBody144_189

def AllocBody144_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody144_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 113

def AllocBody144_194 : StackLang.HolProg 64 :=
.seq AllocBody144_192 AllocBody144_193

def AllocBody144_195 : StackLang.HolProg 64 :=
.seq AllocBody144_191 AllocBody144_194

def AllocBody144_196 : StackLang.HolProg 64 :=
.seq AllocBody144_190 AllocBody144_195

def AllocBody144_197 : StackLang.HolProg 64 :=
.seq AllocBody144_183 AllocBody144_196

def AllocBody144_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_199 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody144_197 AllocBody144_198

def AllocBody144_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody144_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody144_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody144_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody144_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody144_207 : StackLang.HolProg 64 :=
.seq AllocBody144_205 AllocBody144_206

def AllocBody144_208 : StackLang.HolProg 64 :=
.seq AllocBody144_204 AllocBody144_207

def AllocBody144_209 : StackLang.HolProg 64 :=
.seq AllocBody144_203 AllocBody144_208

def AllocBody144_210 : StackLang.HolProg 64 :=
.seq AllocBody144_202 AllocBody144_209

def AllocBody144_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 110#64)

def AllocBody144_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody144_214 : StackLang.HolProg 64 :=
.seq AllocBody144_212 AllocBody144_213

def AllocBody144_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody144_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody144_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody144_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 7

def AllocBody144_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody144_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody144_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody144_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody144_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody144_225 : StackLang.HolProg 64 :=
.seq AllocBody144_223 AllocBody144_224

def AllocBody144_226 : StackLang.HolProg 64 :=
.seq AllocBody144_222 AllocBody144_225

def AllocBody144_227 : StackLang.HolProg 64 :=
.seq AllocBody144_221 AllocBody144_226

def AllocBody144_228 : StackLang.HolProg 64 :=
.seq AllocBody144_220 AllocBody144_227

def AllocBody144_229 : StackLang.HolProg 64 :=
.seq AllocBody144_219 AllocBody144_228

def AllocBody144_230 : StackLang.HolProg 64 :=
.seq AllocBody144_218 AllocBody144_229

def AllocBody144_231 : StackLang.HolProg 64 :=
.seq AllocBody144_217 AllocBody144_230

def AllocBody144_232 : StackLang.HolProg 64 :=
.seq AllocBody144_216 AllocBody144_231

def AllocBody144_233 : StackLang.HolProg 64 :=
.seq AllocBody144_215 AllocBody144_232

def AllocBody144_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody144_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody144_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody144_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody144_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody144_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody144_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody144_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody144_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody144_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody144_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody144_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody144_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody144_249 : StackLang.HolProg 64 :=
.seq AllocBody144_247 AllocBody144_248

def AllocBody144_250 : StackLang.HolProg 64 :=
.seq AllocBody144_246 AllocBody144_249

def AllocBody144_251 : StackLang.HolProg 64 :=
.seq AllocBody144_245 AllocBody144_250

def AllocBody144_252 : StackLang.HolProg 64 :=
.seq AllocBody144_244 AllocBody144_251

def AllocBody144_253 : StackLang.HolProg 64 :=
.seq AllocBody144_243 AllocBody144_252

def AllocBody144_254 : StackLang.HolProg 64 :=
.seq AllocBody144_242 AllocBody144_253

def AllocBody144_255 : StackLang.HolProg 64 :=
.seq AllocBody144_241 AllocBody144_254

def AllocBody144_256 : StackLang.HolProg 64 :=
.seq AllocBody144_240 AllocBody144_255

def AllocBody144_257 : StackLang.HolProg 64 :=
.seq AllocBody144_239 AllocBody144_256

def AllocBody144_258 : StackLang.HolProg 64 :=
.seq AllocBody144_238 AllocBody144_257

def AllocBody144_259 : StackLang.HolProg 64 :=
.seq AllocBody144_237 AllocBody144_258

def AllocBody144_260 : StackLang.HolProg 64 :=
.seq AllocBody144_236 AllocBody144_259

def AllocBody144_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody144_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody144_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody144_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody144_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody144_266 : StackLang.HolProg 64 :=
.seq AllocBody144_264 AllocBody144_265

def AllocBody144_267 : StackLang.HolProg 64 :=
.seq AllocBody144_263 AllocBody144_266

def AllocBody144_268 : StackLang.HolProg 64 :=
.seq AllocBody144_262 AllocBody144_267

def AllocBody144_269 : StackLang.HolProg 64 :=
.seq AllocBody144_261 AllocBody144_268

def AllocBody144_270 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody144_271 : StackLang.HolProg 64 :=
.seq AllocBody144_269 AllocBody144_270

def AllocBody144_272 : StackLang.HolProg 64 :=
.call (some (AllocBody144_260, 0, 144, 6)) (Sum.inl 111) (some (AllocBody144_271, 144, 7))

def AllocBody144_273 : StackLang.HolProg 64 :=
.seq AllocBody144_235 AllocBody144_272

def AllocBody144_274 : StackLang.HolProg 64 :=
.seq AllocBody144_234 AllocBody144_273

def AllocBody144_275 : StackLang.HolProg 64 :=
.seq AllocBody144_233 AllocBody144_274

def AllocBody144_276 : StackLang.HolProg 64 :=
.seq AllocBody144_214 AllocBody144_275

def AllocBody144_277 : StackLang.HolProg 64 :=
.seq AllocBody144_211 AllocBody144_276

def AllocBody144_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody144_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody144_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody144_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody144_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 112

def AllocBody144_283 : StackLang.HolProg 64 :=
.seq AllocBody144_281 AllocBody144_282

def AllocBody144_284 : StackLang.HolProg 64 :=
.seq AllocBody144_280 AllocBody144_283

def AllocBody144_285 : StackLang.HolProg 64 :=
.seq AllocBody144_279 AllocBody144_284

def AllocBody144_286 : StackLang.HolProg 64 :=
.seq AllocBody144_278 AllocBody144_285

def AllocBody144_287 : StackLang.HolProg 64 :=
.seq AllocBody144_277 AllocBody144_286

def AllocBody144_288 : StackLang.HolProg 64 :=
.seq AllocBody144_210 AllocBody144_287

def AllocBody144_289 : StackLang.HolProg 64 :=
.seq AllocBody144_201 AllocBody144_288

def AllocBody144_290 : StackLang.HolProg 64 :=
.seq AllocBody144_200 AllocBody144_289

def AllocBody144_291 : StackLang.HolProg 64 :=
.seq AllocBody144_199 AllocBody144_290

def AllocBody144_292 : StackLang.HolProg 64 :=
.seq AllocBody144_182 AllocBody144_291

def AllocBody144_293 : StackLang.HolProg 64 :=
.seq AllocBody144_181 AllocBody144_292

def AllocBody144_294 : StackLang.HolProg 64 :=
.seq AllocBody144_180 AllocBody144_293

def AllocBody144_295 : StackLang.HolProg 64 :=
.seq AllocBody144_179 AllocBody144_294

def AllocBody144_296 : StackLang.HolProg 64 :=
.seq AllocBody144_116 AllocBody144_295

def AllocBody144_297 : StackLang.HolProg 64 :=
.seq AllocBody144_115 AllocBody144_296

def AllocBody144_298 : StackLang.HolProg 64 :=
.seq AllocBody144_114 AllocBody144_297

def AllocBody144_299 : StackLang.HolProg 64 :=
.seq AllocBody144_113 AllocBody144_298

def AllocBody144_300 : StackLang.HolProg 64 :=
.seq AllocBody144_112 AllocBody144_299

def AllocBody144_301 : StackLang.HolProg 64 :=
.seq AllocBody144_111 AllocBody144_300

def AllocBody144_302 : StackLang.HolProg 64 :=
.seq AllocBody144_110 AllocBody144_301

def AllocBody144_303 : StackLang.HolProg 64 :=
.seq AllocBody144_109 AllocBody144_302

def AllocBody144_304 : StackLang.HolProg 64 :=
.seq AllocBody144_108 AllocBody144_303

def AllocBody144_305 : StackLang.HolProg 64 :=
.seq AllocBody144_47 AllocBody144_304

def AllocBody144_306 : StackLang.HolProg 64 :=
.seq AllocBody144_28 AllocBody144_305

def AllocBody144_307 : StackLang.HolProg 64 :=
.seq AllocBody144_27 AllocBody144_306

def AllocBody144_308 : StackLang.HolProg 64 :=
.seq AllocBody144_26 AllocBody144_307

def AllocBody144_309 : StackLang.HolProg 64 :=
.seq AllocBody144_25 AllocBody144_308

def AllocBody144_310 : StackLang.HolProg 64 :=
.seq AllocBody144_24 AllocBody144_309

def AllocBody144_311 : StackLang.HolProg 64 :=
.seq AllocBody144_23 AllocBody144_310

def AllocBody144_312 : StackLang.HolProg 64 :=
.seq AllocBody144_2 AllocBody144_311

def AllocBody144_313 : StackLang.HolProg 64 :=
.seq AllocBody144_1 AllocBody144_312

def AllocBody144_314 : StackLang.HolProg 64 :=
.seq AllocBody144_0 AllocBody144_313

def Alloc144 : Nat × StackLang.HolProg 64 := (144, AllocBody144_314)
theorem Alloc144_eq : StackAlloc.progComp (144, raw144) = Alloc144 := by
  kernel_rfl
#print axioms Alloc144_eq
end InitECandidate.Proofs.BackendStages
