import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc673
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody673_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody673_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody673_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody673_3 : StackLang.HolProg 64 :=
.seq RemovedBody673_1 RemovedBody673_2

def RemovedBody673_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody673_3 RemovedBody673_4

def RemovedBody673_6 : StackLang.HolProg 64 :=
.seq RemovedBody673_0 RemovedBody673_5

def RemovedBody673_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody673_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody673_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody673_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody673_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody673_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody673_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody673_15 : StackLang.HolProg 64 :=
.seq RemovedBody673_13 RemovedBody673_14

def RemovedBody673_16 : StackLang.HolProg 64 :=
.seq RemovedBody673_12 RemovedBody673_15

def RemovedBody673_17 : StackLang.HolProg 64 :=
.seq RemovedBody673_11 RemovedBody673_16

def RemovedBody673_18 : StackLang.HolProg 64 :=
.seq RemovedBody673_10 RemovedBody673_17

def RemovedBody673_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody673_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody673_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody673_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody673_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody673_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody673_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody673_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody673_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody673_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody673_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody673_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody673_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody673_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def RemovedBody673_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody673_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def RemovedBody673_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def RemovedBody673_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody673_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody673_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody673_46 : StackLang.HolProg 64 :=
.seq RemovedBody673_44 RemovedBody673_45

def RemovedBody673_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody673_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody673_49 : StackLang.HolProg 64 :=
.seq RemovedBody673_47 RemovedBody673_48

def RemovedBody673_50 : StackLang.HolProg 64 :=
.seq RemovedBody673_46 RemovedBody673_49

def RemovedBody673_51 : StackLang.HolProg 64 :=
.seq RemovedBody673_43 RemovedBody673_50

def RemovedBody673_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2789#64)

def RemovedBody673_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody673_55 : StackLang.HolProg 64 :=
.seq RemovedBody673_53 RemovedBody673_54

def RemovedBody673_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody673_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody673_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody673_59 : StackLang.HolProg 64 :=
.seq RemovedBody673_57 RemovedBody673_58

def RemovedBody673_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody673_59 RemovedBody673_60

def RemovedBody673_62 : StackLang.HolProg 64 :=
.seq RemovedBody673_56 RemovedBody673_61

def RemovedBody673_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody673_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody673_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 673 3

def RemovedBody673_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody673_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody673_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody673_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody673_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody673_72 : StackLang.HolProg 64 :=
.seq RemovedBody673_70 RemovedBody673_71

def RemovedBody673_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody673_74 : StackLang.HolProg 64 :=
.seq RemovedBody673_72 RemovedBody673_73

def RemovedBody673_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody673_76 : StackLang.HolProg 64 :=
.seq RemovedBody673_74 RemovedBody673_75

def RemovedBody673_77 : StackLang.HolProg 64 :=
.seq RemovedBody673_69 RemovedBody673_76

def RemovedBody673_78 : StackLang.HolProg 64 :=
.seq RemovedBody673_68 RemovedBody673_77

def RemovedBody673_79 : StackLang.HolProg 64 :=
.seq RemovedBody673_67 RemovedBody673_78

def RemovedBody673_80 : StackLang.HolProg 64 :=
.seq RemovedBody673_66 RemovedBody673_79

def RemovedBody673_81 : StackLang.HolProg 64 :=
.seq RemovedBody673_65 RemovedBody673_80

def RemovedBody673_82 : StackLang.HolProg 64 :=
.seq RemovedBody673_64 RemovedBody673_81

def RemovedBody673_83 : StackLang.HolProg 64 :=
.seq RemovedBody673_63 RemovedBody673_82

def RemovedBody673_84 : StackLang.HolProg 64 :=
.seq RemovedBody673_62 RemovedBody673_83

def RemovedBody673_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody673_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody673_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody673_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody673_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody673_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody673_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody673_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody673_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody673_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody673_98 : StackLang.HolProg 64 :=
.seq RemovedBody673_96 RemovedBody673_97

def RemovedBody673_99 : StackLang.HolProg 64 :=
.seq RemovedBody673_95 RemovedBody673_98

def RemovedBody673_100 : StackLang.HolProg 64 :=
.seq RemovedBody673_94 RemovedBody673_99

def RemovedBody673_101 : StackLang.HolProg 64 :=
.seq RemovedBody673_93 RemovedBody673_100

def RemovedBody673_102 : StackLang.HolProg 64 :=
.seq RemovedBody673_92 RemovedBody673_101

def RemovedBody673_103 : StackLang.HolProg 64 :=
.seq RemovedBody673_91 RemovedBody673_102

def RemovedBody673_104 : StackLang.HolProg 64 :=
.seq RemovedBody673_90 RemovedBody673_103

def RemovedBody673_105 : StackLang.HolProg 64 :=
.seq RemovedBody673_89 RemovedBody673_104

