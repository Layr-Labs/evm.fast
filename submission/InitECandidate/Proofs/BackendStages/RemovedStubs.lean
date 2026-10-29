import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.AllocStubs
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.Backend
import Flapjack.Compiler.Backend.RiscVConfig.Executable
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedStubsBody_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedStubsBody_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedStubsBody_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedStubsBody_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2040#64)

def RemovedStubsBody_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedStubsBody_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedStubsBody_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedStubsBody_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedStubsBody_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedStubsBody_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedStubsBody_9 RemovedStubsBody_10

def RemovedStubsBody_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedStubsBody_8 RemovedStubsBody_11

def RemovedStubsBody_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2040#64)

def RemovedStubsBody_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedStubsBody_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedStubsBody_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedStubsBody_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 72057594037927928#64)

def RemovedStubsBody_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedStubsBody_21 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_19 RemovedStubsBody_20

def RemovedStubsBody_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedStubsBody_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedStubsBody_21 RemovedStubsBody_22

def RemovedStubsBody_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedStubsBody_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedStubsBody_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedStubsBody_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedStubsBody_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 26 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedStubsBody_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedStubsBody_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 24 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedStubsBody_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 25 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedStubsBody_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 26 0#64))

def RemovedStubsBody_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedStubsBody_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedStubsBody_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedStubsBody_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedStubsBody_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedStubsBody_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedStubsBody_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def RemovedStubsBody_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedStubsBody_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedStubsBody_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_53 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_51 RemovedStubsBody_52

def RemovedStubsBody_54 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_50 RemovedStubsBody_53

def RemovedStubsBody_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_58 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_56 RemovedStubsBody_57

def RemovedStubsBody_59 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_55 RemovedStubsBody_58

def RemovedStubsBody_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_63 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_61 RemovedStubsBody_62

def RemovedStubsBody_64 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_60 RemovedStubsBody_63

def RemovedStubsBody_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_68 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_66 RemovedStubsBody_67

def RemovedStubsBody_69 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_65 RemovedStubsBody_68

def RemovedStubsBody_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_73 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_71 RemovedStubsBody_72

def RemovedStubsBody_74 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_70 RemovedStubsBody_73

def RemovedStubsBody_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_78 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_76 RemovedStubsBody_77

def RemovedStubsBody_79 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_75 RemovedStubsBody_78

def RemovedStubsBody_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_83 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_81 RemovedStubsBody_82

def RemovedStubsBody_84 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_80 RemovedStubsBody_83

def RemovedStubsBody_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_88 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_86 RemovedStubsBody_87

def RemovedStubsBody_89 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_85 RemovedStubsBody_88

def RemovedStubsBody_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_93 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_91 RemovedStubsBody_92

def RemovedStubsBody_94 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_90 RemovedStubsBody_93

def RemovedStubsBody_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_98 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_96 RemovedStubsBody_97

def RemovedStubsBody_99 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_95 RemovedStubsBody_98

def RemovedStubsBody_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_103 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_101 RemovedStubsBody_102

def RemovedStubsBody_104 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_100 RemovedStubsBody_103

def RemovedStubsBody_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_108 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_106 RemovedStubsBody_107

def RemovedStubsBody_109 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_105 RemovedStubsBody_108

def RemovedStubsBody_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_113 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_111 RemovedStubsBody_112

def RemovedStubsBody_114 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_110 RemovedStubsBody_113

def RemovedStubsBody_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_118 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_116 RemovedStubsBody_117

def RemovedStubsBody_119 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_115 RemovedStubsBody_118

def RemovedStubsBody_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_123 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_121 RemovedStubsBody_122

def RemovedStubsBody_124 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_120 RemovedStubsBody_123

def RemovedStubsBody_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_128 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_126 RemovedStubsBody_127

def RemovedStubsBody_129 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_125 RemovedStubsBody_128

def RemovedStubsBody_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_133 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_131 RemovedStubsBody_132

def RemovedStubsBody_134 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_130 RemovedStubsBody_133

def RemovedStubsBody_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_138 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_136 RemovedStubsBody_137

