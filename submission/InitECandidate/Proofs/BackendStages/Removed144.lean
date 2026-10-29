import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc144
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody144_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody144_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody144_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody144_3 : StackLang.HolProg 64 :=
.seq RemovedBody144_1 RemovedBody144_2

def RemovedBody144_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody144_3 RemovedBody144_4

def RemovedBody144_6 : StackLang.HolProg 64 :=
.seq RemovedBody144_0 RemovedBody144_5

def RemovedBody144_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody144_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def RemovedBody144_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody144_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody144_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody144_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody144_14 : StackLang.HolProg 64 :=
.seq RemovedBody144_12 RemovedBody144_13

def RemovedBody144_15 : StackLang.HolProg 64 :=
.seq RemovedBody144_11 RemovedBody144_14

def RemovedBody144_16 : StackLang.HolProg 64 :=
.seq RemovedBody144_10 RemovedBody144_15

def RemovedBody144_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody144_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody144_19 : StackLang.HolProg 64 :=
.seq RemovedBody144_17 RemovedBody144_18

def RemovedBody144_20 : StackLang.HolProg 64 :=
.seq RemovedBody144_16 RemovedBody144_19

def RemovedBody144_21 : StackLang.HolProg 64 :=
.seq RemovedBody144_9 RemovedBody144_20

def RemovedBody144_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody144_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody144_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody144_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody144_26 : StackLang.HolProg 64 :=
.seq RemovedBody144_24 RemovedBody144_25

def RemovedBody144_27 : StackLang.HolProg 64 :=
.seq RemovedBody144_23 RemovedBody144_26

def RemovedBody144_28 : StackLang.HolProg 64 :=
.seq RemovedBody144_22 RemovedBody144_27

def RemovedBody144_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody144_21 RemovedBody144_28

def RemovedBody144_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody144_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody144_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody144_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody144_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody144_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def RemovedBody144_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody144_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody144_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody144_45 : StackLang.HolProg 64 :=
.seq RemovedBody144_43 RemovedBody144_44

def RemovedBody144_46 : StackLang.HolProg 64 :=
.seq RemovedBody144_42 RemovedBody144_45

def RemovedBody144_47 : StackLang.HolProg 64 :=
.seq RemovedBody144_41 RemovedBody144_46

def RemovedBody144_48 : StackLang.HolProg 64 :=
.seq RemovedBody144_40 RemovedBody144_47

def RemovedBody144_49 : StackLang.HolProg 64 :=
.seq RemovedBody144_39 RemovedBody144_48

def RemovedBody144_50 : StackLang.HolProg 64 :=
.seq RemovedBody144_38 RemovedBody144_49

def RemovedBody144_51 : StackLang.HolProg 64 :=
.seq RemovedBody144_37 RemovedBody144_50

def RemovedBody144_52 : StackLang.HolProg 64 :=
.seq RemovedBody144_36 RemovedBody144_51

def RemovedBody144_53 : StackLang.HolProg 64 :=
.seq RemovedBody144_35 RemovedBody144_52

def RemovedBody144_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 108#64)

def RemovedBody144_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody144_57 : StackLang.HolProg 64 :=
.seq RemovedBody144_55 RemovedBody144_56

def RemovedBody144_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody144_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody144_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody144_61 : StackLang.HolProg 64 :=
.seq RemovedBody144_59 RemovedBody144_60

def RemovedBody144_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody144_61 RemovedBody144_62

def RemovedBody144_64 : StackLang.HolProg 64 :=
.seq RemovedBody144_58 RemovedBody144_63

def RemovedBody144_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody144_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody144_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 3

def RemovedBody144_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody144_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody144_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody144_74 : StackLang.HolProg 64 :=
.seq RemovedBody144_72 RemovedBody144_73

def RemovedBody144_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody144_76 : StackLang.HolProg 64 :=
.seq RemovedBody144_74 RemovedBody144_75

