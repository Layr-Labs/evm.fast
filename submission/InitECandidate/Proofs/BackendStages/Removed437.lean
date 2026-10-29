import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc437
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody437_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody437_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody437_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody437_3 : StackLang.HolProg 64 :=
.seq RemovedBody437_1 RemovedBody437_2

def RemovedBody437_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody437_3 RemovedBody437_4

def RemovedBody437_6 : StackLang.HolProg 64 :=
.seq RemovedBody437_0 RemovedBody437_5

def RemovedBody437_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody437_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody437_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody437_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def RemovedBody437_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody437_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody437_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 23 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody437_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody437_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody437_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 23
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 23)))

def RemovedBody437_18 : StackLang.HolProg 64 :=
.seq RemovedBody437_16 RemovedBody437_17

def RemovedBody437_19 : StackLang.HolProg 64 :=
.seq RemovedBody437_15 RemovedBody437_18

def RemovedBody437_20 : StackLang.HolProg 64 :=
.seq RemovedBody437_14 RemovedBody437_19

def RemovedBody437_21 : StackLang.HolProg 64 :=
.seq RemovedBody437_13 RemovedBody437_20

def RemovedBody437_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody437_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody437_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody437_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody437_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_28 : StackLang.HolProg 64 :=
.seq RemovedBody437_26 RemovedBody437_27

def RemovedBody437_29 : StackLang.HolProg 64 :=
.seq RemovedBody437_25 RemovedBody437_28

def RemovedBody437_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1317#64)

def RemovedBody437_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody437_33 : StackLang.HolProg 64 :=
.seq RemovedBody437_31 RemovedBody437_32

def RemovedBody437_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody437_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody437_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody437_37 : StackLang.HolProg 64 :=
.seq RemovedBody437_35 RemovedBody437_36

def RemovedBody437_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_39 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody437_37 RemovedBody437_38

def RemovedBody437_40 : StackLang.HolProg 64 :=
.seq RemovedBody437_34 RemovedBody437_39

def RemovedBody437_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody437_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody437_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 437 3

def RemovedBody437_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody437_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody437_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody437_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody437_50 : StackLang.HolProg 64 :=
.seq RemovedBody437_48 RemovedBody437_49

def RemovedBody437_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody437_52 : StackLang.HolProg 64 :=
.seq RemovedBody437_50 RemovedBody437_51

def RemovedBody437_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody437_54 : StackLang.HolProg 64 :=
.seq RemovedBody437_52 RemovedBody437_53

def RemovedBody437_55 : StackLang.HolProg 64 :=
.seq RemovedBody437_47 RemovedBody437_54

def RemovedBody437_56 : StackLang.HolProg 64 :=
.seq RemovedBody437_46 RemovedBody437_55

def RemovedBody437_57 : StackLang.HolProg 64 :=
.seq RemovedBody437_45 RemovedBody437_56

def RemovedBody437_58 : StackLang.HolProg 64 :=
.seq RemovedBody437_44 RemovedBody437_57

def RemovedBody437_59 : StackLang.HolProg 64 :=
.seq RemovedBody437_43 RemovedBody437_58

def RemovedBody437_60 : StackLang.HolProg 64 :=
.seq RemovedBody437_42 RemovedBody437_59

def RemovedBody437_61 : StackLang.HolProg 64 :=
.seq RemovedBody437_41 RemovedBody437_60

def RemovedBody437_62 : StackLang.HolProg 64 :=
.seq RemovedBody437_40 RemovedBody437_61

def RemovedBody437_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody437_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody437_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody437_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody437_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody437_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_73 : StackLang.HolProg 64 :=
.seq RemovedBody437_71 RemovedBody437_72

def RemovedBody437_74 : StackLang.HolProg 64 :=
.seq RemovedBody437_70 RemovedBody437_73

def RemovedBody437_75 : StackLang.HolProg 64 :=
.seq RemovedBody437_69 RemovedBody437_74

def RemovedBody437_76 : StackLang.HolProg 64 :=
.seq RemovedBody437_68 RemovedBody437_75

def RemovedBody437_77 : StackLang.HolProg 64 :=
.seq RemovedBody437_67 RemovedBody437_76

def RemovedBody437_78 : StackLang.HolProg 64 :=
.seq RemovedBody437_66 RemovedBody437_77

