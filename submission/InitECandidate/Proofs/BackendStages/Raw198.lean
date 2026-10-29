import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function198
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody198_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody198_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody198_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody198_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody198_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody198_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody198_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody198_7 : StackLang.HolProg 64 :=
.seq rawBody198_5 rawBody198_6

def rawBody198_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody198_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody198_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def rawBody198_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody198_13 : StackLang.HolProg 64 :=
.seq rawBody198_11 rawBody198_12

def rawBody198_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 234#64)

def rawBody198_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody198_17 : StackLang.HolProg 64 :=
.seq rawBody198_15 rawBody198_16

def rawBody198_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody198_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody198_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody198_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 3

def rawBody198_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody198_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody198_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody198_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody198_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody198_28 : StackLang.HolProg 64 :=
.seq rawBody198_26 rawBody198_27

def rawBody198_29 : StackLang.HolProg 64 :=
.seq rawBody198_25 rawBody198_28

def rawBody198_30 : StackLang.HolProg 64 :=
.seq rawBody198_24 rawBody198_29

def rawBody198_31 : StackLang.HolProg 64 :=
.seq rawBody198_23 rawBody198_30

def rawBody198_32 : StackLang.HolProg 64 :=
.seq rawBody198_22 rawBody198_31

def rawBody198_33 : StackLang.HolProg 64 :=
.seq rawBody198_21 rawBody198_32

def rawBody198_34 : StackLang.HolProg 64 :=
.seq rawBody198_20 rawBody198_33

def rawBody198_35 : StackLang.HolProg 64 :=
.seq rawBody198_19 rawBody198_34

def rawBody198_36 : StackLang.HolProg 64 :=
.seq rawBody198_18 rawBody198_35

def rawBody198_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody198_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody198_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody198_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody198_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody198_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody198_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody198_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody198_47 : StackLang.HolProg 64 :=
.seq rawBody198_45 rawBody198_46

def rawBody198_48 : StackLang.HolProg 64 :=
.seq rawBody198_44 rawBody198_47

def rawBody198_49 : StackLang.HolProg 64 :=
.seq rawBody198_43 rawBody198_48

def rawBody198_50 : StackLang.HolProg 64 :=
.seq rawBody198_42 rawBody198_49

def rawBody198_51 : StackLang.HolProg 64 :=
.seq rawBody198_41 rawBody198_50

def rawBody198_52 : StackLang.HolProg 64 :=
.seq rawBody198_40 rawBody198_51

def rawBody198_53 : StackLang.HolProg 64 :=
.seq rawBody198_39 rawBody198_52

def rawBody198_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody198_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody198_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody198_57 : StackLang.HolProg 64 :=
.seq rawBody198_55 rawBody198_56

def rawBody198_58 : StackLang.HolProg 64 :=
.seq rawBody198_54 rawBody198_57

def rawBody198_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody198_60 : StackLang.HolProg 64 :=
.seq rawBody198_58 rawBody198_59

def rawBody198_61 : StackLang.HolProg 64 :=
.call (some (rawBody198_53, 0, 198, 2)) (Sum.inl 68) (some (rawBody198_60, 198, 3))

def rawBody198_62 : StackLang.HolProg 64 :=
.seq rawBody198_38 rawBody198_61

def rawBody198_63 : StackLang.HolProg 64 :=
.seq rawBody198_37 rawBody198_62

def rawBody198_64 : StackLang.HolProg 64 :=
.seq rawBody198_36 rawBody198_63

def rawBody198_65 : StackLang.HolProg 64 :=
.seq rawBody198_17 rawBody198_64

def rawBody198_66 : StackLang.HolProg 64 :=
.seq rawBody198_14 rawBody198_65

def rawBody198_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody198_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def rawBody198_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def rawBody198_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody198_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody198_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody198_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody198_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody198_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody198_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody198_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody198_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody198_84 : StackLang.HolProg 64 :=
.seq rawBody198_82 rawBody198_83

