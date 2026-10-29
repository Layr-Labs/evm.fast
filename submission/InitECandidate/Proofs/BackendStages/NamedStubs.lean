import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.RemovedStubs
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.Backend
import Flapjack.Compiler.Backend.RiscVConfig.Executable
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedStubsBody_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedStubsBody_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedStubsBody_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedStubsBody_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2040#64)

def NamedStubsBody_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedStubsBody_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedStubsBody_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedStubsBody_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedStubsBody_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedStubsBody_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedStubsBody_9 NamedStubsBody_10

def NamedStubsBody_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedStubsBody_8 NamedStubsBody_11

def NamedStubsBody_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2040#64)

def NamedStubsBody_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedStubsBody_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedStubsBody_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedStubsBody_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 72057594037927928#64)

def NamedStubsBody_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedStubsBody_21 : StackLang.HolProg 64 :=
.seq NamedStubsBody_19 NamedStubsBody_20

def NamedStubsBody_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedStubsBody_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedStubsBody_21 NamedStubsBody_22

def NamedStubsBody_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedStubsBody_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedStubsBody_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedStubsBody_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedStubsBody_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 26 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedStubsBody_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedStubsBody_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 24 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedStubsBody_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 25 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedStubsBody_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 26 0#64))

def NamedStubsBody_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedStubsBody_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedStubsBody_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedStubsBody_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedStubsBody_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedStubsBody_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedStubsBody_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def NamedStubsBody_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedStubsBody_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedStubsBody_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_53 : StackLang.HolProg 64 :=
.seq NamedStubsBody_51 NamedStubsBody_52

def NamedStubsBody_54 : StackLang.HolProg 64 :=
.seq NamedStubsBody_50 NamedStubsBody_53

def NamedStubsBody_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_58 : StackLang.HolProg 64 :=
.seq NamedStubsBody_56 NamedStubsBody_57

def NamedStubsBody_59 : StackLang.HolProg 64 :=
.seq NamedStubsBody_55 NamedStubsBody_58

def NamedStubsBody_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_63 : StackLang.HolProg 64 :=
.seq NamedStubsBody_61 NamedStubsBody_62

def NamedStubsBody_64 : StackLang.HolProg 64 :=
.seq NamedStubsBody_60 NamedStubsBody_63

def NamedStubsBody_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_68 : StackLang.HolProg 64 :=
.seq NamedStubsBody_66 NamedStubsBody_67

def NamedStubsBody_69 : StackLang.HolProg 64 :=
.seq NamedStubsBody_65 NamedStubsBody_68

def NamedStubsBody_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_73 : StackLang.HolProg 64 :=
.seq NamedStubsBody_71 NamedStubsBody_72

def NamedStubsBody_74 : StackLang.HolProg 64 :=
.seq NamedStubsBody_70 NamedStubsBody_73

def NamedStubsBody_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_78 : StackLang.HolProg 64 :=
.seq NamedStubsBody_76 NamedStubsBody_77

def NamedStubsBody_79 : StackLang.HolProg 64 :=
.seq NamedStubsBody_75 NamedStubsBody_78

def NamedStubsBody_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_83 : StackLang.HolProg 64 :=
.seq NamedStubsBody_81 NamedStubsBody_82

def NamedStubsBody_84 : StackLang.HolProg 64 :=
.seq NamedStubsBody_80 NamedStubsBody_83

def NamedStubsBody_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_88 : StackLang.HolProg 64 :=
.seq NamedStubsBody_86 NamedStubsBody_87

def NamedStubsBody_89 : StackLang.HolProg 64 :=
.seq NamedStubsBody_85 NamedStubsBody_88

def NamedStubsBody_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_93 : StackLang.HolProg 64 :=
.seq NamedStubsBody_91 NamedStubsBody_92

def NamedStubsBody_94 : StackLang.HolProg 64 :=
.seq NamedStubsBody_90 NamedStubsBody_93

def NamedStubsBody_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_98 : StackLang.HolProg 64 :=
.seq NamedStubsBody_96 NamedStubsBody_97

def NamedStubsBody_99 : StackLang.HolProg 64 :=
.seq NamedStubsBody_95 NamedStubsBody_98