def RemovedBody437_79 : StackLang.HolProg 64 :=
.seq RemovedBody437_65 RemovedBody437_78

def RemovedBody437_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody437_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody437_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_83 : StackLang.HolProg 64 :=
.seq RemovedBody437_81 RemovedBody437_82

def RemovedBody437_84 : StackLang.HolProg 64 :=
.seq RemovedBody437_80 RemovedBody437_83

def RemovedBody437_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody437_86 : StackLang.HolProg 64 :=
.seq RemovedBody437_84 RemovedBody437_85

def RemovedBody437_87 : StackLang.HolProg 64 :=
.call (some (RemovedBody437_79, 0, 437, 2)) (Sum.inl 68) (some (RemovedBody437_86, 437, 3))

def RemovedBody437_88 : StackLang.HolProg 64 :=
.seq RemovedBody437_64 RemovedBody437_87

def RemovedBody437_89 : StackLang.HolProg 64 :=
.seq RemovedBody437_63 RemovedBody437_88

def RemovedBody437_90 : StackLang.HolProg 64 :=
.seq RemovedBody437_62 RemovedBody437_89

def RemovedBody437_91 : StackLang.HolProg 64 :=
.seq RemovedBody437_33 RemovedBody437_90

def RemovedBody437_92 : StackLang.HolProg 64 :=
.seq RemovedBody437_30 RemovedBody437_91

def RemovedBody437_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody437_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody437_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody437_96 : StackLang.HolProg 64 :=
.seq RemovedBody437_94 RemovedBody437_95

def RemovedBody437_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody437_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody437_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody437_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody437_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody437_103 : StackLang.HolProg 64 :=
.seq RemovedBody437_101 RemovedBody437_102

def RemovedBody437_104 : StackLang.HolProg 64 :=
.seq RemovedBody437_100 RemovedBody437_103

def RemovedBody437_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1318#64)

def RemovedBody437_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody437_108 : StackLang.HolProg 64 :=
.seq RemovedBody437_106 RemovedBody437_107

def RemovedBody437_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody437_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody437_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody437_112 : StackLang.HolProg 64 :=
.seq RemovedBody437_110 RemovedBody437_111

def RemovedBody437_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_114 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody437_112 RemovedBody437_113

def RemovedBody437_115 : StackLang.HolProg 64 :=
.seq RemovedBody437_109 RemovedBody437_114

def RemovedBody437_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody437_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody437_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 437 5

def RemovedBody437_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody437_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody437_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody437_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody437_125 : StackLang.HolProg 64 :=
.seq RemovedBody437_123 RemovedBody437_124

def RemovedBody437_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody437_127 : StackLang.HolProg 64 :=
.seq RemovedBody437_125 RemovedBody437_126

def RemovedBody437_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody437_129 : StackLang.HolProg 64 :=
.seq RemovedBody437_127 RemovedBody437_128

def RemovedBody437_130 : StackLang.HolProg 64 :=
.seq RemovedBody437_122 RemovedBody437_129

def RemovedBody437_131 : StackLang.HolProg 64 :=
.seq RemovedBody437_121 RemovedBody437_130

def RemovedBody437_132 : StackLang.HolProg 64 :=
.seq RemovedBody437_120 RemovedBody437_131

def RemovedBody437_133 : StackLang.HolProg 64 :=
.seq RemovedBody437_119 RemovedBody437_132

def RemovedBody437_134 : StackLang.HolProg 64 :=
.seq RemovedBody437_118 RemovedBody437_133

def RemovedBody437_135 : StackLang.HolProg 64 :=
.seq RemovedBody437_117 RemovedBody437_134

def RemovedBody437_136 : StackLang.HolProg 64 :=
.seq RemovedBody437_116 RemovedBody437_135

def RemovedBody437_137 : StackLang.HolProg 64 :=
.seq RemovedBody437_115 RemovedBody437_136

def RemovedBody437_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody437_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody437_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody437_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody437_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody437_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody437_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody437_150 : StackLang.HolProg 64 :=
.seq RemovedBody437_148 RemovedBody437_149

def RemovedBody437_151 : StackLang.HolProg 64 :=
.seq RemovedBody437_147 RemovedBody437_150