def rawBody198_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody198_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody198_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody198_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def rawBody198_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody198_90 : StackLang.HolProg 64 :=
.seq rawBody198_88 rawBody198_89

def rawBody198_91 : StackLang.HolProg 64 :=
.seq rawBody198_87 rawBody198_90

def rawBody198_92 : StackLang.HolProg 64 :=
.seq rawBody198_86 rawBody198_91

def rawBody198_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody198_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody198_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody198_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody198_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody198_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody198_101 : StackLang.HolProg 64 :=
.seq rawBody198_99 rawBody198_100

def rawBody198_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody198_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody198_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody198_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def rawBody198_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody198_107 : StackLang.HolProg 64 :=
.seq rawBody198_105 rawBody198_106

def rawBody198_108 : StackLang.HolProg 64 :=
.seq rawBody198_104 rawBody198_107

def rawBody198_109 : StackLang.HolProg 64 :=
.seq rawBody198_103 rawBody198_108

def rawBody198_110 : StackLang.HolProg 64 :=
.seq rawBody198_102 rawBody198_109

def rawBody198_111 : StackLang.HolProg 64 :=
.seq rawBody198_101 rawBody198_110

def rawBody198_112 : StackLang.HolProg 64 :=
.seq rawBody198_98 rawBody198_111

def rawBody198_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 235#64)

def rawBody198_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody198_116 : StackLang.HolProg 64 :=
.seq rawBody198_114 rawBody198_115

def rawBody198_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody198_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody198_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody198_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 198 5

def rawBody198_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody198_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody198_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody198_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody198_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody198_127 : StackLang.HolProg 64 :=
.seq rawBody198_125 rawBody198_126

def rawBody198_128 : StackLang.HolProg 64 :=
.seq rawBody198_124 rawBody198_127

def rawBody198_129 : StackLang.HolProg 64 :=
.seq rawBody198_123 rawBody198_128

def rawBody198_130 : StackLang.HolProg 64 :=
.seq rawBody198_122 rawBody198_129

def rawBody198_131 : StackLang.HolProg 64 :=
.seq rawBody198_121 rawBody198_130

def rawBody198_132 : StackLang.HolProg 64 :=
.seq rawBody198_120 rawBody198_131

def rawBody198_133 : StackLang.HolProg 64 :=
.seq rawBody198_119 rawBody198_132

def rawBody198_134 : StackLang.HolProg 64 :=
.seq rawBody198_118 rawBody198_133

def rawBody198_135 : StackLang.HolProg 64 :=
.seq rawBody198_117 rawBody198_134

def rawBody198_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody198_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody198_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody198_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody198_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody198_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody198_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody198_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody198_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody198_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody198_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody198_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody198_150 : StackLang.HolProg 64 :=
.seq rawBody198_148 rawBody198_149

def rawBody198_151 : StackLang.HolProg 64 :=
.seq rawBody198_147 rawBody198_150

def rawBody198_152 : StackLang.HolProg 64 :=
.seq rawBody198_146 rawBody198_151

def rawBody198_153 : StackLang.HolProg 64 :=
.seq rawBody198_145 rawBody198_152

def rawBody198_154 : StackLang.HolProg 64 :=
.seq rawBody198_144 rawBody198_153

def rawBody198_155 : StackLang.HolProg 64 :=
.seq rawBody198_143 rawBody198_154

def rawBody198_156 : StackLang.HolProg 64 :=
.seq rawBody198_142 rawBody198_155

def rawBody198_157 : StackLang.HolProg 64 :=
.seq rawBody198_141 rawBody198_156

def rawBody198_158 : StackLang.HolProg 64 :=
.seq rawBody198_140 rawBody198_157

def rawBody198_159 : StackLang.HolProg 64 :=
.seq rawBody198_139 rawBody198_158

def rawBody198_160 : StackLang.HolProg 64 :=
.seq rawBody198_138 rawBody198_159

def rawBody198_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 8