def NamedStubsBody_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_103 : StackLang.HolProg 64 :=
.seq NamedStubsBody_101 NamedStubsBody_102

def NamedStubsBody_104 : StackLang.HolProg 64 :=
.seq NamedStubsBody_100 NamedStubsBody_103

def NamedStubsBody_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_108 : StackLang.HolProg 64 :=
.seq NamedStubsBody_106 NamedStubsBody_107

def NamedStubsBody_109 : StackLang.HolProg 64 :=
.seq NamedStubsBody_105 NamedStubsBody_108

def NamedStubsBody_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_113 : StackLang.HolProg 64 :=
.seq NamedStubsBody_111 NamedStubsBody_112

def NamedStubsBody_114 : StackLang.HolProg 64 :=
.seq NamedStubsBody_110 NamedStubsBody_113

def NamedStubsBody_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_118 : StackLang.HolProg 64 :=
.seq NamedStubsBody_116 NamedStubsBody_117

def NamedStubsBody_119 : StackLang.HolProg 64 :=
.seq NamedStubsBody_115 NamedStubsBody_118

def NamedStubsBody_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_123 : StackLang.HolProg 64 :=
.seq NamedStubsBody_121 NamedStubsBody_122

def NamedStubsBody_124 : StackLang.HolProg 64 :=
.seq NamedStubsBody_120 NamedStubsBody_123

def NamedStubsBody_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_128 : StackLang.HolProg 64 :=
.seq NamedStubsBody_126 NamedStubsBody_127

def NamedStubsBody_129 : StackLang.HolProg 64 :=
.seq NamedStubsBody_125 NamedStubsBody_128

def NamedStubsBody_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_133 : StackLang.HolProg 64 :=
.seq NamedStubsBody_131 NamedStubsBody_132

def NamedStubsBody_134 : StackLang.HolProg 64 :=
.seq NamedStubsBody_130 NamedStubsBody_133

def NamedStubsBody_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_138 : StackLang.HolProg 64 :=
.seq NamedStubsBody_136 NamedStubsBody_137

def NamedStubsBody_139 : StackLang.HolProg 64 :=
.seq NamedStubsBody_135 NamedStubsBody_138

def NamedStubsBody_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_143 : StackLang.HolProg 64 :=
.seq NamedStubsBody_141 NamedStubsBody_142

def NamedStubsBody_144 : StackLang.HolProg 64 :=
.seq NamedStubsBody_140 NamedStubsBody_143

def NamedStubsBody_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_148 : StackLang.HolProg 64 :=
.seq NamedStubsBody_146 NamedStubsBody_147

def NamedStubsBody_149 : StackLang.HolProg 64 :=
.seq NamedStubsBody_145 NamedStubsBody_148

def NamedStubsBody_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_153 : StackLang.HolProg 64 :=
.seq NamedStubsBody_151 NamedStubsBody_152

def NamedStubsBody_154 : StackLang.HolProg 64 :=
.seq NamedStubsBody_150 NamedStubsBody_153

def NamedStubsBody_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_158 : StackLang.HolProg 64 :=
.seq NamedStubsBody_156 NamedStubsBody_157

def NamedStubsBody_159 : StackLang.HolProg 64 :=
.seq NamedStubsBody_155 NamedStubsBody_158

def NamedStubsBody_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_163 : StackLang.HolProg 64 :=
.seq NamedStubsBody_161 NamedStubsBody_162

def NamedStubsBody_164 : StackLang.HolProg 64 :=
.seq NamedStubsBody_160 NamedStubsBody_163

def NamedStubsBody_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_168 : StackLang.HolProg 64 :=
.seq NamedStubsBody_166 NamedStubsBody_167

def NamedStubsBody_169 : StackLang.HolProg 64 :=
.seq NamedStubsBody_165 NamedStubsBody_168

def NamedStubsBody_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_173 : StackLang.HolProg 64 :=
.seq NamedStubsBody_171 NamedStubsBody_172

def NamedStubsBody_174 : StackLang.HolProg 64 :=
.seq NamedStubsBody_170 NamedStubsBody_173

def NamedStubsBody_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_178 : StackLang.HolProg 64 :=
.seq NamedStubsBody_176 NamedStubsBody_177