def RemovedBody437_152 : StackLang.HolProg 64 :=
.seq RemovedBody437_146 RemovedBody437_151

def RemovedBody437_153 : StackLang.HolProg 64 :=
.seq RemovedBody437_145 RemovedBody437_152

def RemovedBody437_154 : StackLang.HolProg 64 :=
.seq RemovedBody437_144 RemovedBody437_153

def RemovedBody437_155 : StackLang.HolProg 64 :=
.seq RemovedBody437_143 RemovedBody437_154

def RemovedBody437_156 : StackLang.HolProg 64 :=
.seq RemovedBody437_142 RemovedBody437_155

def RemovedBody437_157 : StackLang.HolProg 64 :=
.seq RemovedBody437_141 RemovedBody437_156

def RemovedBody437_158 : StackLang.HolProg 64 :=
.seq RemovedBody437_140 RemovedBody437_157

def RemovedBody437_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody437_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody437_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody437_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody437_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody437_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody437_165 : StackLang.HolProg 64 :=
.seq RemovedBody437_163 RemovedBody437_164

def RemovedBody437_166 : StackLang.HolProg 64 :=
.seq RemovedBody437_162 RemovedBody437_165

def RemovedBody437_167 : StackLang.HolProg 64 :=
.seq RemovedBody437_161 RemovedBody437_166

def RemovedBody437_168 : StackLang.HolProg 64 :=
.seq RemovedBody437_160 RemovedBody437_167

def RemovedBody437_169 : StackLang.HolProg 64 :=
.seq RemovedBody437_159 RemovedBody437_168

def RemovedBody437_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody437_171 : StackLang.HolProg 64 :=
.seq RemovedBody437_169 RemovedBody437_170

def RemovedBody437_172 : StackLang.HolProg 64 :=
.call (some (RemovedBody437_158, 0, 437, 4)) (Sum.inl 77) (some (RemovedBody437_171, 437, 5))

def RemovedBody437_173 : StackLang.HolProg 64 :=
.seq RemovedBody437_139 RemovedBody437_172

def RemovedBody437_174 : StackLang.HolProg 64 :=
.seq RemovedBody437_138 RemovedBody437_173

def RemovedBody437_175 : StackLang.HolProg 64 :=
.seq RemovedBody437_137 RemovedBody437_174

def RemovedBody437_176 : StackLang.HolProg 64 :=
.seq RemovedBody437_108 RemovedBody437_175

def RemovedBody437_177 : StackLang.HolProg 64 :=
.seq RemovedBody437_105 RemovedBody437_176

def RemovedBody437_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody437_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody437_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody437_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody437_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody437_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_188 : StackLang.HolProg 64 :=
.seq RemovedBody437_186 RemovedBody437_187

def RemovedBody437_189 : StackLang.HolProg 64 :=
.seq RemovedBody437_185 RemovedBody437_188

def RemovedBody437_190 : StackLang.HolProg 64 :=
.seq RemovedBody437_184 RemovedBody437_189

def RemovedBody437_191 : StackLang.HolProg 64 :=
.seq RemovedBody437_183 RemovedBody437_190

def RemovedBody437_192 : StackLang.HolProg 64 :=
.seq RemovedBody437_182 RemovedBody437_191

def RemovedBody437_193 : StackLang.HolProg 64 :=
.seq RemovedBody437_181 RemovedBody437_192

def RemovedBody437_194 : StackLang.HolProg 64 :=
.seq RemovedBody437_180 RemovedBody437_193

def RemovedBody437_195 : StackLang.HolProg 64 :=
.seq RemovedBody437_179 RemovedBody437_194

def RemovedBody437_196 : StackLang.HolProg 64 :=
.seq RemovedBody437_178 RemovedBody437_195

def RemovedBody437_197 : StackLang.HolProg 64 :=
.seq RemovedBody437_177 RemovedBody437_196

def RemovedBody437_198 : StackLang.HolProg 64 :=
.seq RemovedBody437_104 RemovedBody437_197

def RemovedBody437_199 : StackLang.HolProg 64 :=
.seq RemovedBody437_99 RemovedBody437_198

def RemovedBody437_200 : StackLang.HolProg 64 :=
.seq RemovedBody437_98 RemovedBody437_199

def RemovedBody437_201 : StackLang.HolProg 64 :=
.seq RemovedBody437_97 RemovedBody437_200

