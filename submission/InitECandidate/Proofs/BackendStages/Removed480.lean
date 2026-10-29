import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc480
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody480_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody480_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_3 : StackLang.HolProg 64 :=
.seq RemovedBody480_1 RemovedBody480_2

def RemovedBody480_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_3 RemovedBody480_4

def RemovedBody480_6 : StackLang.HolProg 64 :=
.seq RemovedBody480_0 RemovedBody480_5

def RemovedBody480_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody480_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody480_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody480_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody480_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody480_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody480_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody480_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_20 : StackLang.HolProg 64 :=
.seq RemovedBody480_18 RemovedBody480_19

def RemovedBody480_21 : StackLang.HolProg 64 :=
.seq RemovedBody480_17 RemovedBody480_20

def RemovedBody480_22 : StackLang.HolProg 64 :=
.seq RemovedBody480_16 RemovedBody480_21

def RemovedBody480_23 : StackLang.HolProg 64 :=
.seq RemovedBody480_15 RemovedBody480_22

def RemovedBody480_24 : StackLang.HolProg 64 :=
.seq RemovedBody480_14 RemovedBody480_23

def RemovedBody480_25 : StackLang.HolProg 64 :=
.seq RemovedBody480_13 RemovedBody480_24

def RemovedBody480_26 : StackLang.HolProg 64 :=
.seq RemovedBody480_12 RemovedBody480_25

def RemovedBody480_27 : StackLang.HolProg 64 :=
.seq RemovedBody480_11 RemovedBody480_26

def RemovedBody480_28 : StackLang.HolProg 64 :=
.seq RemovedBody480_10 RemovedBody480_27

def RemovedBody480_29 : StackLang.HolProg 64 :=
.seq RemovedBody480_9 RemovedBody480_28

def RemovedBody480_30 : StackLang.HolProg 64 :=
.seq RemovedBody480_8 RemovedBody480_29

def RemovedBody480_31 : StackLang.HolProg 64 :=
.seq RemovedBody480_7 RemovedBody480_30

def RemovedBody480_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1504#64)

def RemovedBody480_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_35 : StackLang.HolProg 64 :=
.seq RemovedBody480_33 RemovedBody480_34

def RemovedBody480_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_39 : StackLang.HolProg 64 :=
.seq RemovedBody480_37 RemovedBody480_38

def RemovedBody480_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_39 RemovedBody480_40

def RemovedBody480_42 : StackLang.HolProg 64 :=
.seq RemovedBody480_36 RemovedBody480_41

def RemovedBody480_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 3

def RemovedBody480_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_52 : StackLang.HolProg 64 :=
.seq RemovedBody480_50 RemovedBody480_51

def RemovedBody480_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_54 : StackLang.HolProg 64 :=
.seq RemovedBody480_52 RemovedBody480_53

def RemovedBody480_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_56 : StackLang.HolProg 64 :=
.seq RemovedBody480_54 RemovedBody480_55

def RemovedBody480_57 : StackLang.HolProg 64 :=
.seq RemovedBody480_49 RemovedBody480_56

def RemovedBody480_58 : StackLang.HolProg 64 :=
.seq RemovedBody480_48 RemovedBody480_57

def RemovedBody480_59 : StackLang.HolProg 64 :=
.seq RemovedBody480_47 RemovedBody480_58

def RemovedBody480_60 : StackLang.HolProg 64 :=
.seq RemovedBody480_46 RemovedBody480_59

def RemovedBody480_61 : StackLang.HolProg 64 :=
.seq RemovedBody480_45 RemovedBody480_60

def RemovedBody480_62 : StackLang.HolProg 64 :=
.seq RemovedBody480_44 RemovedBody480_61

def RemovedBody480_63 : StackLang.HolProg 64 :=
.seq RemovedBody480_43 RemovedBody480_62

def RemovedBody480_64 : StackLang.HolProg 64 :=
.seq RemovedBody480_42 RemovedBody480_63

def RemovedBody480_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody480_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_77 : StackLang.HolProg 64 :=
.seq RemovedBody480_75 RemovedBody480_76

def RemovedBody480_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody480_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody480_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_81 : StackLang.HolProg 64 :=
.seq RemovedBody480_79 RemovedBody480_80

def RemovedBody480_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody480_85 : StackLang.HolProg 64 :=
.seq RemovedBody480_83 RemovedBody480_84

def RemovedBody480_86 : StackLang.HolProg 64 :=
.seq RemovedBody480_82 RemovedBody480_85

def RemovedBody480_87 : StackLang.HolProg 64 :=
.seq RemovedBody480_81 RemovedBody480_86

def RemovedBody480_88 : StackLang.HolProg 64 :=
.seq RemovedBody480_78 RemovedBody480_87

def RemovedBody480_89 : StackLang.HolProg 64 :=
.seq RemovedBody480_77 RemovedBody480_88

def RemovedBody480_90 : StackLang.HolProg 64 :=
.seq RemovedBody480_74 RemovedBody480_89

def RemovedBody480_91 : StackLang.HolProg 64 :=
.seq RemovedBody480_73 RemovedBody480_90

def RemovedBody480_92 : StackLang.HolProg 64 :=
.seq RemovedBody480_72 RemovedBody480_91

def RemovedBody480_93 : StackLang.HolProg 64 :=
.seq RemovedBody480_71 RemovedBody480_92

def RemovedBody480_94 : StackLang.HolProg 64 :=
.seq RemovedBody480_70 RemovedBody480_93

def RemovedBody480_95 : StackLang.HolProg 64 :=
.seq RemovedBody480_69 RemovedBody480_94

def RemovedBody480_96 : StackLang.HolProg 64 :=
.seq RemovedBody480_68 RemovedBody480_95