def RemovedStubsBody_139 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_135 RemovedStubsBody_138

def RemovedStubsBody_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_143 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_141 RemovedStubsBody_142

def RemovedStubsBody_144 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_140 RemovedStubsBody_143

def RemovedStubsBody_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_148 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_146 RemovedStubsBody_147

def RemovedStubsBody_149 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_145 RemovedStubsBody_148

def RemovedStubsBody_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_153 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_151 RemovedStubsBody_152

def RemovedStubsBody_154 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_150 RemovedStubsBody_153

def RemovedStubsBody_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_158 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_156 RemovedStubsBody_157

def RemovedStubsBody_159 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_155 RemovedStubsBody_158

def RemovedStubsBody_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_163 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_161 RemovedStubsBody_162

def RemovedStubsBody_164 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_160 RemovedStubsBody_163

def RemovedStubsBody_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_168 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_166 RemovedStubsBody_167

def RemovedStubsBody_169 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_165 RemovedStubsBody_168

def RemovedStubsBody_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_173 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_171 RemovedStubsBody_172

def RemovedStubsBody_174 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_170 RemovedStubsBody_173

def RemovedStubsBody_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_178 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_176 RemovedStubsBody_177

def RemovedStubsBody_179 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_175 RemovedStubsBody_178

def RemovedStubsBody_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_183 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_181 RemovedStubsBody_182

def RemovedStubsBody_184 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_180 RemovedStubsBody_183

def RemovedStubsBody_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_188 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_186 RemovedStubsBody_187

def RemovedStubsBody_189 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_185 RemovedStubsBody_188

def RemovedStubsBody_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_193 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_191 RemovedStubsBody_192

def RemovedStubsBody_194 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_190 RemovedStubsBody_193

def RemovedStubsBody_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_198 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_196 RemovedStubsBody_197

def RemovedStubsBody_199 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_195 RemovedStubsBody_198

def RemovedStubsBody_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_203 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_201 RemovedStubsBody_202

def RemovedStubsBody_204 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_200 RemovedStubsBody_203

def RemovedStubsBody_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_208 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_206 RemovedStubsBody_207

def RemovedStubsBody_209 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_205 RemovedStubsBody_208

def RemovedStubsBody_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_212 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_210 RemovedStubsBody_211

def RemovedStubsBody_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_215 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_213 RemovedStubsBody_214

def RemovedStubsBody_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_218 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_216 RemovedStubsBody_217

def RemovedStubsBody_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_221 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_219 RemovedStubsBody_220

def RemovedStubsBody_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_225 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_223 RemovedStubsBody_224

def RemovedStubsBody_226 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_222 RemovedStubsBody_225

def RemovedStubsBody_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_229 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_227 RemovedStubsBody_228

def RemovedStubsBody_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_233 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_231 RemovedStubsBody_232

def RemovedStubsBody_234 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_230 RemovedStubsBody_233

def RemovedStubsBody_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 26
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_237 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_235 RemovedStubsBody_236

def RemovedStubsBody_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_241 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_239 RemovedStubsBody_240

def RemovedStubsBody_242 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_238 RemovedStubsBody_241

def RemovedStubsBody_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_246 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_244 RemovedStubsBody_245

def RemovedStubsBody_247 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_243 RemovedStubsBody_246

def RemovedStubsBody_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedStubsBody_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_251 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_249 RemovedStubsBody_250

def RemovedStubsBody_252 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_248 RemovedStubsBody_251

def RemovedStubsBody_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_255 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_253 RemovedStubsBody_254

def RemovedStubsBody_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_258 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_256 RemovedStubsBody_257

def RemovedStubsBody_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_261 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_259 RemovedStubsBody_260

def RemovedStubsBody_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_264 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_262 RemovedStubsBody_263

def RemovedStubsBody_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 26
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def RemovedStubsBody_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_267 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_265 RemovedStubsBody_266

def RemovedStubsBody_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedStubsBody_269 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_267 RemovedStubsBody_268

def RemovedStubsBody_270 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_264 RemovedStubsBody_269

def RemovedStubsBody_271 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_261 RemovedStubsBody_270

