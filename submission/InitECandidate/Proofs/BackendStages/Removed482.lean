import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc482
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody482_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody482_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody482_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody482_3 : StackLang.HolProg 64 :=
.seq RemovedBody482_1 RemovedBody482_2

def RemovedBody482_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody482_3 RemovedBody482_4

def RemovedBody482_6 : StackLang.HolProg 64 :=
.seq RemovedBody482_0 RemovedBody482_5

def RemovedBody482_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody482_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody482_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody482_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody482_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody482_14 : StackLang.HolProg 64 :=
.seq RemovedBody482_12 RemovedBody482_13

def RemovedBody482_15 : StackLang.HolProg 64 :=
.seq RemovedBody482_11 RemovedBody482_14

def RemovedBody482_16 : StackLang.HolProg 64 :=
.seq RemovedBody482_10 RemovedBody482_15

def RemovedBody482_17 : StackLang.HolProg 64 :=
.seq RemovedBody482_9 RemovedBody482_16

def RemovedBody482_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody482_17 RemovedBody482_18

def RemovedBody482_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody482_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody482_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody482_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody482_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody482_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody482_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody482_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody482_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1024#64)))

def RemovedBody482_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_40 : StackLang.HolProg 64 :=
.seq RemovedBody482_38 RemovedBody482_39

def RemovedBody482_41 : StackLang.HolProg 64 :=
.seq RemovedBody482_37 RemovedBody482_40

def RemovedBody482_42 : StackLang.HolProg 64 :=
.seq RemovedBody482_36 RemovedBody482_41

def RemovedBody482_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_45 : StackLang.HolProg 64 :=
.seq RemovedBody482_43 RemovedBody482_44

def RemovedBody482_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody482_42 RemovedBody482_45

def RemovedBody482_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody482_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody482_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody482_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody482_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody482_55 : StackLang.HolProg 64 :=
.seq RemovedBody482_53 RemovedBody482_54

def RemovedBody482_56 : StackLang.HolProg 64 :=
.seq RemovedBody482_52 RemovedBody482_55

def RemovedBody482_57 : StackLang.HolProg 64 :=
.seq RemovedBody482_51 RemovedBody482_56

def RemovedBody482_58 : StackLang.HolProg 64 :=
.seq RemovedBody482_50 RemovedBody482_57

def RemovedBody482_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1514#64)

def RemovedBody482_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody482_62 : StackLang.HolProg 64 :=
.seq RemovedBody482_60 RemovedBody482_61

def RemovedBody482_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody482_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody482_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody482_66 : StackLang.HolProg 64 :=
.seq RemovedBody482_64 RemovedBody482_65

def RemovedBody482_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody482_66 RemovedBody482_67

def RemovedBody482_69 : StackLang.HolProg 64 :=
.seq RemovedBody482_63 RemovedBody482_68

def RemovedBody482_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody482_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody482_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 482 3

def RemovedBody482_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody482_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody482_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody482_79 : StackLang.HolProg 64 :=
.seq RemovedBody482_77 RemovedBody482_78

def RemovedBody482_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody482_81 : StackLang.HolProg 64 :=
.seq RemovedBody482_79 RemovedBody482_80

def RemovedBody482_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_83 : StackLang.HolProg 64 :=
.seq RemovedBody482_81 RemovedBody482_82

def RemovedBody482_84 : StackLang.HolProg 64 :=
.seq RemovedBody482_76 RemovedBody482_83

def RemovedBody482_85 : StackLang.HolProg 64 :=
.seq RemovedBody482_75 RemovedBody482_84

def RemovedBody482_86 : StackLang.HolProg 64 :=
.seq RemovedBody482_74 RemovedBody482_85

def RemovedBody482_87 : StackLang.HolProg 64 :=
.seq RemovedBody482_73 RemovedBody482_86

def RemovedBody482_88 : StackLang.HolProg 64 :=
.seq RemovedBody482_72 RemovedBody482_87

def RemovedBody482_89 : StackLang.HolProg 64 :=
.seq RemovedBody482_71 RemovedBody482_88

def RemovedBody482_90 : StackLang.HolProg 64 :=
.seq RemovedBody482_70 RemovedBody482_89

