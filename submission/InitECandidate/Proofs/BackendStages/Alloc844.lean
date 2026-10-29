import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw844
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody844_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody844_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody844_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody844_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody844_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody844_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody844_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody844_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody844_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody844_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody844_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody844_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody844_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody844_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody844_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody844_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody844_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody844_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody844_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody844_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody844_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody844_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody844_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody844_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody844_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody844_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody844_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody844_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody844_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody844_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody844_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def AllocBody844_48 : StackLang.HolProg 64 :=
.seq AllocBody844_46 AllocBody844_47

def AllocBody844_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4223#64)

def AllocBody844_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_52 : StackLang.HolProg 64 :=
.seq AllocBody844_50 AllocBody844_51

def AllocBody844_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody844_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody844_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 844 3

def AllocBody844_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody844_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody844_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody844_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody844_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_63 : StackLang.HolProg 64 :=
.seq AllocBody844_61 AllocBody844_62

def AllocBody844_64 : StackLang.HolProg 64 :=
.seq AllocBody844_60 AllocBody844_63

def AllocBody844_65 : StackLang.HolProg 64 :=
.seq AllocBody844_59 AllocBody844_64

def AllocBody844_66 : StackLang.HolProg 64 :=
.seq AllocBody844_58 AllocBody844_65

def AllocBody844_67 : StackLang.HolProg 64 :=
.seq AllocBody844_57 AllocBody844_66

def AllocBody844_68 : StackLang.HolProg 64 :=
.seq AllocBody844_56 AllocBody844_67

def AllocBody844_69 : StackLang.HolProg 64 :=
.seq AllocBody844_55 AllocBody844_68

def AllocBody844_70 : StackLang.HolProg 64 :=
.seq AllocBody844_54 AllocBody844_69

def AllocBody844_71 : StackLang.HolProg 64 :=
.seq AllocBody844_53 AllocBody844_70

def AllocBody844_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody844_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody844_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody844_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody844_80 : StackLang.HolProg 64 :=
.seq AllocBody844_78 AllocBody844_79

def AllocBody844_81 : StackLang.HolProg 64 :=
.seq AllocBody844_77 AllocBody844_80

def AllocBody844_82 : StackLang.HolProg 64 :=
.seq AllocBody844_76 AllocBody844_81

def AllocBody844_83 : StackLang.HolProg 64 :=
.seq AllocBody844_75 AllocBody844_82

def AllocBody844_84 : StackLang.HolProg 64 :=
.seq AllocBody844_74 AllocBody844_83

def AllocBody844_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def AllocBody844_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody844_87 : StackLang.HolProg 64 :=
.seq AllocBody844_85 AllocBody844_86

def AllocBody844_88 : StackLang.HolProg 64 :=
.call (some (AllocBody844_84, 0, 844, 2)) (Sum.inl 181) (some (AllocBody844_87, 844, 3))

def AllocBody844_89 : StackLang.HolProg 64 :=
.seq AllocBody844_73 AllocBody844_88

def AllocBody844_90 : StackLang.HolProg 64 :=
.seq AllocBody844_72 AllocBody844_89

def AllocBody844_91 : StackLang.HolProg 64 :=
.seq AllocBody844_71 AllocBody844_90

def AllocBody844_92 : StackLang.HolProg 64 :=
.seq AllocBody844_52 AllocBody844_91

def AllocBody844_93 : StackLang.HolProg 64 :=
.seq AllocBody844_49 AllocBody844_92

def AllocBody844_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody844_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody844_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody844_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def AllocBody844_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody844_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 10#64)))

def AllocBody844_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody844_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 11#64)))

def AllocBody844_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody844_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def AllocBody844_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody844_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 13#64)))

def AllocBody844_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody844_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 14#64)))

def AllocBody844_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody844_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 15#64)))

def AllocBody844_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody844_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody844_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody844_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody844_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody844_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody844_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody844_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody844_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody844_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody844_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody844_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody844_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody844_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody844_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def AllocBody844_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 1

def AllocBody844_143 : StackLang.HolProg 64 :=
.seq AllocBody844_141 AllocBody844_142

