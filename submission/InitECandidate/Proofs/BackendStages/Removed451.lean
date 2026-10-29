import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc451
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody451_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody451_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody451_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody451_3 : StackLang.HolProg 64 :=
.seq RemovedBody451_1 RemovedBody451_2

def RemovedBody451_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody451_3 RemovedBody451_4

def RemovedBody451_6 : StackLang.HolProg 64 :=
.seq RemovedBody451_0 RemovedBody451_5

def RemovedBody451_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody451_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody451_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody451_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody451_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody451_17 : StackLang.HolProg 64 :=
.seq RemovedBody451_15 RemovedBody451_16

def RemovedBody451_18 : StackLang.HolProg 64 :=
.seq RemovedBody451_14 RemovedBody451_17

def RemovedBody451_19 : StackLang.HolProg 64 :=
.seq RemovedBody451_13 RemovedBody451_18

def RemovedBody451_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody451_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody451_24 : StackLang.HolProg 64 :=
.seq RemovedBody451_22 RemovedBody451_23

def RemovedBody451_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody451_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody451_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody451_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody451_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody451_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody451_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody451_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody451_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody451_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def RemovedBody451_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody451_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody451_41 : StackLang.HolProg 64 :=
.seq RemovedBody451_39 RemovedBody451_40

def RemovedBody451_42 : StackLang.HolProg 64 :=
.seq RemovedBody451_38 RemovedBody451_41

def RemovedBody451_43 : StackLang.HolProg 64 :=
.seq RemovedBody451_37 RemovedBody451_42

def RemovedBody451_44 : StackLang.HolProg 64 :=
.seq RemovedBody451_36 RemovedBody451_43

def RemovedBody451_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody451_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody451_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody451_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody451_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody451_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody451_54 : StackLang.HolProg 64 :=
.seq RemovedBody451_52 RemovedBody451_53

def RemovedBody451_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_56 : StackLang.HolProg 64 :=
.seq RemovedBody451_54 RemovedBody451_55

def RemovedBody451_57 : StackLang.HolProg 64 :=
.seq RemovedBody451_51 RemovedBody451_56

def RemovedBody451_58 : StackLang.HolProg 64 :=
.seq RemovedBody451_50 RemovedBody451_57

def RemovedBody451_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1373#64)

def RemovedBody451_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody451_62 : StackLang.HolProg 64 :=
.seq RemovedBody451_60 RemovedBody451_61

def RemovedBody451_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody451_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody451_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody451_66 : StackLang.HolProg 64 :=
.seq RemovedBody451_64 RemovedBody451_65

def RemovedBody451_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody451_66 RemovedBody451_67

def RemovedBody451_69 : StackLang.HolProg 64 :=
.seq RemovedBody451_63 RemovedBody451_68

def RemovedBody451_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody451_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody451_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 451 3

def RemovedBody451_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody451_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody451_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody451_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody451_79 : StackLang.HolProg 64 :=
.seq RemovedBody451_77 RemovedBody451_78

def RemovedBody451_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody451_81 : StackLang.HolProg 64 :=
.seq RemovedBody451_79 RemovedBody451_80

def RemovedBody451_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody451_83 : StackLang.HolProg 64 :=
.seq RemovedBody451_81 RemovedBody451_82

def RemovedBody451_84 : StackLang.HolProg 64 :=
.seq RemovedBody451_76 RemovedBody451_83

def RemovedBody451_85 : StackLang.HolProg 64 :=
.seq RemovedBody451_75 RemovedBody451_84

def RemovedBody451_86 : StackLang.HolProg 64 :=
.seq RemovedBody451_74 RemovedBody451_85

def RemovedBody451_87 : StackLang.HolProg 64 :=
.seq RemovedBody451_73 RemovedBody451_86

def RemovedBody451_88 : StackLang.HolProg 64 :=
.seq RemovedBody451_72 RemovedBody451_87

def RemovedBody451_89 : StackLang.HolProg 64 :=
.seq RemovedBody451_71 RemovedBody451_88