def RemovedBody673_106 : StackLang.HolProg 64 :=
.seq RemovedBody673_88 RemovedBody673_105

def RemovedBody673_107 : StackLang.HolProg 64 :=
.seq RemovedBody673_87 RemovedBody673_106

def RemovedBody673_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody673_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody673_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody673_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody673_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody673_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody673_114 : StackLang.HolProg 64 :=
.seq RemovedBody673_112 RemovedBody673_113

def RemovedBody673_115 : StackLang.HolProg 64 :=
.seq RemovedBody673_111 RemovedBody673_114

def RemovedBody673_116 : StackLang.HolProg 64 :=
.seq RemovedBody673_110 RemovedBody673_115

def RemovedBody673_117 : StackLang.HolProg 64 :=
.seq RemovedBody673_109 RemovedBody673_116

def RemovedBody673_118 : StackLang.HolProg 64 :=
.seq RemovedBody673_108 RemovedBody673_117

def RemovedBody673_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody673_120 : StackLang.HolProg 64 :=
.seq RemovedBody673_118 RemovedBody673_119

def RemovedBody673_121 : StackLang.HolProg 64 :=
.call (some (RemovedBody673_107, 0, 673, 2)) (Sum.inl 659) (some (RemovedBody673_120, 673, 3))

def RemovedBody673_122 : StackLang.HolProg 64 :=
.seq RemovedBody673_86 RemovedBody673_121

def RemovedBody673_123 : StackLang.HolProg 64 :=
.seq RemovedBody673_85 RemovedBody673_122

def RemovedBody673_124 : StackLang.HolProg 64 :=
.seq RemovedBody673_84 RemovedBody673_123

def RemovedBody673_125 : StackLang.HolProg 64 :=
.seq RemovedBody673_55 RemovedBody673_124

def RemovedBody673_126 : StackLang.HolProg 64 :=
.seq RemovedBody673_52 RemovedBody673_125

def RemovedBody673_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody673_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody673_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody673_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody673_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody673_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody673_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody673_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody673_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody673_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody673_144 : StackLang.HolProg 64 :=
.seq RemovedBody673_142 RemovedBody673_143

def RemovedBody673_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody673_146 : StackLang.HolProg 64 :=
.seq RemovedBody673_144 RemovedBody673_145

def RemovedBody673_147 : StackLang.HolProg 64 :=
.seq RemovedBody673_141 RemovedBody673_146

def RemovedBody673_148 : StackLang.HolProg 64 :=
.seq RemovedBody673_140 RemovedBody673_147

def RemovedBody673_149 : StackLang.HolProg 64 :=
.seq RemovedBody673_139 RemovedBody673_148

def RemovedBody673_150 : StackLang.HolProg 64 :=
.seq RemovedBody673_138 RemovedBody673_149

def RemovedBody673_151 : StackLang.HolProg 64 :=
.seq RemovedBody673_137 RemovedBody673_150

def RemovedBody673_152 : StackLang.HolProg 64 :=
.seq RemovedBody673_136 RemovedBody673_151

def RemovedBody673_153 : StackLang.HolProg 64 :=
.seq RemovedBody673_135 RemovedBody673_152

def RemovedBody673_154 : StackLang.HolProg 64 :=
.seq RemovedBody673_134 RemovedBody673_153

def RemovedBody673_155 : StackLang.HolProg 64 :=
.seq RemovedBody673_133 RemovedBody673_154

def RemovedBody673_156 : StackLang.HolProg 64 :=
.seq RemovedBody673_132 RemovedBody673_155

def RemovedBody673_157 : StackLang.HolProg 64 :=
.seq RemovedBody673_131 RemovedBody673_156

def RemovedBody673_158 : StackLang.HolProg 64 :=
.seq RemovedBody673_130 RemovedBody673_157

def RemovedBody673_159 : StackLang.HolProg 64 :=
.seq RemovedBody673_129 RemovedBody673_158

def RemovedBody673_160 : StackLang.HolProg 64 :=
.seq RemovedBody673_128 RemovedBody673_159

def RemovedBody673_161 : StackLang.HolProg 64 :=
.seq RemovedBody673_127 RemovedBody673_160

def RemovedBody673_162 : StackLang.HolProg 64 :=
.seq RemovedBody673_126 RemovedBody673_161

def RemovedBody673_163 : StackLang.HolProg 64 :=
.seq RemovedBody673_51 RemovedBody673_162

def RemovedBody673_164 : StackLang.HolProg 64 :=
.seq RemovedBody673_42 RemovedBody673_163

def RemovedBody673_165 : StackLang.HolProg 64 :=
.seq RemovedBody673_41 RemovedBody673_164

def RemovedBody673_166 : StackLang.HolProg 64 :=
.seq RemovedBody673_40 RemovedBody673_165

def RemovedBody673_167 : StackLang.HolProg 64 :=
.seq RemovedBody673_39 RemovedBody673_166

