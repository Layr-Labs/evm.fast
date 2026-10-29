import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw673
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody673_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody673_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody673_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody673_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody673_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody673_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody673_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody673_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody673_9 : StackLang.HolProg 64 :=
.seq AllocBody673_7 AllocBody673_8

def AllocBody673_10 : StackLang.HolProg 64 :=
.seq AllocBody673_6 AllocBody673_9

def AllocBody673_11 : StackLang.HolProg 64 :=
.seq AllocBody673_5 AllocBody673_10

def AllocBody673_12 : StackLang.HolProg 64 :=
.seq AllocBody673_4 AllocBody673_11

def AllocBody673_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody673_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody673_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody673_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody673_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody673_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody673_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def AllocBody673_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def AllocBody673_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def AllocBody673_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody673_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody673_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody673_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody673_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def AllocBody673_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def AllocBody673_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def AllocBody673_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def AllocBody673_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 4

def AllocBody673_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody673_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody673_40 : StackLang.HolProg 64 :=
.seq AllocBody673_38 AllocBody673_39

def AllocBody673_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 5

def AllocBody673_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody673_43 : StackLang.HolProg 64 :=
.seq AllocBody673_41 AllocBody673_42

def AllocBody673_44 : StackLang.HolProg 64 :=
.seq AllocBody673_40 AllocBody673_43

def AllocBody673_45 : StackLang.HolProg 64 :=
.seq AllocBody673_37 AllocBody673_44

def AllocBody673_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2789#64)

def AllocBody673_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody673_49 : StackLang.HolProg 64 :=
.seq AllocBody673_47 AllocBody673_48

def AllocBody673_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody673_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody673_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody673_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 673 3

def AllocBody673_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody673_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody673_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody673_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody673_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody673_60 : StackLang.HolProg 64 :=
.seq AllocBody673_58 AllocBody673_59

def AllocBody673_61 : StackLang.HolProg 64 :=
.seq AllocBody673_57 AllocBody673_60

def AllocBody673_62 : StackLang.HolProg 64 :=
.seq AllocBody673_56 AllocBody673_61

def AllocBody673_63 : StackLang.HolProg 64 :=
.seq AllocBody673_55 AllocBody673_62

def AllocBody673_64 : StackLang.HolProg 64 :=
.seq AllocBody673_54 AllocBody673_63

def AllocBody673_65 : StackLang.HolProg 64 :=
.seq AllocBody673_53 AllocBody673_64

def AllocBody673_66 : StackLang.HolProg 64 :=
.seq AllocBody673_52 AllocBody673_65

def AllocBody673_67 : StackLang.HolProg 64 :=
.seq AllocBody673_51 AllocBody673_66

def AllocBody673_68 : StackLang.HolProg 64 :=
.seq AllocBody673_50 AllocBody673_67

def AllocBody673_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody673_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody673_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody673_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody673_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody673_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody673_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody673_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody673_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody673_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody673_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody673_82 : StackLang.HolProg 64 :=
.seq AllocBody673_80 AllocBody673_81

def AllocBody673_83 : StackLang.HolProg 64 :=
.seq AllocBody673_79 AllocBody673_82

def AllocBody673_84 : StackLang.HolProg 64 :=
.seq AllocBody673_78 AllocBody673_83

def AllocBody673_85 : StackLang.HolProg 64 :=
.seq AllocBody673_77 AllocBody673_84

def AllocBody673_86 : StackLang.HolProg 64 :=
.seq AllocBody673_76 AllocBody673_85

def AllocBody673_87 : StackLang.HolProg 64 :=
.seq AllocBody673_75 AllocBody673_86

def AllocBody673_88 : StackLang.HolProg 64 :=
.seq AllocBody673_74 AllocBody673_87

def AllocBody673_89 : StackLang.HolProg 64 :=
.seq AllocBody673_73 AllocBody673_88

def AllocBody673_90 : StackLang.HolProg 64 :=
.seq AllocBody673_72 AllocBody673_89

def AllocBody673_91 : StackLang.HolProg 64 :=
.seq AllocBody673_71 AllocBody673_90

def AllocBody673_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody673_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody673_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody673_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody673_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody673_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody673_98 : StackLang.HolProg 64 :=
.seq AllocBody673_96 AllocBody673_97

def AllocBody673_99 : StackLang.HolProg 64 :=
.seq AllocBody673_95 AllocBody673_98

