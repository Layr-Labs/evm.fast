import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw451
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody451_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody451_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody451_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody451_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody451_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody451_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody451_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody451_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody451_11 : StackLang.HolProg 64 :=
.seq AllocBody451_9 AllocBody451_10

def AllocBody451_12 : StackLang.HolProg 64 :=
.seq AllocBody451_8 AllocBody451_11

def AllocBody451_13 : StackLang.HolProg 64 :=
.seq AllocBody451_7 AllocBody451_12

def AllocBody451_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody451_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody451_18 : StackLang.HolProg 64 :=
.seq AllocBody451_16 AllocBody451_17

def AllocBody451_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody451_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody451_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody451_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody451_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody451_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody451_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody451_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody451_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody451_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody451_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody451_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody451_35 : StackLang.HolProg 64 :=
.seq AllocBody451_33 AllocBody451_34

def AllocBody451_36 : StackLang.HolProg 64 :=
.seq AllocBody451_32 AllocBody451_35

def AllocBody451_37 : StackLang.HolProg 64 :=
.seq AllocBody451_31 AllocBody451_36

def AllocBody451_38 : StackLang.HolProg 64 :=
.seq AllocBody451_30 AllocBody451_37

def AllocBody451_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody451_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody451_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody451_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody451_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 1

def AllocBody451_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody451_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody451_48 : StackLang.HolProg 64 :=
.seq AllocBody451_46 AllocBody451_47

def AllocBody451_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 2

def AllocBody451_50 : StackLang.HolProg 64 :=
.seq AllocBody451_48 AllocBody451_49

def AllocBody451_51 : StackLang.HolProg 64 :=
.seq AllocBody451_45 AllocBody451_50

def AllocBody451_52 : StackLang.HolProg 64 :=
.seq AllocBody451_44 AllocBody451_51

def AllocBody451_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1373#64)

def AllocBody451_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody451_56 : StackLang.HolProg 64 :=
.seq AllocBody451_54 AllocBody451_55

def AllocBody451_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody451_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody451_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody451_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 451 3

def AllocBody451_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody451_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody451_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody451_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody451_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody451_67 : StackLang.HolProg 64 :=
.seq AllocBody451_65 AllocBody451_66

def AllocBody451_68 : StackLang.HolProg 64 :=
.seq AllocBody451_64 AllocBody451_67

def AllocBody451_69 : StackLang.HolProg 64 :=
.seq AllocBody451_63 AllocBody451_68

def AllocBody451_70 : StackLang.HolProg 64 :=
.seq AllocBody451_62 AllocBody451_69

def AllocBody451_71 : StackLang.HolProg 64 :=
.seq AllocBody451_61 AllocBody451_70

def AllocBody451_72 : StackLang.HolProg 64 :=
.seq AllocBody451_60 AllocBody451_71

def AllocBody451_73 : StackLang.HolProg 64 :=
.seq AllocBody451_59 AllocBody451_72

def AllocBody451_74 : StackLang.HolProg 64 :=
.seq AllocBody451_58 AllocBody451_73

def AllocBody451_75 : StackLang.HolProg 64 :=
.seq AllocBody451_57 AllocBody451_74

def AllocBody451_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody451_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody451_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody451_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody451_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody451_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody451_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody451_85 : StackLang.HolProg 64 :=
.seq AllocBody451_83 AllocBody451_84

def AllocBody451_86 : StackLang.HolProg 64 :=
.seq AllocBody451_82 AllocBody451_85

def AllocBody451_87 : StackLang.HolProg 64 :=
.seq AllocBody451_81 AllocBody451_86

def AllocBody451_88 : StackLang.HolProg 64 :=
.seq AllocBody451_80 AllocBody451_87

def AllocBody451_89 : StackLang.HolProg 64 :=
.seq AllocBody451_79 AllocBody451_88

def AllocBody451_90 : StackLang.HolProg 64 :=
.seq AllocBody451_78 AllocBody451_89

def AllocBody451_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody451_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody451_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody451_94 : StackLang.HolProg 64 :=
.seq AllocBody451_92 AllocBody451_93

def AllocBody451_95 : StackLang.HolProg 64 :=
.seq AllocBody451_91 AllocBody451_94

def AllocBody451_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody451_97 : StackLang.HolProg 64 :=
.seq AllocBody451_95 AllocBody451_96

def AllocBody451_98 : StackLang.HolProg 64 :=
.call (some (AllocBody451_90, 0, 451, 2)) (Sum.inl 77) (some (AllocBody451_97, 451, 3))

def AllocBody451_99 : StackLang.HolProg 64 :=
.seq AllocBody451_77 AllocBody451_98

def AllocBody451_100 : StackLang.HolProg 64 :=
.seq AllocBody451_76 AllocBody451_99