def AllocBody844_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4224#64)

def AllocBody844_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_147 : StackLang.HolProg 64 :=
.seq AllocBody844_145 AllocBody844_146

def AllocBody844_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody844_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody844_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 844 5

def AllocBody844_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody844_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody844_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody844_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody844_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_158 : StackLang.HolProg 64 :=
.seq AllocBody844_156 AllocBody844_157

def AllocBody844_159 : StackLang.HolProg 64 :=
.seq AllocBody844_155 AllocBody844_158

def AllocBody844_160 : StackLang.HolProg 64 :=
.seq AllocBody844_154 AllocBody844_159

def AllocBody844_161 : StackLang.HolProg 64 :=
.seq AllocBody844_153 AllocBody844_160

def AllocBody844_162 : StackLang.HolProg 64 :=
.seq AllocBody844_152 AllocBody844_161

def AllocBody844_163 : StackLang.HolProg 64 :=
.seq AllocBody844_151 AllocBody844_162

def AllocBody844_164 : StackLang.HolProg 64 :=
.seq AllocBody844_150 AllocBody844_163

def AllocBody844_165 : StackLang.HolProg 64 :=
.seq AllocBody844_149 AllocBody844_164

def AllocBody844_166 : StackLang.HolProg 64 :=
.seq AllocBody844_148 AllocBody844_165

def AllocBody844_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody844_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody844_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody844_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody844_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody844_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody844_177 : StackLang.HolProg 64 :=
.seq AllocBody844_175 AllocBody844_176

def AllocBody844_178 : StackLang.HolProg 64 :=
.seq AllocBody844_174 AllocBody844_177

def AllocBody844_179 : StackLang.HolProg 64 :=
.seq AllocBody844_173 AllocBody844_178

def AllocBody844_180 : StackLang.HolProg 64 :=
.seq AllocBody844_172 AllocBody844_179

def AllocBody844_181 : StackLang.HolProg 64 :=
.seq AllocBody844_171 AllocBody844_180

def AllocBody844_182 : StackLang.HolProg 64 :=
.seq AllocBody844_170 AllocBody844_181

def AllocBody844_183 : StackLang.HolProg 64 :=
.seq AllocBody844_169 AllocBody844_182

def AllocBody844_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody844_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody844_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody844_187 : StackLang.HolProg 64 :=
.seq AllocBody844_185 AllocBody844_186

def AllocBody844_188 : StackLang.HolProg 64 :=
.seq AllocBody844_184 AllocBody844_187

def AllocBody844_189 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody844_190 : StackLang.HolProg 64 :=
.seq AllocBody844_188 AllocBody844_189

def AllocBody844_191 : StackLang.HolProg 64 :=
.call (some (AllocBody844_183, 0, 844, 4)) (Sum.inl 181) (some (AllocBody844_190, 844, 5))

def AllocBody844_192 : StackLang.HolProg 64 :=
.seq AllocBody844_168 AllocBody844_191

def AllocBody844_193 : StackLang.HolProg 64 :=
.seq AllocBody844_167 AllocBody844_192

def AllocBody844_194 : StackLang.HolProg 64 :=
.seq AllocBody844_166 AllocBody844_193

def AllocBody844_195 : StackLang.HolProg 64 :=
.seq AllocBody844_147 AllocBody844_194

def AllocBody844_196 : StackLang.HolProg 64 :=
.seq AllocBody844_144 AllocBody844_195

def AllocBody844_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody844_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 36#64)))

def AllocBody844_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody844_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 37#64)))

def AllocBody844_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody844_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 38#64)))

def AllocBody844_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody844_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 39#64)))

def AllocBody844_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody844_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody844_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody844_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 41#64)))

def AllocBody844_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody844_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 42#64)))

def AllocBody844_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody844_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 43#64)))

def AllocBody844_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody844_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody844_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody844_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody844_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody844_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody844_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody844_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody844_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody844_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody844_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody844_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody844_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody844_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody844_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 1

def AllocBody844_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4225#64)

def AllocBody844_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_248 : StackLang.HolProg 64 :=
.seq AllocBody844_246 AllocBody844_247