def RemovedBody480_97 : StackLang.HolProg 64 :=
.seq RemovedBody480_67 RemovedBody480_96

def RemovedBody480_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody480_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_103 : StackLang.HolProg 64 :=
.seq RemovedBody480_101 RemovedBody480_102

def RemovedBody480_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody480_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody480_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_107 : StackLang.HolProg 64 :=
.seq RemovedBody480_105 RemovedBody480_106

def RemovedBody480_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody480_111 : StackLang.HolProg 64 :=
.seq RemovedBody480_109 RemovedBody480_110

def RemovedBody480_112 : StackLang.HolProg 64 :=
.seq RemovedBody480_108 RemovedBody480_111

def RemovedBody480_113 : StackLang.HolProg 64 :=
.seq RemovedBody480_107 RemovedBody480_112

def RemovedBody480_114 : StackLang.HolProg 64 :=
.seq RemovedBody480_104 RemovedBody480_113

def RemovedBody480_115 : StackLang.HolProg 64 :=
.seq RemovedBody480_103 RemovedBody480_114

def RemovedBody480_116 : StackLang.HolProg 64 :=
.seq RemovedBody480_100 RemovedBody480_115

def RemovedBody480_117 : StackLang.HolProg 64 :=
.seq RemovedBody480_99 RemovedBody480_116

def RemovedBody480_118 : StackLang.HolProg 64 :=
.seq RemovedBody480_98 RemovedBody480_117

def RemovedBody480_119 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_120 : StackLang.HolProg 64 :=
.seq RemovedBody480_118 RemovedBody480_119

def RemovedBody480_121 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_97, 0, 480, 2)) (Sum.inl 102) (some (RemovedBody480_120, 480, 3))

def RemovedBody480_122 : StackLang.HolProg 64 :=
.seq RemovedBody480_66 RemovedBody480_121

def RemovedBody480_123 : StackLang.HolProg 64 :=
.seq RemovedBody480_65 RemovedBody480_122

def RemovedBody480_124 : StackLang.HolProg 64 :=
.seq RemovedBody480_64 RemovedBody480_123

def RemovedBody480_125 : StackLang.HolProg 64 :=
.seq RemovedBody480_35 RemovedBody480_124

def RemovedBody480_126 : StackLang.HolProg 64 :=
.seq RemovedBody480_32 RemovedBody480_125

def RemovedBody480_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody480_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody480_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody480_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody480_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def RemovedBody480_136 : StackLang.HolProg 64 :=
.seq RemovedBody480_134 RemovedBody480_135

def RemovedBody480_137 : StackLang.HolProg 64 :=
.seq RemovedBody480_133 RemovedBody480_136

def RemovedBody480_138 : StackLang.HolProg 64 :=
.seq RemovedBody480_132 RemovedBody480_137

def RemovedBody480_139 : StackLang.HolProg 64 :=
.seq RemovedBody480_131 RemovedBody480_138

def RemovedBody480_140 : StackLang.HolProg 64 :=
.seq RemovedBody480_130 RemovedBody480_139

def RemovedBody480_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_142 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody480_140 RemovedBody480_141

def RemovedBody480_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody480_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody480_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_148 : StackLang.HolProg 64 :=
.seq RemovedBody480_146 RemovedBody480_147

def RemovedBody480_149 : StackLang.HolProg 64 :=
.seq RemovedBody480_145 RemovedBody480_148

def RemovedBody480_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1505#64)

def RemovedBody480_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_153 : StackLang.HolProg 64 :=
.seq RemovedBody480_151 RemovedBody480_152

def RemovedBody480_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_157 : StackLang.HolProg 64 :=
.seq RemovedBody480_155 RemovedBody480_156

def RemovedBody480_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_159 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_157 RemovedBody480_158

def RemovedBody480_160 : StackLang.HolProg 64 :=
.seq RemovedBody480_154 RemovedBody480_159

def RemovedBody480_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 5

def RemovedBody480_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_170 : StackLang.HolProg 64 :=
.seq RemovedBody480_168 RemovedBody480_169

def RemovedBody480_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_172 : StackLang.HolProg 64 :=
.seq RemovedBody480_170 RemovedBody480_171

def RemovedBody480_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_174 : StackLang.HolProg 64 :=
.seq RemovedBody480_172 RemovedBody480_173

def RemovedBody480_175 : StackLang.HolProg 64 :=
.seq RemovedBody480_167 RemovedBody480_174

def RemovedBody480_176 : StackLang.HolProg 64 :=
.seq RemovedBody480_166 RemovedBody480_175

def RemovedBody480_177 : StackLang.HolProg 64 :=
.seq RemovedBody480_165 RemovedBody480_176

def RemovedBody480_178 : StackLang.HolProg 64 :=
.seq RemovedBody480_164 RemovedBody480_177

def RemovedBody480_179 : StackLang.HolProg 64 :=
.seq RemovedBody480_163 RemovedBody480_178

def RemovedBody480_180 : StackLang.HolProg 64 :=
.seq RemovedBody480_162 RemovedBody480_179

def RemovedBody480_181 : StackLang.HolProg 64 :=
.seq RemovedBody480_161 RemovedBody480_180

def RemovedBody480_182 : StackLang.HolProg 64 :=
.seq RemovedBody480_160 RemovedBody480_181

def RemovedBody480_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody480_194 : StackLang.HolProg 64 :=
.seq RemovedBody480_192 RemovedBody480_193

def RemovedBody480_195 : StackLang.HolProg 64 :=
.seq RemovedBody480_191 RemovedBody480_194

def RemovedBody480_196 : StackLang.HolProg 64 :=
.seq RemovedBody480_190 RemovedBody480_195