def RemovedBody482_91 : StackLang.HolProg 64 :=
.seq RemovedBody482_69 RemovedBody482_90

def RemovedBody482_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody482_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody482_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_101 : StackLang.HolProg 64 :=
.seq RemovedBody482_99 RemovedBody482_100

def RemovedBody482_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody482_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody482_104 : StackLang.HolProg 64 :=
.seq RemovedBody482_102 RemovedBody482_103

def RemovedBody482_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody482_107 : StackLang.HolProg 64 :=
.seq RemovedBody482_105 RemovedBody482_106

def RemovedBody482_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody482_109 : StackLang.HolProg 64 :=
.seq RemovedBody482_107 RemovedBody482_108

def RemovedBody482_110 : StackLang.HolProg 64 :=
.seq RemovedBody482_104 RemovedBody482_109

def RemovedBody482_111 : StackLang.HolProg 64 :=
.seq RemovedBody482_101 RemovedBody482_110

def RemovedBody482_112 : StackLang.HolProg 64 :=
.seq RemovedBody482_98 RemovedBody482_111

def RemovedBody482_113 : StackLang.HolProg 64 :=
.seq RemovedBody482_97 RemovedBody482_112

def RemovedBody482_114 : StackLang.HolProg 64 :=
.seq RemovedBody482_96 RemovedBody482_113

def RemovedBody482_115 : StackLang.HolProg 64 :=
.seq RemovedBody482_95 RemovedBody482_114

def RemovedBody482_116 : StackLang.HolProg 64 :=
.seq RemovedBody482_94 RemovedBody482_115

def RemovedBody482_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody482_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_120 : StackLang.HolProg 64 :=
.seq RemovedBody482_118 RemovedBody482_119

def RemovedBody482_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody482_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody482_123 : StackLang.HolProg 64 :=
.seq RemovedBody482_121 RemovedBody482_122

def RemovedBody482_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody482_126 : StackLang.HolProg 64 :=
.seq RemovedBody482_124 RemovedBody482_125

def RemovedBody482_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody482_128 : StackLang.HolProg 64 :=
.seq RemovedBody482_126 RemovedBody482_127

def RemovedBody482_129 : StackLang.HolProg 64 :=
.seq RemovedBody482_123 RemovedBody482_128

def RemovedBody482_130 : StackLang.HolProg 64 :=
.seq RemovedBody482_120 RemovedBody482_129

def RemovedBody482_131 : StackLang.HolProg 64 :=
.seq RemovedBody482_117 RemovedBody482_130

def RemovedBody482_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody482_133 : StackLang.HolProg 64 :=
.seq RemovedBody482_131 RemovedBody482_132

def RemovedBody482_134 : StackLang.HolProg 64 :=
.call (some (RemovedBody482_116, 0, 482, 2)) (Sum.inl 71) (some (RemovedBody482_133, 482, 3))

def RemovedBody482_135 : StackLang.HolProg 64 :=
.seq RemovedBody482_93 RemovedBody482_134

def RemovedBody482_136 : StackLang.HolProg 64 :=
.seq RemovedBody482_92 RemovedBody482_135

def RemovedBody482_137 : StackLang.HolProg 64 :=
.seq RemovedBody482_91 RemovedBody482_136

def RemovedBody482_138 : StackLang.HolProg 64 :=
.seq RemovedBody482_62 RemovedBody482_137

def RemovedBody482_139 : StackLang.HolProg 64 :=
.seq RemovedBody482_59 RemovedBody482_138

def RemovedBody482_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody482_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody482_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody482_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody482_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody482_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody482_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody482_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1515#64)

def RemovedBody482_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody482_154 : StackLang.HolProg 64 :=
.seq RemovedBody482_152 RemovedBody482_153

def RemovedBody482_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody482_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody482_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody482_158 : StackLang.HolProg 64 :=
.seq RemovedBody482_156 RemovedBody482_157

def RemovedBody482_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_160 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody482_158 RemovedBody482_159

def RemovedBody482_161 : StackLang.HolProg 64 :=
.seq RemovedBody482_155 RemovedBody482_160

def RemovedBody482_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody482_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody482_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 482 5

def RemovedBody482_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody482_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody482_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody482_171 : StackLang.HolProg 64 :=
.seq RemovedBody482_169 RemovedBody482_170

