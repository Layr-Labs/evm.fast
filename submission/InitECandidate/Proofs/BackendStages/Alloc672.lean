import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw672
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody672_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody672_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody672_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody672_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody672_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody672_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody672_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody672_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody672_9 : StackLang.HolProg 64 :=
.seq AllocBody672_7 AllocBody672_8

def AllocBody672_10 : StackLang.HolProg 64 :=
.seq AllocBody672_6 AllocBody672_9

def AllocBody672_11 : StackLang.HolProg 64 :=
.seq AllocBody672_5 AllocBody672_10

def AllocBody672_12 : StackLang.HolProg 64 :=
.seq AllocBody672_4 AllocBody672_11

def AllocBody672_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody672_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody672_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody672_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody672_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody672_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody672_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody672_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def AllocBody672_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody672_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody672_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody672_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody672_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody672_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def AllocBody672_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody672_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def AllocBody672_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def AllocBody672_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 4

def AllocBody672_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody672_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody672_40 : StackLang.HolProg 64 :=
.seq AllocBody672_38 AllocBody672_39

def AllocBody672_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 5

def AllocBody672_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody672_43 : StackLang.HolProg 64 :=
.seq AllocBody672_41 AllocBody672_42

def AllocBody672_44 : StackLang.HolProg 64 :=
.seq AllocBody672_40 AllocBody672_43

def AllocBody672_45 : StackLang.HolProg 64 :=
.seq AllocBody672_37 AllocBody672_44

def AllocBody672_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2788#64)

def AllocBody672_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody672_49 : StackLang.HolProg 64 :=
.seq AllocBody672_47 AllocBody672_48

def AllocBody672_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody672_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody672_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody672_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 672 3

def AllocBody672_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody672_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody672_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody672_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody672_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody672_60 : StackLang.HolProg 64 :=
.seq AllocBody672_58 AllocBody672_59

def AllocBody672_61 : StackLang.HolProg 64 :=
.seq AllocBody672_57 AllocBody672_60

def AllocBody672_62 : StackLang.HolProg 64 :=
.seq AllocBody672_56 AllocBody672_61

def AllocBody672_63 : StackLang.HolProg 64 :=
.seq AllocBody672_55 AllocBody672_62

def AllocBody672_64 : StackLang.HolProg 64 :=
.seq AllocBody672_54 AllocBody672_63

def AllocBody672_65 : StackLang.HolProg 64 :=
.seq AllocBody672_53 AllocBody672_64

def AllocBody672_66 : StackLang.HolProg 64 :=
.seq AllocBody672_52 AllocBody672_65

def AllocBody672_67 : StackLang.HolProg 64 :=
.seq AllocBody672_51 AllocBody672_66

def AllocBody672_68 : StackLang.HolProg 64 :=
.seq AllocBody672_50 AllocBody672_67

def AllocBody672_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody672_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody672_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody672_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody672_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody672_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody672_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody672_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody672_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody672_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody672_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody672_82 : StackLang.HolProg 64 :=
.seq AllocBody672_80 AllocBody672_81

def AllocBody672_83 : StackLang.HolProg 64 :=
.seq AllocBody672_79 AllocBody672_82

def AllocBody672_84 : StackLang.HolProg 64 :=
.seq AllocBody672_78 AllocBody672_83

def AllocBody672_85 : StackLang.HolProg 64 :=
.seq AllocBody672_77 AllocBody672_84

def AllocBody672_86 : StackLang.HolProg 64 :=
.seq AllocBody672_76 AllocBody672_85

def AllocBody672_87 : StackLang.HolProg 64 :=
.seq AllocBody672_75 AllocBody672_86

def AllocBody672_88 : StackLang.HolProg 64 :=
.seq AllocBody672_74 AllocBody672_87

def AllocBody672_89 : StackLang.HolProg 64 :=
.seq AllocBody672_73 AllocBody672_88

def AllocBody672_90 : StackLang.HolProg 64 :=
.seq AllocBody672_72 AllocBody672_89

def AllocBody672_91 : StackLang.HolProg 64 :=
.seq AllocBody672_71 AllocBody672_90

def AllocBody672_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody672_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody672_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody672_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody672_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody672_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody672_98 : StackLang.HolProg 64 :=
.seq AllocBody672_96 AllocBody672_97