def RemovedBody451_90 : StackLang.HolProg 64 :=
.seq RemovedBody451_70 RemovedBody451_89

def RemovedBody451_91 : StackLang.HolProg 64 :=
.seq RemovedBody451_69 RemovedBody451_90

def RemovedBody451_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody451_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody451_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody451_101 : StackLang.HolProg 64 :=
.seq RemovedBody451_99 RemovedBody451_100

def RemovedBody451_102 : StackLang.HolProg 64 :=
.seq RemovedBody451_98 RemovedBody451_101

def RemovedBody451_103 : StackLang.HolProg 64 :=
.seq RemovedBody451_97 RemovedBody451_102

def RemovedBody451_104 : StackLang.HolProg 64 :=
.seq RemovedBody451_96 RemovedBody451_103

def RemovedBody451_105 : StackLang.HolProg 64 :=
.seq RemovedBody451_95 RemovedBody451_104

def RemovedBody451_106 : StackLang.HolProg 64 :=
.seq RemovedBody451_94 RemovedBody451_105

def RemovedBody451_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody451_110 : StackLang.HolProg 64 :=
.seq RemovedBody451_108 RemovedBody451_109

def RemovedBody451_111 : StackLang.HolProg 64 :=
.seq RemovedBody451_107 RemovedBody451_110

def RemovedBody451_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody451_113 : StackLang.HolProg 64 :=
.seq RemovedBody451_111 RemovedBody451_112

def RemovedBody451_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody451_106, 0, 451, 2)) (Sum.inl 77) (some (RemovedBody451_113, 451, 3))

def RemovedBody451_115 : StackLang.HolProg 64 :=
.seq RemovedBody451_93 RemovedBody451_114

def RemovedBody451_116 : StackLang.HolProg 64 :=
.seq RemovedBody451_92 RemovedBody451_115

def RemovedBody451_117 : StackLang.HolProg 64 :=
.seq RemovedBody451_91 RemovedBody451_116

def RemovedBody451_118 : StackLang.HolProg 64 :=
.seq RemovedBody451_62 RemovedBody451_117

def RemovedBody451_119 : StackLang.HolProg 64 :=
.seq RemovedBody451_59 RemovedBody451_118

def RemovedBody451_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_122 : StackLang.HolProg 64 :=
.seq RemovedBody451_120 RemovedBody451_121

def RemovedBody451_123 : StackLang.HolProg 64 :=
.seq RemovedBody451_119 RemovedBody451_122

def RemovedBody451_124 : StackLang.HolProg 64 :=
.seq RemovedBody451_58 RemovedBody451_123

def RemovedBody451_125 : StackLang.HolProg 64 :=
.seq RemovedBody451_49 RemovedBody451_124

def RemovedBody451_126 : StackLang.HolProg 64 :=
.seq RemovedBody451_48 RemovedBody451_125

def RemovedBody451_127 : StackLang.HolProg 64 :=
.seq RemovedBody451_47 RemovedBody451_126

def RemovedBody451_128 : StackLang.HolProg 64 :=
.seq RemovedBody451_46 RemovedBody451_127

def RemovedBody451_129 : StackLang.HolProg 64 :=
.seq RemovedBody451_45 RemovedBody451_128

def RemovedBody451_130 : StackLang.HolProg 64 :=
.seq RemovedBody451_44 RemovedBody451_129

def RemovedBody451_131 : StackLang.HolProg 64 :=
.seq RemovedBody451_35 RemovedBody451_130

def RemovedBody451_132 : StackLang.HolProg 64 :=
.seq RemovedBody451_34 RemovedBody451_131

def RemovedBody451_133 : StackLang.HolProg 64 :=
.seq RemovedBody451_33 RemovedBody451_132

def RemovedBody451_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_137 : StackLang.HolProg 64 :=
.seq RemovedBody451_135 RemovedBody451_136

def RemovedBody451_138 : StackLang.HolProg 64 :=
.seq RemovedBody451_134 RemovedBody451_137