def NamedStubsBody_179 : StackLang.HolProg 64 :=
.seq NamedStubsBody_175 NamedStubsBody_178

def NamedStubsBody_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_183 : StackLang.HolProg 64 :=
.seq NamedStubsBody_181 NamedStubsBody_182

def NamedStubsBody_184 : StackLang.HolProg 64 :=
.seq NamedStubsBody_180 NamedStubsBody_183

def NamedStubsBody_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_188 : StackLang.HolProg 64 :=
.seq NamedStubsBody_186 NamedStubsBody_187

def NamedStubsBody_189 : StackLang.HolProg 64 :=
.seq NamedStubsBody_185 NamedStubsBody_188

def NamedStubsBody_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_193 : StackLang.HolProg 64 :=
.seq NamedStubsBody_191 NamedStubsBody_192

def NamedStubsBody_194 : StackLang.HolProg 64 :=
.seq NamedStubsBody_190 NamedStubsBody_193

def NamedStubsBody_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_198 : StackLang.HolProg 64 :=
.seq NamedStubsBody_196 NamedStubsBody_197

def NamedStubsBody_199 : StackLang.HolProg 64 :=
.seq NamedStubsBody_195 NamedStubsBody_198

def NamedStubsBody_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_203 : StackLang.HolProg 64 :=
.seq NamedStubsBody_201 NamedStubsBody_202

def NamedStubsBody_204 : StackLang.HolProg 64 :=
.seq NamedStubsBody_200 NamedStubsBody_203

def NamedStubsBody_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_208 : StackLang.HolProg 64 :=
.seq NamedStubsBody_206 NamedStubsBody_207

def NamedStubsBody_209 : StackLang.HolProg 64 :=
.seq NamedStubsBody_205 NamedStubsBody_208

def NamedStubsBody_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_212 : StackLang.HolProg 64 :=
.seq NamedStubsBody_210 NamedStubsBody_211

def NamedStubsBody_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_215 : StackLang.HolProg 64 :=
.seq NamedStubsBody_213 NamedStubsBody_214

def NamedStubsBody_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_218 : StackLang.HolProg 64 :=
.seq NamedStubsBody_216 NamedStubsBody_217

def NamedStubsBody_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_221 : StackLang.HolProg 64 :=
.seq NamedStubsBody_219 NamedStubsBody_220

def NamedStubsBody_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_225 : StackLang.HolProg 64 :=
.seq NamedStubsBody_223 NamedStubsBody_224

def NamedStubsBody_226 : StackLang.HolProg 64 :=
.seq NamedStubsBody_222 NamedStubsBody_225

def NamedStubsBody_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_229 : StackLang.HolProg 64 :=
.seq NamedStubsBody_227 NamedStubsBody_228

def NamedStubsBody_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_233 : StackLang.HolProg 64 :=
.seq NamedStubsBody_231 NamedStubsBody_232

def NamedStubsBody_234 : StackLang.HolProg 64 :=
.seq NamedStubsBody_230 NamedStubsBody_233

def NamedStubsBody_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 26
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_237 : StackLang.HolProg 64 :=
.seq NamedStubsBody_235 NamedStubsBody_236

def NamedStubsBody_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_241 : StackLang.HolProg 64 :=
.seq NamedStubsBody_239 NamedStubsBody_240

def NamedStubsBody_242 : StackLang.HolProg 64 :=
.seq NamedStubsBody_238 NamedStubsBody_241

def NamedStubsBody_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_246 : StackLang.HolProg 64 :=
.seq NamedStubsBody_244 NamedStubsBody_245

def NamedStubsBody_247 : StackLang.HolProg 64 :=
.seq NamedStubsBody_243 NamedStubsBody_246

def NamedStubsBody_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedStubsBody_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_251 : StackLang.HolProg 64 :=
.seq NamedStubsBody_249 NamedStubsBody_250

def NamedStubsBody_252 : StackLang.HolProg 64 :=
.seq NamedStubsBody_248 NamedStubsBody_251

def NamedStubsBody_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_255 : StackLang.HolProg 64 :=
.seq NamedStubsBody_253 NamedStubsBody_254