def AllocBody844_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody844_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody844_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 844 7

def AllocBody844_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody844_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody844_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody844_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody844_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_259 : StackLang.HolProg 64 :=
.seq AllocBody844_257 AllocBody844_258

def AllocBody844_260 : StackLang.HolProg 64 :=
.seq AllocBody844_256 AllocBody844_259

def AllocBody844_261 : StackLang.HolProg 64 :=
.seq AllocBody844_255 AllocBody844_260

def AllocBody844_262 : StackLang.HolProg 64 :=
.seq AllocBody844_254 AllocBody844_261

def AllocBody844_263 : StackLang.HolProg 64 :=
.seq AllocBody844_253 AllocBody844_262

def AllocBody844_264 : StackLang.HolProg 64 :=
.seq AllocBody844_252 AllocBody844_263

def AllocBody844_265 : StackLang.HolProg 64 :=
.seq AllocBody844_251 AllocBody844_264

def AllocBody844_266 : StackLang.HolProg 64 :=
.seq AllocBody844_250 AllocBody844_265

def AllocBody844_267 : StackLang.HolProg 64 :=
.seq AllocBody844_249 AllocBody844_266

def AllocBody844_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody844_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody844_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody844_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody844_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody844_277 : StackLang.HolProg 64 :=
.seq AllocBody844_275 AllocBody844_276

def AllocBody844_278 : StackLang.HolProg 64 :=
.seq AllocBody844_274 AllocBody844_277

def AllocBody844_279 : StackLang.HolProg 64 :=
.seq AllocBody844_273 AllocBody844_278

def AllocBody844_280 : StackLang.HolProg 64 :=
.seq AllocBody844_272 AllocBody844_279

def AllocBody844_281 : StackLang.HolProg 64 :=
.seq AllocBody844_271 AllocBody844_280

def AllocBody844_282 : StackLang.HolProg 64 :=
.seq AllocBody844_270 AllocBody844_281

def AllocBody844_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody844_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody844_285 : StackLang.HolProg 64 :=
.seq AllocBody844_283 AllocBody844_284

def AllocBody844_286 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody844_287 : StackLang.HolProg 64 :=
.seq AllocBody844_285 AllocBody844_286

def AllocBody844_288 : StackLang.HolProg 64 :=
.call (some (AllocBody844_282, 0, 844, 6)) (Sum.inl 181) (some (AllocBody844_287, 844, 7))

def AllocBody844_289 : StackLang.HolProg 64 :=
.seq AllocBody844_269 AllocBody844_288

def AllocBody844_290 : StackLang.HolProg 64 :=
.seq AllocBody844_268 AllocBody844_289

def AllocBody844_291 : StackLang.HolProg 64 :=
.seq AllocBody844_267 AllocBody844_290

def AllocBody844_292 : StackLang.HolProg 64 :=
.seq AllocBody844_248 AllocBody844_291

def AllocBody844_293 : StackLang.HolProg 64 :=
.seq AllocBody844_245 AllocBody844_292

def AllocBody844_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody844_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody844_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody844_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 21#64)))

def AllocBody844_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody844_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4226#64)

def AllocBody844_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_304 : StackLang.HolProg 64 :=
.seq AllocBody844_302 AllocBody844_303

def AllocBody844_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody844_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody844_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody844_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 844 9

def AllocBody844_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody844_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody844_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody844_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody844_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_315 : StackLang.HolProg 64 :=
.seq AllocBody844_313 AllocBody844_314

def AllocBody844_316 : StackLang.HolProg 64 :=
.seq AllocBody844_312 AllocBody844_315

def AllocBody844_317 : StackLang.HolProg 64 :=
.seq AllocBody844_311 AllocBody844_316

def AllocBody844_318 : StackLang.HolProg 64 :=
.seq AllocBody844_310 AllocBody844_317

def AllocBody844_319 : StackLang.HolProg 64 :=
.seq AllocBody844_309 AllocBody844_318

def AllocBody844_320 : StackLang.HolProg 64 :=
.seq AllocBody844_308 AllocBody844_319

def AllocBody844_321 : StackLang.HolProg 64 :=
.seq AllocBody844_307 AllocBody844_320

