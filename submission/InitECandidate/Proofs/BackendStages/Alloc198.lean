import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw198
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody198_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody198_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody198_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody198_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody198_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody198_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody198_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody198_7 : StackLang.HolProg 64 :=
.seq AllocBody198_5 AllocBody198_6

def AllocBody198_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody198_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody198_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody198_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody198_13 : StackLang.HolProg 64 :=
.seq AllocBody198_11 AllocBody198_12

def AllocBody198_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 234#64)

def AllocBody198_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody198_17 : StackLang.HolProg 64 :=
.seq AllocBody198_15 AllocBody198_16

def AllocBody198_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody198_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody198_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody198_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 3

def AllocBody198_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody198_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody198_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody198_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody198_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody198_28 : StackLang.HolProg 64 :=
.seq AllocBody198_26 AllocBody198_27

def AllocBody198_29 : StackLang.HolProg 64 :=
.seq AllocBody198_25 AllocBody198_28

def AllocBody198_30 : StackLang.HolProg 64 :=
.seq AllocBody198_24 AllocBody198_29

def AllocBody198_31 : StackLang.HolProg 64 :=
.seq AllocBody198_23 AllocBody198_30

def AllocBody198_32 : StackLang.HolProg 64 :=
.seq AllocBody198_22 AllocBody198_31

def AllocBody198_33 : StackLang.HolProg 64 :=
.seq AllocBody198_21 AllocBody198_32

def AllocBody198_34 : StackLang.HolProg 64 :=
.seq AllocBody198_20 AllocBody198_33

def AllocBody198_35 : StackLang.HolProg 64 :=
.seq AllocBody198_19 AllocBody198_34

def AllocBody198_36 : StackLang.HolProg 64 :=
.seq AllocBody198_18 AllocBody198_35

def AllocBody198_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody198_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody198_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody198_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody198_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody198_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody198_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody198_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody198_47 : StackLang.HolProg 64 :=
.seq AllocBody198_45 AllocBody198_46

def AllocBody198_48 : StackLang.HolProg 64 :=
.seq AllocBody198_44 AllocBody198_47

def AllocBody198_49 : StackLang.HolProg 64 :=
.seq AllocBody198_43 AllocBody198_48

def AllocBody198_50 : StackLang.HolProg 64 :=
.seq AllocBody198_42 AllocBody198_49

def AllocBody198_51 : StackLang.HolProg 64 :=
.seq AllocBody198_41 AllocBody198_50

def AllocBody198_52 : StackLang.HolProg 64 :=
.seq AllocBody198_40 AllocBody198_51

def AllocBody198_53 : StackLang.HolProg 64 :=
.seq AllocBody198_39 AllocBody198_52

def AllocBody198_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody198_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody198_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody198_57 : StackLang.HolProg 64 :=
.seq AllocBody198_55 AllocBody198_56

def AllocBody198_58 : StackLang.HolProg 64 :=
.seq AllocBody198_54 AllocBody198_57

def AllocBody198_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody198_60 : StackLang.HolProg 64 :=
.seq AllocBody198_58 AllocBody198_59

def AllocBody198_61 : StackLang.HolProg 64 :=
.call (some (AllocBody198_53, 0, 198, 2)) (Sum.inl 68) (some (AllocBody198_60, 198, 3))

def AllocBody198_62 : StackLang.HolProg 64 :=
.seq AllocBody198_38 AllocBody198_61

def AllocBody198_63 : StackLang.HolProg 64 :=
.seq AllocBody198_37 AllocBody198_62

def AllocBody198_64 : StackLang.HolProg 64 :=
.seq AllocBody198_36 AllocBody198_63

def AllocBody198_65 : StackLang.HolProg 64 :=
.seq AllocBody198_17 AllocBody198_64

def AllocBody198_66 : StackLang.HolProg 64 :=
.seq AllocBody198_14 AllocBody198_65

def AllocBody198_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody198_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def AllocBody198_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def AllocBody198_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def AllocBody198_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody198_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody198_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody198_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody198_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody198_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody198_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody198_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody198_84 : StackLang.HolProg 64 :=
.seq AllocBody198_82 AllocBody198_83