def rawBody198_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody198_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody198_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody198_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody198_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody198_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody198_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody198_169 : StackLang.HolProg 64 :=
.seq rawBody198_167 rawBody198_168

def rawBody198_170 : StackLang.HolProg 64 :=
.seq rawBody198_166 rawBody198_169

def rawBody198_171 : StackLang.HolProg 64 :=
.seq rawBody198_165 rawBody198_170

def rawBody198_172 : StackLang.HolProg 64 :=
.seq rawBody198_164 rawBody198_171

def rawBody198_173 : StackLang.HolProg 64 :=
.seq rawBody198_163 rawBody198_172

def rawBody198_174 : StackLang.HolProg 64 :=
.seq rawBody198_162 rawBody198_173

def rawBody198_175 : StackLang.HolProg 64 :=
.seq rawBody198_161 rawBody198_174

def rawBody198_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody198_177 : StackLang.HolProg 64 :=
.seq rawBody198_175 rawBody198_176

def rawBody198_178 : StackLang.HolProg 64 :=
.call (some (rawBody198_160, 0, 198, 4)) (Sum.inl 77) (some (rawBody198_177, 198, 5))

def rawBody198_179 : StackLang.HolProg 64 :=
.seq rawBody198_137 rawBody198_178

def rawBody198_180 : StackLang.HolProg 64 :=
.seq rawBody198_136 rawBody198_179

def rawBody198_181 : StackLang.HolProg 64 :=
.seq rawBody198_135 rawBody198_180

def rawBody198_182 : StackLang.HolProg 64 :=
.seq rawBody198_116 rawBody198_181

def rawBody198_183 : StackLang.HolProg 64 :=
.seq rawBody198_113 rawBody198_182

def rawBody198_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody198_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody198_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def rawBody198_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def rawBody198_189 : StackLang.HolProg 64 :=
.seq rawBody198_187 rawBody198_188

def rawBody198_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody198_191 : StackLang.HolProg 64 :=
.seq rawBody198_189 rawBody198_190

def rawBody198_192 : StackLang.HolProg 64 :=
.seq rawBody198_186 rawBody198_191

def rawBody198_193 : StackLang.HolProg 64 :=
.seq rawBody198_185 rawBody198_192

def rawBody198_194 : StackLang.HolProg 64 :=
.seq rawBody198_184 rawBody198_193

def rawBody198_195 : StackLang.HolProg 64 :=
.seq rawBody198_183 rawBody198_194

def rawBody198_196 : StackLang.HolProg 64 :=
.seq rawBody198_112 rawBody198_195

def rawBody198_197 : StackLang.HolProg 64 :=
.seq rawBody198_97 rawBody198_196

def rawBody198_198 : StackLang.HolProg 64 :=
.seq rawBody198_96 rawBody198_197

def rawBody198_199 : StackLang.HolProg 64 :=
.seq rawBody198_95 rawBody198_198

def rawBody198_200 : StackLang.HolProg 64 :=
.seq rawBody198_94 rawBody198_199

def rawBody198_201 : StackLang.HolProg 64 :=
.seq rawBody198_93 rawBody198_200

def rawBody198_202 : StackLang.HolProg 64 :=
.seq rawBody198_92 rawBody198_201

def rawBody198_203 : StackLang.HolProg 64 :=
.seq rawBody198_85 rawBody198_202

def rawBody198_204 : StackLang.HolProg 64 :=
.seq rawBody198_84 rawBody198_203

def rawBody198_205 : StackLang.HolProg 64 :=
.seq rawBody198_81 rawBody198_204

def rawBody198_206 : StackLang.HolProg 64 :=
.seq rawBody198_80 rawBody198_205

def rawBody198_207 : StackLang.HolProg 64 :=
.seq rawBody198_79 rawBody198_206

def rawBody198_208 : StackLang.HolProg 64 :=
.seq rawBody198_78 rawBody198_207

def rawBody198_209 : StackLang.HolProg 64 :=
.seq rawBody198_77 rawBody198_208

def rawBody198_210 : StackLang.HolProg 64 :=
.seq rawBody198_76 rawBody198_209