def AllocBody844_322 : StackLang.HolProg 64 :=
.seq AllocBody844_306 AllocBody844_321

def AllocBody844_323 : StackLang.HolProg 64 :=
.seq AllocBody844_305 AllocBody844_322

def AllocBody844_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody844_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody844_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody844_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody844_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody844_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody844_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody844_333 : StackLang.HolProg 64 :=
.seq AllocBody844_331 AllocBody844_332

def AllocBody844_334 : StackLang.HolProg 64 :=
.seq AllocBody844_330 AllocBody844_333

def AllocBody844_335 : StackLang.HolProg 64 :=
.seq AllocBody844_329 AllocBody844_334

def AllocBody844_336 : StackLang.HolProg 64 :=
.seq AllocBody844_328 AllocBody844_335

def AllocBody844_337 : StackLang.HolProg 64 :=
.seq AllocBody844_327 AllocBody844_336

def AllocBody844_338 : StackLang.HolProg 64 :=
.seq AllocBody844_326 AllocBody844_337

def AllocBody844_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody844_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody844_341 : StackLang.HolProg 64 :=
.seq AllocBody844_339 AllocBody844_340

def AllocBody844_342 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody844_343 : StackLang.HolProg 64 :=
.seq AllocBody844_341 AllocBody844_342

def AllocBody844_344 : StackLang.HolProg 64 :=
.call (some (AllocBody844_338, 0, 844, 8)) (Sum.inl 180) (some (AllocBody844_343, 844, 9))

def AllocBody844_345 : StackLang.HolProg 64 :=
.seq AllocBody844_325 AllocBody844_344

def AllocBody844_346 : StackLang.HolProg 64 :=
.seq AllocBody844_324 AllocBody844_345

def AllocBody844_347 : StackLang.HolProg 64 :=
.seq AllocBody844_323 AllocBody844_346

def AllocBody844_348 : StackLang.HolProg 64 :=
.seq AllocBody844_304 AllocBody844_347

def AllocBody844_349 : StackLang.HolProg 64 :=
.seq AllocBody844_301 AllocBody844_348

def AllocBody844_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody844_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody844_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody844_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody844_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody844_356 : StackLang.HolProg 64 :=
.seq AllocBody844_354 AllocBody844_355

def AllocBody844_357 : StackLang.HolProg 64 :=
.seq AllocBody844_353 AllocBody844_356

def AllocBody844_358 : StackLang.HolProg 64 :=
.seq AllocBody844_352 AllocBody844_357

def AllocBody844_359 : StackLang.HolProg 64 :=
.seq AllocBody844_351 AllocBody844_358

def AllocBody844_360 : StackLang.HolProg 64 :=
.seq AllocBody844_350 AllocBody844_359

def AllocBody844_361 : StackLang.HolProg 64 :=
.seq AllocBody844_349 AllocBody844_360

def AllocBody844_362 : StackLang.HolProg 64 :=
.seq AllocBody844_300 AllocBody844_361

def AllocBody844_363 : StackLang.HolProg 64 :=
.seq AllocBody844_299 AllocBody844_362

def AllocBody844_364 : StackLang.HolProg 64 :=
.seq AllocBody844_298 AllocBody844_363

def AllocBody844_365 : StackLang.HolProg 64 :=
.seq AllocBody844_297 AllocBody844_364

def AllocBody844_366 : StackLang.HolProg 64 :=
.seq AllocBody844_296 AllocBody844_365

def AllocBody844_367 : StackLang.HolProg 64 :=
.seq AllocBody844_295 AllocBody844_366

def AllocBody844_368 : StackLang.HolProg 64 :=
.seq AllocBody844_294 AllocBody844_367

def AllocBody844_369 : StackLang.HolProg 64 :=
.seq AllocBody844_293 AllocBody844_368

def AllocBody844_370 : StackLang.HolProg 64 :=
.seq AllocBody844_244 AllocBody844_369

def AllocBody844_371 : StackLang.HolProg 64 :=
.seq AllocBody844_243 AllocBody844_370

def AllocBody844_372 : StackLang.HolProg 64 :=
.seq AllocBody844_242 AllocBody844_371

def AllocBody844_373 : StackLang.HolProg 64 :=
.seq AllocBody844_241 AllocBody844_372