def RemovedStubsBody_272 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_258 RemovedStubsBody_271

def RemovedStubsBody_273 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_255 RemovedStubsBody_272

def RemovedStubsBody_274 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_252 RemovedStubsBody_273

def RemovedStubsBody_275 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_247 RemovedStubsBody_274

def RemovedStubsBody_276 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_242 RemovedStubsBody_275

def RemovedStubsBody_277 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_237 RemovedStubsBody_276

def RemovedStubsBody_278 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_234 RemovedStubsBody_277

def RemovedStubsBody_279 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_229 RemovedStubsBody_278

def RemovedStubsBody_280 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_226 RemovedStubsBody_279

def RemovedStubsBody_281 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_221 RemovedStubsBody_280

def RemovedStubsBody_282 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_218 RemovedStubsBody_281

def RemovedStubsBody_283 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_215 RemovedStubsBody_282

def RemovedStubsBody_284 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_212 RemovedStubsBody_283

def RemovedStubsBody_285 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_209 RemovedStubsBody_284

def RemovedStubsBody_286 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_204 RemovedStubsBody_285

def RemovedStubsBody_287 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_199 RemovedStubsBody_286

def RemovedStubsBody_288 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_194 RemovedStubsBody_287

def RemovedStubsBody_289 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_189 RemovedStubsBody_288

def RemovedStubsBody_290 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_184 RemovedStubsBody_289

def RemovedStubsBody_291 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_179 RemovedStubsBody_290

def RemovedStubsBody_292 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_174 RemovedStubsBody_291

def RemovedStubsBody_293 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_169 RemovedStubsBody_292

def RemovedStubsBody_294 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_164 RemovedStubsBody_293

def RemovedStubsBody_295 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_159 RemovedStubsBody_294

def RemovedStubsBody_296 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_154 RemovedStubsBody_295

def RemovedStubsBody_297 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_149 RemovedStubsBody_296

def RemovedStubsBody_298 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_144 RemovedStubsBody_297

def RemovedStubsBody_299 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_139 RemovedStubsBody_298

def RemovedStubsBody_300 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_134 RemovedStubsBody_299

def RemovedStubsBody_301 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_129 RemovedStubsBody_300

def RemovedStubsBody_302 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_124 RemovedStubsBody_301

def RemovedStubsBody_303 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_119 RemovedStubsBody_302

def RemovedStubsBody_304 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_114 RemovedStubsBody_303

def RemovedStubsBody_305 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_109 RemovedStubsBody_304

def RemovedStubsBody_306 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_104 RemovedStubsBody_305

def RemovedStubsBody_307 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_99 RemovedStubsBody_306

def RemovedStubsBody_308 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_94 RemovedStubsBody_307

def RemovedStubsBody_309 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_89 RemovedStubsBody_308

def RemovedStubsBody_310 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_84 RemovedStubsBody_309

def RemovedStubsBody_311 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_79 RemovedStubsBody_310

def RemovedStubsBody_312 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_74 RemovedStubsBody_311

def RemovedStubsBody_313 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_69 RemovedStubsBody_312

def RemovedStubsBody_314 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_64 RemovedStubsBody_313

def RemovedStubsBody_315 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_59 RemovedStubsBody_314

def RemovedStubsBody_316 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_54 RemovedStubsBody_315

def RemovedStubsBody_317 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_49 RemovedStubsBody_316

def RemovedStubsBody_318 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_48 RemovedStubsBody_317

def RemovedStubsBody_319 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_47 RemovedStubsBody_318

def RemovedStubsBody_320 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_46 RemovedStubsBody_319

def RemovedStubsBody_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 0 1 0

def RemovedStubsBody_322 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_320 RemovedStubsBody_321

def RemovedStubsBody_323 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_45 RemovedStubsBody_322

def RemovedStubsBody_324 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_44 RemovedStubsBody_323

def RemovedStubsBody_325 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_43 RemovedStubsBody_324

def RemovedStubsBody_326 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_42 RemovedStubsBody_325

def RemovedStubsBody_327 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_41 RemovedStubsBody_326