def RemovedBody144_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_78 : StackLang.HolProg 64 :=
.seq RemovedBody144_76 RemovedBody144_77

def RemovedBody144_79 : StackLang.HolProg 64 :=
.seq RemovedBody144_71 RemovedBody144_78

def RemovedBody144_80 : StackLang.HolProg 64 :=
.seq RemovedBody144_70 RemovedBody144_79

def RemovedBody144_81 : StackLang.HolProg 64 :=
.seq RemovedBody144_69 RemovedBody144_80

def RemovedBody144_82 : StackLang.HolProg 64 :=
.seq RemovedBody144_68 RemovedBody144_81

def RemovedBody144_83 : StackLang.HolProg 64 :=
.seq RemovedBody144_67 RemovedBody144_82

def RemovedBody144_84 : StackLang.HolProg 64 :=
.seq RemovedBody144_66 RemovedBody144_83

def RemovedBody144_85 : StackLang.HolProg 64 :=
.seq RemovedBody144_65 RemovedBody144_84

def RemovedBody144_86 : StackLang.HolProg 64 :=
.seq RemovedBody144_64 RemovedBody144_85

def RemovedBody144_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody144_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody144_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_97 : StackLang.HolProg 64 :=
.seq RemovedBody144_95 RemovedBody144_96

def RemovedBody144_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_100 : StackLang.HolProg 64 :=
.seq RemovedBody144_98 RemovedBody144_99

def RemovedBody144_101 : StackLang.HolProg 64 :=
.seq RemovedBody144_97 RemovedBody144_100

def RemovedBody144_102 : StackLang.HolProg 64 :=
.seq RemovedBody144_94 RemovedBody144_101

def RemovedBody144_103 : StackLang.HolProg 64 :=
.seq RemovedBody144_93 RemovedBody144_102

def RemovedBody144_104 : StackLang.HolProg 64 :=
.seq RemovedBody144_92 RemovedBody144_103

def RemovedBody144_105 : StackLang.HolProg 64 :=
.seq RemovedBody144_91 RemovedBody144_104

def RemovedBody144_106 : StackLang.HolProg 64 :=
.seq RemovedBody144_90 RemovedBody144_105

def RemovedBody144_107 : StackLang.HolProg 64 :=
.seq RemovedBody144_89 RemovedBody144_106

def RemovedBody144_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_111 : StackLang.HolProg 64 :=
.seq RemovedBody144_109 RemovedBody144_110

def RemovedBody144_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_114 : StackLang.HolProg 64 :=
.seq RemovedBody144_112 RemovedBody144_113

def RemovedBody144_115 : StackLang.HolProg 64 :=
.seq RemovedBody144_111 RemovedBody144_114

def RemovedBody144_116 : StackLang.HolProg 64 :=
.seq RemovedBody144_108 RemovedBody144_115

def RemovedBody144_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody144_118 : StackLang.HolProg 64 :=
.seq RemovedBody144_116 RemovedBody144_117

def RemovedBody144_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody144_107, 0, 144, 2)) (Sum.inl 104) (some (RemovedBody144_118, 144, 3))

def RemovedBody144_120 : StackLang.HolProg 64 :=
.seq RemovedBody144_88 RemovedBody144_119

def RemovedBody144_121 : StackLang.HolProg 64 :=
.seq RemovedBody144_87 RemovedBody144_120

def RemovedBody144_122 : StackLang.HolProg 64 :=
.seq RemovedBody144_86 RemovedBody144_121

def RemovedBody144_123 : StackLang.HolProg 64 :=
.seq RemovedBody144_57 RemovedBody144_122

def RemovedBody144_124 : StackLang.HolProg 64 :=
.seq RemovedBody144_54 RemovedBody144_123

def RemovedBody144_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody144_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def RemovedBody144_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def RemovedBody144_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def RemovedBody144_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody144_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 109#64)

def RemovedBody144_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody144_136 : StackLang.HolProg 64 :=
.seq RemovedBody144_134 RemovedBody144_135