def NamedStubsBody_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_258 : StackLang.HolProg 64 :=
.seq NamedStubsBody_256 NamedStubsBody_257

def NamedStubsBody_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_261 : StackLang.HolProg 64 :=
.seq NamedStubsBody_259 NamedStubsBody_260

def NamedStubsBody_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_264 : StackLang.HolProg 64 :=
.seq NamedStubsBody_262 NamedStubsBody_263

def NamedStubsBody_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 26
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 0#64))

def NamedStubsBody_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 25 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_267 : StackLang.HolProg 64 :=
.seq NamedStubsBody_265 NamedStubsBody_266

def NamedStubsBody_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedStubsBody_269 : StackLang.HolProg 64 :=
.seq NamedStubsBody_267 NamedStubsBody_268

def NamedStubsBody_270 : StackLang.HolProg 64 :=
.seq NamedStubsBody_264 NamedStubsBody_269

def NamedStubsBody_271 : StackLang.HolProg 64 :=
.seq NamedStubsBody_261 NamedStubsBody_270

def NamedStubsBody_272 : StackLang.HolProg 64 :=
.seq NamedStubsBody_258 NamedStubsBody_271

def NamedStubsBody_273 : StackLang.HolProg 64 :=
.seq NamedStubsBody_255 NamedStubsBody_272

def NamedStubsBody_274 : StackLang.HolProg 64 :=
.seq NamedStubsBody_252 NamedStubsBody_273

def NamedStubsBody_275 : StackLang.HolProg 64 :=
.seq NamedStubsBody_247 NamedStubsBody_274

def NamedStubsBody_276 : StackLang.HolProg 64 :=
.seq NamedStubsBody_242 NamedStubsBody_275

def NamedStubsBody_277 : StackLang.HolProg 64 :=
.seq NamedStubsBody_237 NamedStubsBody_276

def NamedStubsBody_278 : StackLang.HolProg 64 :=
.seq NamedStubsBody_234 NamedStubsBody_277

def NamedStubsBody_279 : StackLang.HolProg 64 :=
.seq NamedStubsBody_229 NamedStubsBody_278

def NamedStubsBody_280 : StackLang.HolProg 64 :=
.seq NamedStubsBody_226 NamedStubsBody_279

def NamedStubsBody_281 : StackLang.HolProg 64 :=
.seq NamedStubsBody_221 NamedStubsBody_280

def NamedStubsBody_282 : StackLang.HolProg 64 :=
.seq NamedStubsBody_218 NamedStubsBody_281

def NamedStubsBody_283 : StackLang.HolProg 64 :=
.seq NamedStubsBody_215 NamedStubsBody_282

def NamedStubsBody_284 : StackLang.HolProg 64 :=
.seq NamedStubsBody_212 NamedStubsBody_283

def NamedStubsBody_285 : StackLang.HolProg 64 :=
.seq NamedStubsBody_209 NamedStubsBody_284

def NamedStubsBody_286 : StackLang.HolProg 64 :=
.seq NamedStubsBody_204 NamedStubsBody_285

def NamedStubsBody_287 : StackLang.HolProg 64 :=
.seq NamedStubsBody_199 NamedStubsBody_286

def NamedStubsBody_288 : StackLang.HolProg 64 :=
.seq NamedStubsBody_194 NamedStubsBody_287

def NamedStubsBody_289 : StackLang.HolProg 64 :=
.seq NamedStubsBody_189 NamedStubsBody_288

def NamedStubsBody_290 : StackLang.HolProg 64 :=
.seq NamedStubsBody_184 NamedStubsBody_289

def NamedStubsBody_291 : StackLang.HolProg 64 :=
.seq NamedStubsBody_179 NamedStubsBody_290

def NamedStubsBody_292 : StackLang.HolProg 64 :=
.seq NamedStubsBody_174 NamedStubsBody_291

def NamedStubsBody_293 : StackLang.HolProg 64 :=
.seq NamedStubsBody_169 NamedStubsBody_292

def NamedStubsBody_294 : StackLang.HolProg 64 :=
.seq NamedStubsBody_164 NamedStubsBody_293