def RemovedBody480_197 : StackLang.HolProg 64 :=
.seq RemovedBody480_189 RemovedBody480_196

def RemovedBody480_198 : StackLang.HolProg 64 :=
.seq RemovedBody480_188 RemovedBody480_197

def RemovedBody480_199 : StackLang.HolProg 64 :=
.seq RemovedBody480_187 RemovedBody480_198

def RemovedBody480_200 : StackLang.HolProg 64 :=
.seq RemovedBody480_186 RemovedBody480_199

def RemovedBody480_201 : StackLang.HolProg 64 :=
.seq RemovedBody480_185 RemovedBody480_200

def RemovedBody480_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody480_206 : StackLang.HolProg 64 :=
.seq RemovedBody480_204 RemovedBody480_205

def RemovedBody480_207 : StackLang.HolProg 64 :=
.seq RemovedBody480_203 RemovedBody480_206

def RemovedBody480_208 : StackLang.HolProg 64 :=
.seq RemovedBody480_202 RemovedBody480_207

def RemovedBody480_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_210 : StackLang.HolProg 64 :=
.seq RemovedBody480_208 RemovedBody480_209

def RemovedBody480_211 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_201, 0, 480, 4)) (Sum.inl 462) (some (RemovedBody480_210, 480, 5))

def RemovedBody480_212 : StackLang.HolProg 64 :=
.seq RemovedBody480_184 RemovedBody480_211

def RemovedBody480_213 : StackLang.HolProg 64 :=
.seq RemovedBody480_183 RemovedBody480_212

def RemovedBody480_214 : StackLang.HolProg 64 :=
.seq RemovedBody480_182 RemovedBody480_213

def RemovedBody480_215 : StackLang.HolProg 64 :=
.seq RemovedBody480_153 RemovedBody480_214

def RemovedBody480_216 : StackLang.HolProg 64 :=
.seq RemovedBody480_150 RemovedBody480_215

def RemovedBody480_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody480_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_220 : StackLang.HolProg 64 :=
.seq RemovedBody480_218 RemovedBody480_219

def RemovedBody480_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1506#64)

def RemovedBody480_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_224 : StackLang.HolProg 64 :=
.seq RemovedBody480_222 RemovedBody480_223

def RemovedBody480_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_228 : StackLang.HolProg 64 :=
.seq RemovedBody480_226 RemovedBody480_227

def RemovedBody480_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_230 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_228 RemovedBody480_229

def RemovedBody480_231 : StackLang.HolProg 64 :=
.seq RemovedBody480_225 RemovedBody480_230

def RemovedBody480_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 7

def RemovedBody480_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_241 : StackLang.HolProg 64 :=
.seq RemovedBody480_239 RemovedBody480_240

def RemovedBody480_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_243 : StackLang.HolProg 64 :=
.seq RemovedBody480_241 RemovedBody480_242

def RemovedBody480_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_245 : StackLang.HolProg 64 :=
.seq RemovedBody480_243 RemovedBody480_244

def RemovedBody480_246 : StackLang.HolProg 64 :=
.seq RemovedBody480_238 RemovedBody480_245

def RemovedBody480_247 : StackLang.HolProg 64 :=
.seq RemovedBody480_237 RemovedBody480_246

def RemovedBody480_248 : StackLang.HolProg 64 :=
.seq RemovedBody480_236 RemovedBody480_247

def RemovedBody480_249 : StackLang.HolProg 64 :=
.seq RemovedBody480_235 RemovedBody480_248

def RemovedBody480_250 : StackLang.HolProg 64 :=
.seq RemovedBody480_234 RemovedBody480_249

def RemovedBody480_251 : StackLang.HolProg 64 :=
.seq RemovedBody480_233 RemovedBody480_250

def RemovedBody480_252 : StackLang.HolProg 64 :=
.seq RemovedBody480_232 RemovedBody480_251

def RemovedBody480_253 : StackLang.HolProg 64 :=
.seq RemovedBody480_231 RemovedBody480_252

def RemovedBody480_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_262 : StackLang.HolProg 64 :=
.seq RemovedBody480_260 RemovedBody480_261

def RemovedBody480_263 : StackLang.HolProg 64 :=
.seq RemovedBody480_259 RemovedBody480_262

def RemovedBody480_264 : StackLang.HolProg 64 :=
.seq RemovedBody480_258 RemovedBody480_263

def RemovedBody480_265 : StackLang.HolProg 64 :=
.seq RemovedBody480_257 RemovedBody480_264

def RemovedBody480_266 : StackLang.HolProg 64 :=
.seq RemovedBody480_256 RemovedBody480_265

def RemovedBody480_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_269 : StackLang.HolProg 64 :=
.seq RemovedBody480_267 RemovedBody480_268

def RemovedBody480_270 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_266, 0, 480, 6)) (Sum.inl 462) (some (RemovedBody480_269, 480, 7))

def RemovedBody480_271 : StackLang.HolProg 64 :=
.seq RemovedBody480_255 RemovedBody480_270

def RemovedBody480_272 : StackLang.HolProg 64 :=
.seq RemovedBody480_254 RemovedBody480_271

def RemovedBody480_273 : StackLang.HolProg 64 :=
.seq RemovedBody480_253 RemovedBody480_272

def RemovedBody480_274 : StackLang.HolProg 64 :=
.seq RemovedBody480_224 RemovedBody480_273

def RemovedBody480_275 : StackLang.HolProg 64 :=
.seq RemovedBody480_221 RemovedBody480_274

def RemovedBody480_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody480_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1507#64)

def RemovedBody480_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_281 : StackLang.HolProg 64 :=
.seq RemovedBody480_279 RemovedBody480_280

def RemovedBody480_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_285 : StackLang.HolProg 64 :=
.seq RemovedBody480_283 RemovedBody480_284