def AllocBody844_374 : StackLang.HolProg 64 :=
.seq AllocBody844_240 AllocBody844_373

def AllocBody844_375 : StackLang.HolProg 64 :=
.seq AllocBody844_239 AllocBody844_374

def AllocBody844_376 : StackLang.HolProg 64 :=
.seq AllocBody844_238 AllocBody844_375

def AllocBody844_377 : StackLang.HolProg 64 :=
.seq AllocBody844_237 AllocBody844_376

def AllocBody844_378 : StackLang.HolProg 64 :=
.seq AllocBody844_236 AllocBody844_377

def AllocBody844_379 : StackLang.HolProg 64 :=
.seq AllocBody844_235 AllocBody844_378

def AllocBody844_380 : StackLang.HolProg 64 :=
.seq AllocBody844_234 AllocBody844_379

def AllocBody844_381 : StackLang.HolProg 64 :=
.seq AllocBody844_233 AllocBody844_380

def AllocBody844_382 : StackLang.HolProg 64 :=
.seq AllocBody844_232 AllocBody844_381

def AllocBody844_383 : StackLang.HolProg 64 :=
.seq AllocBody844_231 AllocBody844_382

def AllocBody844_384 : StackLang.HolProg 64 :=
.seq AllocBody844_230 AllocBody844_383

def AllocBody844_385 : StackLang.HolProg 64 :=
.seq AllocBody844_229 AllocBody844_384

def AllocBody844_386 : StackLang.HolProg 64 :=
.seq AllocBody844_228 AllocBody844_385

def AllocBody844_387 : StackLang.HolProg 64 :=
.seq AllocBody844_227 AllocBody844_386

def AllocBody844_388 : StackLang.HolProg 64 :=
.seq AllocBody844_226 AllocBody844_387

def AllocBody844_389 : StackLang.HolProg 64 :=
.seq AllocBody844_225 AllocBody844_388

def AllocBody844_390 : StackLang.HolProg 64 :=
.seq AllocBody844_224 AllocBody844_389

def AllocBody844_391 : StackLang.HolProg 64 :=
.seq AllocBody844_223 AllocBody844_390

def AllocBody844_392 : StackLang.HolProg 64 :=
.seq AllocBody844_222 AllocBody844_391

def AllocBody844_393 : StackLang.HolProg 64 :=
.seq AllocBody844_221 AllocBody844_392

def AllocBody844_394 : StackLang.HolProg 64 :=
.seq AllocBody844_220 AllocBody844_393

def AllocBody844_395 : StackLang.HolProg 64 :=
.seq AllocBody844_219 AllocBody844_394

def AllocBody844_396 : StackLang.HolProg 64 :=
.seq AllocBody844_218 AllocBody844_395

def AllocBody844_397 : StackLang.HolProg 64 :=
.seq AllocBody844_217 AllocBody844_396

def AllocBody844_398 : StackLang.HolProg 64 :=
.seq AllocBody844_216 AllocBody844_397

def AllocBody844_399 : StackLang.HolProg 64 :=
.seq AllocBody844_215 AllocBody844_398

def AllocBody844_400 : StackLang.HolProg 64 :=
.seq AllocBody844_214 AllocBody844_399

def AllocBody844_401 : StackLang.HolProg 64 :=
.seq AllocBody844_213 AllocBody844_400

def AllocBody844_402 : StackLang.HolProg 64 :=
.seq AllocBody844_212 AllocBody844_401

def AllocBody844_403 : StackLang.HolProg 64 :=
.seq AllocBody844_211 AllocBody844_402

def AllocBody844_404 : StackLang.HolProg 64 :=
.seq AllocBody844_210 AllocBody844_403

def AllocBody844_405 : StackLang.HolProg 64 :=
.seq AllocBody844_209 AllocBody844_404

def AllocBody844_406 : StackLang.HolProg 64 :=
.seq AllocBody844_208 AllocBody844_405

def AllocBody844_407 : StackLang.HolProg 64 :=
.seq AllocBody844_207 AllocBody844_406

def AllocBody844_408 : StackLang.HolProg 64 :=
.seq AllocBody844_206 AllocBody844_407

def AllocBody844_409 : StackLang.HolProg 64 :=
.seq AllocBody844_205 AllocBody844_408