def AllocBody673_100 : StackLang.HolProg 64 :=
.seq AllocBody673_94 AllocBody673_99

def AllocBody673_101 : StackLang.HolProg 64 :=
.seq AllocBody673_93 AllocBody673_100

def AllocBody673_102 : StackLang.HolProg 64 :=
.seq AllocBody673_92 AllocBody673_101

def AllocBody673_103 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody673_104 : StackLang.HolProg 64 :=
.seq AllocBody673_102 AllocBody673_103

def AllocBody673_105 : StackLang.HolProg 64 :=
.call (some (AllocBody673_91, 0, 673, 2)) (Sum.inl 659) (some (AllocBody673_104, 673, 3))

def AllocBody673_106 : StackLang.HolProg 64 :=
.seq AllocBody673_70 AllocBody673_105

def AllocBody673_107 : StackLang.HolProg 64 :=
.seq AllocBody673_69 AllocBody673_106

def AllocBody673_108 : StackLang.HolProg 64 :=
.seq AllocBody673_68 AllocBody673_107

def AllocBody673_109 : StackLang.HolProg 64 :=
.seq AllocBody673_49 AllocBody673_108

def AllocBody673_110 : StackLang.HolProg 64 :=
.seq AllocBody673_46 AllocBody673_109

def AllocBody673_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody673_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody673_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody673_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody673_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody673_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody673_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody673_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody673_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def AllocBody673_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody673_128 : StackLang.HolProg 64 :=
.seq AllocBody673_126 AllocBody673_127

def AllocBody673_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody673_130 : StackLang.HolProg 64 :=
.seq AllocBody673_128 AllocBody673_129

def AllocBody673_131 : StackLang.HolProg 64 :=
.seq AllocBody673_125 AllocBody673_130

def AllocBody673_132 : StackLang.HolProg 64 :=
.seq AllocBody673_124 AllocBody673_131

def AllocBody673_133 : StackLang.HolProg 64 :=
.seq AllocBody673_123 AllocBody673_132

def AllocBody673_134 : StackLang.HolProg 64 :=
.seq AllocBody673_122 AllocBody673_133

def AllocBody673_135 : StackLang.HolProg 64 :=
.seq AllocBody673_121 AllocBody673_134

def AllocBody673_136 : StackLang.HolProg 64 :=
.seq AllocBody673_120 AllocBody673_135

def AllocBody673_137 : StackLang.HolProg 64 :=
.seq AllocBody673_119 AllocBody673_136

def AllocBody673_138 : StackLang.HolProg 64 :=
.seq AllocBody673_118 AllocBody673_137

def AllocBody673_139 : StackLang.HolProg 64 :=
.seq AllocBody673_117 AllocBody673_138

def AllocBody673_140 : StackLang.HolProg 64 :=
.seq AllocBody673_116 AllocBody673_139

def AllocBody673_141 : StackLang.HolProg 64 :=
.seq AllocBody673_115 AllocBody673_140

def AllocBody673_142 : StackLang.HolProg 64 :=
.seq AllocBody673_114 AllocBody673_141

def AllocBody673_143 : StackLang.HolProg 64 :=
.seq AllocBody673_113 AllocBody673_142

def AllocBody673_144 : StackLang.HolProg 64 :=
.seq AllocBody673_112 AllocBody673_143

def AllocBody673_145 : StackLang.HolProg 64 :=
.seq AllocBody673_111 AllocBody673_144

def AllocBody673_146 : StackLang.HolProg 64 :=
.seq AllocBody673_110 AllocBody673_145

def AllocBody673_147 : StackLang.HolProg 64 :=
.seq AllocBody673_45 AllocBody673_146

def AllocBody673_148 : StackLang.HolProg 64 :=
.seq AllocBody673_36 AllocBody673_147

def AllocBody673_149 : StackLang.HolProg 64 :=
.seq AllocBody673_35 AllocBody673_148

def AllocBody673_150 : StackLang.HolProg 64 :=
.seq AllocBody673_34 AllocBody673_149

def AllocBody673_151 : StackLang.HolProg 64 :=
.seq AllocBody673_33 AllocBody673_150

def AllocBody673_152 : StackLang.HolProg 64 :=
.seq AllocBody673_32 AllocBody673_151

def AllocBody673_153 : StackLang.HolProg 64 :=
.seq AllocBody673_31 AllocBody673_152