def AllocBody198_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody198_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody198_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody198_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def AllocBody198_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody198_90 : StackLang.HolProg 64 :=
.seq AllocBody198_88 AllocBody198_89

def AllocBody198_91 : StackLang.HolProg 64 :=
.seq AllocBody198_87 AllocBody198_90

def AllocBody198_92 : StackLang.HolProg 64 :=
.seq AllocBody198_86 AllocBody198_91

def AllocBody198_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody198_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody198_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody198_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody198_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody198_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody198_101 : StackLang.HolProg 64 :=
.seq AllocBody198_99 AllocBody198_100

def AllocBody198_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody198_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody198_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody198_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def AllocBody198_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody198_107 : StackLang.HolProg 64 :=
.seq AllocBody198_105 AllocBody198_106

def AllocBody198_108 : StackLang.HolProg 64 :=
.seq AllocBody198_104 AllocBody198_107

def AllocBody198_109 : StackLang.HolProg 64 :=
.seq AllocBody198_103 AllocBody198_108

def AllocBody198_110 : StackLang.HolProg 64 :=
.seq AllocBody198_102 AllocBody198_109

def AllocBody198_111 : StackLang.HolProg 64 :=
.seq AllocBody198_101 AllocBody198_110

def AllocBody198_112 : StackLang.HolProg 64 :=
.seq AllocBody198_98 AllocBody198_111

def AllocBody198_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 235#64)

def AllocBody198_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody198_116 : StackLang.HolProg 64 :=
.seq AllocBody198_114 AllocBody198_115

def AllocBody198_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody198_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody198_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody198_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 5

def AllocBody198_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody198_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody198_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody198_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody198_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody198_127 : StackLang.HolProg 64 :=
.seq AllocBody198_125 AllocBody198_126

def AllocBody198_128 : StackLang.HolProg 64 :=
.seq AllocBody198_124 AllocBody198_127

def AllocBody198_129 : StackLang.HolProg 64 :=
.seq AllocBody198_123 AllocBody198_128

def AllocBody198_130 : StackLang.HolProg 64 :=
.seq AllocBody198_122 AllocBody198_129

def AllocBody198_131 : StackLang.HolProg 64 :=
.seq AllocBody198_121 AllocBody198_130

def AllocBody198_132 : StackLang.HolProg 64 :=
.seq AllocBody198_120 AllocBody198_131

def AllocBody198_133 : StackLang.HolProg 64 :=
.seq AllocBody198_119 AllocBody198_132

def AllocBody198_134 : StackLang.HolProg 64 :=
.seq AllocBody198_118 AllocBody198_133

def AllocBody198_135 : StackLang.HolProg 64 :=
.seq AllocBody198_117 AllocBody198_134

def AllocBody198_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody198_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody198_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody198_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody198_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody198_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody198_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody198_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody198_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody198_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody198_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody198_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody198_150 : StackLang.HolProg 64 :=
.seq AllocBody198_148 AllocBody198_149

def AllocBody198_151 : StackLang.HolProg 64 :=
.seq AllocBody198_147 AllocBody198_150

def AllocBody198_152 : StackLang.HolProg 64 :=
.seq AllocBody198_146 AllocBody198_151

def AllocBody198_153 : StackLang.HolProg 64 :=
.seq AllocBody198_145 AllocBody198_152

def AllocBody198_154 : StackLang.HolProg 64 :=
.seq AllocBody198_144 AllocBody198_153

def AllocBody198_155 : StackLang.HolProg 64 :=
.seq AllocBody198_143 AllocBody198_154

def AllocBody198_156 : StackLang.HolProg 64 :=
.seq AllocBody198_142 AllocBody198_155

def AllocBody198_157 : StackLang.HolProg 64 :=
.seq AllocBody198_141 AllocBody198_156

def AllocBody198_158 : StackLang.HolProg 64 :=
.seq AllocBody198_140 AllocBody198_157

def AllocBody198_159 : StackLang.HolProg 64 :=
.seq AllocBody198_139 AllocBody198_158

def AllocBody198_160 : StackLang.HolProg 64 :=
.seq AllocBody198_138 AllocBody198_159