def RemovedStubsBody_328 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_40 RemovedStubsBody_327

def RemovedStubsBody_329 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_39 RemovedStubsBody_328

def RemovedStubsBody_330 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_38 RemovedStubsBody_329

def RemovedStubsBody_331 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_37 RemovedStubsBody_330

def RemovedStubsBody_332 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_36 RemovedStubsBody_331

def RemovedStubsBody_333 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_35 RemovedStubsBody_332

def RemovedStubsBody_334 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_34 RemovedStubsBody_333

def RemovedStubsBody_335 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_33 RemovedStubsBody_334

def RemovedStubsBody_336 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_32 RemovedStubsBody_335

def RemovedStubsBody_337 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_31 RemovedStubsBody_336

def RemovedStubsBody_338 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_30 RemovedStubsBody_337

def RemovedStubsBody_339 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_29 RemovedStubsBody_338

def RemovedStubsBody_340 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_28 RemovedStubsBody_339

def RemovedStubsBody_341 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_27 RemovedStubsBody_340

def RemovedStubsBody_342 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_26 RemovedStubsBody_341

def RemovedStubsBody_343 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_25 RemovedStubsBody_342

def RemovedStubsBody_344 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_24 RemovedStubsBody_343

def RemovedStubsBody_345 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_23 RemovedStubsBody_344

def RemovedStubsBody_346 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_18 RemovedStubsBody_345

def RemovedStubsBody_347 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_17 RemovedStubsBody_346

def RemovedStubsBody_348 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_16 RemovedStubsBody_347

def RemovedStubsBody_349 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_15 RemovedStubsBody_348

def RemovedStubsBody_350 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_14 RemovedStubsBody_349

def RemovedStubsBody_351 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_13 RemovedStubsBody_350

def RemovedStubsBody_352 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_12 RemovedStubsBody_351

def RemovedStubsBody_353 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_7 RemovedStubsBody_352

def RemovedStubsBody_354 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_6 RemovedStubsBody_353

def RemovedStubsBody_355 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_5 RemovedStubsBody_354

def RemovedStubsBody_356 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_4 RemovedStubsBody_355

def RemovedStubsBody_357 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_3 RemovedStubsBody_356

def RemovedStubsBody_358 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_2 RemovedStubsBody_357

def RemovedStubsBody_359 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_1 RemovedStubsBody_358

def RemovedStubsBody_360 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_0 RemovedStubsBody_359

def RemovedStubsBody_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 64) none

def RemovedStubsBody_362 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_360 RemovedStubsBody_361

def RemovedStubsBody_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedStubsBody_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedStubsBody_365 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_363 RemovedStubsBody_364

def RemovedStubsBody_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedStubsBody_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedStubsBody_368 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_366 RemovedStubsBody_367

def RemovedStubsBody_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551568#64))

def RemovedStubsBody_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedStubsBody_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551608#64))

def RemovedStubsBody_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551576#64))

def RemovedStubsBody_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551600#64))

def RemovedStubsBody_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedStubsBody_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedStubsBody_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedStubsBody_377 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_375 RemovedStubsBody_376

def RemovedStubsBody_378 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.test) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedStubsBody_374 RemovedStubsBody_377

def RemovedStubsBody_379 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_373 RemovedStubsBody_378

def RemovedStubsBody_380 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_372 RemovedStubsBody_379

def RemovedStubsBody_381 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_371 RemovedStubsBody_380

def RemovedStubsBody_382 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_370 RemovedStubsBody_381

def RemovedStubsBody_383 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_369 RemovedStubsBody_382

def RemovedStubsBody_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedStubsBody_385 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_383 RemovedStubsBody_384

def RemovedStubsBody_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedStubsBody_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedStubsBody_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 24 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedStubsBody_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 22)))

def RemovedStubsBody_390 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_388 RemovedStubsBody_389

def RemovedStubsBody_391 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_387 RemovedStubsBody_390

def RemovedStubsBody_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedStubsBody_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedStubsBody_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedStubsBody_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedStubsBody_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedStubsBody_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.raise 22

def RemovedStubsBody_398 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_396 RemovedStubsBody_397