def RemovedBody480_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_287 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_285 RemovedBody480_286

def RemovedBody480_288 : StackLang.HolProg 64 :=
.seq RemovedBody480_282 RemovedBody480_287

def RemovedBody480_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 9

def RemovedBody480_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_298 : StackLang.HolProg 64 :=
.seq RemovedBody480_296 RemovedBody480_297

def RemovedBody480_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_300 : StackLang.HolProg 64 :=
.seq RemovedBody480_298 RemovedBody480_299

def RemovedBody480_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_302 : StackLang.HolProg 64 :=
.seq RemovedBody480_300 RemovedBody480_301

def RemovedBody480_303 : StackLang.HolProg 64 :=
.seq RemovedBody480_295 RemovedBody480_302

def RemovedBody480_304 : StackLang.HolProg 64 :=
.seq RemovedBody480_294 RemovedBody480_303

def RemovedBody480_305 : StackLang.HolProg 64 :=
.seq RemovedBody480_293 RemovedBody480_304

def RemovedBody480_306 : StackLang.HolProg 64 :=
.seq RemovedBody480_292 RemovedBody480_305

def RemovedBody480_307 : StackLang.HolProg 64 :=
.seq RemovedBody480_291 RemovedBody480_306

def RemovedBody480_308 : StackLang.HolProg 64 :=
.seq RemovedBody480_290 RemovedBody480_307

def RemovedBody480_309 : StackLang.HolProg 64 :=
.seq RemovedBody480_289 RemovedBody480_308

def RemovedBody480_310 : StackLang.HolProg 64 :=
.seq RemovedBody480_288 RemovedBody480_309

def RemovedBody480_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_319 : StackLang.HolProg 64 :=
.seq RemovedBody480_317 RemovedBody480_318

def RemovedBody480_320 : StackLang.HolProg 64 :=
.seq RemovedBody480_316 RemovedBody480_319

def RemovedBody480_321 : StackLang.HolProg 64 :=
.seq RemovedBody480_315 RemovedBody480_320

def RemovedBody480_322 : StackLang.HolProg 64 :=
.seq RemovedBody480_314 RemovedBody480_321

def RemovedBody480_323 : StackLang.HolProg 64 :=
.seq RemovedBody480_313 RemovedBody480_322

def RemovedBody480_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_325 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_326 : StackLang.HolProg 64 :=
.seq RemovedBody480_324 RemovedBody480_325

def RemovedBody480_327 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_323, 0, 480, 8)) (Sum.inl 463) (some (RemovedBody480_326, 480, 9))

def RemovedBody480_328 : StackLang.HolProg 64 :=
.seq RemovedBody480_312 RemovedBody480_327

def RemovedBody480_329 : StackLang.HolProg 64 :=
.seq RemovedBody480_311 RemovedBody480_328

def RemovedBody480_330 : StackLang.HolProg 64 :=
.seq RemovedBody480_310 RemovedBody480_329

def RemovedBody480_331 : StackLang.HolProg 64 :=
.seq RemovedBody480_281 RemovedBody480_330

def RemovedBody480_332 : StackLang.HolProg 64 :=
.seq RemovedBody480_278 RemovedBody480_331

def RemovedBody480_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody480_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody480_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody480_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody480_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody480_342 : StackLang.HolProg 64 :=
.seq RemovedBody480_340 RemovedBody480_341

def RemovedBody480_343 : StackLang.HolProg 64 :=
.seq RemovedBody480_339 RemovedBody480_342

def RemovedBody480_344 : StackLang.HolProg 64 :=
.seq RemovedBody480_338 RemovedBody480_343

def RemovedBody480_345 : StackLang.HolProg 64 :=
.seq RemovedBody480_337 RemovedBody480_344

def RemovedBody480_346 : StackLang.HolProg 64 :=
.seq RemovedBody480_336 RemovedBody480_345

def RemovedBody480_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_348 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody480_346 RemovedBody480_347

def RemovedBody480_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody480_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody480_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody480_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody480_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody480_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_358 : StackLang.HolProg 64 :=
.seq RemovedBody480_356 RemovedBody480_357

def RemovedBody480_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1508#64)

def RemovedBody480_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_362 : StackLang.HolProg 64 :=
.seq RemovedBody480_360 RemovedBody480_361

def RemovedBody480_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_366 : StackLang.HolProg 64 :=
.seq RemovedBody480_364 RemovedBody480_365

def RemovedBody480_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_366 RemovedBody480_367

def RemovedBody480_369 : StackLang.HolProg 64 :=
.seq RemovedBody480_363 RemovedBody480_368

def RemovedBody480_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 11

def RemovedBody480_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_379 : StackLang.HolProg 64 :=
.seq RemovedBody480_377 RemovedBody480_378

def RemovedBody480_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_381 : StackLang.HolProg 64 :=
.seq RemovedBody480_379 RemovedBody480_380

def RemovedBody480_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_383 : StackLang.HolProg 64 :=
.seq RemovedBody480_381 RemovedBody480_382

def RemovedBody480_384 : StackLang.HolProg 64 :=
.seq RemovedBody480_376 RemovedBody480_383

def RemovedBody480_385 : StackLang.HolProg 64 :=
.seq RemovedBody480_375 RemovedBody480_384

def RemovedBody480_386 : StackLang.HolProg 64 :=
.seq RemovedBody480_374 RemovedBody480_385

def RemovedBody480_387 : StackLang.HolProg 64 :=
.seq RemovedBody480_373 RemovedBody480_386

def RemovedBody480_388 : StackLang.HolProg 64 :=
.seq RemovedBody480_372 RemovedBody480_387

def RemovedBody480_389 : StackLang.HolProg 64 :=
.seq RemovedBody480_371 RemovedBody480_388