def NamedStubsBody_295 : StackLang.HolProg 64 :=
.seq NamedStubsBody_159 NamedStubsBody_294

def NamedStubsBody_296 : StackLang.HolProg 64 :=
.seq NamedStubsBody_154 NamedStubsBody_295

def NamedStubsBody_297 : StackLang.HolProg 64 :=
.seq NamedStubsBody_149 NamedStubsBody_296

def NamedStubsBody_298 : StackLang.HolProg 64 :=
.seq NamedStubsBody_144 NamedStubsBody_297

def NamedStubsBody_299 : StackLang.HolProg 64 :=
.seq NamedStubsBody_139 NamedStubsBody_298

def NamedStubsBody_300 : StackLang.HolProg 64 :=
.seq NamedStubsBody_134 NamedStubsBody_299

def NamedStubsBody_301 : StackLang.HolProg 64 :=
.seq NamedStubsBody_129 NamedStubsBody_300

def NamedStubsBody_302 : StackLang.HolProg 64 :=
.seq NamedStubsBody_124 NamedStubsBody_301

def NamedStubsBody_303 : StackLang.HolProg 64 :=
.seq NamedStubsBody_119 NamedStubsBody_302

def NamedStubsBody_304 : StackLang.HolProg 64 :=
.seq NamedStubsBody_114 NamedStubsBody_303

def NamedStubsBody_305 : StackLang.HolProg 64 :=
.seq NamedStubsBody_109 NamedStubsBody_304

def NamedStubsBody_306 : StackLang.HolProg 64 :=
.seq NamedStubsBody_104 NamedStubsBody_305

def NamedStubsBody_307 : StackLang.HolProg 64 :=
.seq NamedStubsBody_99 NamedStubsBody_306

def NamedStubsBody_308 : StackLang.HolProg 64 :=
.seq NamedStubsBody_94 NamedStubsBody_307

def NamedStubsBody_309 : StackLang.HolProg 64 :=
.seq NamedStubsBody_89 NamedStubsBody_308

def NamedStubsBody_310 : StackLang.HolProg 64 :=
.seq NamedStubsBody_84 NamedStubsBody_309

def NamedStubsBody_311 : StackLang.HolProg 64 :=
.seq NamedStubsBody_79 NamedStubsBody_310

def NamedStubsBody_312 : StackLang.HolProg 64 :=
.seq NamedStubsBody_74 NamedStubsBody_311

def NamedStubsBody_313 : StackLang.HolProg 64 :=
.seq NamedStubsBody_69 NamedStubsBody_312

def NamedStubsBody_314 : StackLang.HolProg 64 :=
.seq NamedStubsBody_64 NamedStubsBody_313

def NamedStubsBody_315 : StackLang.HolProg 64 :=
.seq NamedStubsBody_59 NamedStubsBody_314

def NamedStubsBody_316 : StackLang.HolProg 64 :=
.seq NamedStubsBody_54 NamedStubsBody_315

def NamedStubsBody_317 : StackLang.HolProg 64 :=
.seq NamedStubsBody_49 NamedStubsBody_316

def NamedStubsBody_318 : StackLang.HolProg 64 :=
.seq NamedStubsBody_48 NamedStubsBody_317

def NamedStubsBody_319 : StackLang.HolProg 64 :=
.seq NamedStubsBody_47 NamedStubsBody_318

def NamedStubsBody_320 : StackLang.HolProg 64 :=
.seq NamedStubsBody_46 NamedStubsBody_319

def NamedStubsBody_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 1 1 0

def NamedStubsBody_322 : StackLang.HolProg 64 :=
.seq NamedStubsBody_320 NamedStubsBody_321

def NamedStubsBody_323 : StackLang.HolProg 64 :=
.seq NamedStubsBody_45 NamedStubsBody_322

def NamedStubsBody_324 : StackLang.HolProg 64 :=
.seq NamedStubsBody_44 NamedStubsBody_323

def NamedStubsBody_325 : StackLang.HolProg 64 :=
.seq NamedStubsBody_43 NamedStubsBody_324

def NamedStubsBody_326 : StackLang.HolProg 64 :=
.seq NamedStubsBody_42 NamedStubsBody_325