def AllocBody451_101 : StackLang.HolProg 64 :=
.seq AllocBody451_75 AllocBody451_100

def AllocBody451_102 : StackLang.HolProg 64 :=
.seq AllocBody451_56 AllocBody451_101

def AllocBody451_103 : StackLang.HolProg 64 :=
.seq AllocBody451_53 AllocBody451_102

def AllocBody451_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_106 : StackLang.HolProg 64 :=
.seq AllocBody451_104 AllocBody451_105

def AllocBody451_107 : StackLang.HolProg 64 :=
.seq AllocBody451_103 AllocBody451_106

def AllocBody451_108 : StackLang.HolProg 64 :=
.seq AllocBody451_52 AllocBody451_107

def AllocBody451_109 : StackLang.HolProg 64 :=
.seq AllocBody451_43 AllocBody451_108

def AllocBody451_110 : StackLang.HolProg 64 :=
.seq AllocBody451_42 AllocBody451_109

def AllocBody451_111 : StackLang.HolProg 64 :=
.seq AllocBody451_41 AllocBody451_110

def AllocBody451_112 : StackLang.HolProg 64 :=
.seq AllocBody451_40 AllocBody451_111

def AllocBody451_113 : StackLang.HolProg 64 :=
.seq AllocBody451_39 AllocBody451_112

def AllocBody451_114 : StackLang.HolProg 64 :=
.seq AllocBody451_38 AllocBody451_113

def AllocBody451_115 : StackLang.HolProg 64 :=
.seq AllocBody451_29 AllocBody451_114

def AllocBody451_116 : StackLang.HolProg 64 :=
.seq AllocBody451_28 AllocBody451_115

def AllocBody451_117 : StackLang.HolProg 64 :=
.seq AllocBody451_27 AllocBody451_116

def AllocBody451_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody451_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody451_121 : StackLang.HolProg 64 :=
.seq AllocBody451_119 AllocBody451_120

def AllocBody451_122 : StackLang.HolProg 64 :=
.seq AllocBody451_118 AllocBody451_121

def AllocBody451_123 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody451_117 AllocBody451_122

def AllocBody451_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody451_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody451_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody451_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody451_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody451_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody451_135 : StackLang.HolProg 64 :=
.seq AllocBody451_133 AllocBody451_134

def AllocBody451_136 : StackLang.HolProg 64 :=
.seq AllocBody451_132 AllocBody451_135

def AllocBody451_137 : StackLang.HolProg 64 :=
.seq AllocBody451_131 AllocBody451_136

def AllocBody451_138 : StackLang.HolProg 64 :=
.seq AllocBody451_130 AllocBody451_137

def AllocBody451_139 : StackLang.HolProg 64 :=
.seq AllocBody451_129 AllocBody451_138

def AllocBody451_140 : StackLang.HolProg 64 :=
.seq AllocBody451_128 AllocBody451_139

def AllocBody451_141 : StackLang.HolProg 64 :=
.seq AllocBody451_127 AllocBody451_140

def AllocBody451_142 : StackLang.HolProg 64 :=
.seq AllocBody451_126 AllocBody451_141

def AllocBody451_143 : StackLang.HolProg 64 :=
.seq AllocBody451_125 AllocBody451_142

def AllocBody451_144 : StackLang.HolProg 64 :=
.seq AllocBody451_124 AllocBody451_143

def AllocBody451_145 : StackLang.HolProg 64 :=
.seq AllocBody451_123 AllocBody451_144

def AllocBody451_146 : StackLang.HolProg 64 :=
.seq AllocBody451_26 AllocBody451_145

def AllocBody451_147 : StackLang.HolProg 64 :=
.seq AllocBody451_25 AllocBody451_146

def AllocBody451_148 : StackLang.HolProg 64 :=
.seq AllocBody451_24 AllocBody451_147

def AllocBody451_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 3

def AllocBody451_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody451_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody451_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody451_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def AllocBody451_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody451_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody451_156 : StackLang.HolProg 64 :=
.seq AllocBody451_154 AllocBody451_155

def AllocBody451_157 : StackLang.HolProg 64 :=
.seq AllocBody451_153 AllocBody451_156

def AllocBody451_158 : StackLang.HolProg 64 :=
.seq AllocBody451_152 AllocBody451_157

def AllocBody451_159 : StackLang.HolProg 64 :=
.seq AllocBody451_151 AllocBody451_158

def AllocBody451_160 : StackLang.HolProg 64 :=
.seq AllocBody451_150 AllocBody451_159

def AllocBody451_161 : StackLang.HolProg 64 :=
.seq AllocBody451_149 AllocBody451_160

def AllocBody451_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody451_148 AllocBody451_161

def AllocBody451_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody451_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 14 3

def AllocBody451_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody451_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody451_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody451_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 2

def AllocBody451_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody451_173 : StackLang.HolProg 64 :=
.seq AllocBody451_171 AllocBody451_172

