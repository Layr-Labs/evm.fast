import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc672
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody672_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody672_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody672_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody672_3 : StackLang.HolProg 64 :=
.seq RemovedBody672_1 RemovedBody672_2

def RemovedBody672_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody672_3 RemovedBody672_4

def RemovedBody672_6 : StackLang.HolProg 64 :=
.seq RemovedBody672_0 RemovedBody672_5

def RemovedBody672_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def RemovedBody672_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody672_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody672_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody672_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody672_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody672_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody672_15 : StackLang.HolProg 64 :=
.seq RemovedBody672_13 RemovedBody672_14

def RemovedBody672_16 : StackLang.HolProg 64 :=
.seq RemovedBody672_12 RemovedBody672_15

def RemovedBody672_17 : StackLang.HolProg 64 :=
.seq RemovedBody672_11 RemovedBody672_16

def RemovedBody672_18 : StackLang.HolProg 64 :=
.seq RemovedBody672_10 RemovedBody672_17

def RemovedBody672_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody672_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody672_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody672_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody672_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody672_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody672_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody672_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody672_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody672_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody672_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody672_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody672_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody672_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 8#64))

def RemovedBody672_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody672_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 16#64))

def RemovedBody672_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 24#64))

def RemovedBody672_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody672_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody672_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody672_46 : StackLang.HolProg 64 :=
.seq RemovedBody672_44 RemovedBody672_45

def RemovedBody672_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 23
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody672_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody672_49 : StackLang.HolProg 64 :=
.seq RemovedBody672_47 RemovedBody672_48

def RemovedBody672_50 : StackLang.HolProg 64 :=
.seq RemovedBody672_46 RemovedBody672_49

def RemovedBody672_51 : StackLang.HolProg 64 :=
.seq RemovedBody672_43 RemovedBody672_50

def RemovedBody672_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2788#64)

def RemovedBody672_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody672_55 : StackLang.HolProg 64 :=
.seq RemovedBody672_53 RemovedBody672_54

def RemovedBody672_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody672_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody672_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody672_59 : StackLang.HolProg 64 :=
.seq RemovedBody672_57 RemovedBody672_58

def RemovedBody672_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_61 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody672_59 RemovedBody672_60

def RemovedBody672_62 : StackLang.HolProg 64 :=
.seq RemovedBody672_56 RemovedBody672_61

def RemovedBody672_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody672_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody672_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 672 3

def RemovedBody672_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody672_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody672_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody672_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody672_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody672_72 : StackLang.HolProg 64 :=
.seq RemovedBody672_70 RemovedBody672_71

def RemovedBody672_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody672_74 : StackLang.HolProg 64 :=
.seq RemovedBody672_72 RemovedBody672_73

def RemovedBody672_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody672_76 : StackLang.HolProg 64 :=
.seq RemovedBody672_74 RemovedBody672_75

def RemovedBody672_77 : StackLang.HolProg 64 :=
.seq RemovedBody672_69 RemovedBody672_76

def RemovedBody672_78 : StackLang.HolProg 64 :=
.seq RemovedBody672_68 RemovedBody672_77

def RemovedBody672_79 : StackLang.HolProg 64 :=
.seq RemovedBody672_67 RemovedBody672_78

def RemovedBody672_80 : StackLang.HolProg 64 :=
.seq RemovedBody672_66 RemovedBody672_79

def RemovedBody672_81 : StackLang.HolProg 64 :=
.seq RemovedBody672_65 RemovedBody672_80

def RemovedBody672_82 : StackLang.HolProg 64 :=
.seq RemovedBody672_64 RemovedBody672_81

def RemovedBody672_83 : StackLang.HolProg 64 :=
.seq RemovedBody672_63 RemovedBody672_82

def RemovedBody672_84 : StackLang.HolProg 64 :=
.seq RemovedBody672_62 RemovedBody672_83

def RemovedBody672_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody672_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody672_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody672_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody672_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody672_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody672_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody672_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody672_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody672_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody672_98 : StackLang.HolProg 64 :=
.seq RemovedBody672_96 RemovedBody672_97

def RemovedBody672_99 : StackLang.HolProg 64 :=
.seq RemovedBody672_95 RemovedBody672_98

def RemovedBody672_100 : StackLang.HolProg 64 :=
.seq RemovedBody672_94 RemovedBody672_99

def RemovedBody672_101 : StackLang.HolProg 64 :=
.seq RemovedBody672_93 RemovedBody672_100

def RemovedBody672_102 : StackLang.HolProg 64 :=
.seq RemovedBody672_92 RemovedBody672_101

def RemovedBody672_103 : StackLang.HolProg 64 :=
.seq RemovedBody672_91 RemovedBody672_102

def RemovedBody672_104 : StackLang.HolProg 64 :=
.seq RemovedBody672_90 RemovedBody672_103