def RemovedBody437_202 : StackLang.HolProg 64 :=
.seq RemovedBody437_96 RemovedBody437_201

def RemovedBody437_203 : StackLang.HolProg 64 :=
.seq RemovedBody437_93 RemovedBody437_202

def RemovedBody437_204 : StackLang.HolProg 64 :=
.seq RemovedBody437_92 RemovedBody437_203

def RemovedBody437_205 : StackLang.HolProg 64 :=
.seq RemovedBody437_29 RemovedBody437_204

def RemovedBody437_206 : StackLang.HolProg 64 :=
.seq RemovedBody437_24 RemovedBody437_205

def RemovedBody437_207 : StackLang.HolProg 64 :=
.seq RemovedBody437_23 RemovedBody437_206

def RemovedBody437_208 : StackLang.HolProg 64 :=
.seq RemovedBody437_22 RemovedBody437_207

def RemovedBody437_209 : StackLang.HolProg 64 :=
.seq RemovedBody437_21 RemovedBody437_208

def RemovedBody437_210 : StackLang.HolProg 64 :=
.seq RemovedBody437_12 RemovedBody437_209

def RemovedBody437_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody437_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_213 : StackLang.HolProg 64 :=
.seq RemovedBody437_211 RemovedBody437_212

def RemovedBody437_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody437_210 RemovedBody437_213

def RemovedBody437_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody437_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody437_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody437_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody437_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody437_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody437_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody437_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody437_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody437_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody437_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody437_230 : StackLang.HolProg 64 :=
.seq RemovedBody437_228 RemovedBody437_229

def RemovedBody437_231 : StackLang.HolProg 64 :=
.seq RemovedBody437_227 RemovedBody437_230

def RemovedBody437_232 : StackLang.HolProg 64 :=
.seq RemovedBody437_226 RemovedBody437_231

def RemovedBody437_233 : StackLang.HolProg 64 :=
.seq RemovedBody437_225 RemovedBody437_232

def RemovedBody437_234 : StackLang.HolProg 64 :=
.seq RemovedBody437_224 RemovedBody437_233

def RemovedBody437_235 : StackLang.HolProg 64 :=
.seq RemovedBody437_223 RemovedBody437_234

def RemovedBody437_236 : StackLang.HolProg 64 :=
.seq RemovedBody437_222 RemovedBody437_235

def RemovedBody437_237 : StackLang.HolProg 64 :=
.seq RemovedBody437_221 RemovedBody437_236

def RemovedBody437_238 : StackLang.HolProg 64 :=
.seq RemovedBody437_220 RemovedBody437_237

def RemovedBody437_239 : StackLang.HolProg 64 :=
.seq RemovedBody437_219 RemovedBody437_238

def RemovedBody437_240 : StackLang.HolProg 64 :=
.seq RemovedBody437_218 RemovedBody437_239

def RemovedBody437_241 : StackLang.HolProg 64 :=
.seq RemovedBody437_217 RemovedBody437_240

def RemovedBody437_242 : StackLang.HolProg 64 :=
.seq RemovedBody437_216 RemovedBody437_241

def RemovedBody437_243 : StackLang.HolProg 64 :=
.seq RemovedBody437_215 RemovedBody437_242

def RemovedBody437_244 : StackLang.HolProg 64 :=
.seq RemovedBody437_214 RemovedBody437_243

def RemovedBody437_245 : StackLang.HolProg 64 :=
.seq RemovedBody437_11 RemovedBody437_244

def RemovedBody437_246 : StackLang.HolProg 64 :=
.seq RemovedBody437_10 RemovedBody437_245

def RemovedBody437_247 : StackLang.HolProg 64 :=
.seq RemovedBody437_9 RemovedBody437_246

def RemovedBody437_248 : StackLang.HolProg 64 :=
.seq RemovedBody437_8 RemovedBody437_247

def RemovedBody437_249 : StackLang.HolProg 64 :=
.seq RemovedBody437_7 RemovedBody437_248

def RemovedBody437_250 : StackLang.HolProg 64 :=
.seq RemovedBody437_6 RemovedBody437_249

def Removed437 : Nat × StackLang.HolProg 64 := (437, RemovedBody437_250)
theorem Removed437_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc437 = Removed437 := by
  kernel_rfl
#print axioms Removed437_eq
end InitECandidate.Proofs.BackendStages