def AllocBody844_410 : StackLang.HolProg 64 :=
.seq AllocBody844_204 AllocBody844_409

def AllocBody844_411 : StackLang.HolProg 64 :=
.seq AllocBody844_203 AllocBody844_410

def AllocBody844_412 : StackLang.HolProg 64 :=
.seq AllocBody844_202 AllocBody844_411

def AllocBody844_413 : StackLang.HolProg 64 :=
.seq AllocBody844_201 AllocBody844_412

def AllocBody844_414 : StackLang.HolProg 64 :=
.seq AllocBody844_200 AllocBody844_413

def AllocBody844_415 : StackLang.HolProg 64 :=
.seq AllocBody844_199 AllocBody844_414

def AllocBody844_416 : StackLang.HolProg 64 :=
.seq AllocBody844_198 AllocBody844_415

def AllocBody844_417 : StackLang.HolProg 64 :=
.seq AllocBody844_197 AllocBody844_416

def AllocBody844_418 : StackLang.HolProg 64 :=
.seq AllocBody844_196 AllocBody844_417

def AllocBody844_419 : StackLang.HolProg 64 :=
.seq AllocBody844_143 AllocBody844_418

def AllocBody844_420 : StackLang.HolProg 64 :=
.seq AllocBody844_140 AllocBody844_419

def AllocBody844_421 : StackLang.HolProg 64 :=
.seq AllocBody844_139 AllocBody844_420

def AllocBody844_422 : StackLang.HolProg 64 :=
.seq AllocBody844_138 AllocBody844_421

def AllocBody844_423 : StackLang.HolProg 64 :=
.seq AllocBody844_137 AllocBody844_422

def AllocBody844_424 : StackLang.HolProg 64 :=
.seq AllocBody844_136 AllocBody844_423

def AllocBody844_425 : StackLang.HolProg 64 :=
.seq AllocBody844_135 AllocBody844_424

def AllocBody844_426 : StackLang.HolProg 64 :=
.seq AllocBody844_134 AllocBody844_425

def AllocBody844_427 : StackLang.HolProg 64 :=
.seq AllocBody844_133 AllocBody844_426

def AllocBody844_428 : StackLang.HolProg 64 :=
.seq AllocBody844_132 AllocBody844_427

def AllocBody844_429 : StackLang.HolProg 64 :=
.seq AllocBody844_131 AllocBody844_428

def AllocBody844_430 : StackLang.HolProg 64 :=
.seq AllocBody844_130 AllocBody844_429

def AllocBody844_431 : StackLang.HolProg 64 :=
.seq AllocBody844_129 AllocBody844_430

def AllocBody844_432 : StackLang.HolProg 64 :=
.seq AllocBody844_128 AllocBody844_431

def AllocBody844_433 : StackLang.HolProg 64 :=
.seq AllocBody844_127 AllocBody844_432

def AllocBody844_434 : StackLang.HolProg 64 :=
.seq AllocBody844_126 AllocBody844_433

def AllocBody844_435 : StackLang.HolProg 64 :=
.seq AllocBody844_125 AllocBody844_434

def AllocBody844_436 : StackLang.HolProg 64 :=
.seq AllocBody844_124 AllocBody844_435

def AllocBody844_437 : StackLang.HolProg 64 :=
.seq AllocBody844_123 AllocBody844_436

def AllocBody844_438 : StackLang.HolProg 64 :=
.seq AllocBody844_122 AllocBody844_437

def AllocBody844_439 : StackLang.HolProg 64 :=
.seq AllocBody844_121 AllocBody844_438

def AllocBody844_440 : StackLang.HolProg 64 :=
.seq AllocBody844_120 AllocBody844_439

def AllocBody844_441 : StackLang.HolProg 64 :=
.seq AllocBody844_119 AllocBody844_440

def AllocBody844_442 : StackLang.HolProg 64 :=
.seq AllocBody844_118 AllocBody844_441

def AllocBody844_443 : StackLang.HolProg 64 :=
.seq AllocBody844_117 AllocBody844_442

def AllocBody844_444 : StackLang.HolProg 64 :=
.seq AllocBody844_116 AllocBody844_443

def AllocBody844_445 : StackLang.HolProg 64 :=
.seq AllocBody844_115 AllocBody844_444