def RemovedBody482_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody482_173 : StackLang.HolProg 64 :=
.seq RemovedBody482_171 RemovedBody482_172

def RemovedBody482_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_175 : StackLang.HolProg 64 :=
.seq RemovedBody482_173 RemovedBody482_174

def RemovedBody482_176 : StackLang.HolProg 64 :=
.seq RemovedBody482_168 RemovedBody482_175

def RemovedBody482_177 : StackLang.HolProg 64 :=
.seq RemovedBody482_167 RemovedBody482_176

def RemovedBody482_178 : StackLang.HolProg 64 :=
.seq RemovedBody482_166 RemovedBody482_177

def RemovedBody482_179 : StackLang.HolProg 64 :=
.seq RemovedBody482_165 RemovedBody482_178

def RemovedBody482_180 : StackLang.HolProg 64 :=
.seq RemovedBody482_164 RemovedBody482_179

def RemovedBody482_181 : StackLang.HolProg 64 :=
.seq RemovedBody482_163 RemovedBody482_180

def RemovedBody482_182 : StackLang.HolProg 64 :=
.seq RemovedBody482_162 RemovedBody482_181

def RemovedBody482_183 : StackLang.HolProg 64 :=
.seq RemovedBody482_161 RemovedBody482_182

def RemovedBody482_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody482_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody482_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody482_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_194 : StackLang.HolProg 64 :=
.seq RemovedBody482_192 RemovedBody482_193

def RemovedBody482_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_196 : StackLang.HolProg 64 :=
.seq RemovedBody482_194 RemovedBody482_195

def RemovedBody482_197 : StackLang.HolProg 64 :=
.seq RemovedBody482_191 RemovedBody482_196

def RemovedBody482_198 : StackLang.HolProg 64 :=
.seq RemovedBody482_190 RemovedBody482_197

def RemovedBody482_199 : StackLang.HolProg 64 :=
.seq RemovedBody482_189 RemovedBody482_198

def RemovedBody482_200 : StackLang.HolProg 64 :=
.seq RemovedBody482_188 RemovedBody482_199

def RemovedBody482_201 : StackLang.HolProg 64 :=
.seq RemovedBody482_187 RemovedBody482_200

def RemovedBody482_202 : StackLang.HolProg 64 :=
.seq RemovedBody482_186 RemovedBody482_201

def RemovedBody482_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody482_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody482_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_207 : StackLang.HolProg 64 :=
.seq RemovedBody482_205 RemovedBody482_206

def RemovedBody482_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_209 : StackLang.HolProg 64 :=
.seq RemovedBody482_207 RemovedBody482_208

def RemovedBody482_210 : StackLang.HolProg 64 :=
.seq RemovedBody482_204 RemovedBody482_209

def RemovedBody482_211 : StackLang.HolProg 64 :=
.seq RemovedBody482_203 RemovedBody482_210

def RemovedBody482_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody482_213 : StackLang.HolProg 64 :=
.seq RemovedBody482_211 RemovedBody482_212

def RemovedBody482_214 : StackLang.HolProg 64 :=
.call (some (RemovedBody482_202, 0, 482, 4)) (Sum.inl 78) (some (RemovedBody482_213, 482, 5))

def RemovedBody482_215 : StackLang.HolProg 64 :=
.seq RemovedBody482_185 RemovedBody482_214

def RemovedBody482_216 : StackLang.HolProg 64 :=
.seq RemovedBody482_184 RemovedBody482_215

def RemovedBody482_217 : StackLang.HolProg 64 :=
.seq RemovedBody482_183 RemovedBody482_216

def RemovedBody482_218 : StackLang.HolProg 64 :=
.seq RemovedBody482_154 RemovedBody482_217

def RemovedBody482_219 : StackLang.HolProg 64 :=
.seq RemovedBody482_151 RemovedBody482_218

def RemovedBody482_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody482_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody482_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody482_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody482_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody482_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody482_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_229 : StackLang.HolProg 64 :=
.seq RemovedBody482_227 RemovedBody482_228

def RemovedBody482_230 : StackLang.HolProg 64 :=
.seq RemovedBody482_226 RemovedBody482_229

def RemovedBody482_231 : StackLang.HolProg 64 :=
.seq RemovedBody482_225 RemovedBody482_230