def NamedStubsBody_327 : StackLang.HolProg 64 :=
.seq NamedStubsBody_41 NamedStubsBody_326

def NamedStubsBody_328 : StackLang.HolProg 64 :=
.seq NamedStubsBody_40 NamedStubsBody_327

def NamedStubsBody_329 : StackLang.HolProg 64 :=
.seq NamedStubsBody_39 NamedStubsBody_328

def NamedStubsBody_330 : StackLang.HolProg 64 :=
.seq NamedStubsBody_38 NamedStubsBody_329

def NamedStubsBody_331 : StackLang.HolProg 64 :=
.seq NamedStubsBody_37 NamedStubsBody_330

def NamedStubsBody_332 : StackLang.HolProg 64 :=
.seq NamedStubsBody_36 NamedStubsBody_331

def NamedStubsBody_333 : StackLang.HolProg 64 :=
.seq NamedStubsBody_35 NamedStubsBody_332

def NamedStubsBody_334 : StackLang.HolProg 64 :=
.seq NamedStubsBody_34 NamedStubsBody_333

def NamedStubsBody_335 : StackLang.HolProg 64 :=
.seq NamedStubsBody_33 NamedStubsBody_334

def NamedStubsBody_336 : StackLang.HolProg 64 :=
.seq NamedStubsBody_32 NamedStubsBody_335

def NamedStubsBody_337 : StackLang.HolProg 64 :=
.seq NamedStubsBody_31 NamedStubsBody_336

def NamedStubsBody_338 : StackLang.HolProg 64 :=
.seq NamedStubsBody_30 NamedStubsBody_337

def NamedStubsBody_339 : StackLang.HolProg 64 :=
.seq NamedStubsBody_29 NamedStubsBody_338

def NamedStubsBody_340 : StackLang.HolProg 64 :=
.seq NamedStubsBody_28 NamedStubsBody_339

def NamedStubsBody_341 : StackLang.HolProg 64 :=
.seq NamedStubsBody_27 NamedStubsBody_340

def NamedStubsBody_342 : StackLang.HolProg 64 :=
.seq NamedStubsBody_26 NamedStubsBody_341

def NamedStubsBody_343 : StackLang.HolProg 64 :=
.seq NamedStubsBody_25 NamedStubsBody_342

def NamedStubsBody_344 : StackLang.HolProg 64 :=
.seq NamedStubsBody_24 NamedStubsBody_343

def NamedStubsBody_345 : StackLang.HolProg 64 :=
.seq NamedStubsBody_23 NamedStubsBody_344

def NamedStubsBody_346 : StackLang.HolProg 64 :=
.seq NamedStubsBody_18 NamedStubsBody_345

def NamedStubsBody_347 : StackLang.HolProg 64 :=
.seq NamedStubsBody_17 NamedStubsBody_346

def NamedStubsBody_348 : StackLang.HolProg 64 :=
.seq NamedStubsBody_16 NamedStubsBody_347

def NamedStubsBody_349 : StackLang.HolProg 64 :=
.seq NamedStubsBody_15 NamedStubsBody_348

def NamedStubsBody_350 : StackLang.HolProg 64 :=
.seq NamedStubsBody_14 NamedStubsBody_349

def NamedStubsBody_351 : StackLang.HolProg 64 :=
.seq NamedStubsBody_13 NamedStubsBody_350

def NamedStubsBody_352 : StackLang.HolProg 64 :=
.seq NamedStubsBody_12 NamedStubsBody_351

def NamedStubsBody_353 : StackLang.HolProg 64 :=
.seq NamedStubsBody_7 NamedStubsBody_352

def NamedStubsBody_354 : StackLang.HolProg 64 :=
.seq NamedStubsBody_6 NamedStubsBody_353

def NamedStubsBody_355 : StackLang.HolProg 64 :=
.seq NamedStubsBody_5 NamedStubsBody_354

def NamedStubsBody_356 : StackLang.HolProg 64 :=
.seq NamedStubsBody_4 NamedStubsBody_355

def NamedStubsBody_357 : StackLang.HolProg 64 :=
.seq NamedStubsBody_3 NamedStubsBody_356