def RemovedBody144_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody144_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody144_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody144_140 : StackLang.HolProg 64 :=
.seq RemovedBody144_138 RemovedBody144_139

def RemovedBody144_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody144_140 RemovedBody144_141

def RemovedBody144_143 : StackLang.HolProg 64 :=
.seq RemovedBody144_137 RemovedBody144_142

def RemovedBody144_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody144_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody144_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 5

def RemovedBody144_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody144_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody144_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody144_153 : StackLang.HolProg 64 :=
.seq RemovedBody144_151 RemovedBody144_152

def RemovedBody144_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody144_155 : StackLang.HolProg 64 :=
.seq RemovedBody144_153 RemovedBody144_154

def RemovedBody144_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_157 : StackLang.HolProg 64 :=
.seq RemovedBody144_155 RemovedBody144_156

def RemovedBody144_158 : StackLang.HolProg 64 :=
.seq RemovedBody144_150 RemovedBody144_157

def RemovedBody144_159 : StackLang.HolProg 64 :=
.seq RemovedBody144_149 RemovedBody144_158

def RemovedBody144_160 : StackLang.HolProg 64 :=
.seq RemovedBody144_148 RemovedBody144_159

def RemovedBody144_161 : StackLang.HolProg 64 :=
.seq RemovedBody144_147 RemovedBody144_160

def RemovedBody144_162 : StackLang.HolProg 64 :=
.seq RemovedBody144_146 RemovedBody144_161

def RemovedBody144_163 : StackLang.HolProg 64 :=
.seq RemovedBody144_145 RemovedBody144_162

def RemovedBody144_164 : StackLang.HolProg 64 :=
.seq RemovedBody144_144 RemovedBody144_163

def RemovedBody144_165 : StackLang.HolProg 64 :=
.seq RemovedBody144_143 RemovedBody144_164

def RemovedBody144_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody144_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody144_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody144_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody144_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody144_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody144_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody144_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_180 : StackLang.HolProg 64 :=
.seq RemovedBody144_178 RemovedBody144_179

def RemovedBody144_181 : StackLang.HolProg 64 :=
.seq RemovedBody144_177 RemovedBody144_180

def RemovedBody144_182 : StackLang.HolProg 64 :=
.seq RemovedBody144_176 RemovedBody144_181

def RemovedBody144_183 : StackLang.HolProg 64 :=
.seq RemovedBody144_175 RemovedBody144_182

def RemovedBody144_184 : StackLang.HolProg 64 :=
.seq RemovedBody144_174 RemovedBody144_183

def RemovedBody144_185 : StackLang.HolProg 64 :=
.seq RemovedBody144_173 RemovedBody144_184

def RemovedBody144_186 : StackLang.HolProg 64 :=
.seq RemovedBody144_172 RemovedBody144_185

def RemovedBody144_187 : StackLang.HolProg 64 :=
.seq RemovedBody144_171 RemovedBody144_186

def RemovedBody144_188 : StackLang.HolProg 64 :=
.seq RemovedBody144_170 RemovedBody144_187

def RemovedBody144_189 : StackLang.HolProg 64 :=
.seq RemovedBody144_169 RemovedBody144_188

def RemovedBody144_190 : StackLang.HolProg 64 :=
.seq RemovedBody144_168 RemovedBody144_189

def RemovedBody144_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody144_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody144_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_195 : StackLang.HolProg 64 :=
.seq RemovedBody144_193 RemovedBody144_194

def RemovedBody144_196 : StackLang.HolProg 64 :=
.seq RemovedBody144_192 RemovedBody144_195

def RemovedBody144_197 : StackLang.HolProg 64 :=
.seq RemovedBody144_191 RemovedBody144_196

def RemovedBody144_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody144_199 : StackLang.HolProg 64 :=
.seq RemovedBody144_197 RemovedBody144_198