def AllocBody672_99 : StackLang.HolProg 64 :=
.seq AllocBody672_95 AllocBody672_98

def AllocBody672_100 : StackLang.HolProg 64 :=
.seq AllocBody672_94 AllocBody672_99

def AllocBody672_101 : StackLang.HolProg 64 :=
.seq AllocBody672_93 AllocBody672_100

def AllocBody672_102 : StackLang.HolProg 64 :=
.seq AllocBody672_92 AllocBody672_101

def AllocBody672_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody672_104 : StackLang.HolProg 64 :=
.seq AllocBody672_102 AllocBody672_103

def AllocBody672_105 : StackLang.HolProg 64 :=
.call (some (AllocBody672_91, 0, 672, 2)) (Sum.inl 658) (some (AllocBody672_104, 672, 3))

def AllocBody672_106 : StackLang.HolProg 64 :=
.seq AllocBody672_70 AllocBody672_105

def AllocBody672_107 : StackLang.HolProg 64 :=
.seq AllocBody672_69 AllocBody672_106

def AllocBody672_108 : StackLang.HolProg 64 :=
.seq AllocBody672_68 AllocBody672_107

def AllocBody672_109 : StackLang.HolProg 64 :=
.seq AllocBody672_49 AllocBody672_108

def AllocBody672_110 : StackLang.HolProg 64 :=
.seq AllocBody672_46 AllocBody672_109

def AllocBody672_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody672_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody672_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody672_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody672_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody672_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody672_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody672_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody672_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def AllocBody672_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody672_128 : StackLang.HolProg 64 :=
.seq AllocBody672_126 AllocBody672_127

def AllocBody672_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody672_130 : StackLang.HolProg 64 :=
.seq AllocBody672_128 AllocBody672_129

def AllocBody672_131 : StackLang.HolProg 64 :=
.seq AllocBody672_125 AllocBody672_130

def AllocBody672_132 : StackLang.HolProg 64 :=
.seq AllocBody672_124 AllocBody672_131

def AllocBody672_133 : StackLang.HolProg 64 :=
.seq AllocBody672_123 AllocBody672_132

def AllocBody672_134 : StackLang.HolProg 64 :=
.seq AllocBody672_122 AllocBody672_133

def AllocBody672_135 : StackLang.HolProg 64 :=
.seq AllocBody672_121 AllocBody672_134

def AllocBody672_136 : StackLang.HolProg 64 :=
.seq AllocBody672_120 AllocBody672_135

def AllocBody672_137 : StackLang.HolProg 64 :=
.seq AllocBody672_119 AllocBody672_136

def AllocBody672_138 : StackLang.HolProg 64 :=
.seq AllocBody672_118 AllocBody672_137

def AllocBody672_139 : StackLang.HolProg 64 :=
.seq AllocBody672_117 AllocBody672_138

def AllocBody672_140 : StackLang.HolProg 64 :=
.seq AllocBody672_116 AllocBody672_139

def AllocBody672_141 : StackLang.HolProg 64 :=
.seq AllocBody672_115 AllocBody672_140

def AllocBody672_142 : StackLang.HolProg 64 :=
.seq AllocBody672_114 AllocBody672_141

def AllocBody672_143 : StackLang.HolProg 64 :=
.seq AllocBody672_113 AllocBody672_142

def AllocBody672_144 : StackLang.HolProg 64 :=
.seq AllocBody672_112 AllocBody672_143

def AllocBody672_145 : StackLang.HolProg 64 :=
.seq AllocBody672_111 AllocBody672_144

def AllocBody672_146 : StackLang.HolProg 64 :=
.seq AllocBody672_110 AllocBody672_145

def AllocBody672_147 : StackLang.HolProg 64 :=
.seq AllocBody672_45 AllocBody672_146

def AllocBody672_148 : StackLang.HolProg 64 :=
.seq AllocBody672_36 AllocBody672_147

def AllocBody672_149 : StackLang.HolProg 64 :=
.seq AllocBody672_35 AllocBody672_148

def AllocBody672_150 : StackLang.HolProg 64 :=
.seq AllocBody672_34 AllocBody672_149

def AllocBody672_151 : StackLang.HolProg 64 :=
.seq AllocBody672_33 AllocBody672_150

def AllocBody672_152 : StackLang.HolProg 64 :=
.seq AllocBody672_32 AllocBody672_151

def AllocBody672_153 : StackLang.HolProg 64 :=
.seq AllocBody672_31 AllocBody672_152