def AllocBody198_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def AllocBody198_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody198_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody198_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody198_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody198_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody198_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody198_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody198_169 : StackLang.HolProg 64 :=
.seq AllocBody198_167 AllocBody198_168

def AllocBody198_170 : StackLang.HolProg 64 :=
.seq AllocBody198_166 AllocBody198_169

def AllocBody198_171 : StackLang.HolProg 64 :=
.seq AllocBody198_165 AllocBody198_170

def AllocBody198_172 : StackLang.HolProg 64 :=
.seq AllocBody198_164 AllocBody198_171

def AllocBody198_173 : StackLang.HolProg 64 :=
.seq AllocBody198_163 AllocBody198_172

def AllocBody198_174 : StackLang.HolProg 64 :=
.seq AllocBody198_162 AllocBody198_173

def AllocBody198_175 : StackLang.HolProg 64 :=
.seq AllocBody198_161 AllocBody198_174

def AllocBody198_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody198_177 : StackLang.HolProg 64 :=
.seq AllocBody198_175 AllocBody198_176

def AllocBody198_178 : StackLang.HolProg 64 :=
.call (some (AllocBody198_160, 0, 198, 4)) (Sum.inl 77) (some (AllocBody198_177, 198, 5))

def AllocBody198_179 : StackLang.HolProg 64 :=
.seq AllocBody198_137 AllocBody198_178

def AllocBody198_180 : StackLang.HolProg 64 :=
.seq AllocBody198_136 AllocBody198_179

def AllocBody198_181 : StackLang.HolProg 64 :=
.seq AllocBody198_135 AllocBody198_180

def AllocBody198_182 : StackLang.HolProg 64 :=
.seq AllocBody198_116 AllocBody198_181

def AllocBody198_183 : StackLang.HolProg 64 :=
.seq AllocBody198_113 AllocBody198_182

def AllocBody198_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody198_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody198_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody198_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody198_189 : StackLang.HolProg 64 :=
.seq AllocBody198_187 AllocBody198_188

def AllocBody198_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody198_191 : StackLang.HolProg 64 :=
.seq AllocBody198_189 AllocBody198_190

def AllocBody198_192 : StackLang.HolProg 64 :=
.seq AllocBody198_186 AllocBody198_191

def AllocBody198_193 : StackLang.HolProg 64 :=
.seq AllocBody198_185 AllocBody198_192

def AllocBody198_194 : StackLang.HolProg 64 :=
.seq AllocBody198_184 AllocBody198_193

def AllocBody198_195 : StackLang.HolProg 64 :=
.seq AllocBody198_183 AllocBody198_194

def AllocBody198_196 : StackLang.HolProg 64 :=
.seq AllocBody198_112 AllocBody198_195

def AllocBody198_197 : StackLang.HolProg 64 :=
.seq AllocBody198_97 AllocBody198_196

def AllocBody198_198 : StackLang.HolProg 64 :=
.seq AllocBody198_96 AllocBody198_197

def AllocBody198_199 : StackLang.HolProg 64 :=
.seq AllocBody198_95 AllocBody198_198

def AllocBody198_200 : StackLang.HolProg 64 :=
.seq AllocBody198_94 AllocBody198_199

def AllocBody198_201 : StackLang.HolProg 64 :=
.seq AllocBody198_93 AllocBody198_200

def AllocBody198_202 : StackLang.HolProg 64 :=
.seq AllocBody198_92 AllocBody198_201

def AllocBody198_203 : StackLang.HolProg 64 :=
.seq AllocBody198_85 AllocBody198_202

def AllocBody198_204 : StackLang.HolProg 64 :=
.seq AllocBody198_84 AllocBody198_203

def AllocBody198_205 : StackLang.HolProg 64 :=
.seq AllocBody198_81 AllocBody198_204

def AllocBody198_206 : StackLang.HolProg 64 :=
.seq AllocBody198_80 AllocBody198_205

def AllocBody198_207 : StackLang.HolProg 64 :=
.seq AllocBody198_79 AllocBody198_206

def AllocBody198_208 : StackLang.HolProg 64 :=
.seq AllocBody198_78 AllocBody198_207

def AllocBody198_209 : StackLang.HolProg 64 :=
.seq AllocBody198_77 AllocBody198_208

def AllocBody198_210 : StackLang.HolProg 64 :=
.seq AllocBody198_76 AllocBody198_209