def RemovedBody451_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody451_133 RemovedBody451_138

def RemovedBody451_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody451_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody451_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody451_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody451_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody451_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody451_151 : StackLang.HolProg 64 :=
.seq RemovedBody451_149 RemovedBody451_150

def RemovedBody451_152 : StackLang.HolProg 64 :=
.seq RemovedBody451_148 RemovedBody451_151

def RemovedBody451_153 : StackLang.HolProg 64 :=
.seq RemovedBody451_147 RemovedBody451_152

def RemovedBody451_154 : StackLang.HolProg 64 :=
.seq RemovedBody451_146 RemovedBody451_153

def RemovedBody451_155 : StackLang.HolProg 64 :=
.seq RemovedBody451_145 RemovedBody451_154

def RemovedBody451_156 : StackLang.HolProg 64 :=
.seq RemovedBody451_144 RemovedBody451_155

def RemovedBody451_157 : StackLang.HolProg 64 :=
.seq RemovedBody451_143 RemovedBody451_156

def RemovedBody451_158 : StackLang.HolProg 64 :=
.seq RemovedBody451_142 RemovedBody451_157

def RemovedBody451_159 : StackLang.HolProg 64 :=
.seq RemovedBody451_141 RemovedBody451_158

def RemovedBody451_160 : StackLang.HolProg 64 :=
.seq RemovedBody451_140 RemovedBody451_159

def RemovedBody451_161 : StackLang.HolProg 64 :=
.seq RemovedBody451_139 RemovedBody451_160

def RemovedBody451_162 : StackLang.HolProg 64 :=
.seq RemovedBody451_32 RemovedBody451_161

def RemovedBody451_163 : StackLang.HolProg 64 :=
.seq RemovedBody451_31 RemovedBody451_162

def RemovedBody451_164 : StackLang.HolProg 64 :=
.seq RemovedBody451_30 RemovedBody451_163

def RemovedBody451_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody451_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody451_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody451_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody451_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody451_172 : StackLang.HolProg 64 :=
.seq RemovedBody451_170 RemovedBody451_171

def RemovedBody451_173 : StackLang.HolProg 64 :=
.seq RemovedBody451_169 RemovedBody451_172

def RemovedBody451_174 : StackLang.HolProg 64 :=
.seq RemovedBody451_168 RemovedBody451_173

def RemovedBody451_175 : StackLang.HolProg 64 :=
.seq RemovedBody451_167 RemovedBody451_174

def RemovedBody451_176 : StackLang.HolProg 64 :=
.seq RemovedBody451_166 RemovedBody451_175

def RemovedBody451_177 : StackLang.HolProg 64 :=
.seq RemovedBody451_165 RemovedBody451_176

def RemovedBody451_178 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody451_164 RemovedBody451_177

def RemovedBody451_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody451_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def RemovedBody451_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def RemovedBody451_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def RemovedBody451_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody451_189 : StackLang.HolProg 64 :=
.seq RemovedBody451_187 RemovedBody451_188

def RemovedBody451_190 : StackLang.HolProg 64 :=
.seq RemovedBody451_186 RemovedBody451_189

def RemovedBody451_191 : StackLang.HolProg 64 :=
.seq RemovedBody451_185 RemovedBody451_190

def RemovedBody451_192 : StackLang.HolProg 64 :=
.seq RemovedBody451_184 RemovedBody451_191

def RemovedBody451_193 : StackLang.HolProg 64 :=
.seq RemovedBody451_183 RemovedBody451_192

def RemovedBody451_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody451_195 : StackLang.HolProg 64 :=
.seq RemovedBody451_193 RemovedBody451_194

def RemovedBody451_196 : StackLang.HolProg 64 :=
.seq RemovedBody451_182 RemovedBody451_195

def RemovedBody451_197 : StackLang.HolProg 64 :=
.seq RemovedBody451_181 RemovedBody451_196

def RemovedBody451_198 : StackLang.HolProg 64 :=
.seq RemovedBody451_180 RemovedBody451_197