def AllocBody451_174 : StackLang.HolProg 64 :=
.seq AllocBody451_170 AllocBody451_173

def AllocBody451_175 : StackLang.HolProg 64 :=
.seq AllocBody451_169 AllocBody451_174

def AllocBody451_176 : StackLang.HolProg 64 :=
.seq AllocBody451_168 AllocBody451_175

def AllocBody451_177 : StackLang.HolProg 64 :=
.seq AllocBody451_167 AllocBody451_176

def AllocBody451_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody451_179 : StackLang.HolProg 64 :=
.seq AllocBody451_177 AllocBody451_178

def AllocBody451_180 : StackLang.HolProg 64 :=
.seq AllocBody451_166 AllocBody451_179

def AllocBody451_181 : StackLang.HolProg 64 :=
.seq AllocBody451_165 AllocBody451_180

def AllocBody451_182 : StackLang.HolProg 64 :=
.seq AllocBody451_164 AllocBody451_181

def AllocBody451_183 : StackLang.HolProg 64 :=
.seq AllocBody451_163 AllocBody451_182

def AllocBody451_184 : StackLang.HolProg 64 :=
.seq AllocBody451_162 AllocBody451_183

def AllocBody451_185 : StackLang.HolProg 64 :=
.seq AllocBody451_23 AllocBody451_184

def AllocBody451_186 : StackLang.HolProg 64 :=
.seq AllocBody451_22 AllocBody451_185

def AllocBody451_187 : StackLang.HolProg 64 :=
.seq AllocBody451_21 AllocBody451_186

def AllocBody451_188 : StackLang.HolProg 64 :=
.seq AllocBody451_20 AllocBody451_187

def AllocBody451_189 : StackLang.HolProg 64 :=
.seq AllocBody451_19 AllocBody451_188

def AllocBody451_190 : StackLang.HolProg 64 :=
.seq AllocBody451_18 AllocBody451_189

def AllocBody451_191 : StackLang.HolProg 64 :=
.seq AllocBody451_15 AllocBody451_190

def AllocBody451_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody451_194 : StackLang.HolProg 64 :=
.seq AllocBody451_192 AllocBody451_193

def AllocBody451_195 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody451_191 AllocBody451_194

def AllocBody451_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody451_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody451_199 : StackLang.HolProg 64 :=
.seq AllocBody451_197 AllocBody451_198

def AllocBody451_200 : StackLang.HolProg 64 :=
.seq AllocBody451_196 AllocBody451_199

def AllocBody451_201 : StackLang.HolProg 64 :=
.seq AllocBody451_195 AllocBody451_200

def AllocBody451_202 : StackLang.HolProg 64 :=
.seq AllocBody451_14 AllocBody451_201

def AllocBody451_203 : StackLang.HolProg 64 :=
.loop AllocBody451_202

def AllocBody451_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody451_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody451_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody451_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody451_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody451_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody451_210 : StackLang.HolProg 64 :=
.seq AllocBody451_208 AllocBody451_209

def AllocBody451_211 : StackLang.HolProg 64 :=
.seq AllocBody451_207 AllocBody451_210

def AllocBody451_212 : StackLang.HolProg 64 :=
.seq AllocBody451_206 AllocBody451_211

def AllocBody451_213 : StackLang.HolProg 64 :=
.seq AllocBody451_205 AllocBody451_212

def AllocBody451_214 : StackLang.HolProg 64 :=
.seq AllocBody451_204 AllocBody451_213

def AllocBody451_215 : StackLang.HolProg 64 :=
.seq AllocBody451_203 AllocBody451_214

def AllocBody451_216 : StackLang.HolProg 64 :=
.seq AllocBody451_13 AllocBody451_215

def AllocBody451_217 : StackLang.HolProg 64 :=
.seq AllocBody451_6 AllocBody451_216

def AllocBody451_218 : StackLang.HolProg 64 :=
.seq AllocBody451_5 AllocBody451_217

def AllocBody451_219 : StackLang.HolProg 64 :=
.seq AllocBody451_4 AllocBody451_218

def AllocBody451_220 : StackLang.HolProg 64 :=
.seq AllocBody451_3 AllocBody451_219

def AllocBody451_221 : StackLang.HolProg 64 :=
.seq AllocBody451_2 AllocBody451_220

def AllocBody451_222 : StackLang.HolProg 64 :=
.seq AllocBody451_1 AllocBody451_221

def AllocBody451_223 : StackLang.HolProg 64 :=
.seq AllocBody451_0 AllocBody451_222

def Alloc451 : Nat × StackLang.HolProg 64 := (451, AllocBody451_223)
theorem Alloc451_eq : StackAlloc.progComp (451, raw451) = Alloc451 := by
  kernel_rfl
#print axioms Alloc451_eq
end InitECandidate.Proofs.BackendStages