def AllocBody198_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody198_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody198_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody198_214 : StackLang.HolProg 64 :=
.seq AllocBody198_212 AllocBody198_213

def AllocBody198_215 : StackLang.HolProg 64 :=
.seq AllocBody198_211 AllocBody198_214

def AllocBody198_216 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody198_210 AllocBody198_215

def AllocBody198_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody198_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def AllocBody198_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody198_220 : StackLang.HolProg 64 :=
.seq AllocBody198_218 AllocBody198_219

def AllocBody198_221 : StackLang.HolProg 64 :=
.seq AllocBody198_217 AllocBody198_220

def AllocBody198_222 : StackLang.HolProg 64 :=
.seq AllocBody198_216 AllocBody198_221

def AllocBody198_223 : StackLang.HolProg 64 :=
.seq AllocBody198_75 AllocBody198_222

def AllocBody198_224 : StackLang.HolProg 64 :=
.loop AllocBody198_223

def AllocBody198_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody198_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody198_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody198_228 : StackLang.HolProg 64 :=
.seq AllocBody198_226 AllocBody198_227

def AllocBody198_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody198_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody198_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody198_232 : StackLang.HolProg 64 :=
.seq AllocBody198_230 AllocBody198_231

def AllocBody198_233 : StackLang.HolProg 64 :=
.seq AllocBody198_229 AllocBody198_232

def AllocBody198_234 : StackLang.HolProg 64 :=
.seq AllocBody198_228 AllocBody198_233

def AllocBody198_235 : StackLang.HolProg 64 :=
.seq AllocBody198_225 AllocBody198_234

def AllocBody198_236 : StackLang.HolProg 64 :=
.seq AllocBody198_224 AllocBody198_235

def AllocBody198_237 : StackLang.HolProg 64 :=
.seq AllocBody198_74 AllocBody198_236

def AllocBody198_238 : StackLang.HolProg 64 :=
.seq AllocBody198_73 AllocBody198_237

def AllocBody198_239 : StackLang.HolProg 64 :=
.seq AllocBody198_72 AllocBody198_238

def AllocBody198_240 : StackLang.HolProg 64 :=
.seq AllocBody198_71 AllocBody198_239

def AllocBody198_241 : StackLang.HolProg 64 :=
.seq AllocBody198_70 AllocBody198_240

def AllocBody198_242 : StackLang.HolProg 64 :=
.seq AllocBody198_69 AllocBody198_241

def AllocBody198_243 : StackLang.HolProg 64 :=
.seq AllocBody198_68 AllocBody198_242

def AllocBody198_244 : StackLang.HolProg 64 :=
.seq AllocBody198_67 AllocBody198_243

def AllocBody198_245 : StackLang.HolProg 64 :=
.seq AllocBody198_66 AllocBody198_244

def AllocBody198_246 : StackLang.HolProg 64 :=
.seq AllocBody198_13 AllocBody198_245

def AllocBody198_247 : StackLang.HolProg 64 :=
.seq AllocBody198_10 AllocBody198_246

def AllocBody198_248 : StackLang.HolProg 64 :=
.seq AllocBody198_9 AllocBody198_247

def AllocBody198_249 : StackLang.HolProg 64 :=
.seq AllocBody198_8 AllocBody198_248

def AllocBody198_250 : StackLang.HolProg 64 :=
.seq AllocBody198_7 AllocBody198_249

def AllocBody198_251 : StackLang.HolProg 64 :=
.seq AllocBody198_4 AllocBody198_250

def AllocBody198_252 : StackLang.HolProg 64 :=
.seq AllocBody198_3 AllocBody198_251

def AllocBody198_253 : StackLang.HolProg 64 :=
.seq AllocBody198_2 AllocBody198_252

def AllocBody198_254 : StackLang.HolProg 64 :=
.seq AllocBody198_1 AllocBody198_253

def AllocBody198_255 : StackLang.HolProg 64 :=
.seq AllocBody198_0 AllocBody198_254

def Alloc198 : Nat × StackLang.HolProg 64 := (198, AllocBody198_255)
theorem Alloc198_eq : StackAlloc.progComp (198, raw198) = Alloc198 := by
  kernel_rfl
#print axioms Alloc198_eq
end InitECandidate.Proofs.BackendStages