def RemovedBody144_200 : StackLang.HolProg 64 :=
.call (some (RemovedBody144_190, 0, 144, 4)) (Sum.inl 141) (some (RemovedBody144_199, 144, 5))

def RemovedBody144_201 : StackLang.HolProg 64 :=
.seq RemovedBody144_167 RemovedBody144_200

def RemovedBody144_202 : StackLang.HolProg 64 :=
.seq RemovedBody144_166 RemovedBody144_201

def RemovedBody144_203 : StackLang.HolProg 64 :=
.seq RemovedBody144_165 RemovedBody144_202

def RemovedBody144_204 : StackLang.HolProg 64 :=
.seq RemovedBody144_136 RemovedBody144_203

def RemovedBody144_205 : StackLang.HolProg 64 :=
.seq RemovedBody144_133 RemovedBody144_204

def RemovedBody144_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody144_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody144_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_214 : StackLang.HolProg 64 :=
.seq RemovedBody144_212 RemovedBody144_213

def RemovedBody144_215 : StackLang.HolProg 64 :=
.seq RemovedBody144_211 RemovedBody144_214

def RemovedBody144_216 : StackLang.HolProg 64 :=
.seq RemovedBody144_210 RemovedBody144_215

def RemovedBody144_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody144_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 113

def RemovedBody144_220 : StackLang.HolProg 64 :=
.seq RemovedBody144_218 RemovedBody144_219

def RemovedBody144_221 : StackLang.HolProg 64 :=
.seq RemovedBody144_217 RemovedBody144_220

def RemovedBody144_222 : StackLang.HolProg 64 :=
.seq RemovedBody144_216 RemovedBody144_221

def RemovedBody144_223 : StackLang.HolProg 64 :=
.seq RemovedBody144_209 RemovedBody144_222

def RemovedBody144_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_225 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody144_223 RemovedBody144_224

def RemovedBody144_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody144_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody144_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody144_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody144_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody144_233 : StackLang.HolProg 64 :=
.seq RemovedBody144_231 RemovedBody144_232

def RemovedBody144_234 : StackLang.HolProg 64 :=
.seq RemovedBody144_230 RemovedBody144_233

def RemovedBody144_235 : StackLang.HolProg 64 :=
.seq RemovedBody144_229 RemovedBody144_234

def RemovedBody144_236 : StackLang.HolProg 64 :=
.seq RemovedBody144_228 RemovedBody144_235

def RemovedBody144_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 110#64)

def RemovedBody144_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody144_240 : StackLang.HolProg 64 :=
.seq RemovedBody144_238 RemovedBody144_239

def RemovedBody144_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody144_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody144_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody144_244 : StackLang.HolProg 64 :=
.seq RemovedBody144_242 RemovedBody144_243

def RemovedBody144_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_246 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody144_244 RemovedBody144_245

def RemovedBody144_247 : StackLang.HolProg 64 :=
.seq RemovedBody144_241 RemovedBody144_246

def RemovedBody144_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody144_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody144_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 144 7

def RemovedBody144_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody144_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody144_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody144_257 : StackLang.HolProg 64 :=
.seq RemovedBody144_255 RemovedBody144_256

def RemovedBody144_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody144_259 : StackLang.HolProg 64 :=
.seq RemovedBody144_257 RemovedBody144_258

def RemovedBody144_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_261 : StackLang.HolProg 64 :=
.seq RemovedBody144_259 RemovedBody144_260

def RemovedBody144_262 : StackLang.HolProg 64 :=
.seq RemovedBody144_254 RemovedBody144_261

def RemovedBody144_263 : StackLang.HolProg 64 :=
.seq RemovedBody144_253 RemovedBody144_262

def RemovedBody144_264 : StackLang.HolProg 64 :=
.seq RemovedBody144_252 RemovedBody144_263

def RemovedBody144_265 : StackLang.HolProg 64 :=
.seq RemovedBody144_251 RemovedBody144_264

def RemovedBody144_266 : StackLang.HolProg 64 :=
.seq RemovedBody144_250 RemovedBody144_265