def RemovedBody672_105 : StackLang.HolProg 64 :=
.seq RemovedBody672_89 RemovedBody672_104

def RemovedBody672_106 : StackLang.HolProg 64 :=
.seq RemovedBody672_88 RemovedBody672_105

def RemovedBody672_107 : StackLang.HolProg 64 :=
.seq RemovedBody672_87 RemovedBody672_106

def RemovedBody672_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody672_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody672_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody672_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody672_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody672_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody672_114 : StackLang.HolProg 64 :=
.seq RemovedBody672_112 RemovedBody672_113

def RemovedBody672_115 : StackLang.HolProg 64 :=
.seq RemovedBody672_111 RemovedBody672_114

def RemovedBody672_116 : StackLang.HolProg 64 :=
.seq RemovedBody672_110 RemovedBody672_115

def RemovedBody672_117 : StackLang.HolProg 64 :=
.seq RemovedBody672_109 RemovedBody672_116

def RemovedBody672_118 : StackLang.HolProg 64 :=
.seq RemovedBody672_108 RemovedBody672_117

def RemovedBody672_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody672_120 : StackLang.HolProg 64 :=
.seq RemovedBody672_118 RemovedBody672_119

def RemovedBody672_121 : StackLang.HolProg 64 :=
.call (some (RemovedBody672_107, 0, 672, 2)) (Sum.inl 658) (some (RemovedBody672_120, 672, 3))

def RemovedBody672_122 : StackLang.HolProg 64 :=
.seq RemovedBody672_86 RemovedBody672_121

def RemovedBody672_123 : StackLang.HolProg 64 :=
.seq RemovedBody672_85 RemovedBody672_122

def RemovedBody672_124 : StackLang.HolProg 64 :=
.seq RemovedBody672_84 RemovedBody672_123

def RemovedBody672_125 : StackLang.HolProg 64 :=
.seq RemovedBody672_55 RemovedBody672_124

def RemovedBody672_126 : StackLang.HolProg 64 :=
.seq RemovedBody672_52 RemovedBody672_125

def RemovedBody672_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody672_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody672_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody672_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody672_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody672_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody672_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody672_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody672_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody672_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody672_144 : StackLang.HolProg 64 :=
.seq RemovedBody672_142 RemovedBody672_143

def RemovedBody672_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody672_146 : StackLang.HolProg 64 :=
.seq RemovedBody672_144 RemovedBody672_145

def RemovedBody672_147 : StackLang.HolProg 64 :=
.seq RemovedBody672_141 RemovedBody672_146

def RemovedBody672_148 : StackLang.HolProg 64 :=
.seq RemovedBody672_140 RemovedBody672_147

def RemovedBody672_149 : StackLang.HolProg 64 :=
.seq RemovedBody672_139 RemovedBody672_148

def RemovedBody672_150 : StackLang.HolProg 64 :=
.seq RemovedBody672_138 RemovedBody672_149

def RemovedBody672_151 : StackLang.HolProg 64 :=
.seq RemovedBody672_137 RemovedBody672_150

def RemovedBody672_152 : StackLang.HolProg 64 :=
.seq RemovedBody672_136 RemovedBody672_151

def RemovedBody672_153 : StackLang.HolProg 64 :=
.seq RemovedBody672_135 RemovedBody672_152

def RemovedBody672_154 : StackLang.HolProg 64 :=
.seq RemovedBody672_134 RemovedBody672_153

def RemovedBody672_155 : StackLang.HolProg 64 :=
.seq RemovedBody672_133 RemovedBody672_154

def RemovedBody672_156 : StackLang.HolProg 64 :=
.seq RemovedBody672_132 RemovedBody672_155

def RemovedBody672_157 : StackLang.HolProg 64 :=
.seq RemovedBody672_131 RemovedBody672_156

def RemovedBody672_158 : StackLang.HolProg 64 :=
.seq RemovedBody672_130 RemovedBody672_157

def RemovedBody672_159 : StackLang.HolProg 64 :=
.seq RemovedBody672_129 RemovedBody672_158

def RemovedBody672_160 : StackLang.HolProg 64 :=
.seq RemovedBody672_128 RemovedBody672_159

def RemovedBody672_161 : StackLang.HolProg 64 :=
.seq RemovedBody672_127 RemovedBody672_160

def RemovedBody672_162 : StackLang.HolProg 64 :=
.seq RemovedBody672_126 RemovedBody672_161

def RemovedBody672_163 : StackLang.HolProg 64 :=
.seq RemovedBody672_51 RemovedBody672_162

def RemovedBody672_164 : StackLang.HolProg 64 :=
.seq RemovedBody672_42 RemovedBody672_163

def RemovedBody672_165 : StackLang.HolProg 64 :=
.seq RemovedBody672_41 RemovedBody672_164

def RemovedBody672_166 : StackLang.HolProg 64 :=
.seq RemovedBody672_40 RemovedBody672_165

def RemovedBody672_167 : StackLang.HolProg 64 :=
.seq RemovedBody672_39 RemovedBody672_166