def AllocBody844_446 : StackLang.HolProg 64 :=
.seq AllocBody844_114 AllocBody844_445

def AllocBody844_447 : StackLang.HolProg 64 :=
.seq AllocBody844_113 AllocBody844_446

def AllocBody844_448 : StackLang.HolProg 64 :=
.seq AllocBody844_112 AllocBody844_447

def AllocBody844_449 : StackLang.HolProg 64 :=
.seq AllocBody844_111 AllocBody844_448

def AllocBody844_450 : StackLang.HolProg 64 :=
.seq AllocBody844_110 AllocBody844_449

def AllocBody844_451 : StackLang.HolProg 64 :=
.seq AllocBody844_109 AllocBody844_450

def AllocBody844_452 : StackLang.HolProg 64 :=
.seq AllocBody844_108 AllocBody844_451

def AllocBody844_453 : StackLang.HolProg 64 :=
.seq AllocBody844_107 AllocBody844_452

def AllocBody844_454 : StackLang.HolProg 64 :=
.seq AllocBody844_106 AllocBody844_453

def AllocBody844_455 : StackLang.HolProg 64 :=
.seq AllocBody844_105 AllocBody844_454

def AllocBody844_456 : StackLang.HolProg 64 :=
.seq AllocBody844_104 AllocBody844_455

def AllocBody844_457 : StackLang.HolProg 64 :=
.seq AllocBody844_103 AllocBody844_456

def AllocBody844_458 : StackLang.HolProg 64 :=
.seq AllocBody844_102 AllocBody844_457

def AllocBody844_459 : StackLang.HolProg 64 :=
.seq AllocBody844_101 AllocBody844_458

def AllocBody844_460 : StackLang.HolProg 64 :=
.seq AllocBody844_100 AllocBody844_459

def AllocBody844_461 : StackLang.HolProg 64 :=
.seq AllocBody844_99 AllocBody844_460

def AllocBody844_462 : StackLang.HolProg 64 :=
.seq AllocBody844_98 AllocBody844_461

def AllocBody844_463 : StackLang.HolProg 64 :=
.seq AllocBody844_97 AllocBody844_462

def AllocBody844_464 : StackLang.HolProg 64 :=
.seq AllocBody844_96 AllocBody844_463

def AllocBody844_465 : StackLang.HolProg 64 :=
.seq AllocBody844_95 AllocBody844_464

def AllocBody844_466 : StackLang.HolProg 64 :=
.seq AllocBody844_94 AllocBody844_465

def AllocBody844_467 : StackLang.HolProg 64 :=
.seq AllocBody844_93 AllocBody844_466

def AllocBody844_468 : StackLang.HolProg 64 :=
.seq AllocBody844_48 AllocBody844_467

def AllocBody844_469 : StackLang.HolProg 64 :=
.seq AllocBody844_45 AllocBody844_468

def AllocBody844_470 : StackLang.HolProg 64 :=
.seq AllocBody844_44 AllocBody844_469

def AllocBody844_471 : StackLang.HolProg 64 :=
.seq AllocBody844_43 AllocBody844_470

def AllocBody844_472 : StackLang.HolProg 64 :=
.seq AllocBody844_42 AllocBody844_471

def AllocBody844_473 : StackLang.HolProg 64 :=
.seq AllocBody844_41 AllocBody844_472

def AllocBody844_474 : StackLang.HolProg 64 :=
.seq AllocBody844_40 AllocBody844_473

def AllocBody844_475 : StackLang.HolProg 64 :=
.seq AllocBody844_39 AllocBody844_474

def AllocBody844_476 : StackLang.HolProg 64 :=
.seq AllocBody844_38 AllocBody844_475

def AllocBody844_477 : StackLang.HolProg 64 :=
.seq AllocBody844_37 AllocBody844_476

def AllocBody844_478 : StackLang.HolProg 64 :=
.seq AllocBody844_36 AllocBody844_477

def AllocBody844_479 : StackLang.HolProg 64 :=
.seq AllocBody844_35 AllocBody844_478

def AllocBody844_480 : StackLang.HolProg 64 :=
.seq AllocBody844_34 AllocBody844_479

def AllocBody844_481 : StackLang.HolProg 64 :=
.seq AllocBody844_33 AllocBody844_480