def RemovedStubsBody_399 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_395 RemovedStubsBody_398

def RemovedStubsBody_400 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_394 RemovedStubsBody_399

def RemovedStubsBody_401 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_393 RemovedStubsBody_400

def RemovedStubsBody_402 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_392 RemovedStubsBody_401

def RemovedStubsBody_403 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_391 RemovedStubsBody_402

def RemovedStubsBody_404 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_386 RemovedStubsBody_403

def RemovedStubsBody_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551528#64))

def RemovedStubsBody_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedStubsBody_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedStubsBody_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def RemovedStubsBody_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def RemovedStubsBody_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedStubsBody_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedStubsBody_414 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.test) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedStubsBody_412 RemovedStubsBody_413

def RemovedStubsBody_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedStubsBody_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedStubsBody_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_418 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_416 RemovedStubsBody_417

def RemovedStubsBody_419 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_415 RemovedStubsBody_418

def RemovedStubsBody_420 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_414 RemovedStubsBody_419

def RemovedStubsBody_421 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_411 RemovedStubsBody_420

def RemovedStubsBody_422 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_410 RemovedStubsBody_421

def RemovedStubsBody_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedStubsBody_424 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedStubsBody_422 RemovedStubsBody_423

def RemovedStubsBody_425 : StackLang.HolProg 64 :=
.loop RemovedStubsBody_424

def RemovedStubsBody_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def RemovedStubsBody_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_428 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_426 RemovedStubsBody_427

def RemovedStubsBody_429 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_425 RemovedStubsBody_428

def RemovedStubsBody_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedStubsBody_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedStubsBody_429 RemovedStubsBody_430

def RemovedStubsBody_432 : StackLang.HolProg 64 :=
.loop RemovedStubsBody_431

def RemovedStubsBody_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def RemovedStubsBody_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedStubsBody_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedStubsBody_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.test) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedStubsBody_435 RemovedStubsBody_436

def RemovedStubsBody_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedStubsBody_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedStubsBody_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedStubsBody_441 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_439 RemovedStubsBody_440

def RemovedStubsBody_442 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_438 RemovedStubsBody_441

def RemovedStubsBody_443 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_437 RemovedStubsBody_442

def RemovedStubsBody_444 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_434 RemovedStubsBody_443

def RemovedStubsBody_445 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_433 RemovedStubsBody_444

def RemovedStubsBody_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedStubsBody_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) RemovedStubsBody_445 RemovedStubsBody_446

def RemovedStubsBody_448 : StackLang.HolProg 64 :=
.loop RemovedStubsBody_447

def RemovedStubsBody_449 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_432 RemovedStubsBody_448

def RemovedStubsBody_450 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_409 RemovedStubsBody_449

def RemovedStubsBody_451 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_408 RemovedStubsBody_450

def RemovedStubsBody_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedStubsBody_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedStubsBody_454 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_452 RemovedStubsBody_453

def RemovedStubsBody_455 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_451 RemovedStubsBody_454

def RemovedStubsBody_456 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_407 RemovedStubsBody_455

def RemovedStubsBody_457 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_406 RemovedStubsBody_456

def RemovedStubsBody_458 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_405 RemovedStubsBody_457

def RemovedStubsBody_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedStubsBody_460 : StackLang.HolProg 64 :=
.seq RemovedStubsBody_458 RemovedStubsBody_459

def RemovedStubs : List (Nat × StackLang.HolProg 64) := [(0, RemovedStubsBody_362), (1, RemovedStubsBody_365), (2, RemovedStubsBody_368), (4, RemovedStubsBody_385), (5, RemovedStubsBody_404), (6, RemovedStubsBody_460)]
theorem RemovedStubs_eq : StackRemove.initStubs (StackToLab.isGenGc RiscVConfig.pancakeRiscVBackendConfig.dataConf.gcKind) (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1) (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) BvlToBvi.initGlobalsLocation ++ AllocStubs.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = RemovedStubs := by
  kernel_rfl
#print axioms RemovedStubs_eq
end InitECandidate.Proofs.BackendStages