def AllocBody672_154 : StackLang.HolProg 64 :=
.seq AllocBody672_30 AllocBody672_153

def AllocBody672_155 : StackLang.HolProg 64 :=
.seq AllocBody672_29 AllocBody672_154

def AllocBody672_156 : StackLang.HolProg 64 :=
.seq AllocBody672_28 AllocBody672_155

def AllocBody672_157 : StackLang.HolProg 64 :=
.seq AllocBody672_27 AllocBody672_156

def AllocBody672_158 : StackLang.HolProg 64 :=
.seq AllocBody672_26 AllocBody672_157

def AllocBody672_159 : StackLang.HolProg 64 :=
.seq AllocBody672_25 AllocBody672_158

def AllocBody672_160 : StackLang.HolProg 64 :=
.seq AllocBody672_24 AllocBody672_159

def AllocBody672_161 : StackLang.HolProg 64 :=
.seq AllocBody672_23 AllocBody672_160

def AllocBody672_162 : StackLang.HolProg 64 :=
.seq AllocBody672_22 AllocBody672_161

def AllocBody672_163 : StackLang.HolProg 64 :=
.seq AllocBody672_21 AllocBody672_162

def AllocBody672_164 : StackLang.HolProg 64 :=
.seq AllocBody672_20 AllocBody672_163

def AllocBody672_165 : StackLang.HolProg 64 :=
.seq AllocBody672_19 AllocBody672_164

def AllocBody672_166 : StackLang.HolProg 64 :=
.seq AllocBody672_18 AllocBody672_165

def AllocBody672_167 : StackLang.HolProg 64 :=
.seq AllocBody672_17 AllocBody672_166

def AllocBody672_168 : StackLang.HolProg 64 :=
.seq AllocBody672_16 AllocBody672_167

def AllocBody672_169 : StackLang.HolProg 64 :=
.seq AllocBody672_15 AllocBody672_168

def AllocBody672_170 : StackLang.HolProg 64 :=
.seq AllocBody672_14 AllocBody672_169

def AllocBody672_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody672_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody672_173 : StackLang.HolProg 64 :=
.seq AllocBody672_171 AllocBody672_172

def AllocBody672_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody672_170 AllocBody672_173

def AllocBody672_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody672_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody672_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody672_178 : StackLang.HolProg 64 :=
.seq AllocBody672_176 AllocBody672_177

def AllocBody672_179 : StackLang.HolProg 64 :=
.seq AllocBody672_175 AllocBody672_178

def AllocBody672_180 : StackLang.HolProg 64 :=
.seq AllocBody672_174 AllocBody672_179

def AllocBody672_181 : StackLang.HolProg 64 :=
.seq AllocBody672_13 AllocBody672_180

def AllocBody672_182 : StackLang.HolProg 64 :=
.loop AllocBody672_181

def AllocBody672_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody672_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody672_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody672_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody672_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody672_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody672_189 : StackLang.HolProg 64 :=
.seq AllocBody672_187 AllocBody672_188

def AllocBody672_190 : StackLang.HolProg 64 :=
.seq AllocBody672_186 AllocBody672_189

def AllocBody672_191 : StackLang.HolProg 64 :=
.seq AllocBody672_185 AllocBody672_190

def AllocBody672_192 : StackLang.HolProg 64 :=
.seq AllocBody672_184 AllocBody672_191

def AllocBody672_193 : StackLang.HolProg 64 :=
.seq AllocBody672_183 AllocBody672_192

def AllocBody672_194 : StackLang.HolProg 64 :=
.seq AllocBody672_182 AllocBody672_193

def AllocBody672_195 : StackLang.HolProg 64 :=
.seq AllocBody672_12 AllocBody672_194

def AllocBody672_196 : StackLang.HolProg 64 :=
.seq AllocBody672_3 AllocBody672_195

def AllocBody672_197 : StackLang.HolProg 64 :=
.seq AllocBody672_2 AllocBody672_196

def AllocBody672_198 : StackLang.HolProg 64 :=
.seq AllocBody672_1 AllocBody672_197

def AllocBody672_199 : StackLang.HolProg 64 :=
.seq AllocBody672_0 AllocBody672_198

def Alloc672 : Nat × StackLang.HolProg 64 := (672, AllocBody672_199)
theorem Alloc672_eq : StackAlloc.progComp (672, raw672) = Alloc672 := by
  kernel_rfl
#print axioms Alloc672_eq
end InitECandidate.Proofs.BackendStages