def RemovedBody451_199 : StackLang.HolProg 64 :=
.seq RemovedBody451_179 RemovedBody451_198

def RemovedBody451_200 : StackLang.HolProg 64 :=
.seq RemovedBody451_178 RemovedBody451_199

def RemovedBody451_201 : StackLang.HolProg 64 :=
.seq RemovedBody451_29 RemovedBody451_200

def RemovedBody451_202 : StackLang.HolProg 64 :=
.seq RemovedBody451_28 RemovedBody451_201

def RemovedBody451_203 : StackLang.HolProg 64 :=
.seq RemovedBody451_27 RemovedBody451_202

def RemovedBody451_204 : StackLang.HolProg 64 :=
.seq RemovedBody451_26 RemovedBody451_203

def RemovedBody451_205 : StackLang.HolProg 64 :=
.seq RemovedBody451_25 RemovedBody451_204

def RemovedBody451_206 : StackLang.HolProg 64 :=
.seq RemovedBody451_24 RemovedBody451_205

def RemovedBody451_207 : StackLang.HolProg 64 :=
.seq RemovedBody451_21 RemovedBody451_206

def RemovedBody451_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody451_210 : StackLang.HolProg 64 :=
.seq RemovedBody451_208 RemovedBody451_209

def RemovedBody451_211 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody451_207 RemovedBody451_210

def RemovedBody451_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody451_215 : StackLang.HolProg 64 :=
.seq RemovedBody451_213 RemovedBody451_214

def RemovedBody451_216 : StackLang.HolProg 64 :=
.seq RemovedBody451_212 RemovedBody451_215

def RemovedBody451_217 : StackLang.HolProg 64 :=
.seq RemovedBody451_211 RemovedBody451_216

def RemovedBody451_218 : StackLang.HolProg 64 :=
.seq RemovedBody451_20 RemovedBody451_217

def RemovedBody451_219 : StackLang.HolProg 64 :=
.loop RemovedBody451_218

def RemovedBody451_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody451_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody451_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody451_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody451_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody451_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody451_226 : StackLang.HolProg 64 :=
.seq RemovedBody451_224 RemovedBody451_225

def RemovedBody451_227 : StackLang.HolProg 64 :=
.seq RemovedBody451_223 RemovedBody451_226

def RemovedBody451_228 : StackLang.HolProg 64 :=
.seq RemovedBody451_222 RemovedBody451_227

def RemovedBody451_229 : StackLang.HolProg 64 :=
.seq RemovedBody451_221 RemovedBody451_228

def RemovedBody451_230 : StackLang.HolProg 64 :=
.seq RemovedBody451_220 RemovedBody451_229

def RemovedBody451_231 : StackLang.HolProg 64 :=
.seq RemovedBody451_219 RemovedBody451_230

def RemovedBody451_232 : StackLang.HolProg 64 :=
.seq RemovedBody451_19 RemovedBody451_231

def RemovedBody451_233 : StackLang.HolProg 64 :=
.seq RemovedBody451_12 RemovedBody451_232

def RemovedBody451_234 : StackLang.HolProg 64 :=
.seq RemovedBody451_11 RemovedBody451_233

def RemovedBody451_235 : StackLang.HolProg 64 :=
.seq RemovedBody451_10 RemovedBody451_234

def RemovedBody451_236 : StackLang.HolProg 64 :=
.seq RemovedBody451_9 RemovedBody451_235

def RemovedBody451_237 : StackLang.HolProg 64 :=
.seq RemovedBody451_8 RemovedBody451_236

def RemovedBody451_238 : StackLang.HolProg 64 :=
.seq RemovedBody451_7 RemovedBody451_237

def RemovedBody451_239 : StackLang.HolProg 64 :=
.seq RemovedBody451_6 RemovedBody451_238

def Removed451 : Nat × StackLang.HolProg 64 := (451, RemovedBody451_239)
theorem Removed451_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc451 = Removed451 := by
  kernel_rfl
#print axioms Removed451_eq
end InitECandidate.Proofs.BackendStages