def RemovedBody673_168 : StackLang.HolProg 64 :=
.seq RemovedBody673_38 RemovedBody673_167

def RemovedBody673_169 : StackLang.HolProg 64 :=
.seq RemovedBody673_37 RemovedBody673_168

def RemovedBody673_170 : StackLang.HolProg 64 :=
.seq RemovedBody673_36 RemovedBody673_169

def RemovedBody673_171 : StackLang.HolProg 64 :=
.seq RemovedBody673_35 RemovedBody673_170

def RemovedBody673_172 : StackLang.HolProg 64 :=
.seq RemovedBody673_34 RemovedBody673_171

def RemovedBody673_173 : StackLang.HolProg 64 :=
.seq RemovedBody673_33 RemovedBody673_172

def RemovedBody673_174 : StackLang.HolProg 64 :=
.seq RemovedBody673_32 RemovedBody673_173

def RemovedBody673_175 : StackLang.HolProg 64 :=
.seq RemovedBody673_31 RemovedBody673_174

def RemovedBody673_176 : StackLang.HolProg 64 :=
.seq RemovedBody673_30 RemovedBody673_175

def RemovedBody673_177 : StackLang.HolProg 64 :=
.seq RemovedBody673_29 RemovedBody673_176

def RemovedBody673_178 : StackLang.HolProg 64 :=
.seq RemovedBody673_28 RemovedBody673_177

def RemovedBody673_179 : StackLang.HolProg 64 :=
.seq RemovedBody673_27 RemovedBody673_178

def RemovedBody673_180 : StackLang.HolProg 64 :=
.seq RemovedBody673_26 RemovedBody673_179

def RemovedBody673_181 : StackLang.HolProg 64 :=
.seq RemovedBody673_25 RemovedBody673_180

def RemovedBody673_182 : StackLang.HolProg 64 :=
.seq RemovedBody673_24 RemovedBody673_181

def RemovedBody673_183 : StackLang.HolProg 64 :=
.seq RemovedBody673_23 RemovedBody673_182

def RemovedBody673_184 : StackLang.HolProg 64 :=
.seq RemovedBody673_22 RemovedBody673_183

def RemovedBody673_185 : StackLang.HolProg 64 :=
.seq RemovedBody673_21 RemovedBody673_184

def RemovedBody673_186 : StackLang.HolProg 64 :=
.seq RemovedBody673_20 RemovedBody673_185

def RemovedBody673_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody673_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody673_189 : StackLang.HolProg 64 :=
.seq RemovedBody673_187 RemovedBody673_188

def RemovedBody673_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody673_186 RemovedBody673_189

def RemovedBody673_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody673_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody673_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody673_194 : StackLang.HolProg 64 :=
.seq RemovedBody673_192 RemovedBody673_193

def RemovedBody673_195 : StackLang.HolProg 64 :=
.seq RemovedBody673_191 RemovedBody673_194

def RemovedBody673_196 : StackLang.HolProg 64 :=
.seq RemovedBody673_190 RemovedBody673_195

def RemovedBody673_197 : StackLang.HolProg 64 :=
.seq RemovedBody673_19 RemovedBody673_196

def RemovedBody673_198 : StackLang.HolProg 64 :=
.loop RemovedBody673_197

def RemovedBody673_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody673_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody673_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody673_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody673_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody673_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody673_205 : StackLang.HolProg 64 :=
.seq RemovedBody673_203 RemovedBody673_204

def RemovedBody673_206 : StackLang.HolProg 64 :=
.seq RemovedBody673_202 RemovedBody673_205

def RemovedBody673_207 : StackLang.HolProg 64 :=
.seq RemovedBody673_201 RemovedBody673_206

def RemovedBody673_208 : StackLang.HolProg 64 :=
.seq RemovedBody673_200 RemovedBody673_207

def RemovedBody673_209 : StackLang.HolProg 64 :=
.seq RemovedBody673_199 RemovedBody673_208

def RemovedBody673_210 : StackLang.HolProg 64 :=
.seq RemovedBody673_198 RemovedBody673_209

def RemovedBody673_211 : StackLang.HolProg 64 :=
.seq RemovedBody673_18 RemovedBody673_210

def RemovedBody673_212 : StackLang.HolProg 64 :=
.seq RemovedBody673_9 RemovedBody673_211

def RemovedBody673_213 : StackLang.HolProg 64 :=
.seq RemovedBody673_8 RemovedBody673_212

def RemovedBody673_214 : StackLang.HolProg 64 :=
.seq RemovedBody673_7 RemovedBody673_213

def RemovedBody673_215 : StackLang.HolProg 64 :=
.seq RemovedBody673_6 RemovedBody673_214

def Removed673 : Nat × StackLang.HolProg 64 := (673, RemovedBody673_215)
theorem Removed673_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc673 = Removed673 := by
  kernel_rfl
#print axioms Removed673_eq
end InitECandidate.Proofs.BackendStages