def RemovedBody480_390 : StackLang.HolProg 64 :=
.seq RemovedBody480_370 RemovedBody480_389

def RemovedBody480_391 : StackLang.HolProg 64 :=
.seq RemovedBody480_369 RemovedBody480_390

def RemovedBody480_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_400 : StackLang.HolProg 64 :=
.seq RemovedBody480_398 RemovedBody480_399

def RemovedBody480_401 : StackLang.HolProg 64 :=
.seq RemovedBody480_397 RemovedBody480_400

def RemovedBody480_402 : StackLang.HolProg 64 :=
.seq RemovedBody480_396 RemovedBody480_401

def RemovedBody480_403 : StackLang.HolProg 64 :=
.seq RemovedBody480_395 RemovedBody480_402

def RemovedBody480_404 : StackLang.HolProg 64 :=
.seq RemovedBody480_394 RemovedBody480_403

def RemovedBody480_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_406 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_407 : StackLang.HolProg 64 :=
.seq RemovedBody480_405 RemovedBody480_406

def RemovedBody480_408 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_404, 0, 480, 10)) (Sum.inl 464) (some (RemovedBody480_407, 480, 11))

def RemovedBody480_409 : StackLang.HolProg 64 :=
.seq RemovedBody480_393 RemovedBody480_408

def RemovedBody480_410 : StackLang.HolProg 64 :=
.seq RemovedBody480_392 RemovedBody480_409

def RemovedBody480_411 : StackLang.HolProg 64 :=
.seq RemovedBody480_391 RemovedBody480_410

def RemovedBody480_412 : StackLang.HolProg 64 :=
.seq RemovedBody480_362 RemovedBody480_411

def RemovedBody480_413 : StackLang.HolProg 64 :=
.seq RemovedBody480_359 RemovedBody480_412

def RemovedBody480_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody480_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_417 : StackLang.HolProg 64 :=
.seq RemovedBody480_415 RemovedBody480_416

def RemovedBody480_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1509#64)

def RemovedBody480_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_421 : StackLang.HolProg 64 :=
.seq RemovedBody480_419 RemovedBody480_420

def RemovedBody480_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_425 : StackLang.HolProg 64 :=
.seq RemovedBody480_423 RemovedBody480_424

def RemovedBody480_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_427 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_425 RemovedBody480_426

def RemovedBody480_428 : StackLang.HolProg 64 :=
.seq RemovedBody480_422 RemovedBody480_427

def RemovedBody480_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 13

def RemovedBody480_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_438 : StackLang.HolProg 64 :=
.seq RemovedBody480_436 RemovedBody480_437

def RemovedBody480_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_440 : StackLang.HolProg 64 :=
.seq RemovedBody480_438 RemovedBody480_439

def RemovedBody480_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_442 : StackLang.HolProg 64 :=
.seq RemovedBody480_440 RemovedBody480_441

def RemovedBody480_443 : StackLang.HolProg 64 :=
.seq RemovedBody480_435 RemovedBody480_442

def RemovedBody480_444 : StackLang.HolProg 64 :=
.seq RemovedBody480_434 RemovedBody480_443

def RemovedBody480_445 : StackLang.HolProg 64 :=
.seq RemovedBody480_433 RemovedBody480_444

def RemovedBody480_446 : StackLang.HolProg 64 :=
.seq RemovedBody480_432 RemovedBody480_445

def RemovedBody480_447 : StackLang.HolProg 64 :=
.seq RemovedBody480_431 RemovedBody480_446

def RemovedBody480_448 : StackLang.HolProg 64 :=
.seq RemovedBody480_430 RemovedBody480_447

def RemovedBody480_449 : StackLang.HolProg 64 :=
.seq RemovedBody480_429 RemovedBody480_448

def RemovedBody480_450 : StackLang.HolProg 64 :=
.seq RemovedBody480_428 RemovedBody480_449

def RemovedBody480_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_460 : StackLang.HolProg 64 :=
.seq RemovedBody480_458 RemovedBody480_459

def RemovedBody480_461 : StackLang.HolProg 64 :=
.seq RemovedBody480_457 RemovedBody480_460

def RemovedBody480_462 : StackLang.HolProg 64 :=
.seq RemovedBody480_456 RemovedBody480_461

def RemovedBody480_463 : StackLang.HolProg 64 :=
.seq RemovedBody480_455 RemovedBody480_462

def RemovedBody480_464 : StackLang.HolProg 64 :=
.seq RemovedBody480_454 RemovedBody480_463

def RemovedBody480_465 : StackLang.HolProg 64 :=
.seq RemovedBody480_453 RemovedBody480_464

def RemovedBody480_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_468 : StackLang.HolProg 64 :=
.seq RemovedBody480_466 RemovedBody480_467

def RemovedBody480_469 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_470 : StackLang.HolProg 64 :=
.seq RemovedBody480_468 RemovedBody480_469

def RemovedBody480_471 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_465, 0, 480, 12)) (Sum.inl 464) (some (RemovedBody480_470, 480, 13))

def RemovedBody480_472 : StackLang.HolProg 64 :=
.seq RemovedBody480_452 RemovedBody480_471

def RemovedBody480_473 : StackLang.HolProg 64 :=
.seq RemovedBody480_451 RemovedBody480_472

def RemovedBody480_474 : StackLang.HolProg 64 :=
.seq RemovedBody480_450 RemovedBody480_473

def RemovedBody480_475 : StackLang.HolProg 64 :=
.seq RemovedBody480_421 RemovedBody480_474

def RemovedBody480_476 : StackLang.HolProg 64 :=
.seq RemovedBody480_418 RemovedBody480_475

def RemovedBody480_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody480_481 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody480_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody480_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody480_485 : StackLang.HolProg 64 :=
.seq RemovedBody480_483 RemovedBody480_484