def RemovedBody482_232 : StackLang.HolProg 64 :=
.seq RemovedBody482_224 RemovedBody482_231

def RemovedBody482_233 : StackLang.HolProg 64 :=
.seq RemovedBody482_223 RemovedBody482_232

def RemovedBody482_234 : StackLang.HolProg 64 :=
.seq RemovedBody482_222 RemovedBody482_233

def RemovedBody482_235 : StackLang.HolProg 64 :=
.seq RemovedBody482_221 RemovedBody482_234

def RemovedBody482_236 : StackLang.HolProg 64 :=
.seq RemovedBody482_220 RemovedBody482_235

def RemovedBody482_237 : StackLang.HolProg 64 :=
.seq RemovedBody482_219 RemovedBody482_236

def RemovedBody482_238 : StackLang.HolProg 64 :=
.seq RemovedBody482_150 RemovedBody482_237

def RemovedBody482_239 : StackLang.HolProg 64 :=
.seq RemovedBody482_149 RemovedBody482_238

def RemovedBody482_240 : StackLang.HolProg 64 :=
.seq RemovedBody482_148 RemovedBody482_239

def RemovedBody482_241 : StackLang.HolProg 64 :=
.seq RemovedBody482_147 RemovedBody482_240

def RemovedBody482_242 : StackLang.HolProg 64 :=
.seq RemovedBody482_146 RemovedBody482_241

def RemovedBody482_243 : StackLang.HolProg 64 :=
.seq RemovedBody482_145 RemovedBody482_242

def RemovedBody482_244 : StackLang.HolProg 64 :=
.seq RemovedBody482_144 RemovedBody482_243

def RemovedBody482_245 : StackLang.HolProg 64 :=
.seq RemovedBody482_143 RemovedBody482_244

def RemovedBody482_246 : StackLang.HolProg 64 :=
.seq RemovedBody482_142 RemovedBody482_245

def RemovedBody482_247 : StackLang.HolProg 64 :=
.seq RemovedBody482_141 RemovedBody482_246

def RemovedBody482_248 : StackLang.HolProg 64 :=
.seq RemovedBody482_140 RemovedBody482_247

def RemovedBody482_249 : StackLang.HolProg 64 :=
.seq RemovedBody482_139 RemovedBody482_248

def RemovedBody482_250 : StackLang.HolProg 64 :=
.seq RemovedBody482_58 RemovedBody482_249

def RemovedBody482_251 : StackLang.HolProg 64 :=
.seq RemovedBody482_49 RemovedBody482_250

def RemovedBody482_252 : StackLang.HolProg 64 :=
.seq RemovedBody482_48 RemovedBody482_251

def RemovedBody482_253 : StackLang.HolProg 64 :=
.seq RemovedBody482_47 RemovedBody482_252

def RemovedBody482_254 : StackLang.HolProg 64 :=
.seq RemovedBody482_46 RemovedBody482_253

def RemovedBody482_255 : StackLang.HolProg 64 :=
.seq RemovedBody482_35 RemovedBody482_254

def RemovedBody482_256 : StackLang.HolProg 64 :=
.seq RemovedBody482_34 RemovedBody482_255

def RemovedBody482_257 : StackLang.HolProg 64 :=
.seq RemovedBody482_33 RemovedBody482_256

def RemovedBody482_258 : StackLang.HolProg 64 :=
.seq RemovedBody482_32 RemovedBody482_257

def RemovedBody482_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody482_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_262 : StackLang.HolProg 64 :=
.seq RemovedBody482_260 RemovedBody482_261

def RemovedBody482_263 : StackLang.HolProg 64 :=
.seq RemovedBody482_259 RemovedBody482_262

def RemovedBody482_264 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody482_258 RemovedBody482_263

def RemovedBody482_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody482_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody482_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody482_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody482_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody482_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody482_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1516#64)

def RemovedBody482_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody482_277 : StackLang.HolProg 64 :=
.seq RemovedBody482_275 RemovedBody482_276

def RemovedBody482_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody482_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody482_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody482_281 : StackLang.HolProg 64 :=
.seq RemovedBody482_279 RemovedBody482_280

def RemovedBody482_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody482_281 RemovedBody482_282