def RemovedBody144_267 : StackLang.HolProg 64 :=
.seq RemovedBody144_249 RemovedBody144_266

def RemovedBody144_268 : StackLang.HolProg 64 :=
.seq RemovedBody144_248 RemovedBody144_267

def RemovedBody144_269 : StackLang.HolProg 64 :=
.seq RemovedBody144_247 RemovedBody144_268

def RemovedBody144_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody144_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody144_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody144_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody144_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody144_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody144_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody144_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody144_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_285 : StackLang.HolProg 64 :=
.seq RemovedBody144_283 RemovedBody144_284

def RemovedBody144_286 : StackLang.HolProg 64 :=
.seq RemovedBody144_282 RemovedBody144_285

def RemovedBody144_287 : StackLang.HolProg 64 :=
.seq RemovedBody144_281 RemovedBody144_286

def RemovedBody144_288 : StackLang.HolProg 64 :=
.seq RemovedBody144_280 RemovedBody144_287

def RemovedBody144_289 : StackLang.HolProg 64 :=
.seq RemovedBody144_279 RemovedBody144_288

def RemovedBody144_290 : StackLang.HolProg 64 :=
.seq RemovedBody144_278 RemovedBody144_289

def RemovedBody144_291 : StackLang.HolProg 64 :=
.seq RemovedBody144_277 RemovedBody144_290

def RemovedBody144_292 : StackLang.HolProg 64 :=
.seq RemovedBody144_276 RemovedBody144_291

def RemovedBody144_293 : StackLang.HolProg 64 :=
.seq RemovedBody144_275 RemovedBody144_292

def RemovedBody144_294 : StackLang.HolProg 64 :=
.seq RemovedBody144_274 RemovedBody144_293

def RemovedBody144_295 : StackLang.HolProg 64 :=
.seq RemovedBody144_273 RemovedBody144_294

def RemovedBody144_296 : StackLang.HolProg 64 :=
.seq RemovedBody144_272 RemovedBody144_295

def RemovedBody144_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody144_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody144_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody144_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody144_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody144_302 : StackLang.HolProg 64 :=
.seq RemovedBody144_300 RemovedBody144_301

def RemovedBody144_303 : StackLang.HolProg 64 :=
.seq RemovedBody144_299 RemovedBody144_302

def RemovedBody144_304 : StackLang.HolProg 64 :=
.seq RemovedBody144_298 RemovedBody144_303

def RemovedBody144_305 : StackLang.HolProg 64 :=
.seq RemovedBody144_297 RemovedBody144_304

def RemovedBody144_306 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody144_307 : StackLang.HolProg 64 :=
.seq RemovedBody144_305 RemovedBody144_306

def RemovedBody144_308 : StackLang.HolProg 64 :=
.call (some (RemovedBody144_296, 0, 144, 6)) (Sum.inl 111) (some (RemovedBody144_307, 144, 7))

def RemovedBody144_309 : StackLang.HolProg 64 :=
.seq RemovedBody144_271 RemovedBody144_308

def RemovedBody144_310 : StackLang.HolProg 64 :=
.seq RemovedBody144_270 RemovedBody144_309

def RemovedBody144_311 : StackLang.HolProg 64 :=
.seq RemovedBody144_269 RemovedBody144_310

def RemovedBody144_312 : StackLang.HolProg 64 :=
.seq RemovedBody144_240 RemovedBody144_311

def RemovedBody144_313 : StackLang.HolProg 64 :=
.seq RemovedBody144_237 RemovedBody144_312

def RemovedBody144_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody144_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody144_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody144_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody144_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 112

def RemovedBody144_319 : StackLang.HolProg 64 :=
.seq RemovedBody144_317 RemovedBody144_318

def RemovedBody144_320 : StackLang.HolProg 64 :=
.seq RemovedBody144_316 RemovedBody144_319