def NamedStubsBody_358 : StackLang.HolProg 64 :=
.seq NamedStubsBody_2 NamedStubsBody_357

def NamedStubsBody_359 : StackLang.HolProg 64 :=
.seq NamedStubsBody_1 NamedStubsBody_358

def NamedStubsBody_360 : StackLang.HolProg 64 :=
.seq NamedStubsBody_0 NamedStubsBody_359

def NamedStubsBody_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 64) none

def NamedStubsBody_362 : StackLang.HolProg 64 :=
.seq NamedStubsBody_360 NamedStubsBody_361

def NamedStubsBody_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedStubsBody_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedStubsBody_365 : StackLang.HolProg 64 :=
.seq NamedStubsBody_363 NamedStubsBody_364

def NamedStubsBody_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedStubsBody_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedStubsBody_368 : StackLang.HolProg 64 :=
.seq NamedStubsBody_366 NamedStubsBody_367

def NamedStubsBody_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551568#64))

def NamedStubsBody_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 26
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def NamedStubsBody_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551608#64))

def NamedStubsBody_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551576#64))

def NamedStubsBody_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551600#64))

def NamedStubsBody_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedStubsBody_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedStubsBody_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedStubsBody_377 : StackLang.HolProg 64 :=
.seq NamedStubsBody_375 NamedStubsBody_376

def NamedStubsBody_378 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.test) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedStubsBody_374 NamedStubsBody_377

def NamedStubsBody_379 : StackLang.HolProg 64 :=
.seq NamedStubsBody_373 NamedStubsBody_378

def NamedStubsBody_380 : StackLang.HolProg 64 :=
.seq NamedStubsBody_372 NamedStubsBody_379

def NamedStubsBody_381 : StackLang.HolProg 64 :=
.seq NamedStubsBody_371 NamedStubsBody_380

def NamedStubsBody_382 : StackLang.HolProg 64 :=
.seq NamedStubsBody_370 NamedStubsBody_381

def NamedStubsBody_383 : StackLang.HolProg 64 :=
.seq NamedStubsBody_369 NamedStubsBody_382

def NamedStubsBody_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedStubsBody_385 : StackLang.HolProg 64 :=
.seq NamedStubsBody_383 NamedStubsBody_384

def NamedStubsBody_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedStubsBody_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedStubsBody_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 24 25
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedStubsBody_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 22)))

def NamedStubsBody_390 : StackLang.HolProg 64 :=
.seq NamedStubsBody_388 NamedStubsBody_389

def NamedStubsBody_391 : StackLang.HolProg 64 :=
.seq NamedStubsBody_387 NamedStubsBody_390

def NamedStubsBody_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedStubsBody_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedStubsBody_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedStubsBody_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedStubsBody_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedStubsBody_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.raise 22

def NamedStubsBody_398 : StackLang.HolProg 64 :=
.seq NamedStubsBody_396 NamedStubsBody_397

def NamedStubsBody_399 : StackLang.HolProg 64 :=
.seq NamedStubsBody_395 NamedStubsBody_398

def NamedStubsBody_400 : StackLang.HolProg 64 :=
.seq NamedStubsBody_394 NamedStubsBody_399

def NamedStubsBody_401 : StackLang.HolProg 64 :=
.seq NamedStubsBody_393 NamedStubsBody_400

def NamedStubsBody_402 : StackLang.HolProg 64 :=
.seq NamedStubsBody_392 NamedStubsBody_401

def NamedStubsBody_403 : StackLang.HolProg 64 :=
.seq NamedStubsBody_391 NamedStubsBody_402

def NamedStubsBody_404 : StackLang.HolProg 64 :=
.seq NamedStubsBody_386 NamedStubsBody_403

def NamedStubsBody_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551528#64))

def NamedStubsBody_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedStubsBody_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedStubsBody_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def NamedStubsBody_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def NamedStubsBody_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedStubsBody_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedStubsBody_414 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.test) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedStubsBody_412 NamedStubsBody_413

def NamedStubsBody_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedStubsBody_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedStubsBody_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_418 : StackLang.HolProg 64 :=
.seq NamedStubsBody_416 NamedStubsBody_417