def RemovedBody482_284 : StackLang.HolProg 64 :=
.seq RemovedBody482_278 RemovedBody482_283

def RemovedBody482_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody482_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody482_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 482 7

def RemovedBody482_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody482_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody482_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody482_294 : StackLang.HolProg 64 :=
.seq RemovedBody482_292 RemovedBody482_293

def RemovedBody482_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody482_296 : StackLang.HolProg 64 :=
.seq RemovedBody482_294 RemovedBody482_295

def RemovedBody482_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_298 : StackLang.HolProg 64 :=
.seq RemovedBody482_296 RemovedBody482_297

def RemovedBody482_299 : StackLang.HolProg 64 :=
.seq RemovedBody482_291 RemovedBody482_298

def RemovedBody482_300 : StackLang.HolProg 64 :=
.seq RemovedBody482_290 RemovedBody482_299

def RemovedBody482_301 : StackLang.HolProg 64 :=
.seq RemovedBody482_289 RemovedBody482_300

def RemovedBody482_302 : StackLang.HolProg 64 :=
.seq RemovedBody482_288 RemovedBody482_301

def RemovedBody482_303 : StackLang.HolProg 64 :=
.seq RemovedBody482_287 RemovedBody482_302

def RemovedBody482_304 : StackLang.HolProg 64 :=
.seq RemovedBody482_286 RemovedBody482_303

def RemovedBody482_305 : StackLang.HolProg 64 :=
.seq RemovedBody482_285 RemovedBody482_304

def RemovedBody482_306 : StackLang.HolProg 64 :=
.seq RemovedBody482_284 RemovedBody482_305

def RemovedBody482_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody482_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody482_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody482_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody482_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_315 : StackLang.HolProg 64 :=
.seq RemovedBody482_313 RemovedBody482_314

def RemovedBody482_316 : StackLang.HolProg 64 :=
.seq RemovedBody482_312 RemovedBody482_315

def RemovedBody482_317 : StackLang.HolProg 64 :=
.seq RemovedBody482_311 RemovedBody482_316

def RemovedBody482_318 : StackLang.HolProg 64 :=
.seq RemovedBody482_310 RemovedBody482_317

def RemovedBody482_319 : StackLang.HolProg 64 :=
.seq RemovedBody482_309 RemovedBody482_318

def RemovedBody482_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody482_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody482_322 : StackLang.HolProg 64 :=
.seq RemovedBody482_320 RemovedBody482_321

def RemovedBody482_323 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody482_324 : StackLang.HolProg 64 :=
.seq RemovedBody482_322 RemovedBody482_323

def RemovedBody482_325 : StackLang.HolProg 64 :=
.call (some (RemovedBody482_319, 0, 482, 6)) (Sum.inl 78) (some (RemovedBody482_324, 482, 7))

def RemovedBody482_326 : StackLang.HolProg 64 :=
.seq RemovedBody482_308 RemovedBody482_325

def RemovedBody482_327 : StackLang.HolProg 64 :=
.seq RemovedBody482_307 RemovedBody482_326

def RemovedBody482_328 : StackLang.HolProg 64 :=
.seq RemovedBody482_306 RemovedBody482_327

def RemovedBody482_329 : StackLang.HolProg 64 :=
.seq RemovedBody482_277 RemovedBody482_328

def RemovedBody482_330 : StackLang.HolProg 64 :=
.seq RemovedBody482_274 RemovedBody482_329

def RemovedBody482_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody482_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody482_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody482_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody482_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody482_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody482_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody482_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody482_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody482_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody482_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody482_343 : StackLang.HolProg 64 :=
.seq RemovedBody482_341 RemovedBody482_342

def RemovedBody482_344 : StackLang.HolProg 64 :=
.seq RemovedBody482_340 RemovedBody482_343

def RemovedBody482_345 : StackLang.HolProg 64 :=
.seq RemovedBody482_339 RemovedBody482_344

def RemovedBody482_346 : StackLang.HolProg 64 :=
.seq RemovedBody482_338 RemovedBody482_345

def RemovedBody482_347 : StackLang.HolProg 64 :=
.seq RemovedBody482_337 RemovedBody482_346

def RemovedBody482_348 : StackLang.HolProg 64 :=
.seq RemovedBody482_336 RemovedBody482_347