def RemovedBody480_486 : StackLang.HolProg 64 :=
.seq RemovedBody480_482 RemovedBody480_485

def RemovedBody480_487 : StackLang.HolProg 64 :=
.seq RemovedBody480_481 RemovedBody480_486

def RemovedBody480_488 : StackLang.HolProg 64 :=
.seq RemovedBody480_480 RemovedBody480_487

def RemovedBody480_489 : StackLang.HolProg 64 :=
.seq RemovedBody480_479 RemovedBody480_488

def RemovedBody480_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_491 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody480_489 RemovedBody480_490

def RemovedBody480_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody480_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_498 : StackLang.HolProg 64 :=
.seq RemovedBody480_496 RemovedBody480_497

def RemovedBody480_499 : StackLang.HolProg 64 :=
.seq RemovedBody480_495 RemovedBody480_498

def RemovedBody480_500 : StackLang.HolProg 64 :=
.seq RemovedBody480_494 RemovedBody480_499

def RemovedBody480_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1510#64)

def RemovedBody480_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_504 : StackLang.HolProg 64 :=
.seq RemovedBody480_502 RemovedBody480_503

def RemovedBody480_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_508 : StackLang.HolProg 64 :=
.seq RemovedBody480_506 RemovedBody480_507

def RemovedBody480_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_510 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_508 RemovedBody480_509

def RemovedBody480_511 : StackLang.HolProg 64 :=
.seq RemovedBody480_505 RemovedBody480_510

def RemovedBody480_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 15

def RemovedBody480_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_521 : StackLang.HolProg 64 :=
.seq RemovedBody480_519 RemovedBody480_520

def RemovedBody480_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_523 : StackLang.HolProg 64 :=
.seq RemovedBody480_521 RemovedBody480_522

def RemovedBody480_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_525 : StackLang.HolProg 64 :=
.seq RemovedBody480_523 RemovedBody480_524

def RemovedBody480_526 : StackLang.HolProg 64 :=
.seq RemovedBody480_518 RemovedBody480_525

def RemovedBody480_527 : StackLang.HolProg 64 :=
.seq RemovedBody480_517 RemovedBody480_526

def RemovedBody480_528 : StackLang.HolProg 64 :=
.seq RemovedBody480_516 RemovedBody480_527

def RemovedBody480_529 : StackLang.HolProg 64 :=
.seq RemovedBody480_515 RemovedBody480_528

def RemovedBody480_530 : StackLang.HolProg 64 :=
.seq RemovedBody480_514 RemovedBody480_529

def RemovedBody480_531 : StackLang.HolProg 64 :=
.seq RemovedBody480_513 RemovedBody480_530

def RemovedBody480_532 : StackLang.HolProg 64 :=
.seq RemovedBody480_512 RemovedBody480_531

def RemovedBody480_533 : StackLang.HolProg 64 :=
.seq RemovedBody480_511 RemovedBody480_532

def RemovedBody480_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_542 : StackLang.HolProg 64 :=
.seq RemovedBody480_540 RemovedBody480_541

def RemovedBody480_543 : StackLang.HolProg 64 :=
.seq RemovedBody480_539 RemovedBody480_542

def RemovedBody480_544 : StackLang.HolProg 64 :=
.seq RemovedBody480_538 RemovedBody480_543

def RemovedBody480_545 : StackLang.HolProg 64 :=
.seq RemovedBody480_537 RemovedBody480_544

def RemovedBody480_546 : StackLang.HolProg 64 :=
.seq RemovedBody480_536 RemovedBody480_545

def RemovedBody480_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_548 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_549 : StackLang.HolProg 64 :=
.seq RemovedBody480_547 RemovedBody480_548

def RemovedBody480_550 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_546, 0, 480, 14)) (Sum.inl 479) (some (RemovedBody480_549, 480, 15))

def RemovedBody480_551 : StackLang.HolProg 64 :=
.seq RemovedBody480_535 RemovedBody480_550

def RemovedBody480_552 : StackLang.HolProg 64 :=
.seq RemovedBody480_534 RemovedBody480_551

def RemovedBody480_553 : StackLang.HolProg 64 :=
.seq RemovedBody480_533 RemovedBody480_552

def RemovedBody480_554 : StackLang.HolProg 64 :=
.seq RemovedBody480_504 RemovedBody480_553

def RemovedBody480_555 : StackLang.HolProg 64 :=
.seq RemovedBody480_501 RemovedBody480_554

def RemovedBody480_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody480_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_560 : StackLang.HolProg 64 :=
.seq RemovedBody480_558 RemovedBody480_559

def RemovedBody480_561 : StackLang.HolProg 64 :=
.seq RemovedBody480_557 RemovedBody480_560

def RemovedBody480_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1511#64)

def RemovedBody480_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_565 : StackLang.HolProg 64 :=
.seq RemovedBody480_563 RemovedBody480_564

def RemovedBody480_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody480_568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody480_569 : StackLang.HolProg 64 :=
.seq RemovedBody480_567 RemovedBody480_568

def RemovedBody480_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_571 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody480_569 RemovedBody480_570

def RemovedBody480_572 : StackLang.HolProg 64 :=
.seq RemovedBody480_566 RemovedBody480_571

def RemovedBody480_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody480_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody480_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 480 17

def RemovedBody480_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody480_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody480_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody480_582 : StackLang.HolProg 64 :=
.seq RemovedBody480_580 RemovedBody480_581

def RemovedBody480_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody480_584 : StackLang.HolProg 64 :=
.seq RemovedBody480_582 RemovedBody480_583

def RemovedBody480_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_586 : StackLang.HolProg 64 :=
.seq RemovedBody480_584 RemovedBody480_585