def AllocBody673_154 : StackLang.HolProg 64 :=
.seq AllocBody673_30 AllocBody673_153

def AllocBody673_155 : StackLang.HolProg 64 :=
.seq AllocBody673_29 AllocBody673_154

def AllocBody673_156 : StackLang.HolProg 64 :=
.seq AllocBody673_28 AllocBody673_155

def AllocBody673_157 : StackLang.HolProg 64 :=
.seq AllocBody673_27 AllocBody673_156

def AllocBody673_158 : StackLang.HolProg 64 :=
.seq AllocBody673_26 AllocBody673_157

def AllocBody673_159 : StackLang.HolProg 64 :=
.seq AllocBody673_25 AllocBody673_158

def AllocBody673_160 : StackLang.HolProg 64 :=
.seq AllocBody673_24 AllocBody673_159

def AllocBody673_161 : StackLang.HolProg 64 :=
.seq AllocBody673_23 AllocBody673_160

def AllocBody673_162 : StackLang.HolProg 64 :=
.seq AllocBody673_22 AllocBody673_161

def AllocBody673_163 : StackLang.HolProg 64 :=
.seq AllocBody673_21 AllocBody673_162

def AllocBody673_164 : StackLang.HolProg 64 :=
.seq AllocBody673_20 AllocBody673_163

def AllocBody673_165 : StackLang.HolProg 64 :=
.seq AllocBody673_19 AllocBody673_164

def AllocBody673_166 : StackLang.HolProg 64 :=
.seq AllocBody673_18 AllocBody673_165

def AllocBody673_167 : StackLang.HolProg 64 :=
.seq AllocBody673_17 AllocBody673_166

def AllocBody673_168 : StackLang.HolProg 64 :=
.seq AllocBody673_16 AllocBody673_167

def AllocBody673_169 : StackLang.HolProg 64 :=
.seq AllocBody673_15 AllocBody673_168

def AllocBody673_170 : StackLang.HolProg 64 :=
.seq AllocBody673_14 AllocBody673_169

def AllocBody673_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody673_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody673_173 : StackLang.HolProg 64 :=
.seq AllocBody673_171 AllocBody673_172

def AllocBody673_174 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody673_170 AllocBody673_173

def AllocBody673_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody673_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody673_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody673_178 : StackLang.HolProg 64 :=
.seq AllocBody673_176 AllocBody673_177

def AllocBody673_179 : StackLang.HolProg 64 :=
.seq AllocBody673_175 AllocBody673_178

def AllocBody673_180 : StackLang.HolProg 64 :=
.seq AllocBody673_174 AllocBody673_179

def AllocBody673_181 : StackLang.HolProg 64 :=
.seq AllocBody673_13 AllocBody673_180

def AllocBody673_182 : StackLang.HolProg 64 :=
.loop AllocBody673_181

def AllocBody673_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody673_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody673_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody673_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody673_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody673_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody673_189 : StackLang.HolProg 64 :=
.seq AllocBody673_187 AllocBody673_188

def AllocBody673_190 : StackLang.HolProg 64 :=
.seq AllocBody673_186 AllocBody673_189

def AllocBody673_191 : StackLang.HolProg 64 :=
.seq AllocBody673_185 AllocBody673_190

def AllocBody673_192 : StackLang.HolProg 64 :=
.seq AllocBody673_184 AllocBody673_191

def AllocBody673_193 : StackLang.HolProg 64 :=
.seq AllocBody673_183 AllocBody673_192

def AllocBody673_194 : StackLang.HolProg 64 :=
.seq AllocBody673_182 AllocBody673_193

def AllocBody673_195 : StackLang.HolProg 64 :=
.seq AllocBody673_12 AllocBody673_194

def AllocBody673_196 : StackLang.HolProg 64 :=
.seq AllocBody673_3 AllocBody673_195

def AllocBody673_197 : StackLang.HolProg 64 :=
.seq AllocBody673_2 AllocBody673_196

def AllocBody673_198 : StackLang.HolProg 64 :=
.seq AllocBody673_1 AllocBody673_197

def AllocBody673_199 : StackLang.HolProg 64 :=
.seq AllocBody673_0 AllocBody673_198

def Alloc673 : Nat × StackLang.HolProg 64 := (673, AllocBody673_199)
theorem Alloc673_eq : StackAlloc.progComp (673, raw673) = Alloc673 := by
  kernel_rfl
#print axioms Alloc673_eq
end InitECandidate.Proofs.BackendStages