def rawBody198_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody198_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody198_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody198_214 : StackLang.HolProg 64 :=
.seq rawBody198_212 rawBody198_213

def rawBody198_215 : StackLang.HolProg 64 :=
.seq rawBody198_211 rawBody198_214

def rawBody198_216 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) rawBody198_210 rawBody198_215

def rawBody198_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody198_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def rawBody198_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody198_220 : StackLang.HolProg 64 :=
.seq rawBody198_218 rawBody198_219

def rawBody198_221 : StackLang.HolProg 64 :=
.seq rawBody198_217 rawBody198_220

def rawBody198_222 : StackLang.HolProg 64 :=
.seq rawBody198_216 rawBody198_221

def rawBody198_223 : StackLang.HolProg 64 :=
.seq rawBody198_75 rawBody198_222

def rawBody198_224 : StackLang.HolProg 64 :=
.loop rawBody198_223

def rawBody198_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody198_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody198_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody198_228 : StackLang.HolProg 64 :=
.seq rawBody198_226 rawBody198_227

def rawBody198_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody198_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody198_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody198_232 : StackLang.HolProg 64 :=
.seq rawBody198_230 rawBody198_231

def rawBody198_233 : StackLang.HolProg 64 :=
.seq rawBody198_229 rawBody198_232

def rawBody198_234 : StackLang.HolProg 64 :=
.seq rawBody198_228 rawBody198_233

def rawBody198_235 : StackLang.HolProg 64 :=
.seq rawBody198_225 rawBody198_234

def rawBody198_236 : StackLang.HolProg 64 :=
.seq rawBody198_224 rawBody198_235

def rawBody198_237 : StackLang.HolProg 64 :=
.seq rawBody198_74 rawBody198_236

def rawBody198_238 : StackLang.HolProg 64 :=
.seq rawBody198_73 rawBody198_237

def rawBody198_239 : StackLang.HolProg 64 :=
.seq rawBody198_72 rawBody198_238

def rawBody198_240 : StackLang.HolProg 64 :=
.seq rawBody198_71 rawBody198_239

def rawBody198_241 : StackLang.HolProg 64 :=
.seq rawBody198_70 rawBody198_240

def rawBody198_242 : StackLang.HolProg 64 :=
.seq rawBody198_69 rawBody198_241

def rawBody198_243 : StackLang.HolProg 64 :=
.seq rawBody198_68 rawBody198_242

def rawBody198_244 : StackLang.HolProg 64 :=
.seq rawBody198_67 rawBody198_243

def rawBody198_245 : StackLang.HolProg 64 :=
.seq rawBody198_66 rawBody198_244

def rawBody198_246 : StackLang.HolProg 64 :=
.seq rawBody198_13 rawBody198_245

def rawBody198_247 : StackLang.HolProg 64 :=
.seq rawBody198_10 rawBody198_246

def rawBody198_248 : StackLang.HolProg 64 :=
.seq rawBody198_9 rawBody198_247

def rawBody198_249 : StackLang.HolProg 64 :=
.seq rawBody198_8 rawBody198_248

def rawBody198_250 : StackLang.HolProg 64 :=
.seq rawBody198_7 rawBody198_249

def rawBody198_251 : StackLang.HolProg 64 :=
.seq rawBody198_4 rawBody198_250

def rawBody198_252 : StackLang.HolProg 64 :=
.seq rawBody198_3 rawBody198_251

def rawBody198_253 : StackLang.HolProg 64 :=
.seq rawBody198_2 rawBody198_252

def rawBody198_254 : StackLang.HolProg 64 :=
.seq rawBody198_1 rawBody198_253

def rawBody198_255 : StackLang.HolProg 64 :=
.seq rawBody198_0 rawBody198_254

def raw198 : StackLang.HolProg 64 := rawBody198_255
theorem raw198_eq : StackRawCall.compTop RawInfo.rawInfo (function198 (.list [])).1 = raw198 := by
  kernel_rfl
#print axioms raw198_eq
end InitECandidate.Proofs.BackendStages