def RemovedBody480_587 : StackLang.HolProg 64 :=
.seq RemovedBody480_579 RemovedBody480_586

def RemovedBody480_588 : StackLang.HolProg 64 :=
.seq RemovedBody480_578 RemovedBody480_587

def RemovedBody480_589 : StackLang.HolProg 64 :=
.seq RemovedBody480_577 RemovedBody480_588

def RemovedBody480_590 : StackLang.HolProg 64 :=
.seq RemovedBody480_576 RemovedBody480_589

def RemovedBody480_591 : StackLang.HolProg 64 :=
.seq RemovedBody480_575 RemovedBody480_590

def RemovedBody480_592 : StackLang.HolProg 64 :=
.seq RemovedBody480_574 RemovedBody480_591

def RemovedBody480_593 : StackLang.HolProg 64 :=
.seq RemovedBody480_573 RemovedBody480_592

def RemovedBody480_594 : StackLang.HolProg 64 :=
.seq RemovedBody480_572 RemovedBody480_593

def RemovedBody480_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody480_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody480_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody480_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody480_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_604 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_606 : StackLang.HolProg 64 :=
.seq RemovedBody480_604 RemovedBody480_605

def RemovedBody480_607 : StackLang.HolProg 64 :=
.seq RemovedBody480_603 RemovedBody480_606

def RemovedBody480_608 : StackLang.HolProg 64 :=
.seq RemovedBody480_602 RemovedBody480_607

def RemovedBody480_609 : StackLang.HolProg 64 :=
.seq RemovedBody480_601 RemovedBody480_608

def RemovedBody480_610 : StackLang.HolProg 64 :=
.seq RemovedBody480_600 RemovedBody480_609

def RemovedBody480_611 : StackLang.HolProg 64 :=
.seq RemovedBody480_599 RemovedBody480_610

def RemovedBody480_612 : StackLang.HolProg 64 :=
.seq RemovedBody480_598 RemovedBody480_611

def RemovedBody480_613 : StackLang.HolProg 64 :=
.seq RemovedBody480_597 RemovedBody480_612

def RemovedBody480_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody480_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody480_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody480_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody480_618 : StackLang.HolProg 64 :=
.seq RemovedBody480_616 RemovedBody480_617

def RemovedBody480_619 : StackLang.HolProg 64 :=
.seq RemovedBody480_615 RemovedBody480_618

def RemovedBody480_620 : StackLang.HolProg 64 :=
.seq RemovedBody480_614 RemovedBody480_619

def RemovedBody480_621 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody480_622 : StackLang.HolProg 64 :=
.seq RemovedBody480_620 RemovedBody480_621

def RemovedBody480_623 : StackLang.HolProg 64 :=
.call (some (RemovedBody480_613, 0, 480, 16)) (Sum.inl 479) (some (RemovedBody480_622, 480, 17))

def RemovedBody480_624 : StackLang.HolProg 64 :=
.seq RemovedBody480_596 RemovedBody480_623

def RemovedBody480_625 : StackLang.HolProg 64 :=
.seq RemovedBody480_595 RemovedBody480_624

def RemovedBody480_626 : StackLang.HolProg 64 :=
.seq RemovedBody480_594 RemovedBody480_625

def RemovedBody480_627 : StackLang.HolProg 64 :=
.seq RemovedBody480_565 RemovedBody480_626

def RemovedBody480_628 : StackLang.HolProg 64 :=
.seq RemovedBody480_562 RemovedBody480_627

def RemovedBody480_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody480_632 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody480_634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody480_635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody480_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody480_638 : StackLang.HolProg 64 :=
.seq RemovedBody480_636 RemovedBody480_637

def RemovedBody480_639 : StackLang.HolProg 64 :=
.seq RemovedBody480_635 RemovedBody480_638

def RemovedBody480_640 : StackLang.HolProg 64 :=
.seq RemovedBody480_634 RemovedBody480_639

def RemovedBody480_641 : StackLang.HolProg 64 :=
.seq RemovedBody480_633 RemovedBody480_640

def RemovedBody480_642 : StackLang.HolProg 64 :=
.seq RemovedBody480_632 RemovedBody480_641

def RemovedBody480_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_644 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody480_642 RemovedBody480_643

def RemovedBody480_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody480_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody480_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody480_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody480_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 80#64)))

def RemovedBody480_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody480_654 : StackLang.HolProg 64 :=
.seq RemovedBody480_652 RemovedBody480_653

def RemovedBody480_655 : StackLang.HolProg 64 :=
.seq RemovedBody480_651 RemovedBody480_654

def RemovedBody480_656 : StackLang.HolProg 64 :=
.seq RemovedBody480_650 RemovedBody480_655

def RemovedBody480_657 : StackLang.HolProg 64 :=
.seq RemovedBody480_649 RemovedBody480_656

def RemovedBody480_658 : StackLang.HolProg 64 :=
.seq RemovedBody480_648 RemovedBody480_657

def RemovedBody480_659 : StackLang.HolProg 64 :=
.seq RemovedBody480_647 RemovedBody480_658

def RemovedBody480_660 : StackLang.HolProg 64 :=
.seq RemovedBody480_646 RemovedBody480_659

def RemovedBody480_661 : StackLang.HolProg 64 :=
.seq RemovedBody480_645 RemovedBody480_660

def RemovedBody480_662 : StackLang.HolProg 64 :=
.seq RemovedBody480_644 RemovedBody480_661

def RemovedBody480_663 : StackLang.HolProg 64 :=
.seq RemovedBody480_631 RemovedBody480_662

def RemovedBody480_664 : StackLang.HolProg 64 :=
.seq RemovedBody480_630 RemovedBody480_663