def RemovedBody672_168 : StackLang.HolProg 64 :=
.seq RemovedBody672_38 RemovedBody672_167

def RemovedBody672_169 : StackLang.HolProg 64 :=
.seq RemovedBody672_37 RemovedBody672_168

def RemovedBody672_170 : StackLang.HolProg 64 :=
.seq RemovedBody672_36 RemovedBody672_169

def RemovedBody672_171 : StackLang.HolProg 64 :=
.seq RemovedBody672_35 RemovedBody672_170

def RemovedBody672_172 : StackLang.HolProg 64 :=
.seq RemovedBody672_34 RemovedBody672_171

def RemovedBody672_173 : StackLang.HolProg 64 :=
.seq RemovedBody672_33 RemovedBody672_172

def RemovedBody672_174 : StackLang.HolProg 64 :=
.seq RemovedBody672_32 RemovedBody672_173

def RemovedBody672_175 : StackLang.HolProg 64 :=
.seq RemovedBody672_31 RemovedBody672_174

def RemovedBody672_176 : StackLang.HolProg 64 :=
.seq RemovedBody672_30 RemovedBody672_175

def RemovedBody672_177 : StackLang.HolProg 64 :=
.seq RemovedBody672_29 RemovedBody672_176

def RemovedBody672_178 : StackLang.HolProg 64 :=
.seq RemovedBody672_28 RemovedBody672_177

def RemovedBody672_179 : StackLang.HolProg 64 :=
.seq RemovedBody672_27 RemovedBody672_178

def RemovedBody672_180 : StackLang.HolProg 64 :=
.seq RemovedBody672_26 RemovedBody672_179

def RemovedBody672_181 : StackLang.HolProg 64 :=
.seq RemovedBody672_25 RemovedBody672_180

def RemovedBody672_182 : StackLang.HolProg 64 :=
.seq RemovedBody672_24 RemovedBody672_181

def RemovedBody672_183 : StackLang.HolProg 64 :=
.seq RemovedBody672_23 RemovedBody672_182

def RemovedBody672_184 : StackLang.HolProg 64 :=
.seq RemovedBody672_22 RemovedBody672_183

def RemovedBody672_185 : StackLang.HolProg 64 :=
.seq RemovedBody672_21 RemovedBody672_184

def RemovedBody672_186 : StackLang.HolProg 64 :=
.seq RemovedBody672_20 RemovedBody672_185

def RemovedBody672_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody672_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody672_189 : StackLang.HolProg 64 :=
.seq RemovedBody672_187 RemovedBody672_188

def RemovedBody672_190 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody672_186 RemovedBody672_189

def RemovedBody672_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody672_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody672_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody672_194 : StackLang.HolProg 64 :=
.seq RemovedBody672_192 RemovedBody672_193

def RemovedBody672_195 : StackLang.HolProg 64 :=
.seq RemovedBody672_191 RemovedBody672_194

def RemovedBody672_196 : StackLang.HolProg 64 :=
.seq RemovedBody672_190 RemovedBody672_195

def RemovedBody672_197 : StackLang.HolProg 64 :=
.seq RemovedBody672_19 RemovedBody672_196

def RemovedBody672_198 : StackLang.HolProg 64 :=
.loop RemovedBody672_197

def RemovedBody672_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody672_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody672_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody672_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody672_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody672_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody672_205 : StackLang.HolProg 64 :=
.seq RemovedBody672_203 RemovedBody672_204

def RemovedBody672_206 : StackLang.HolProg 64 :=
.seq RemovedBody672_202 RemovedBody672_205

def RemovedBody672_207 : StackLang.HolProg 64 :=
.seq RemovedBody672_201 RemovedBody672_206

def RemovedBody672_208 : StackLang.HolProg 64 :=
.seq RemovedBody672_200 RemovedBody672_207

def RemovedBody672_209 : StackLang.HolProg 64 :=
.seq RemovedBody672_199 RemovedBody672_208

def RemovedBody672_210 : StackLang.HolProg 64 :=
.seq RemovedBody672_198 RemovedBody672_209

def RemovedBody672_211 : StackLang.HolProg 64 :=
.seq RemovedBody672_18 RemovedBody672_210

def RemovedBody672_212 : StackLang.HolProg 64 :=
.seq RemovedBody672_9 RemovedBody672_211

def RemovedBody672_213 : StackLang.HolProg 64 :=
.seq RemovedBody672_8 RemovedBody672_212

def RemovedBody672_214 : StackLang.HolProg 64 :=
.seq RemovedBody672_7 RemovedBody672_213

def RemovedBody672_215 : StackLang.HolProg 64 :=
.seq RemovedBody672_6 RemovedBody672_214

def Removed672 : Nat × StackLang.HolProg 64 := (672, RemovedBody672_215)
theorem Removed672_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc672 = Removed672 := by
  kernel_rfl
#print axioms Removed672_eq
end InitECandidate.Proofs.BackendStages