def RemovedBody144_321 : StackLang.HolProg 64 :=
.seq RemovedBody144_315 RemovedBody144_320

def RemovedBody144_322 : StackLang.HolProg 64 :=
.seq RemovedBody144_314 RemovedBody144_321

def RemovedBody144_323 : StackLang.HolProg 64 :=
.seq RemovedBody144_313 RemovedBody144_322

def RemovedBody144_324 : StackLang.HolProg 64 :=
.seq RemovedBody144_236 RemovedBody144_323

def RemovedBody144_325 : StackLang.HolProg 64 :=
.seq RemovedBody144_227 RemovedBody144_324

def RemovedBody144_326 : StackLang.HolProg 64 :=
.seq RemovedBody144_226 RemovedBody144_325

def RemovedBody144_327 : StackLang.HolProg 64 :=
.seq RemovedBody144_225 RemovedBody144_326

def RemovedBody144_328 : StackLang.HolProg 64 :=
.seq RemovedBody144_208 RemovedBody144_327

def RemovedBody144_329 : StackLang.HolProg 64 :=
.seq RemovedBody144_207 RemovedBody144_328

def RemovedBody144_330 : StackLang.HolProg 64 :=
.seq RemovedBody144_206 RemovedBody144_329

def RemovedBody144_331 : StackLang.HolProg 64 :=
.seq RemovedBody144_205 RemovedBody144_330

def RemovedBody144_332 : StackLang.HolProg 64 :=
.seq RemovedBody144_132 RemovedBody144_331

def RemovedBody144_333 : StackLang.HolProg 64 :=
.seq RemovedBody144_131 RemovedBody144_332

def RemovedBody144_334 : StackLang.HolProg 64 :=
.seq RemovedBody144_130 RemovedBody144_333

def RemovedBody144_335 : StackLang.HolProg 64 :=
.seq RemovedBody144_129 RemovedBody144_334

def RemovedBody144_336 : StackLang.HolProg 64 :=
.seq RemovedBody144_128 RemovedBody144_335

def RemovedBody144_337 : StackLang.HolProg 64 :=
.seq RemovedBody144_127 RemovedBody144_336

def RemovedBody144_338 : StackLang.HolProg 64 :=
.seq RemovedBody144_126 RemovedBody144_337

def RemovedBody144_339 : StackLang.HolProg 64 :=
.seq RemovedBody144_125 RemovedBody144_338

def RemovedBody144_340 : StackLang.HolProg 64 :=
.seq RemovedBody144_124 RemovedBody144_339

def RemovedBody144_341 : StackLang.HolProg 64 :=
.seq RemovedBody144_53 RemovedBody144_340

def RemovedBody144_342 : StackLang.HolProg 64 :=
.seq RemovedBody144_34 RemovedBody144_341

def RemovedBody144_343 : StackLang.HolProg 64 :=
.seq RemovedBody144_33 RemovedBody144_342

def RemovedBody144_344 : StackLang.HolProg 64 :=
.seq RemovedBody144_32 RemovedBody144_343

def RemovedBody144_345 : StackLang.HolProg 64 :=
.seq RemovedBody144_31 RemovedBody144_344

def RemovedBody144_346 : StackLang.HolProg 64 :=
.seq RemovedBody144_30 RemovedBody144_345

def RemovedBody144_347 : StackLang.HolProg 64 :=
.seq RemovedBody144_29 RemovedBody144_346

def RemovedBody144_348 : StackLang.HolProg 64 :=
.seq RemovedBody144_8 RemovedBody144_347

def RemovedBody144_349 : StackLang.HolProg 64 :=
.seq RemovedBody144_7 RemovedBody144_348

def RemovedBody144_350 : StackLang.HolProg 64 :=
.seq RemovedBody144_6 RemovedBody144_349

def Removed144 : Nat × StackLang.HolProg 64 := (144, RemovedBody144_350)
theorem Removed144_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc144 = Removed144 := by
  kernel_rfl
#print axioms Removed144_eq
end InitECandidate.Proofs.BackendStages