def RemovedBody480_665 : StackLang.HolProg 64 :=
.seq RemovedBody480_629 RemovedBody480_664

def RemovedBody480_666 : StackLang.HolProg 64 :=
.seq RemovedBody480_628 RemovedBody480_665

def RemovedBody480_667 : StackLang.HolProg 64 :=
.seq RemovedBody480_561 RemovedBody480_666

def RemovedBody480_668 : StackLang.HolProg 64 :=
.seq RemovedBody480_556 RemovedBody480_667

def RemovedBody480_669 : StackLang.HolProg 64 :=
.seq RemovedBody480_555 RemovedBody480_668

def RemovedBody480_670 : StackLang.HolProg 64 :=
.seq RemovedBody480_500 RemovedBody480_669

def RemovedBody480_671 : StackLang.HolProg 64 :=
.seq RemovedBody480_493 RemovedBody480_670

def RemovedBody480_672 : StackLang.HolProg 64 :=
.seq RemovedBody480_492 RemovedBody480_671

def RemovedBody480_673 : StackLang.HolProg 64 :=
.seq RemovedBody480_491 RemovedBody480_672

def RemovedBody480_674 : StackLang.HolProg 64 :=
.seq RemovedBody480_478 RemovedBody480_673

def RemovedBody480_675 : StackLang.HolProg 64 :=
.seq RemovedBody480_477 RemovedBody480_674

def RemovedBody480_676 : StackLang.HolProg 64 :=
.seq RemovedBody480_476 RemovedBody480_675

def RemovedBody480_677 : StackLang.HolProg 64 :=
.seq RemovedBody480_417 RemovedBody480_676

def RemovedBody480_678 : StackLang.HolProg 64 :=
.seq RemovedBody480_414 RemovedBody480_677

def RemovedBody480_679 : StackLang.HolProg 64 :=
.seq RemovedBody480_413 RemovedBody480_678

def RemovedBody480_680 : StackLang.HolProg 64 :=
.seq RemovedBody480_358 RemovedBody480_679

def RemovedBody480_681 : StackLang.HolProg 64 :=
.seq RemovedBody480_355 RemovedBody480_680

def RemovedBody480_682 : StackLang.HolProg 64 :=
.seq RemovedBody480_354 RemovedBody480_681

def RemovedBody480_683 : StackLang.HolProg 64 :=
.seq RemovedBody480_353 RemovedBody480_682

def RemovedBody480_684 : StackLang.HolProg 64 :=
.seq RemovedBody480_352 RemovedBody480_683

def RemovedBody480_685 : StackLang.HolProg 64 :=
.seq RemovedBody480_351 RemovedBody480_684

def RemovedBody480_686 : StackLang.HolProg 64 :=
.seq RemovedBody480_350 RemovedBody480_685

def RemovedBody480_687 : StackLang.HolProg 64 :=
.seq RemovedBody480_349 RemovedBody480_686

def RemovedBody480_688 : StackLang.HolProg 64 :=
.seq RemovedBody480_348 RemovedBody480_687

def RemovedBody480_689 : StackLang.HolProg 64 :=
.seq RemovedBody480_335 RemovedBody480_688

def RemovedBody480_690 : StackLang.HolProg 64 :=
.seq RemovedBody480_334 RemovedBody480_689

def RemovedBody480_691 : StackLang.HolProg 64 :=
.seq RemovedBody480_333 RemovedBody480_690

def RemovedBody480_692 : StackLang.HolProg 64 :=
.seq RemovedBody480_332 RemovedBody480_691

def RemovedBody480_693 : StackLang.HolProg 64 :=
.seq RemovedBody480_277 RemovedBody480_692

def RemovedBody480_694 : StackLang.HolProg 64 :=
.seq RemovedBody480_276 RemovedBody480_693

def RemovedBody480_695 : StackLang.HolProg 64 :=
.seq RemovedBody480_275 RemovedBody480_694

def RemovedBody480_696 : StackLang.HolProg 64 :=
.seq RemovedBody480_220 RemovedBody480_695

def RemovedBody480_697 : StackLang.HolProg 64 :=
.seq RemovedBody480_217 RemovedBody480_696

def RemovedBody480_698 : StackLang.HolProg 64 :=
.seq RemovedBody480_216 RemovedBody480_697

def RemovedBody480_699 : StackLang.HolProg 64 :=
.seq RemovedBody480_149 RemovedBody480_698

def RemovedBody480_700 : StackLang.HolProg 64 :=
.seq RemovedBody480_144 RemovedBody480_699

def RemovedBody480_701 : StackLang.HolProg 64 :=
.seq RemovedBody480_143 RemovedBody480_700

def RemovedBody480_702 : StackLang.HolProg 64 :=
.seq RemovedBody480_142 RemovedBody480_701

def RemovedBody480_703 : StackLang.HolProg 64 :=
.seq RemovedBody480_129 RemovedBody480_702

def RemovedBody480_704 : StackLang.HolProg 64 :=
.seq RemovedBody480_128 RemovedBody480_703

def RemovedBody480_705 : StackLang.HolProg 64 :=
.seq RemovedBody480_127 RemovedBody480_704

def RemovedBody480_706 : StackLang.HolProg 64 :=
.seq RemovedBody480_126 RemovedBody480_705

def RemovedBody480_707 : StackLang.HolProg 64 :=
.seq RemovedBody480_31 RemovedBody480_706

def RemovedBody480_708 : StackLang.HolProg 64 :=
.seq RemovedBody480_6 RemovedBody480_707

def Removed480 : Nat × StackLang.HolProg 64 := (480, RemovedBody480_708)
theorem Removed480_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc480 = Removed480 := by
  kernel_rfl
#print axioms Removed480_eq
end InitECandidate.Proofs.BackendStages