def RemovedBody482_349 : StackLang.HolProg 64 :=
.seq RemovedBody482_335 RemovedBody482_348

def RemovedBody482_350 : StackLang.HolProg 64 :=
.seq RemovedBody482_334 RemovedBody482_349

def RemovedBody482_351 : StackLang.HolProg 64 :=
.seq RemovedBody482_333 RemovedBody482_350

def RemovedBody482_352 : StackLang.HolProg 64 :=
.seq RemovedBody482_332 RemovedBody482_351

def RemovedBody482_353 : StackLang.HolProg 64 :=
.seq RemovedBody482_331 RemovedBody482_352

def RemovedBody482_354 : StackLang.HolProg 64 :=
.seq RemovedBody482_330 RemovedBody482_353

def RemovedBody482_355 : StackLang.HolProg 64 :=
.seq RemovedBody482_273 RemovedBody482_354

def RemovedBody482_356 : StackLang.HolProg 64 :=
.seq RemovedBody482_272 RemovedBody482_355

def RemovedBody482_357 : StackLang.HolProg 64 :=
.seq RemovedBody482_271 RemovedBody482_356

def RemovedBody482_358 : StackLang.HolProg 64 :=
.seq RemovedBody482_270 RemovedBody482_357

def RemovedBody482_359 : StackLang.HolProg 64 :=
.seq RemovedBody482_269 RemovedBody482_358

def RemovedBody482_360 : StackLang.HolProg 64 :=
.seq RemovedBody482_268 RemovedBody482_359

def RemovedBody482_361 : StackLang.HolProg 64 :=
.seq RemovedBody482_267 RemovedBody482_360

def RemovedBody482_362 : StackLang.HolProg 64 :=
.seq RemovedBody482_266 RemovedBody482_361

def RemovedBody482_363 : StackLang.HolProg 64 :=
.seq RemovedBody482_265 RemovedBody482_362

def RemovedBody482_364 : StackLang.HolProg 64 :=
.seq RemovedBody482_264 RemovedBody482_363

def RemovedBody482_365 : StackLang.HolProg 64 :=
.seq RemovedBody482_31 RemovedBody482_364

def RemovedBody482_366 : StackLang.HolProg 64 :=
.seq RemovedBody482_30 RemovedBody482_365

def RemovedBody482_367 : StackLang.HolProg 64 :=
.seq RemovedBody482_29 RemovedBody482_366

def RemovedBody482_368 : StackLang.HolProg 64 :=
.seq RemovedBody482_28 RemovedBody482_367

def RemovedBody482_369 : StackLang.HolProg 64 :=
.seq RemovedBody482_27 RemovedBody482_368

def RemovedBody482_370 : StackLang.HolProg 64 :=
.seq RemovedBody482_26 RemovedBody482_369

def RemovedBody482_371 : StackLang.HolProg 64 :=
.seq RemovedBody482_25 RemovedBody482_370

def RemovedBody482_372 : StackLang.HolProg 64 :=
.seq RemovedBody482_24 RemovedBody482_371

def RemovedBody482_373 : StackLang.HolProg 64 :=
.seq RemovedBody482_23 RemovedBody482_372

def RemovedBody482_374 : StackLang.HolProg 64 :=
.seq RemovedBody482_22 RemovedBody482_373

def RemovedBody482_375 : StackLang.HolProg 64 :=
.seq RemovedBody482_21 RemovedBody482_374

def RemovedBody482_376 : StackLang.HolProg 64 :=
.seq RemovedBody482_20 RemovedBody482_375

def RemovedBody482_377 : StackLang.HolProg 64 :=
.seq RemovedBody482_19 RemovedBody482_376

def RemovedBody482_378 : StackLang.HolProg 64 :=
.seq RemovedBody482_8 RemovedBody482_377

def RemovedBody482_379 : StackLang.HolProg 64 :=
.seq RemovedBody482_7 RemovedBody482_378

def RemovedBody482_380 : StackLang.HolProg 64 :=
.seq RemovedBody482_6 RemovedBody482_379

def Removed482 : Nat × StackLang.HolProg 64 := (482, RemovedBody482_380)
theorem Removed482_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc482 = Removed482 := by
  kernel_rfl
#print axioms Removed482_eq
end InitECandidate.Proofs.BackendStages