def NamedStubsBody_419 : StackLang.HolProg 64 :=
.seq NamedStubsBody_415 NamedStubsBody_418

def NamedStubsBody_420 : StackLang.HolProg 64 :=
.seq NamedStubsBody_414 NamedStubsBody_419

def NamedStubsBody_421 : StackLang.HolProg 64 :=
.seq NamedStubsBody_411 NamedStubsBody_420

def NamedStubsBody_422 : StackLang.HolProg 64 :=
.seq NamedStubsBody_410 NamedStubsBody_421

def NamedStubsBody_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedStubsBody_424 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedStubsBody_422 NamedStubsBody_423

def NamedStubsBody_425 : StackLang.HolProg 64 :=
.loop NamedStubsBody_424

def NamedStubsBody_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def NamedStubsBody_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_428 : StackLang.HolProg 64 :=
.seq NamedStubsBody_426 NamedStubsBody_427

def NamedStubsBody_429 : StackLang.HolProg 64 :=
.seq NamedStubsBody_425 NamedStubsBody_428

def NamedStubsBody_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedStubsBody_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedStubsBody_429 NamedStubsBody_430

def NamedStubsBody_432 : StackLang.HolProg 64 :=
.loop NamedStubsBody_431

def NamedStubsBody_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 23 0#64))

def NamedStubsBody_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 23 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedStubsBody_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedStubsBody_437 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.test) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedStubsBody_435 NamedStubsBody_436

def NamedStubsBody_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedStubsBody_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 0#64))

def NamedStubsBody_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedStubsBody_441 : StackLang.HolProg 64 :=
.seq NamedStubsBody_439 NamedStubsBody_440

def NamedStubsBody_442 : StackLang.HolProg 64 :=
.seq NamedStubsBody_438 NamedStubsBody_441

def NamedStubsBody_443 : StackLang.HolProg 64 :=
.seq NamedStubsBody_437 NamedStubsBody_442

def NamedStubsBody_444 : StackLang.HolProg 64 :=
.seq NamedStubsBody_434 NamedStubsBody_443

def NamedStubsBody_445 : StackLang.HolProg 64 :=
.seq NamedStubsBody_433 NamedStubsBody_444

def NamedStubsBody_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedStubsBody_447 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) NamedStubsBody_445 NamedStubsBody_446

def NamedStubsBody_448 : StackLang.HolProg 64 :=
.loop NamedStubsBody_447

def NamedStubsBody_449 : StackLang.HolProg 64 :=
.seq NamedStubsBody_432 NamedStubsBody_448

def NamedStubsBody_450 : StackLang.HolProg 64 :=
.seq NamedStubsBody_409 NamedStubsBody_449

def NamedStubsBody_451 : StackLang.HolProg 64 :=
.seq NamedStubsBody_408 NamedStubsBody_450

def NamedStubsBody_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedStubsBody_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedStubsBody_454 : StackLang.HolProg 64 :=
.seq NamedStubsBody_452 NamedStubsBody_453

def NamedStubsBody_455 : StackLang.HolProg 64 :=
.seq NamedStubsBody_451 NamedStubsBody_454

def NamedStubsBody_456 : StackLang.HolProg 64 :=
.seq NamedStubsBody_407 NamedStubsBody_455

def NamedStubsBody_457 : StackLang.HolProg 64 :=
.seq NamedStubsBody_406 NamedStubsBody_456

def NamedStubsBody_458 : StackLang.HolProg 64 :=
.seq NamedStubsBody_405 NamedStubsBody_457

def NamedStubsBody_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedStubsBody_460 : StackLang.HolProg 64 :=
.seq NamedStubsBody_458 NamedStubsBody_459

def NamedStubs : List (Nat × StackLang.HolProg 64) := [(0, NamedStubsBody_362), (1, NamedStubsBody_365), (2, NamedStubsBody_368), (4, NamedStubsBody_385), (5, NamedStubsBody_404), (6, NamedStubsBody_460)]
theorem NamedStubs_eq : RemovedStubs.map (StackNames.progCompEntryHOL RiscVConfig.riscvNames) = NamedStubs := by
  kernel_rfl
#print axioms NamedStubs_eq
end InitECandidate.Proofs.BackendStages