def AllocBody844_482 : StackLang.HolProg 64 :=
.seq AllocBody844_32 AllocBody844_481

def AllocBody844_483 : StackLang.HolProg 64 :=
.seq AllocBody844_31 AllocBody844_482

def AllocBody844_484 : StackLang.HolProg 64 :=
.seq AllocBody844_30 AllocBody844_483

def AllocBody844_485 : StackLang.HolProg 64 :=
.seq AllocBody844_29 AllocBody844_484

def AllocBody844_486 : StackLang.HolProg 64 :=
.seq AllocBody844_28 AllocBody844_485

def AllocBody844_487 : StackLang.HolProg 64 :=
.seq AllocBody844_27 AllocBody844_486

def AllocBody844_488 : StackLang.HolProg 64 :=
.seq AllocBody844_26 AllocBody844_487

def AllocBody844_489 : StackLang.HolProg 64 :=
.seq AllocBody844_25 AllocBody844_488

def AllocBody844_490 : StackLang.HolProg 64 :=
.seq AllocBody844_24 AllocBody844_489

def AllocBody844_491 : StackLang.HolProg 64 :=
.seq AllocBody844_23 AllocBody844_490

def AllocBody844_492 : StackLang.HolProg 64 :=
.seq AllocBody844_22 AllocBody844_491

def AllocBody844_493 : StackLang.HolProg 64 :=
.seq AllocBody844_21 AllocBody844_492

def AllocBody844_494 : StackLang.HolProg 64 :=
.seq AllocBody844_20 AllocBody844_493

def AllocBody844_495 : StackLang.HolProg 64 :=
.seq AllocBody844_19 AllocBody844_494

def AllocBody844_496 : StackLang.HolProg 64 :=
.seq AllocBody844_18 AllocBody844_495

def AllocBody844_497 : StackLang.HolProg 64 :=
.seq AllocBody844_17 AllocBody844_496

def AllocBody844_498 : StackLang.HolProg 64 :=
.seq AllocBody844_16 AllocBody844_497

def AllocBody844_499 : StackLang.HolProg 64 :=
.seq AllocBody844_15 AllocBody844_498

def AllocBody844_500 : StackLang.HolProg 64 :=
.seq AllocBody844_14 AllocBody844_499

def AllocBody844_501 : StackLang.HolProg 64 :=
.seq AllocBody844_13 AllocBody844_500

def AllocBody844_502 : StackLang.HolProg 64 :=
.seq AllocBody844_12 AllocBody844_501

def AllocBody844_503 : StackLang.HolProg 64 :=
.seq AllocBody844_11 AllocBody844_502

def AllocBody844_504 : StackLang.HolProg 64 :=
.seq AllocBody844_10 AllocBody844_503

def AllocBody844_505 : StackLang.HolProg 64 :=
.seq AllocBody844_9 AllocBody844_504

def AllocBody844_506 : StackLang.HolProg 64 :=
.seq AllocBody844_8 AllocBody844_505

def AllocBody844_507 : StackLang.HolProg 64 :=
.seq AllocBody844_7 AllocBody844_506

def AllocBody844_508 : StackLang.HolProg 64 :=
.seq AllocBody844_6 AllocBody844_507

def AllocBody844_509 : StackLang.HolProg 64 :=
.seq AllocBody844_5 AllocBody844_508

def AllocBody844_510 : StackLang.HolProg 64 :=
.seq AllocBody844_4 AllocBody844_509

def AllocBody844_511 : StackLang.HolProg 64 :=
.seq AllocBody844_3 AllocBody844_510

def AllocBody844_512 : StackLang.HolProg 64 :=
.seq AllocBody844_2 AllocBody844_511

def AllocBody844_513 : StackLang.HolProg 64 :=
.seq AllocBody844_1 AllocBody844_512

def AllocBody844_514 : StackLang.HolProg 64 :=
.seq AllocBody844_0 AllocBody844_513

def Alloc844 : Nat × StackLang.HolProg 64 := (844, AllocBody844_514)
theorem Alloc844_eq : StackAlloc.progComp (844, raw844) = Alloc844 := by
  kernel_rfl
#print axioms Alloc844_eq
end InitECandidate.Proofs.BackendStages
